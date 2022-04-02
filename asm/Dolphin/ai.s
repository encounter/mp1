.include "macros.inc"

.section .text, "ax"

.global AIRegisterDMACallback
AIRegisterDMACallback:
/* 8036CF3C 00369E9C  7C 08 02 A6 */	mflr r0
/* 8036CF40 00369EA0  90 01 00 04 */	stw r0, 4(r1)
/* 8036CF44 00369EA4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8036CF48 00369EA8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8036CF4C 00369EAC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8036CF50 00369EB0  7C 7E 1B 78 */	mr r30, r3
/* 8036CF54 00369EB4  83 ED AA FC */	lwz r31, lbl_805A96BC@sda21(r13)
/* 8036CF58 00369EB8  48 01 47 09 */	bl OSDisableInterrupts
/* 8036CF5C 00369EBC  93 CD AA FC */	stw r30, lbl_805A96BC@sda21(r13)
/* 8036CF60 00369EC0  48 01 47 29 */	bl OSRestoreInterrupts
/* 8036CF64 00369EC4  7F E3 FB 78 */	mr r3, r31
/* 8036CF68 00369EC8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8036CF6C 00369ECC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8036CF70 00369ED0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8036CF74 00369ED4  38 21 00 18 */	addi r1, r1, 0x18
/* 8036CF78 00369ED8  7C 08 03 A6 */	mtlr r0
/* 8036CF7C 00369EDC  4E 80 00 20 */	blr 

.global AIInitDMA
AIInitDMA:
/* 8036CF80 00369EE0  7C 08 02 A6 */	mflr r0
/* 8036CF84 00369EE4  90 01 00 04 */	stw r0, 4(r1)
/* 8036CF88 00369EE8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8036CF8C 00369EEC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8036CF90 00369EF0  3B E4 00 00 */	addi r31, r4, 0
/* 8036CF94 00369EF4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8036CF98 00369EF8  3B C3 00 00 */	addi r30, r3, 0
/* 8036CF9C 00369EFC  48 01 46 C5 */	bl OSDisableInterrupts
/* 8036CFA0 00369F00  3C 80 CC 00 */	lis r4, 0xCC005030@ha
/* 8036CFA4 00369F04  A0 04 50 30 */	lhz r0, 0xCC005030@l(r4)
/* 8036CFA8 00369F08  38 A4 50 00 */	addi r5, r4, 0x5000
/* 8036CFAC 00369F0C  38 C4 50 00 */	addi r6, r4, 0x5000
/* 8036CFB0 00369F10  38 E4 50 00 */	addi r7, r4, 0x5000
/* 8036CFB4 00369F14  54 04 00 2A */	rlwinm r4, r0, 0, 0, 0x15
/* 8036CFB8 00369F18  57 C0 84 3E */	srwi r0, r30, 0x10
/* 8036CFBC 00369F1C  7C 80 03 78 */	or r0, r4, r0
/* 8036CFC0 00369F20  B0 05 00 30 */	sth r0, 0x30(r5)
/* 8036CFC4 00369F24  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8036CFC8 00369F28  A0 86 00 32 */	lhz r4, 0x32(r6)
/* 8036CFCC 00369F2C  54 84 06 DE */	rlwinm r4, r4, 0, 0x1b, 0xf
/* 8036CFD0 00369F30  7C 80 03 78 */	or r0, r4, r0
/* 8036CFD4 00369F34  B0 06 00 32 */	sth r0, 0x32(r6)
/* 8036CFD8 00369F38  57 E0 DC 3E */	rlwinm r0, r31, 0x1b, 0x10, 0x1f
/* 8036CFDC 00369F3C  A0 87 00 36 */	lhz r4, 0x36(r7)
/* 8036CFE0 00369F40  54 84 00 20 */	rlwinm r4, r4, 0, 0, 0x10
/* 8036CFE4 00369F44  7C 80 03 78 */	or r0, r4, r0
/* 8036CFE8 00369F48  B0 07 00 36 */	sth r0, 0x36(r7)
/* 8036CFEC 00369F4C  48 01 46 9D */	bl OSRestoreInterrupts
/* 8036CFF0 00369F50  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8036CFF4 00369F54  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8036CFF8 00369F58  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8036CFFC 00369F5C  38 21 00 18 */	addi r1, r1, 0x18
/* 8036D000 00369F60  7C 08 03 A6 */	mtlr r0
/* 8036D004 00369F64  4E 80 00 20 */	blr 

.global AIStartDMA
AIStartDMA:
/* 8036D008 00369F68  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8036D00C 00369F6C  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8036D010 00369F70  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 8036D014 00369F74  60 00 80 00 */	ori r0, r0, 0x8000
/* 8036D018 00369F78  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8036D01C 00369F7C  4E 80 00 20 */	blr 

.global AIStopDMA
AIStopDMA:
/* 8036D020 00369F80  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8036D024 00369F84  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8036D028 00369F88  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 8036D02C 00369F8C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8036D030 00369F90  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8036D034 00369F94  4E 80 00 20 */	blr 

.global AIGetDMAStartAddr
AIGetDMAStartAddr:
/* 8036D038 00369F98  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8036D03C 00369F9C  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8036D040 00369FA0  A0 83 00 30 */	lhz r4, 0x30(r3)
/* 8036D044 00369FA4  A0 03 00 32 */	lhz r0, 0x32(r3)
/* 8036D048 00369FA8  54 03 04 34 */	rlwinm r3, r0, 0, 0x10, 0x1a
/* 8036D04C 00369FAC  50 83 81 9E */	rlwimi r3, r4, 0x10, 6, 0xf
/* 8036D050 00369FB0  4E 80 00 20 */	blr 

