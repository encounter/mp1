.include "macros.inc"

.section .text, "ax"

.global SetDisabled__14CRumbleManagerFb
SetDisabled__14CRumbleManagerFb:
/* 80369D00 00366C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80369D04 00366C64  7C 08 02 A6 */	mflr r0
/* 80369D08 00366C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80369D0C 00366C6C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80369D10 00366C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80369D14 00366C74  7C 9F 23 78 */	mr r31, r4
/* 80369D18 00366C78  93 C1 00 08 */	stw r30, 8(r1)
/* 80369D1C 00366C7C  7C 7E 1B 78 */	mr r30, r3
/* 80369D20 00366C80  41 82 00 08 */	beq lbl_80369D28
/* 80369D24 00366C84  48 00 00 29 */	bl HardStopAll__16CRumbleGeneratorFv
lbl_80369D28:
/* 80369D28 00366C88  88 1E 00 F0 */	lbz r0, 0xf0(r30)
/* 80369D2C 00366C8C  53 E0 3E 30 */	rlwimi r0, r31, 7, 0x18, 0x18
/* 80369D30 00366C90  98 1E 00 F0 */	stb r0, 0xf0(r30)
/* 80369D34 00366C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80369D38 00366C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80369D3C 00366C9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80369D40 00366CA0  7C 08 03 A6 */	mtlr r0
/* 80369D44 00366CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80369D48 00366CA8  4E 80 00 20 */	blr

.global HardStopAll__16CRumbleGeneratorFv
HardStopAll__16CRumbleGeneratorFv:
/* 80369D4C 00366CAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80369D50 00366CB0  7C 08 02 A6 */	mflr r0
/* 80369D54 00366CB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80369D58 00366CB8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80369D5C 00366CBC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80369D60 00366CC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80369D64 00366CC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80369D68 00366CC8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80369D6C 00366CCC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80369D70 00366CD0  C3 E2 CD F0 */	lfs f31, lbl_805AEB10@sda21(r2)
/* 80369D74 00366CD4  7C 7E 1B 78 */	mr r30, r3
/* 80369D78 00366CD8  3B 80 00 00 */	li r28, 0
/* 80369D7C 00366CDC  7C 7D 1B 78 */	mr r29, r3
/* 80369D80 00366CE0  3B E0 00 00 */	li r31, 0
lbl_80369D84:
/* 80369D84 00366CE4  D3 FE 00 C0 */	stfs f31, 0xc0(r30)
/* 80369D88 00366CE8  7F A3 EB 78 */	mr r3, r29
/* 80369D8C 00366CEC  D3 FE 00 D0 */	stfs f31, 0xd0(r30)
/* 80369D90 00366CF0  93 FE 00 E0 */	stw r31, 0xe0(r30)
/* 80369D94 00366CF4  4B FF F9 35 */	bl HardReset__12CRumbleVoiceFv
/* 80369D98 00366CF8  3B 9C 00 01 */	addi r28, r28, 1
/* 80369D9C 00366CFC  3B BD 00 30 */	addi r29, r29, 0x30
/* 80369DA0 00366D00  2C 1C 00 04 */	cmpwi r28, 4
/* 80369DA4 00366D04  3B DE 00 04 */	addi r30, r30, 4
/* 80369DA8 00366D08  41 80 FF DC */	blt lbl_80369D84
/* 80369DAC 00366D0C  3C 60 80 3E */	lis r3, lbl_803D8548@ha
/* 80369DB0 00366D10  38 63 85 48 */	addi r3, r3, lbl_803D8548@l
/* 80369DB4 00366D14  48 01 CD 71 */	bl PADControlAllMotors
/* 80369DB8 00366D18  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80369DBC 00366D1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80369DC0 00366D20  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80369DC4 00366D24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80369DC8 00366D28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80369DCC 00366D2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80369DD0 00366D30  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80369DD4 00366D34  7C 08 03 A6 */	mtlr r0
/* 80369DD8 00366D38  38 21 00 30 */	addi r1, r1, 0x30
/* 80369DDC 00366D3C  4E 80 00 20 */	blr

