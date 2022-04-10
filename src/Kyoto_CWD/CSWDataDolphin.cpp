#include "Kyoto_CWD/CStopwatch.hpp"

#include "Dolphin/os.h"

bool CStopwatch::CSWData::Initialize() {
  x0_timerFreq = OS_TIMER_CLOCK;
  x8_timerFreqO1M = x0_timerFreq / 1000000;
  x10_timerPeriod = 1.f / x0_timerFreq;
  return true;
}

void CStopwatch::CSWData::Wait(float v) {
  OSTime duration = OSSecondsToTicks(v);
  OSTime end = OSGetTime() + duration;
  volatile OSTime current;
  volatile s32 diff;
  do {
    current = OSGetTime();
    diff = current - end;
  } while (diff < 0);
}