.global AIRegisterStreamCallback
AIRegisterStreamCallback:
/* 8036D054 00369FB4  7C 08 02 A6 */	mflr r0
/* 8036D058 00369FB8  90 01 00 04 */	stw r0, 4(r1)
/* 8036D05C 00369FBC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8036D060 00369FC0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8036D064 00369FC4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8036D068 00369FC8  7C 7E 1B 78 */	mr r30, r3
/* 8036D06C 00369FCC  83 ED AA F8 */	lwz r31, lbl_805A96B8@sda21(r13)
/* 8036D070 00369FD0  48 01 45 F1 */	bl OSDisableInterrupts
/* 8036D074 00369FD4  93 CD AA F8 */	stw r30, lbl_805A96B8@sda21(r13)
/* 8036D078 00369FD8  48 01 46 11 */	bl OSRestoreInterrupts
/* 8036D07C 00369FDC  7F E3 FB 78 */	mr r3, r31
/* 8036D080 00369FE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8036D084 00369FE4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8036D088 00369FE8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8036D08C 00369FEC  38 21 00 18 */	addi r1, r1, 0x18
/* 8036D090 00369FF0  7C 08 03 A6 */	mtlr r0
/* 8036D094 00369FF4  4E 80 00 20 */	blr 

.global sub_8036d098
sub_8036d098:
/* 8036D098 00369FF8  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8036D09C 00369FFC  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8036D0A0 0036A000  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8036D0A4 0036A004  60 00 00 20 */	ori r0, r0, 0x20
/* 8036D0A8 0036A008  90 03 6C 00 */	stw r0, 0x6c00(r3)
/* 8036D0AC 0036A00C  4E 80 00 20 */	blr 

.global SetTRKConnected
SetTRKConnected:
/* 8036D0B0 0036A010  3C 80 CC 00 */	lis r4, 0xCC006C0C@ha
/* 8036D0B4 0036A014  90 64 6C 0C */	stw r3, 0xCC006C0C@l(r4)
/* 8036D0B8 0036A018  4E 80 00 20 */	blr 

.global AISetStreamPlayState
AISetStreamPlayState:
/* 8036D0BC 0036A01C  7C 08 02 A6 */	mflr r0
/* 8036D0C0 0036A020  90 01 00 04 */	stw r0, 4(r1)
/* 8036D0C4 0036A024  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036D0C8 0036A028  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036D0CC 0036A02C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036D0D0 0036A030  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8036D0D4 0036A034  7C 7D 1B 78 */	mr r29, r3
/* 8036D0D8 0036A038  48 00 00 BD */	bl AIGetStreamPlayState
/* 8036D0DC 0036A03C  7C 1D 18 40 */	cmplw r29, r3
/* 8036D0E0 0036A040  41 82 00 98 */	beq lbl_8036D178
/* 8036D0E4 0036A044  48 00 02 89 */	bl AIGetStreamSampleRate
/* 8036D0E8 0036A048  28 03 00 00 */	cmplwi r3, 0
/* 8036D0EC 0036A04C  40 82 00 78 */	bne lbl_8036D164
/* 8036D0F0 0036A050  28 1D 00 01 */	cmplwi r29, 1
/* 8036D0F4 0036A054  40 82 00 70 */	bne lbl_8036D164
/* 8036D0F8 0036A058  48 00 02 CD */	bl AIGetStreamVolRight
/* 8036D0FC 0036A05C  7C 7E 1B 78 */	mr r30, r3
/* 8036D100 0036A060  48 00 02 99 */	bl AIGetStreamVolLeft
/* 8036D104 0036A064  3B A3 00 00 */	addi r29, r3, 0
/* 8036D108 0036A068  38 60 00 00 */	li r3, 0
/* 8036D10C 0036A06C  48 00 02 9D */	bl AISetStreamVolRight
/* 8036D110 0036A070  38 60 00 00 */	li r3, 0
/* 8036D114 0036A074  48 00 02 69 */	bl AISetStreamVolLeft
/* 8036D118 0036A078  48 01 45 49 */	bl OSDisableInterrupts
/* 8036D11C 0036A07C  7C 7F 1B 78 */	mr r31, r3
/* 8036D120 0036A080  48 00 05 A1 */	bl __AI_SRC_INIT
/* 8036D124 0036A084  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8036D128 0036A088  80 04 6C 00 */	lwz r0, 0xCC006C00@l(r4)
/* 8036D12C 0036A08C  38 7F 00 00 */	addi r3, r31, 0
/* 8036D130 0036A090  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8036D134 0036A094  60 00 00 20 */	ori r0, r0, 0x20
/* 8036D138 0036A098  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 8036D13C 0036A09C  80 04 6C 00 */	lwz r0, 0x6c00(r4)
/* 8036D140 0036A0A0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8036D144 0036A0A4  60 00 00 01 */	ori r0, r0, 1
/* 8036D148 0036A0A8  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 8036D14C 0036A0AC  48 01 45 3D */	bl OSRestoreInterrupts
/* 8036D150 0036A0B0  7F C3 F3 78 */	mr r3, r30
/* 8036D154 0036A0B4  48 00 02 29 */	bl AISetStreamVolLeft
/* 8036D158 0036A0B8  7F A3 EB 78 */	mr r3, r29
/* 8036D15C 0036A0BC  48 00 02 4D */	bl AISetStreamVolRight
/* 8036D160 0036A0C0  48 00 00 18 */	b lbl_8036D178
lbl_8036D164:
/* 8036D164 0036A0C4  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8036D168 0036A0C8  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8036D16C 0036A0CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8036D170 0036A0D0  7C 00 EB 78 */	or r0, r0, r29
/* 8036D174 0036A0D4  90 03 6C 00 */	stw r0, 0x6c00(r3)
lbl_8036D178:
/* 8036D178 0036A0D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036D17C 0036A0DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036D180 0036A0E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036D184 0036A0E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8036D188 0036A0E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8036D18C 0036A0EC  7C 08 03 A6 */	mtlr r0
/* 8036D190 0036A0F0  4E 80 00 20 */	blr 

.global AIGetStreamPlayState
AIGetStreamPlayState:
/* 8036D194 0036A0F4  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8036D198 0036A0F8  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8036D19C 0036A0FC  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 8036D1A0 0036A100  4E 80 00 20 */	blr 

