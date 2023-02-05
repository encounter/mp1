#include "dolphin/DVDPriv.h"
#include "dolphin/os.h"

extern OSTime __OSGetSystemTime();
vu32 __PIRegs[12] : 0xCC003000;

static BOOL FirstRead = TRUE;
static volatile BOOL StopAtNextInt = FALSE;
static u32 LastLength = 0;
static DVDLowCallback Callback = NULL;
static DVDLowCallback ResetCoverCallback = NULL;
static volatile OSTime LastResetEnd = 0;
static volatile BOOL ResetOccurred = FALSE;
static volatile BOOL WaitingCoverClose = FALSE;
static BOOL Breaking = FALSE;
static u32 WorkAroundType = 0;
static u32 WorkAroundSeekLocation = 0;
static OSTime LastReadFinished = 0;
static OSTime LastReadIssued = 0;
static volatile BOOL LastCommandWasRead = FALSE;
static vu32 NextCommandNumber = 0;

typedef struct DVDBuffer {
  void* addr;
  u32 length;
  u32 offset;
} DVDBuffer;

typedef struct DVDCommand {
  s32 cmd;
  void* addr;
  u32 length;
  u32 offset;
  DVDLowCallback callback;
} DVDCommand;

static DVDCommand CommandList[3];
static OSAlarm AlarmForWA;
static OSAlarm AlarmForTimeout;
static OSAlarm AlarmForBreak;
static DVDBuffer Prev;
static DVDBuffer Curr;

void __DVDInitWA() {
  NextCommandNumber = 0;
  CommandList[0].cmd = -1;
  __DVDLowSetWAType(0, 0);
  OSInitAlarm();
}

static void Read(void* addr, u32 length, u32 offset, DVDLowCallback callback);

static BOOL ProcessNextCommand() {
  s32 n = NextCommandNumber;
  BOOL ret;
  ASSERT(n < 3);

  if (CommandList[n].cmd == 1) {
    ++NextCommandNumber;
    Read(CommandList[n].addr, CommandList[n].length, CommandList[n].offset,
         CommandList[n].callback);
    ret = TRUE;
  } else if (CommandList[n].cmd == 2) {
    ++NextCommandNumber;
    DVDLowSeek(CommandList[n].offset, CommandList[n].callback);
    ret = TRUE;
  } else {
    ret = FALSE;
  }

  return ret;
}

void __DVDInterruptHandler(__OSInterrupt interrupt, OSContext* context) {
  u32 reg;
  u32 status;
  u32 flags = 0;
  if (LastCommandWasRead) {
    LastReadFinished = __OSGetSystemTime();
    FirstRead = FALSE;
    Prev.addr = Curr.addr;
    Prev.length = Curr.length;
    Prev.offset = Curr.offset;
    if (StopAtNextInt == TRUE) {
      flags |= 8;
    }
  }

  LastCommandWasRead = FALSE;
  StopAtNextInt = FALSE;
  reg = __DIRegs[0];
  status = ((reg & 0x2a) << 1) & (reg & 0x54);

  if (status & 0x40) {
    flags |= 8;
  }

  if (status & 0x10) {
    flags |= 1;
  }

  if (status & 4) {
    flags |= 2;
  }

  if (flags) {
    ResetOccurred = FALSE;
    OSCancelAlarm(&AlarmForWA);
  }

  __DIRegs[0] = status | (reg & 0x2a);

  if (ResetOccurred) {
  }
}

static void AlarmHandler(OSAlarm* alarm, OSContext* context) {
  BOOL error = ProcessNextCommand();
  ASSERTMSG(error != FALSE, "Failed assertion processed");
}

static void AlarmHandlerForTimeout(OSAlarm* alarm, OSContext* context) {
  OSContext tmpContext;
  DVDLowCallback callback;
  __OSMaskInterrupts(0x400);
  OSClearContext(&tmpContext);
  OSSetCurrentContext(&tmpContext);
  callback = Callback;
  Callback = NULL;
  if (callback != NULL) {
    callback(0x10);
  }
  OSClearContext(&tmpContext);
  OSSetCurrentContext(context);
}

static void SetTimeoutAlarm(OSTime timeout) {
  OSCreateAlarm(&AlarmForTimeout);
  OSSetAlarm(&AlarmForTimeout, timeout, AlarmHandlerForTimeout);
}