.global Update__16CRumbleGeneratorFf
Update__16CRumbleGeneratorFf:
/* 80369DE0 00366D40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80369DE4 00366D44  7C 08 02 A6 */	mflr r0
/* 80369DE8 00366D48  90 01 00 44 */	stw r0, 0x44(r1)
/* 80369DEC 00366D4C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80369DF0 00366D50  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80369DF4 00366D54  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80369DF8 00366D58  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80369DFC 00366D5C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80369E00 00366D60  88 03 00 F0 */	lbz r0, 0xf0(r3)
/* 80369E04 00366D64  FF C0 08 90 */	fmr f30, f1
/* 80369E08 00366D68  7C 7B 1B 78 */	mr r27, r3
/* 80369E0C 00366D6C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80369E10 00366D70  40 82 01 18 */	bne lbl_80369F28
/* 80369E14 00366D74  7F 7F DB 78 */	mr r31, r27
/* 80369E18 00366D78  7F 7E DB 78 */	mr r30, r27
/* 80369E1C 00366D7C  3B A0 00 00 */	li r29, 0
/* 80369E20 00366D80  3B 80 00 00 */	li r28, 0
lbl_80369E24:
/* 80369E24 00366D84  7F E3 FB 78 */	mr r3, r31
/* 80369E28 00366D88  4B FF F4 AD */	bl GetIntensity__12CRumbleVoiceCFv
/* 80369E2C 00366D8C  FF E0 08 90 */	fmr f31, f1
/* 80369E30 00366D90  7F E3 FB 78 */	mr r3, r31
/* 80369E34 00366D94  FC 20 F0 90 */	fmr f1, f30
/* 80369E38 00366D98  4B FF F5 29 */	bl Update__12CRumbleVoiceFf
/* 80369E3C 00366D9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80369E40 00366DA0  41 82 00 14 */	beq lbl_80369E54
/* 80369E44 00366DA4  C0 62 CD F0 */	lfs f3, lbl_805AEB10@sda21(r2)
/* 80369E48 00366DA8  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 80369E4C 00366DAC  4C 40 13 82 */	cror 2, 0, 2
/* 80369E50 00366DB0  40 82 00 2C */	bne lbl_80369E7C
lbl_80369E54:
/* 80369E54 00366DB4  C0 02 CD F0 */	lfs f0, lbl_805AEB10@sda21(r2)
/* 80369E58 00366DB8  D0 1E 00 C0 */	stfs f0, 0xc0(r30)
/* 80369E5C 00366DBC  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 80369E60 00366DC0  80 1E 00 E0 */	lwz r0, 0xe0(r30)
/* 80369E64 00366DC4  2C 00 00 00 */	cmpwi r0, 0
/* 80369E68 00366DC8  41 82 00 9C */	beq lbl_80369F04
/* 80369E6C 00366DCC  38 00 00 00 */	li r0, 0
/* 80369E70 00366DD0  3B A0 00 01 */	li r29, 1
/* 80369E74 00366DD4  90 1E 00 E0 */	stw r0, 0xe0(r30)
/* 80369E78 00366DD8  48 00 00 8C */	b lbl_80369F04
lbl_80369E7C:
/* 80369E7C 00366DDC  C0 02 CD F8 */	lfs f0, lbl_805AEB18@sda21(r2)
/* 80369E80 00366DE0  C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 80369E84 00366DE4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80369E88 00366DE8  C0 22 CD F4 */	lfs f1, lbl_805AEB14@sda21(r2)
/* 80369E8C 00366DEC  EC 42 F0 2A */	fadds f2, f2, f30
/* 80369E90 00366DF0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80369E94 00366DF4  D0 5E 00 C0 */	stfs f2, 0xc0(r30)
/* 80369E98 00366DF8  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80369E9C 00366DFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80369EA0 00366E00  4C 41 13 82 */	cror 2, 1, 2
/* 80369EA4 00366E04  40 82 00 24 */	bne lbl_80369EC8
/* 80369EA8 00366E08  D0 7E 00 C0 */	stfs f3, 0xc0(r30)
/* 80369EAC 00366E0C  80 1E 00 E0 */	lwz r0, 0xe0(r30)
/* 80369EB0 00366E10  2C 00 00 01 */	cmpwi r0, 1
/* 80369EB4 00366E14  41 82 00 50 */	beq lbl_80369F04
/* 80369EB8 00366E18  38 00 00 01 */	li r0, 1
/* 80369EBC 00366E1C  3B A0 00 01 */	li r29, 1
/* 80369EC0 00366E20  90 1E 00 E0 */	stw r0, 0xe0(r30)
/* 80369EC4 00366E24  48 00 00 40 */	b lbl_80369F04
lbl_80369EC8:
/* 80369EC8 00366E28  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80369ECC 00366E2C  C0 02 CD FC */	lfs f0, lbl_805AEB1C@sda21(r2)
/* 80369ED0 00366E30  EC 21 F0 2A */	fadds f1, f1, f30
/* 80369ED4 00366E34  D0 3E 00 D0 */	stfs f1, 0xd0(r30)
/* 80369ED8 00366E38  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80369EDC 00366E3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80369EE0 00366E40  4C 41 13 82 */	cror 2, 1, 2
/* 80369EE4 00366E44  40 82 00 20 */	bne lbl_80369F04
/* 80369EE8 00366E48  D0 7E 00 D0 */	stfs f3, 0xd0(r30)
/* 80369EEC 00366E4C  80 1E 00 E0 */	lwz r0, 0xe0(r30)
/* 80369EF0 00366E50  2C 00 00 00 */	cmpwi r0, 0
/* 80369EF4 00366E54  41 82 00 10 */	beq lbl_80369F04
/* 80369EF8 00366E58  38 00 00 00 */	li r0, 0
/* 80369EFC 00366E5C  3B A0 00 01 */	li r29, 1
/* 80369F00 00366E60  90 1E 00 E0 */	stw r0, 0xe0(r30)
lbl_80369F04:
/* 80369F04 00366E64  3B 9C 00 01 */	addi r28, r28, 1
/* 80369F08 00366E68  3B DE 00 04 */	addi r30, r30, 4
/* 80369F0C 00366E6C  2C 1C 00 04 */	cmpwi r28, 4
/* 80369F10 00366E70  3B FF 00 30 */	addi r31, r31, 0x30
/* 80369F14 00366E74  41 80 FF 10 */	blt lbl_80369E24
/* 80369F18 00366E78  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80369F1C 00366E7C  41 82 00 0C */	beq lbl_80369F28
/* 80369F20 00366E80  38 7B 00 E0 */	addi r3, r27, 0xe0
/* 80369F24 00366E84  48 01 CC 01 */	bl PADControlAllMotors
lbl_80369F28:
/* 80369F28 00366E88  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80369F2C 00366E8C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80369F30 00366E90  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80369F34 00366E94  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80369F38 00366E98  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80369F3C 00366E9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80369F40 00366EA0  7C 08 03 A6 */	mtlr r0
/* 80369F44 00366EA4  38 21 00 40 */	addi r1, r1, 0x40
/* 80369F48 00366EA8  4E 80 00 20 */	blr