.global AISetDSPSampleRate
AISetDSPSampleRate:
/* 8036D1A4 0036A104  7C 08 02 A6 */	mflr r0
/* 8036D1A8 0036A108  90 01 00 04 */	stw r0, 4(r1)
/* 8036D1AC 0036A10C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8036D1B0 0036A110  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 8036D1B4 0036A114  7C 7A 1B 78 */	mr r26, r3
/* 8036D1B8 0036A118  48 00 00 CD */	bl AIGetDSPSampleRate
/* 8036D1BC 0036A11C  7C 1A 18 40 */	cmplw r26, r3
/* 8036D1C0 0036A120  41 82 00 B0 */	beq lbl_8036D270
/* 8036D1C4 0036A124  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8036D1C8 0036A128  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8036D1CC 0036A12C  28 1A 00 00 */	cmplwi r26, 0
/* 8036D1D0 0036A130  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8036D1D4 0036A134  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D1D8 0036A138  40 82 00 98 */	bne lbl_8036D270
/* 8036D1DC 0036A13C  48 00 01 BD */	bl AIGetStreamVolLeft
/* 8036D1E0 0036A140  7C 7E 1B 78 */	mr r30, r3
/* 8036D1E4 0036A144  48 00 01 E1 */	bl AIGetStreamVolRight
/* 8036D1E8 0036A148  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D1EC 0036A14C  3B A3 00 00 */	addi r29, r3, 0
/* 8036D1F0 0036A150  54 1B 07 FE */	clrlwi r27, r0, 0x1f
/* 8036D1F4 0036A154  48 00 01 79 */	bl AIGetStreamSampleRate
/* 8036D1F8 0036A158  3B 83 00 00 */	addi r28, r3, 0
/* 8036D1FC 0036A15C  38 60 00 00 */	li r3, 0
/* 8036D200 0036A160  48 00 01 7D */	bl AISetStreamVolLeft
/* 8036D204 0036A164  38 60 00 00 */	li r3, 0
/* 8036D208 0036A168  48 00 01 A1 */	bl AISetStreamVolRight
/* 8036D20C 0036A16C  48 01 44 55 */	bl OSDisableInterrupts
/* 8036D210 0036A170  7C 7A 1B 78 */	mr r26, r3
/* 8036D214 0036A174  48 00 04 AD */	bl __AI_SRC_INIT
/* 8036D218 0036A178  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8036D21C 0036A17C  57 80 08 3C */	slwi r0, r28, 1
/* 8036D220 0036A180  38 7A 00 00 */	addi r3, r26, 0
/* 8036D224 0036A184  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 8036D228 0036A188  60 84 00 20 */	ori r4, r4, 0x20
/* 8036D22C 0036A18C  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8036D230 0036A190  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8036D234 0036A194  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8036D238 0036A198  7C 80 03 78 */	or r0, r4, r0
/* 8036D23C 0036A19C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D240 0036A1A0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D244 0036A1A4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8036D248 0036A1A8  7C 00 DB 78 */	or r0, r0, r27
/* 8036D24C 0036A1AC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D250 0036A1B0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D254 0036A1B4  60 00 00 40 */	ori r0, r0, 0x40
/* 8036D258 0036A1B8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D25C 0036A1BC  48 01 44 2D */	bl OSRestoreInterrupts
/* 8036D260 0036A1C0  7F C3 F3 78 */	mr r3, r30
/* 8036D264 0036A1C4  48 00 01 19 */	bl AISetStreamVolLeft
/* 8036D268 0036A1C8  7F A3 EB 78 */	mr r3, r29
/* 8036D26C 0036A1CC  48 00 01 3D */	bl AISetStreamVolRight
lbl_8036D270:
/* 8036D270 0036A1D0  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 8036D274 0036A1D4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8036D278 0036A1D8  38 21 00 28 */	addi r1, r1, 0x28
/* 8036D27C 0036A1DC  7C 08 03 A6 */	mtlr r0
/* 8036D280 0036A1E0  4E 80 00 20 */	blr 

.global AIGetDSPSampleRate
AIGetDSPSampleRate:
/* 8036D284 0036A1E4  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8036D288 0036A1E8  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8036D28C 0036A1EC  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8036D290 0036A1F0  68 03 00 01 */	xori r3, r0, 1
/* 8036D294 0036A1F4  4E 80 00 20 */	blr 