static void Read(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  LastCommandWasRead = TRUE;
  Callback = callback;
  LastReadIssued = __OSGetSystemTime();

  __DIRegs[2] = 0xa8000000;
  __DIRegs[3] = offset / 4;
  __DIRegs[4] = length;
  __DIRegs[5] = (u32)addr;
  __DIRegs[6] = length;
  LastLength = length;
  __DIRegs[7] = 3;


  if (length > 0xa00000) {
    SetTimeoutAlarm(OSSecondsToTicks(20));
  } else {
    SetTimeoutAlarm(OSSecondsToTicks(10));
  }
}

static void DoJustRead(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
  CommandList[0].cmd = -1;
  NextCommandNumber = 0;
  Read(addr, length, offset, callback);
}

#pragma dont_inline on
static void SeekTwiceBeforeRead(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
  CommandList[0].offset = !(offset & ~0x7FFF) ? 0 : (offset & ~0x7FFF) + WorkAroundSeekLocation;
  CommandList[0].callback = callback;
  CommandList[0].cmd = 2;
  CommandList[1].cmd = 2;
  CommandList[2].cmd = -1;
  CommandList[1].addr = addr;
  CommandList[1].length = length;
  CommandList[1].offset = offset;
  CommandList[1].callback = callback;
  offset = CommandList[0].offset;
  NextCommandNumber = 0;
  DVDLowSeek(offset, callback);
}
#pragma dont_inline reset

BOOL DVDLowRead(void* addr, u32 length, u32 offset, DVDLowCallback callback) {
  Curr.addr = addr;
  Curr.length = length;
  Curr.offset = offset;
  __DIRegs[6] = length;

  if (WorkAroundType == 0) {
    DoJustRead(addr, length, offset, callback);
  } else {
    SeekTwiceBeforeRead(addr, length, offset, callback);
  }
  return TRUE;
}

BOOL DVDLowSeek(u32 offset, DVDLowCallback callback) {
  ASSERTMSG(offset & 3, "DVDLowSeek(): offset must be a multiple of 4.");
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xab000000;
  __DIRegs[3] = offset / 4;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowWaitCoverClose(DVDLowCallback callback) {
  Callback = callback;
  WaitingCoverClose = TRUE;
  StopAtNextInt = FALSE;
  __DIRegs[1] = 2;
  return TRUE;
}

BOOL DVDLowReadDiskID(DVDDiskID* diskID, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xa8000040;
  __DIRegs[3] = 0;
  __DIRegs[4] = sizeof(DVDDiskID);
  __DIRegs[5] = (u32)diskID;
  __DIRegs[6] = sizeof(DVDDiskID);
  __DIRegs[7] = 3;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowStopMotor(DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xe3000000;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowRequestError(DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xe0000000;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowInquiry(DVDDriveInfo* info, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0x12000000;
  __DIRegs[4] = 32; // sizeof(DVDDriveInfo);
  __DIRegs[5] = (u32)info;
  __DIRegs[6] = 32; // sizeof(DVDDriveInfo);
  __DIRegs[7] = 3;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowAudioStream(u32 subcmd, u32 length, u32 offset, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = subcmd | 0xe1000000;
  __DIRegs[3] = offset >> 2;
  __DIRegs[4] = length;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowRequestAudioStatus(u32 subcmd, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = subcmd | 0xe2000000;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

BOOL DVDLowAudioBufferConfig(BOOL enable, u32 size, DVDLowCallback callback) {
  StopAtNextInt = FALSE;
  Callback = callback;
  __DIRegs[2] = 0xe4000000 | (enable != 0 ? 0x10000 : 0) | size;
  __DIRegs[7] = 1;
  SetTimeoutAlarm(OSSecondsToTicks(10));
  return TRUE;
}

void DVDLowReset() {
  u32 reg;
  OSTime resetStart;
  
  __DIRegs[1] = 2;
  reg = __PIRegs[9];
  __PIRegs[9] = (reg & ~4) | 1;

  resetStart = __OSGetSystemTime();
  while ((__OSGetSystemTime() - resetStart) < OSMicrosecondsToTicks(12))
    ;

  __PIRegs[9] = reg | 5;
  ResetOccurred = TRUE;
  LastResetEnd = __OSGetSystemTime();
}

BOOL DVDLowBreak() {
  StopAtNextInt = TRUE;
  Breaking = TRUE;
  return TRUE;
}

DVDLowCallback DVDLowClearCallback() {
  DVDLowCallback old;
  __DIRegs[1] = 0;
  old = Callback;
  Callback = NULL;
  return old;
}

void __DVDLowSetWAType(u32 type, u32 location) {
  BOOL enabled;
  enabled = OSDisableInterrupts();
  WorkAroundType = type;
  WorkAroundSeekLocation = location;
  OSRestoreInterrupts(enabled);
}