.global Rumble__16CRumbleGeneratorFRC9SAdsrDataf15ERumblePriority7EIOPort
Rumble__16CRumbleGeneratorFRC9SAdsrDataf15ERumblePriority7EIOPort:
/* 80369F4C 00366EAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80369F50 00366EB0  7C 08 02 A6 */	mflr r0
/* 80369F54 00366EB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80369F58 00366EB8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80369F5C 00366EBC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80369F60 00366EC0  BF 41 00 08 */	stmw r26, 8(r1)
/* 80369F64 00366EC4  7C DD 33 78 */	mr r29, r6
/* 80369F68 00366EC8  7C 7A 1B 78 */	mr r26, r3
/* 80369F6C 00366ECC  1F FD 00 30 */	mulli r31, r29, 0x30
/* 80369F70 00366ED0  FF E0 08 90 */	fmr f31, f1
/* 80369F74 00366ED4  7C 9B 23 78 */	mr r27, r4
/* 80369F78 00366ED8  7C BC 2B 78 */	mr r28, r5
/* 80369F7C 00366EDC  7F DA FA 14 */	add r30, r26, r31
/* 80369F80 00366EE0  7F C3 F3 78 */	mr r3, r30
/* 80369F84 00366EE4  4B FF F3 9D */	bl GetFreeChannel__12CRumbleVoiceCFv
/* 80369F88 00366EE8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80369F8C 00366EEC  7C 65 1B 78 */	mr r5, r3
/* 80369F90 00366EF0  1C 60 00 24 */	mulli r3, r0, 0x24
/* 80369F94 00366EF4  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 80369F98 00366EF8  38 03 00 1C */	addi r0, r3, 0x1c
/* 80369F9C 00366EFC  7C 04 00 2E */	lwzx r0, r4, r0
/* 80369FA0 00366F00  7C 1C 00 00 */	cmpw r28, r0
/* 80369FA4 00366F04  41 80 00 30 */	blt lbl_80369FD4
/* 80369FA8 00366F08  57 A0 10 3A */	slwi r0, r29, 2
/* 80369FAC 00366F0C  C0 02 CD F0 */	lfs f0, lbl_805AEB10@sda21(r2)
/* 80369FB0 00366F10  7C DA 02 14 */	add r6, r26, r0
/* 80369FB4 00366F14  FC 20 F8 90 */	fmr f1, f31
/* 80369FB8 00366F18  D0 06 00 C0 */	stfs f0, 0xc0(r6)
/* 80369FBC 00366F1C  7F C3 F3 78 */	mr r3, r30
/* 80369FC0 00366F20  7F 64 DB 78 */	mr r4, r27
/* 80369FC4 00366F24  D0 06 00 D0 */	stfs f0, 0xd0(r6)
/* 80369FC8 00366F28  7F 86 E3 78 */	mr r6, r28
/* 80369FCC 00366F2C  4B FF F8 41 */	bl Activate__12CRumbleVoiceFRC9SAdsrDatasf15ERumblePriority
/* 80369FD0 00366F30  48 00 00 08 */	b lbl_80369FD8
lbl_80369FD4:
/* 80369FD4 00366F34  38 60 FF FF */	li r3, -1
lbl_80369FD8:
/* 80369FD8 00366F38  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80369FDC 00366F3C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80369FE0 00366F40  BB 41 00 08 */	lmw r26, 8(r1)
/* 80369FE4 00366F44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80369FE8 00366F48  7C 08 03 A6 */	mtlr r0
/* 80369FEC 00366F4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80369FF0 00366F50  4E 80 00 20 */	blr