.global __AI_set_stream_sample_rate
__AI_set_stream_sample_rate:
/* 8036D298 0036A1F8  7C 08 02 A6 */	mflr r0
/* 8036D29C 0036A1FC  90 01 00 04 */	stw r0, 4(r1)
/* 8036D2A0 0036A200  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8036D2A4 0036A204  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8036D2A8 0036A208  7C 79 1B 78 */	mr r25, r3
/* 8036D2AC 0036A20C  48 00 00 C1 */	bl AIGetStreamSampleRate
/* 8036D2B0 0036A210  7C 19 18 40 */	cmplw r25, r3
/* 8036D2B4 0036A214  41 82 00 A4 */	beq lbl_8036D358
/* 8036D2B8 0036A218  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8036D2BC 0036A21C  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8036D2C0 0036A220  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8036D2C4 0036A224  7C 1D 03 78 */	mr r29, r0
/* 8036D2C8 0036A228  48 00 00 D1 */	bl AIGetStreamVolLeft
/* 8036D2CC 0036A22C  7C 7C 1B 78 */	mr r28, r3
/* 8036D2D0 0036A230  48 00 00 F5 */	bl AIGetStreamVolRight
/* 8036D2D4 0036A234  3B 63 00 00 */	addi r27, r3, 0
/* 8036D2D8 0036A238  38 60 00 00 */	li r3, 0
/* 8036D2DC 0036A23C  48 00 00 CD */	bl AISetStreamVolRight
/* 8036D2E0 0036A240  38 60 00 00 */	li r3, 0
/* 8036D2E4 0036A244  48 00 00 99 */	bl AISetStreamVolLeft
/* 8036D2E8 0036A248  80 7F 6C 00 */	lwz r3, 0x6c00(r31)
/* 8036D2EC 0036A24C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D2F0 0036A250  54 7A 06 72 */	rlwinm r26, r3, 0, 0x19, 0x19
/* 8036D2F4 0036A254  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8036D2F8 0036A258  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D2FC 0036A25C  48 01 43 65 */	bl OSDisableInterrupts
/* 8036D300 0036A260  7C 7E 1B 78 */	mr r30, r3
/* 8036D304 0036A264  48 00 03 BD */	bl __AI_SRC_INIT
/* 8036D308 0036A268  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8036D30C 0036A26C  57 20 08 3C */	slwi r0, r25, 1
/* 8036D310 0036A270  38 7E 00 00 */	addi r3, r30, 0
/* 8036D314 0036A274  7C 84 D3 78 */	or r4, r4, r26
/* 8036D318 0036A278  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8036D31C 0036A27C  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8036D320 0036A280  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 8036D324 0036A284  60 84 00 20 */	ori r4, r4, 0x20
/* 8036D328 0036A288  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8036D32C 0036A28C  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8036D330 0036A290  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8036D334 0036A294  7C 80 03 78 */	or r0, r4, r0
/* 8036D338 0036A298  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D33C 0036A29C  48 01 43 4D */	bl OSRestoreInterrupts
/* 8036D340 0036A2A0  7F A3 EB 78 */	mr r3, r29
/* 8036D344 0036A2A4  4B FF FD 79 */	bl AISetStreamPlayState
/* 8036D348 0036A2A8  7F 83 E3 78 */	mr r3, r28
/* 8036D34C 0036A2AC  48 00 00 31 */	bl AISetStreamVolLeft
/* 8036D350 0036A2B0  7F 63 DB 78 */	mr r3, r27
/* 8036D354 0036A2B4  48 00 00 55 */	bl AISetStreamVolRight
lbl_8036D358:
/* 8036D358 0036A2B8  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8036D35C 0036A2BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8036D360 0036A2C0  38 21 00 30 */	addi r1, r1, 0x30
/* 8036D364 0036A2C4  7C 08 03 A6 */	mtlr r0
/* 8036D368 0036A2C8  4E 80 00 20 */	blr 

.global AIGetStreamSampleRate
AIGetStreamSampleRate:
/* 8036D36C 0036A2CC  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8036D370 0036A2D0  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8036D374 0036A2D4  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 8036D378 0036A2D8  4E 80 00 20 */	blr 

.global AISetStreamVolLeft
AISetStreamVolLeft:
/* 8036D37C 0036A2DC  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8036D380 0036A2E0  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 8036D384 0036A2E4  80 04 00 04 */	lwz r0, 4(r4)
/* 8036D388 0036A2E8  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 8036D38C 0036A2EC  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 8036D390 0036A2F0  90 04 00 04 */	stw r0, 4(r4)
/* 8036D394 0036A2F4  4E 80 00 20 */	blr 

.global AIGetStreamVolLeft
AIGetStreamVolLeft:
/* 8036D398 0036A2F8  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 8036D39C 0036A2FC  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 8036D3A0 0036A300  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8036D3A4 0036A304  4E 80 00 20 */	blr 

.global AISetStreamVolRight
AISetStreamVolRight:
/* 8036D3A8 0036A308  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8036D3AC 0036A30C  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 8036D3B0 0036A310  80 04 00 04 */	lwz r0, 4(r4)
/* 8036D3B4 0036A314  54 00 06 1E */	rlwinm r0, r0, 0, 0x18, 0xf
/* 8036D3B8 0036A318  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 8036D3BC 0036A31C  90 04 00 04 */	stw r0, 4(r4)
/* 8036D3C0 0036A320  4E 80 00 20 */	blr 

.global AIGetStreamVolRight
AIGetStreamVolRight:
/* 8036D3C4 0036A324  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 8036D3C8 0036A328  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 8036D3CC 0036A32C  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 8036D3D0 0036A330  4E 80 00 20 */	blr 

.global AIInit
AIInit:
/* 8036D3D4 0036A334  7C 08 02 A6 */	mflr r0
/* 8036D3D8 0036A338  90 01 00 04 */	stw r0, 4(r1)
/* 8036D3DC 0036A33C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8036D3E0 0036A340  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8036D3E4 0036A344  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8036D3E8 0036A348  3B C3 00 00 */	addi r30, r3, 0
/* 8036D3EC 0036A34C  80 0D AB 08 */	lwz r0, lbl_805A96C8@sda21(r13)
/* 8036D3F0 0036A350  2C 00 00 01 */	cmpwi r0, 1
/* 8036D3F4 0036A354  41 82 01 34 */	beq lbl_8036D528
/* 8036D3F8 0036A358  80 6D 9E A8 */	lwz r3, lbl_805A8A68@sda21(r13)
/* 8036D3FC 0036A35C  48 01 0C 3D */	bl OSRegisterVersion
/* 8036D400 0036A360  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8036D404 0036A364  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8036D408 0036A368  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 8036D40C 0036A36C  3C 80 00 01 */	lis r4, 0x0000A428@ha
/* 8036D410 0036A370  54 00 F0 BE */	srwi r0, r0, 2
/* 8036D414 0036A374  38 63 DE 83 */	addi r3, r3, 0x431BDE83@l
/* 8036D418 0036A378  7C 03 00 16 */	mulhwu r0, r3, r0
/* 8036D41C 0036A37C  54 09 8B FE */	srwi r9, r0, 0xf
/* 8036D420 0036A380  38 A4 A4 28 */	addi r5, r4, 0x0000A428@l
/* 8036D424 0036A384  38 64 A4 10 */	addi r3, r4, -23536
/* 8036D428 0036A388  38 04 F6 18 */	addi r0, r4, -2536
/* 8036D42C 0036A38C  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 8036D430 0036A390  7C E9 29 D6 */	mullw r7, r9, r5
/* 8036D434 0036A394  39 44 4D D3 */	addi r10, r4, 0x10624DD3@l
/* 8036D438 0036A398  7C A9 19 D6 */	mullw r5, r9, r3
/* 8036D43C 0036A39C  7C 89 01 D6 */	mullw r4, r9, r0
/* 8036D440 0036A3A0  1D 09 7B 24 */	mulli r8, r9, 0x7b24
/* 8036D444 0036A3A4  1C 69 0B B8 */	mulli r3, r9, 0xbb8
/* 8036D448 0036A3A8  7D 0A 40 16 */	mulhwu r8, r10, r8
/* 8036D44C 0036A3AC  7C EA 38 16 */	mulhwu r7, r10, r7
/* 8036D450 0036A3B0  7C AA 28 16 */	mulhwu r5, r10, r5
/* 8036D454 0036A3B4  7C 8A 20 16 */	mulhwu r4, r10, r4
/* 8036D458 0036A3B8  7C 6A 18 16 */	mulhwu r3, r10, r3
/* 8036D45C 0036A3BC  55 08 BA 7E */	srwi r8, r8, 9
/* 8036D460 0036A3C0  54 E7 BA 7E */	srwi r7, r7, 9
/* 8036D464 0036A3C4  91 0D AB 14 */	stw r8, lbl_805A96D4@sda21(r13)
/* 8036D468 0036A3C8  54 A5 BA 7E */	srwi r5, r5, 9
/* 8036D46C 0036A3CC  54 84 BA 7E */	srwi r4, r4, 9
/* 8036D470 0036A3D0  90 ED AB 1C */	stw r7, lbl_805A96DC@sda21(r13)
/* 8036D474 0036A3D4  3B E0 00 00 */	li r31, 0
/* 8036D478 0036A3D8  54 63 BA 7E */	srwi r3, r3, 9
/* 8036D47C 0036A3DC  90 AD AB 24 */	stw r5, lbl_805A96E4@sda21(r13)
/* 8036D480 0036A3E0  3C C0 CC 00 */	lis r6, 0xCC006C00@ha
/* 8036D484 0036A3E4  90 6D AB 34 */	stw r3, lbl_805A96F4@sda21(r13)
/* 8036D488 0036A3E8  38 60 00 01 */	li r3, 1
/* 8036D48C 0036A3EC  80 06 6C 00 */	lwz r0, 0xCC006C00@l(r6)
/* 8036D490 0036A3F0  90 8D AB 2C */	stw r4, lbl_805A96EC@sda21(r13)
/* 8036D494 0036A3F4  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8036D498 0036A3F8  60 00 00 20 */	ori r0, r0, 0x20
/* 8036D49C 0036A3FC  93 ED AB 10 */	stw r31, lbl_805A96D0@sda21(r13)
/* 8036D4A0 0036A400  93 ED AB 18 */	stw r31, lbl_805A96D8@sda21(r13)
/* 8036D4A4 0036A404  93 ED AB 20 */	stw r31, lbl_805A96E0@sda21(r13)
/* 8036D4A8 0036A408  93 ED AB 28 */	stw r31, lbl_805A96E8@sda21(r13)
/* 8036D4AC 0036A40C  93 ED AB 30 */	stw r31, lbl_805A96F0@sda21(r13)
/* 8036D4B0 0036A410  80 A6 6C 04 */	lwz r5, 0x6c04(r6)
/* 8036D4B4 0036A414  90 06 6C 00 */	stw r0, 0x6c00(r6)
/* 8036D4B8 0036A418  54 A0 06 1E */	rlwinm r0, r5, 0, 0x18, 0xf
/* 8036D4BC 0036A41C  60 00 00 00 */	nop 
/* 8036D4C0 0036A420  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 8036D4C4 0036A424  80 06 6C 04 */	lwz r0, 0x6c04(r6)
/* 8036D4C8 0036A428  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 8036D4CC 0036A42C  60 00 00 00 */	nop 
/* 8036D4D0 0036A430  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 8036D4D4 0036A434  93 E6 6C 0C */	stw r31, 0x6c0c(r6)
/* 8036D4D8 0036A438  4B FF FD C1 */	bl __AI_set_stream_sample_rate
/* 8036D4DC 0036A43C  38 60 00 00 */	li r3, 0
/* 8036D4E0 0036A440  4B FF FC C5 */	bl AISetDSPSampleRate
/* 8036D4E4 0036A444  3C 60 80 37 */	lis r3, __AIDHandler@ha
/* 8036D4E8 0036A448  93 ED AA F8 */	stw r31, lbl_805A96B8@sda21(r13)
/* 8036D4EC 0036A44C  38 83 D5 BC */	addi r4, r3, __AIDHandler@l
/* 8036D4F0 0036A450  93 ED AA FC */	stw r31, lbl_805A96BC@sda21(r13)
/* 8036D4F4 0036A454  38 60 00 05 */	li r3, 5
/* 8036D4F8 0036A458  93 CD AB 00 */	stw r30, lbl_805A96C0@sda21(r13)
/* 8036D4FC 0036A45C  48 01 41 B1 */	bl __OSSetInterruptHandler
/* 8036D500 0036A460  3C 60 04 00 */	lis r3, 0x400
/* 8036D504 0036A464  48 01 45 AD */	bl __OSUnmaskInterrupts
/* 8036D508 0036A468  3C 60 80 37 */	lis r3, __AISHandler@ha
/* 8036D50C 0036A46C  38 83 D5 40 */	addi r4, r3, __AISHandler@l
/* 8036D510 0036A470  38 60 00 08 */	li r3, 8
/* 8036D514 0036A474  48 01 41 99 */	bl __OSSetInterruptHandler
/* 8036D518 0036A478  3C 60 00 80 */	lis r3, 0x80
/* 8036D51C 0036A47C  48 01 45 95 */	bl __OSUnmaskInterrupts
/* 8036D520 0036A480  38 00 00 01 */	li r0, 1
/* 8036D524 0036A484  90 0D AB 08 */	stw r0, lbl_805A96C8@sda21(r13)
lbl_8036D528:
/* 8036D528 0036A488  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8036D52C 0036A48C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8036D530 0036A490  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8036D534 0036A494  38 21 00 18 */	addi r1, r1, 0x18
/* 8036D538 0036A498  7C 08 03 A6 */	mtlr r0
/* 8036D53C 0036A49C  4E 80 00 20 */	blr 