.global __dt__16CRumbleGeneratorFv
__dt__16CRumbleGeneratorFv:
/* 80369FF4 00366F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80369FF8 00366F58  7C 08 02 A6 */	mflr r0
/* 80369FFC 00366F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036A000 00366F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036A004 00366F64  7C 9F 23 78 */	mr r31, r4
/* 8036A008 00366F68  93 C1 00 08 */	stw r30, 8(r1)
/* 8036A00C 00366F6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8036A010 00366F70  41 82 00 30 */	beq lbl_8036A040
/* 8036A014 00366F74  4B FF FD 39 */	bl HardStopAll__16CRumbleGeneratorFv
/* 8036A018 00366F78  3C 80 80 37 */	lis r4, __dt__12CRumbleVoiceFv@ha
/* 8036A01C 00366F7C  7F C3 F3 78 */	mr r3, r30
/* 8036A020 00366F80  38 84 A0 5C */	addi r4, r4, __dt__12CRumbleVoiceFv@l
/* 8036A024 00366F84  38 A0 00 30 */	li r5, 0x30
/* 8036A028 00366F88  38 C0 00 04 */	li r6, 4
/* 8036A02C 00366F8C  48 01 F6 A9 */	bl __destroy_arr
/* 8036A030 00366F90  7F E0 07 35 */	extsh. r0, r31
/* 8036A034 00366F94  40 81 00 0C */	ble lbl_8036A040
/* 8036A038 00366F98  7F C3 F3 78 */	mr r3, r30
/* 8036A03C 00366F9C  4B FA B8 F5 */	bl Free__7CMemoryFPCv
lbl_8036A040:
/* 8036A040 00366FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036A044 00366FA4  7F C3 F3 78 */	mr r3, r30
/* 8036A048 00366FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036A04C 00366FAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8036A050 00366FB0  7C 08 03 A6 */	mtlr r0
/* 8036A054 00366FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8036A058 00366FB8  4E 80 00 20 */	blr