.global __AISHandler
__AISHandler:
/* 8036D540 0036A4A0  7C 08 02 A6 */	mflr r0
/* 8036D544 0036A4A4  90 01 00 04 */	stw r0, 4(r1)
/* 8036D548 0036A4A8  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8036D54C 0036A4AC  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8036D550 0036A4B0  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8036D554 0036A4B4  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8036D558 0036A4B8  38 61 00 10 */	addi r3, r1, 0x10
/* 8036D55C 0036A4BC  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 8036D560 0036A4C0  60 00 00 08 */	ori r0, r0, 8
/* 8036D564 0036A4C4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D568 0036A4C8  3B C4 00 00 */	addi r30, r4, 0
/* 8036D56C 0036A4CC  48 01 20 A9 */	bl OSClearContext
/* 8036D570 0036A4D0  38 61 00 10 */	addi r3, r1, 0x10
/* 8036D574 0036A4D4  48 01 1E A9 */	bl OSSetCurrentContext
/* 8036D578 0036A4D8  81 8D AA F8 */	lwz r12, lbl_805A96B8@sda21(r13)
/* 8036D57C 0036A4DC  28 0C 00 00 */	cmplwi r12, 0
/* 8036D580 0036A4E0  41 82 00 14 */	beq lbl_8036D594
/* 8036D584 0036A4E4  38 7F 6C 00 */	addi r3, r31, 0x6c00
/* 8036D588 0036A4E8  7D 88 03 A6 */	mtlr r12
/* 8036D58C 0036A4EC  80 63 00 08 */	lwz r3, 8(r3)
/* 8036D590 0036A4F0  4E 80 00 21 */	blrl 
lbl_8036D594:
/* 8036D594 0036A4F4  38 61 00 10 */	addi r3, r1, 0x10
/* 8036D598 0036A4F8  48 01 20 7D */	bl OSClearContext
/* 8036D59C 0036A4FC  7F C3 F3 78 */	mr r3, r30
/* 8036D5A0 0036A500  48 01 1E 7D */	bl OSSetCurrentContext
/* 8036D5A4 0036A504  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8036D5A8 0036A508  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8036D5AC 0036A50C  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 8036D5B0 0036A510  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8036D5B4 0036A514  7C 08 03 A6 */	mtlr r0
/* 8036D5B8 0036A518  4E 80 00 20 */	blr 

.global __AIDHandler
__AIDHandler:
/* 8036D5BC 0036A51C  7C 08 02 A6 */	mflr r0
/* 8036D5C0 0036A520  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8036D5C4 0036A524  90 01 00 04 */	stw r0, 4(r1)
/* 8036D5C8 0036A528  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8036D5CC 0036A52C  38 00 FF 5F */	li r0, -161
/* 8036D5D0 0036A530  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8036D5D4 0036A534  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8036D5D8 0036A538  3B E4 00 00 */	addi r31, r4, 0
/* 8036D5DC 0036A53C  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 8036D5E0 0036A540  7C A0 00 38 */	and r0, r5, r0
/* 8036D5E4 0036A544  60 00 00 08 */	ori r0, r0, 8
/* 8036D5E8 0036A548  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8036D5EC 0036A54C  38 61 00 10 */	addi r3, r1, 0x10
/* 8036D5F0 0036A550  48 01 20 25 */	bl OSClearContext
/* 8036D5F4 0036A554  38 61 00 10 */	addi r3, r1, 0x10
/* 8036D5F8 0036A558  48 01 1E 25 */	bl OSSetCurrentContext
/* 8036D5FC 0036A55C  80 6D AA FC */	lwz r3, lbl_805A96BC@sda21(r13)
/* 8036D600 0036A560  28 03 00 00 */	cmplwi r3, 0
/* 8036D604 0036A564  41 82 00 40 */	beq lbl_8036D644
/* 8036D608 0036A568  80 0D AB 0C */	lwz r0, lbl_805A96CC@sda21(r13)
/* 8036D60C 0036A56C  2C 00 00 00 */	cmpwi r0, 0
/* 8036D610 0036A570  40 82 00 34 */	bne lbl_8036D644
/* 8036D614 0036A574  80 0D AB 00 */	lwz r0, lbl_805A96C0@sda21(r13)
/* 8036D618 0036A578  38 80 00 01 */	li r4, 1
/* 8036D61C 0036A57C  90 8D AB 0C */	stw r4, lbl_805A96CC@sda21(r13)
/* 8036D620 0036A580  28 00 00 00 */	cmplwi r0, 0
/* 8036D624 0036A584  41 82 00 0C */	beq lbl_8036D630
/* 8036D628 0036A588  48 00 00 41 */	bl __AICallbackStackSwitch
/* 8036D62C 0036A58C  48 00 00 10 */	b lbl_8036D63C
lbl_8036D630:
/* 8036D630 0036A590  39 83 00 00 */	addi r12, r3, 0
/* 8036D634 0036A594  7D 88 03 A6 */	mtlr r12
/* 8036D638 0036A598  4E 80 00 21 */	blrl 
lbl_8036D63C:
/* 8036D63C 0036A59C  38 00 00 00 */	li r0, 0
/* 8036D640 0036A5A0  90 0D AB 0C */	stw r0, lbl_805A96CC@sda21(r13)
lbl_8036D644:
/* 8036D644 0036A5A4  38 61 00 10 */	addi r3, r1, 0x10
/* 8036D648 0036A5A8  48 01 1F CD */	bl OSClearContext
/* 8036D64C 0036A5AC  7F E3 FB 78 */	mr r3, r31
/* 8036D650 0036A5B0  48 01 1D CD */	bl OSSetCurrentContext
/* 8036D654 0036A5B4  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8036D658 0036A5B8  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8036D65C 0036A5BC  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8036D660 0036A5C0  7C 08 03 A6 */	mtlr r0
/* 8036D664 0036A5C4  4E 80 00 20 */	blr 

.global __AICallbackStackSwitch
__AICallbackStackSwitch:
/* 8036D668 0036A5C8  7C 08 02 A6 */	mflr r0
/* 8036D66C 0036A5CC  90 01 00 04 */	stw r0, 4(r1)
/* 8036D670 0036A5D0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8036D674 0036A5D4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8036D678 0036A5D8  7C 7F 1B 78 */	mr r31, r3
/* 8036D67C 0036A5DC  3C A0 80 5B */	lis r5, lbl_805A96C4@ha
/* 8036D680 0036A5E0  38 A5 96 C4 */	addi r5, r5, lbl_805A96C4@l
/* 8036D684 0036A5E4  90 25 00 00 */	stw r1, 0(r5)
/* 8036D688 0036A5E8  3C A0 80 5B */	lis r5, lbl_805A96C0@ha
/* 8036D68C 0036A5EC  38 A5 96 C0 */	addi r5, r5, lbl_805A96C0@l
/* 8036D690 0036A5F0  80 25 00 00 */	lwz r1, 0(r5)
/* 8036D694 0036A5F4  38 21 FF F8 */	addi r1, r1, -8
/* 8036D698 0036A5F8  7F E8 03 A6 */	mtlr r31
/* 8036D69C 0036A5FC  4E 80 00 21 */	blrl 
/* 8036D6A0 0036A600  3C A0 80 5B */	lis r5, lbl_805A96C4@ha
/* 8036D6A4 0036A604  38 A5 96 C4 */	addi r5, r5, lbl_805A96C4@l
/* 8036D6A8 0036A608  80 25 00 00 */	lwz r1, 0(r5)
/* 8036D6AC 0036A60C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8036D6B0 0036A610  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8036D6B4 0036A614  38 21 00 18 */	addi r1, r1, 0x18
/* 8036D6B8 0036A618  7C 08 03 A6 */	mtlr r0
/* 8036D6BC 0036A61C  4E 80 00 20 */	blr 