.global __dt__12CRumbleVoiceFv
__dt__12CRumbleVoiceFv:
/* 8036A05C 00366FBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8036A060 00366FC0  7C 08 02 A6 */	mflr r0
/* 8036A064 00366FC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8036A068 00366FC8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8036A06C 00366FCC  7C 9F 23 78 */	mr r31, r4
/* 8036A070 00366FD0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8036A074 00366FD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8036A078 00366FD8  41 82 01 00 */	beq lbl_8036A178
/* 8036A07C 00366FDC  34 1E 00 20 */	addic. r0, r30, 0x20
/* 8036A080 00366FE0  41 82 00 58 */	beq lbl_8036A0D8
/* 8036A084 00366FE4  80 BE 00 20 */	lwz r5, 0x20(r30)
/* 8036A088 00366FE8  38 60 00 00 */	li r3, 0
/* 8036A08C 00366FEC  2C 05 00 00 */	cmpwi r5, 0
/* 8036A090 00366FF0  40 81 00 40 */	ble lbl_8036A0D0
/* 8036A094 00366FF4  2C 05 00 08 */	cmpwi r5, 8
/* 8036A098 00366FF8  38 85 FF F8 */	addi r4, r5, -8
/* 8036A09C 00366FFC  40 81 00 20 */	ble lbl_8036A0BC
/* 8036A0A0 00367000  38 04 00 07 */	addi r0, r4, 7
/* 8036A0A4 00367004  54 00 E8 FE */	srwi r0, r0, 3
/* 8036A0A8 00367008  7C 09 03 A6 */	mtctr r0
/* 8036A0AC 0036700C  2C 04 00 00 */	cmpwi r4, 0
/* 8036A0B0 00367010  40 81 00 0C */	ble lbl_8036A0BC
lbl_8036A0B4:
/* 8036A0B4 00367014  38 63 00 08 */	addi r3, r3, 8
/* 8036A0B8 00367018  42 00 FF FC */	bdnz lbl_8036A0B4
lbl_8036A0BC:
/* 8036A0BC 0036701C  7C 03 28 50 */	subf r0, r3, r5
/* 8036A0C0 00367020  7C 09 03 A6 */	mtctr r0
/* 8036A0C4 00367024  7C 03 28 00 */	cmpw r3, r5
/* 8036A0C8 00367028  40 80 00 08 */	bge lbl_8036A0D0
lbl_8036A0CC:
/* 8036A0CC 0036702C  42 00 00 00 */	bdnz lbl_8036A0CC
lbl_8036A0D0:
/* 8036A0D0 00367030  38 00 00 00 */	li r0, 0
/* 8036A0D4 00367034  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_8036A0D8:
/* 8036A0D8 00367038  34 1E 00 10 */	addic. r0, r30, 0x10
/* 8036A0DC 0036703C  41 82 00 44 */	beq lbl_8036A120
/* 8036A0E0 00367040  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8036A0E4 00367044  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8036A0E8 00367048  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8036A0EC 0036704C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8036A0F0 00367050  7C 64 1B 78 */	mr r4, r3
/* 8036A0F4 00367054  7C 03 02 14 */	add r0, r3, r0
/* 8036A0F8 00367058  90 61 00 18 */	stw r3, 0x18(r1)
/* 8036A0FC 0036705C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036A100 00367060  90 01 00 20 */	stw r0, 0x20(r1)
/* 8036A104 00367064  48 00 00 08 */	b lbl_8036A10C
lbl_8036A108:
/* 8036A108 00367068  38 84 00 24 */	addi r4, r4, 0x24
lbl_8036A10C:
/* 8036A10C 0036706C  7C 04 00 40 */	cmplw r4, r0
/* 8036A110 00367070  40 82 FF F8 */	bne lbl_8036A108
/* 8036A114 00367074  28 03 00 00 */	cmplwi r3, 0
/* 8036A118 00367078  41 82 00 08 */	beq lbl_8036A120
/* 8036A11C 0036707C  4B FA B8 15 */	bl Free__7CMemoryFPCv
lbl_8036A120:
/* 8036A120 00367080  28 1E 00 00 */	cmplwi r30, 0
/* 8036A124 00367084  41 82 00 44 */	beq lbl_8036A168
/* 8036A128 00367088  80 1E 00 04 */	lwz r0, 4(r30)
/* 8036A12C 0036708C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8036A130 00367090  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 8036A134 00367094  90 61 00 0C */	stw r3, 0xc(r1)
/* 8036A138 00367098  7C 64 1B 78 */	mr r4, r3
/* 8036A13C 0036709C  7C 03 02 14 */	add r0, r3, r0
/* 8036A140 003670A0  90 61 00 08 */	stw r3, 8(r1)
/* 8036A144 003670A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036A148 003670A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8036A14C 003670AC  48 00 00 08 */	b lbl_8036A154
lbl_8036A150:
/* 8036A150 003670B0  38 84 00 1C */	addi r4, r4, 0x1c
lbl_8036A154:
/* 8036A154 003670B4  7C 04 00 40 */	cmplw r4, r0
/* 8036A158 003670B8  40 82 FF F8 */	bne lbl_8036A150
/* 8036A15C 003670BC  28 03 00 00 */	cmplwi r3, 0
/* 8036A160 003670C0  41 82 00 08 */	beq lbl_8036A168
/* 8036A164 003670C4  4B FA B7 CD */	bl Free__7CMemoryFPCv
lbl_8036A168:
/* 8036A168 003670C8  7F E0 07 35 */	extsh. r0, r31
/* 8036A16C 003670CC  40 81 00 0C */	ble lbl_8036A178
/* 8036A170 003670D0  7F C3 F3 78 */	mr r3, r30
/* 8036A174 003670D4  4B FA B7 BD */	bl Free__7CMemoryFPCv
lbl_8036A178:
/* 8036A178 003670D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8036A17C 003670DC  7F C3 F3 78 */	mr r3, r30
/* 8036A180 003670E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8036A184 003670E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8036A188 003670E8  7C 08 03 A6 */	mtlr r0
/* 8036A18C 003670EC  38 21 00 30 */	addi r1, r1, 0x30
/* 8036A190 003670F0  4E 80 00 20 */	blr