.global __AI_SRC_INIT
__AI_SRC_INIT:
/* 8036D6C0 0036A620  7C 08 02 A6 */	mflr r0
/* 8036D6C4 0036A624  90 01 00 04 */	stw r0, 4(r1)
/* 8036D6C8 0036A628  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8036D6CC 0036A62C  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8036D6D0 0036A630  38 80 00 00 */	li r4, 0
/* 8036D6D4 0036A634  38 60 00 00 */	li r3, 0
/* 8036D6D8 0036A638  38 00 00 00 */	li r0, 0
/* 8036D6DC 0036A63C  3B 80 00 00 */	li r28, 0
/* 8036D6E0 0036A640  3B A0 00 00 */	li r29, 0
/* 8036D6E4 0036A644  48 00 00 04 */	b lbl_8036D6E8
lbl_8036D6E8:
/* 8036D6E8 0036A648  3F E0 CC 00 */	lis r31, 0xcc00
/* 8036D6EC 0036A64C  48 00 00 04 */	b lbl_8036D6F0
lbl_8036D6F0:
/* 8036D6F0 0036A650  48 00 01 64 */	b lbl_8036D854
lbl_8036D6F4:
/* 8036D6F4 0036A654  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D6F8 0036A658  3B DF 6C 00 */	addi r30, r31, 0x6c00
/* 8036D6FC 0036A65C  3B DE 00 08 */	addi r30, r30, 8
/* 8036D700 0036A660  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8036D704 0036A664  60 00 00 20 */	ori r0, r0, 0x20
/* 8036D708 0036A668  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D70C 0036A66C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D710 0036A670  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8036D714 0036A674  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D718 0036A678  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D71C 0036A67C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8036D720 0036A680  60 00 00 01 */	ori r0, r0, 1
/* 8036D724 0036A684  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D728 0036A688  80 7E 00 00 */	lwz r3, 0(r30)
/* 8036D72C 0036A68C  48 00 00 04 */	b lbl_8036D730
lbl_8036D730:
/* 8036D730 0036A690  48 00 00 04 */	b lbl_8036D734
lbl_8036D734:
/* 8036D734 0036A694  80 1E 00 00 */	lwz r0, 0(r30)
/* 8036D738 0036A698  7C 03 00 40 */	cmplw r3, r0
/* 8036D73C 0036A69C  41 82 FF F8 */	beq lbl_8036D734
/* 8036D740 0036A6A0  48 01 7C 69 */	bl OSGetTime
/* 8036D744 0036A6A4  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D748 0036A6A8  7C 9A 23 78 */	mr r26, r4
/* 8036D74C 0036A6AC  7C 7B 1B 78 */	mr r27, r3
/* 8036D750 0036A6B0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8036D754 0036A6B4  60 00 00 02 */	ori r0, r0, 2
/* 8036D758 0036A6B8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D75C 0036A6BC  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D760 0036A6C0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8036D764 0036A6C4  60 00 00 01 */	ori r0, r0, 1
/* 8036D768 0036A6C8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D76C 0036A6CC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8036D770 0036A6D0  48 00 00 04 */	b lbl_8036D774
lbl_8036D774:
/* 8036D774 0036A6D4  48 00 00 04 */	b lbl_8036D778
lbl_8036D778:
/* 8036D778 0036A6D8  80 1E 00 00 */	lwz r0, 0(r30)
/* 8036D77C 0036A6DC  7C 03 00 40 */	cmplw r3, r0
/* 8036D780 0036A6E0  41 82 FF F8 */	beq lbl_8036D778
/* 8036D784 0036A6E4  48 01 7C 25 */	bl OSGetTime
/* 8036D788 0036A6E8  7D 1A 20 10 */	subfc r8, r26, r4
/* 8036D78C 0036A6EC  81 8D AB 14 */	lwz r12, lbl_805A96D4@sda21(r13)
/* 8036D790 0036A6F0  80 BF 6C 00 */	lwz r5, 0x6c00(r31)
/* 8036D794 0036A6F4  7C FB 19 10 */	subfe r7, r27, r3
/* 8036D798 0036A6F8  81 4D AB 34 */	lwz r10, lbl_805A96F4@sda21(r13)
/* 8036D79C 0036A6FC  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 8036D7A0 0036A700  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 8036D7A4 0036A704  81 6D AB 10 */	lwz r11, lbl_805A96D0@sda21(r13)
/* 8036D7A8 0036A708  7C CA 60 10 */	subfc r6, r10, r12
/* 8036D7AC 0036A70C  81 2D AB 30 */	lwz r9, lbl_805A96F0@sda21(r13)
/* 8036D7B0 0036A710  90 BF 6C 00 */	stw r5, 0x6c00(r31)
/* 8036D7B4 0036A714  7C 09 59 10 */	subfe r0, r9, r11
/* 8036D7B8 0036A718  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8036D7BC 0036A71C  7C 06 40 10 */	subfc r0, r6, r8
/* 8036D7C0 0036A720  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8036D7C4 0036A724  7C A5 39 10 */	subfe r5, r5, r7
/* 8036D7C8 0036A728  7C A7 39 10 */	subfe r5, r7, r7
/* 8036D7CC 0036A72C  7C A5 00 D0 */	neg r5, r5
/* 8036D7D0 0036A730  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8036D7D4 0036A734  2C 05 00 00 */	cmpwi r5, 0
/* 8036D7D8 0036A738  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8036D7DC 0036A73C  41 82 00 14 */	beq lbl_8036D7F0
/* 8036D7E0 0036A740  83 AD AB 20 */	lwz r29, lbl_805A96E0@sda21(r13)
/* 8036D7E4 0036A744  38 00 00 01 */	li r0, 1
/* 8036D7E8 0036A748  83 8D AB 24 */	lwz r28, lbl_805A96E4@sda21(r13)
/* 8036D7EC 0036A74C  48 00 00 68 */	b lbl_8036D854
lbl_8036D7F0:
/* 8036D7F0 0036A750  7C CC 50 14 */	addc r6, r12, r10
/* 8036D7F4 0036A754  7C 0B 49 14 */	adde r0, r11, r9
/* 8036D7F8 0036A758  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8036D7FC 0036A75C  7C 06 40 10 */	subfc r0, r6, r8
/* 8036D800 0036A760  7C A5 39 10 */	subfe r5, r5, r7
/* 8036D804 0036A764  7C A7 39 10 */	subfe r5, r7, r7
/* 8036D808 0036A768  7C A5 00 D0 */	neg r5, r5
/* 8036D80C 0036A76C  2C 05 00 00 */	cmpwi r5, 0
/* 8036D810 0036A770  40 82 00 40 */	bne lbl_8036D850
/* 8036D814 0036A774  80 AD AB 1C */	lwz r5, lbl_805A96DC@sda21(r13)
/* 8036D818 0036A778  80 0D AB 18 */	lwz r0, lbl_805A96D8@sda21(r13)
/* 8036D81C 0036A77C  7C CA 28 10 */	subfc r6, r10, r5
/* 8036D820 0036A780  7C 09 01 10 */	subfe r0, r9, r0
/* 8036D824 0036A784  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8036D828 0036A788  7C 06 40 10 */	subfc r0, r6, r8
/* 8036D82C 0036A78C  7C A5 39 10 */	subfe r5, r5, r7
/* 8036D830 0036A790  7C A7 39 10 */	subfe r5, r7, r7
/* 8036D834 0036A794  7C A5 00 D0 */	neg r5, r5
/* 8036D838 0036A798  2C 05 00 00 */	cmpwi r5, 0
/* 8036D83C 0036A79C  41 82 00 14 */	beq lbl_8036D850
/* 8036D840 0036A7A0  83 AD AB 28 */	lwz r29, lbl_805A96E8@sda21(r13)
/* 8036D844 0036A7A4  38 00 00 01 */	li r0, 1
/* 8036D848 0036A7A8  83 8D AB 2C */	lwz r28, lbl_805A96EC@sda21(r13)
/* 8036D84C 0036A7AC  48 00 00 08 */	b lbl_8036D854
lbl_8036D850:
/* 8036D850 0036A7B0  38 00 00 00 */	li r0, 0
lbl_8036D854:
/* 8036D854 0036A7B4  28 00 00 00 */	cmplwi r0, 0
/* 8036D858 0036A7B8  41 82 FE 9C */	beq lbl_8036D6F4
/* 8036D85C 0036A7BC  7F 64 E0 14 */	addc r27, r4, r28
/* 8036D860 0036A7C0  7F 43 E9 14 */	adde r26, r3, r29
/* 8036D864 0036A7C4  48 00 00 04 */	b lbl_8036D868
lbl_8036D868:
/* 8036D868 0036A7C8  48 00 00 04 */	b lbl_8036D86C
lbl_8036D86C:
/* 8036D86C 0036A7CC  48 01 7B 3D */	bl OSGetTime
/* 8036D870 0036A7D0  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8036D874 0036A7D4  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 8036D878 0036A7D8  7C 1B 20 10 */	subfc r0, r27, r4
/* 8036D87C 0036A7DC  7C 63 29 10 */	subfe r3, r3, r5
/* 8036D880 0036A7E0  7C 65 29 10 */	subfe r3, r5, r5
/* 8036D884 0036A7E4  7C 63 00 D0 */	neg r3, r3
/* 8036D888 0036A7E8  2C 03 00 00 */	cmpwi r3, 0
/* 8036D88C 0036A7EC  40 82 FF E0 */	bne lbl_8036D86C
/* 8036D890 0036A7F0  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8036D894 0036A7F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8036D898 0036A7F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8036D89C 0036A7FC  7C 08 03 A6 */	mtlr r0
/* 8036D8A0 0036A800  4E 80 00 20 */	blr 