.global __ct__16CRumbleGeneratorFv
__ct__16CRumbleGeneratorFv:
/* 8036A194 003670F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036A198 003670F8  7C 08 02 A6 */	mflr r0
/* 8036A19C 003670FC  3C 80 80 37 */	lis r4, __ct__12CRumbleVoiceFv@ha
/* 8036A1A0 00367100  3C A0 80 37 */	lis r5, __dt__12CRumbleVoiceFv@ha
/* 8036A1A4 00367104  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036A1A8 00367108  38 84 99 78 */	addi r4, r4, __ct__12CRumbleVoiceFv@l
/* 8036A1AC 0036710C  38 A5 A0 5C */	addi r5, r5, __dt__12CRumbleVoiceFv@l
/* 8036A1B0 00367110  38 C0 00 30 */	li r6, 0x30
/* 8036A1B4 00367114  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036A1B8 00367118  7C 7F 1B 78 */	mr r31, r3
/* 8036A1BC 0036711C  38 E0 00 04 */	li r7, 4
/* 8036A1C0 00367120  48 01 F5 8D */	bl __construct_array
/* 8036A1C4 00367124  88 1F 00 F0 */	lbz r0, 0xf0(r31)
/* 8036A1C8 00367128  38 60 00 00 */	li r3, 0
/* 8036A1CC 0036712C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8036A1D0 00367130  7F E3 FB 78 */	mr r3, r31
/* 8036A1D4 00367134  98 1F 00 F0 */	stb r0, 0xf0(r31)
/* 8036A1D8 00367138  4B FF FB 75 */	bl HardStopAll__16CRumbleGeneratorFv
/* 8036A1DC 0036713C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036A1E0 00367140  7F E3 FB 78 */	mr r3, r31
/* 8036A1E4 00367144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036A1E8 00367148  7C 08 03 A6 */	mtlr r0
/* 8036A1EC 0036714C  38 21 00 10 */	addi r1, r1, 0x10
/* 8036A1F0 00367150  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AEB10
lbl_805AEB10:
	# ROM: 0x3FB3B0
	.4byte 0

.global lbl_805AEB14
lbl_805AEB14:
	# ROM: 0x3FB3B4
	.float 1.0

.global lbl_805AEB18
lbl_805AEB18:
	# ROM: 0x3FB3B8
	.4byte 0x41F00000

.global lbl_805AEB1C
lbl_805AEB1C:
	# ROM: 0x3FB3BC
	.4byte 0x3D088889


.section .rodata
.balign 8
.global lbl_803D8548
lbl_803D8548:
	# ROM: 0x3D5548
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002

