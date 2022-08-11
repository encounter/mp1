.include "macros.inc"

.section .text, "ax"

.global sndFXCtrl
sndFXCtrl:
/* 8039C190 003990F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C194 003990F4  7C 08 02 A6 */	mflr r0
/* 8039C198 003990F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C19C 003990FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039C1A0 00399100  7C BF 2B 78 */	mr r31, r5
/* 8039C1A4 00399104  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039C1A8 00399108  7C 9E 23 78 */	mr r30, r4
/* 8039C1AC 0039910C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039C1B0 00399110  7C 7D 1B 78 */	mr r29, r3
/* 8039C1B4 00399114  48 01 8F 09 */	bl hwDisableIrq
/* 8039C1B8 00399118  7F A3 EB 78 */	mr r3, r29
/* 8039C1BC 0039911C  7F C4 F3 78 */	mr r4, r30
/* 8039C1C0 00399120  7F E5 FB 78 */	mr r5, r31
/* 8039C1C4 00399124  4B FF EF 51 */	bl synthFXSetCtrl
/* 8039C1C8 00399128  7C 7F 1B 78 */	mr r31, r3
/* 8039C1CC 0039912C  48 01 8E B9 */	bl hwEnableIrq
/* 8039C1D0 00399130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C1D4 00399134  7F E3 FB 78 */	mr r3, r31
/* 8039C1D8 00399138  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039C1DC 0039913C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039C1E0 00399140  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039C1E4 00399144  7C 08 03 A6 */	mtlr r0
/* 8039C1E8 00399148  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C1EC 0039914C  4E 80 00 20 */	blr

.global sndFXCtrl14
sndFXCtrl14:
/* 8039C1F0 00399150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C1F4 00399154  7C 08 02 A6 */	mflr r0
/* 8039C1F8 00399158  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C1FC 0039915C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039C200 00399160  7C BF 2B 78 */	mr r31, r5
/* 8039C204 00399164  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039C208 00399168  7C 9E 23 78 */	mr r30, r4
/* 8039C20C 0039916C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039C210 00399170  7C 7D 1B 78 */	mr r29, r3
/* 8039C214 00399174  48 01 8E A9 */	bl hwDisableIrq
/* 8039C218 00399178  7F A3 EB 78 */	mr r3, r29
/* 8039C21C 0039917C  7F C4 F3 78 */	mr r4, r30
/* 8039C220 00399180  7F E5 FB 78 */	mr r5, r31
/* 8039C224 00399184  4B FF EF D5 */	bl synthFXSetCtrl14
/* 8039C228 00399188  7C 7F 1B 78 */	mr r31, r3
/* 8039C22C 0039918C  48 01 8E 59 */	bl hwEnableIrq
/* 8039C230 00399190  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C234 00399194  7F E3 FB 78 */	mr r3, r31
/* 8039C238 00399198  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039C23C 0039919C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039C240 003991A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039C244 003991A4  7C 08 03 A6 */	mtlr r0
/* 8039C248 003991A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C24C 003991AC  4E 80 00 20 */	blr

.global sndFXKeyOff
sndFXKeyOff:
/* 8039C250 003991B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C254 003991B4  7C 08 02 A6 */	mflr r0
/* 8039C258 003991B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C25C 003991BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039C260 003991C0  7C 7F 1B 78 */	mr r31, r3
/* 8039C264 003991C4  48 01 8E 59 */	bl hwDisableIrq
/* 8039C268 003991C8  7F E3 FB 78 */	mr r3, r31
/* 8039C26C 003991CC  4B FF F0 F5 */	bl synthSendKeyOff
/* 8039C270 003991D0  7C 7F 1B 78 */	mr r31, r3
/* 8039C274 003991D4  48 01 8E 11 */	bl hwEnableIrq
/* 8039C278 003991D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C27C 003991DC  7F E3 FB 78 */	mr r3, r31
/* 8039C280 003991E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039C284 003991E4  7C 08 03 A6 */	mtlr r0
/* 8039C288 003991E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C28C 003991EC  4E 80 00 20 */	blr

.global sndFXStartEx
sndFXStartEx:
/* 8039C290 003991F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C294 003991F4  7C 08 02 A6 */	mflr r0
/* 8039C298 003991F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C29C 003991FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039C2A0 00399200  7C DF 33 78 */	mr r31, r6
/* 8039C2A4 00399204  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039C2A8 00399208  7C BE 2B 78 */	mr r30, r5
/* 8039C2AC 0039920C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039C2B0 00399210  7C 9D 23 78 */	mr r29, r4
/* 8039C2B4 00399214  93 81 00 10 */	stw r28, 0x10(r1)
/* 8039C2B8 00399218  7C 7C 1B 78 */	mr r28, r3
/* 8039C2BC 0039921C  48 01 8E 01 */	bl hwDisableIrq
/* 8039C2C0 00399220  3C 60 80 55 */	lis r3, synthITDDefault@ha
/* 8039C2C4 00399224  57 E0 0D FC */	rlwinm r0, r31, 1, 0x17, 0x1e
/* 8039C2C8 00399228  38 83 0A A4 */	addi r4, r3, synthITDDefault@l
/* 8039C2CC 0039922C  7F E6 FB 78 */	mr r6, r31
/* 8039C2D0 00399230  7C A4 02 14 */	add r5, r4, r0
/* 8039C2D4 00399234  7F 83 E3 78 */	mr r3, r28
/* 8039C2D8 00399238  88 E5 00 01 */	lbz r7, 1(r5)
/* 8039C2DC 0039923C  7F A4 EB 78 */	mr r4, r29
/* 8039C2E0 00399240  7F C5 F3 78 */	mr r5, r30
/* 8039C2E4 00399244  4B FF ED 69 */	bl synthFXStart
/* 8039C2E8 00399248  7C 7F 1B 78 */	mr r31, r3
/* 8039C2EC 0039924C  48 01 8D 99 */	bl hwEnableIrq
/* 8039C2F0 00399250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C2F4 00399254  7F E3 FB 78 */	mr r3, r31
/* 8039C2F8 00399258  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039C2FC 0039925C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039C300 00399260  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039C304 00399264  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8039C308 00399268  7C 08 03 A6 */	mtlr r0
/* 8039C30C 0039926C  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C310 00399270  4E 80 00 20 */	blr

.global sndFXCheck
sndFXCheck:
/* 8039C314 00399274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C318 00399278  7C 08 02 A6 */	mflr r0
/* 8039C31C 0039927C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C320 00399280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039C324 00399284  7C 7F 1B 78 */	mr r31, r3
/* 8039C328 00399288  48 00 B8 81 */	bl vidGetInternalId
/* 8039C32C 0039928C  3C 03 00 01 */	addis r0, r3, 1
/* 8039C330 00399290  38 60 FF FF */	li r3, -1
/* 8039C334 00399294  28 00 FF FF */	cmplwi r0, 0xffff
/* 8039C338 00399298  41 82 00 08 */	beq lbl_8039C340
/* 8039C33C 0039929C  7F E3 FB 78 */	mr r3, r31
lbl_8039C340:
/* 8039C340 003992A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C344 003992A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039C348 003992A8  7C 08 03 A6 */	mtlr r0
/* 8039C34C 003992AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C350 003992B0  4E 80 00 20 */	blr

.global sndVolume
sndVolume:
/* 8039C354 003992B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C358 003992B8  7C 08 02 A6 */	mflr r0
/* 8039C35C 003992BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C360 003992C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039C364 003992C4  7C BF 2B 78 */	mr r31, r5
/* 8039C368 003992C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039C36C 003992CC  7C 9E 23 78 */	mr r30, r4
/* 8039C370 003992D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039C374 003992D4  7C 7D 1B 78 */	mr r29, r3
/* 8039C378 003992D8  48 01 8D 45 */	bl hwDisableIrq
/* 8039C37C 003992DC  7F A3 EB 78 */	mr r3, r29
/* 8039C380 003992E0  7F C4 F3 78 */	mr r4, r30
/* 8039C384 003992E4  7F E5 FB 78 */	mr r5, r31
/* 8039C388 003992E8  38 C0 00 00 */	li r6, 0
/* 8039C38C 003992EC  38 E0 FF FF */	li r7, -1
/* 8039C390 003992F0  4B FF F0 59 */	bl synthVolume
/* 8039C394 003992F4  48 01 8C F1 */	bl hwEnableIrq
/* 8039C398 003992F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C39C 003992FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039C3A0 00399300  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039C3A4 00399304  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039C3A8 00399308  7C 08 03 A6 */	mtlr r0
/* 8039C3AC 0039930C  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C3B0 00399310  4E 80 00 20 */	blr

.global sndMasterVolume
sndMasterVolume:
/* 8039C3B4 00399314  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C3B8 00399318  7C 08 02 A6 */	mflr r0
/* 8039C3BC 0039931C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C3C0 00399320  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039C3C4 00399324  7C DF 33 78 */	mr r31, r6
/* 8039C3C8 00399328  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039C3CC 0039932C  7C BE 2B 78 */	mr r30, r5
/* 8039C3D0 00399330  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039C3D4 00399334  7C 9D 23 78 */	mr r29, r4
/* 8039C3D8 00399338  93 81 00 10 */	stw r28, 0x10(r1)
/* 8039C3DC 0039933C  7C 7C 1B 78 */	mr r28, r3
/* 8039C3E0 00399340  48 01 8C DD */	bl hwDisableIrq
/* 8039C3E4 00399344  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8039C3E8 00399348  41 82 00 1C */	beq lbl_8039C404
/* 8039C3EC 0039934C  7F 83 E3 78 */	mr r3, r28
/* 8039C3F0 00399350  7F A4 EB 78 */	mr r4, r29
/* 8039C3F4 00399354  38 A0 00 15 */	li r5, 0x15
/* 8039C3F8 00399358  38 C0 00 00 */	li r6, 0
/* 8039C3FC 0039935C  38 E0 FF FF */	li r7, -1
/* 8039C400 00399360  4B FF EF E9 */	bl synthVolume
lbl_8039C404:
/* 8039C404 00399364  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8039C408 00399368  41 82 00 1C */	beq lbl_8039C424
/* 8039C40C 0039936C  7F 83 E3 78 */	mr r3, r28
/* 8039C410 00399370  7F A4 EB 78 */	mr r4, r29
/* 8039C414 00399374  38 A0 00 16 */	li r5, 0x16
/* 8039C418 00399378  38 C0 00 00 */	li r6, 0
/* 8039C41C 0039937C  38 E0 FF FF */	li r7, -1
/* 8039C420 00399380  4B FF EF C9 */	bl synthVolume
lbl_8039C424:
/* 8039C424 00399384  48 01 8C 61 */	bl hwEnableIrq
/* 8039C428 00399388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C42C 0039938C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039C430 00399390  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039C434 00399394  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039C438 00399398  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8039C43C 0039939C  7C 08 03 A6 */	mtlr r0
/* 8039C440 003993A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C444 003993A4  4E 80 00 20 */	blr

.global sndOutputMode
sndOutputMode:
/* 8039C448 003993A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C44C 003993AC  7C 08 02 A6 */	mflr r0
/* 8039C450 003993B0  2C 03 00 01 */	cmpwi r3, 1
/* 8039C454 003993B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C458 003993B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039C45C 003993BC  83 ED AE 74 */	lwz r31, synthFlags@sda21(r13)
/* 8039C460 003993C0  41 82 00 38 */	beq lbl_8039C498
/* 8039C464 003993C4  40 80 00 10 */	bge lbl_8039C474
/* 8039C468 003993C8  2C 03 00 00 */	cmpwi r3, 0
/* 8039C46C 003993CC  40 80 00 14 */	bge lbl_8039C480
/* 8039C470 003993D0  48 00 00 54 */	b lbl_8039C4C4
lbl_8039C474:
/* 8039C474 003993D4  2C 03 00 03 */	cmpwi r3, 3
/* 8039C478 003993D8  40 80 00 4C */	bge lbl_8039C4C4
/* 8039C47C 003993DC  48 00 00 34 */	b lbl_8039C4B0
lbl_8039C480:
/* 8039C480 003993E0  63 E0 00 01 */	ori r0, r31, 1
/* 8039C484 003993E4  90 0D AE 74 */	stw r0, synthFlags@sda21(r13)
/* 8039C488 003993E8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8039C48C 003993EC  90 0D AE 74 */	stw r0, synthFlags@sda21(r13)
/* 8039C490 003993F0  48 01 7A 8D */	bl hwDisableHRTF
/* 8039C494 003993F4  48 00 00 30 */	b lbl_8039C4C4
lbl_8039C498:
/* 8039C498 003993F8  57 E3 00 3C */	rlwinm r3, r31, 0, 0, 0x1e
/* 8039C49C 003993FC  57 E0 00 3A */	rlwinm r0, r31, 0, 0, 0x1d
/* 8039C4A0 00399400  90 6D AE 74 */	stw r3, synthFlags@sda21(r13)
/* 8039C4A4 00399404  90 0D AE 74 */	stw r0, synthFlags@sda21(r13)
/* 8039C4A8 00399408  48 01 7A 75 */	bl hwDisableHRTF
/* 8039C4AC 0039940C  48 00 00 18 */	b lbl_8039C4C4
lbl_8039C4B0:
/* 8039C4B0 00399410  57 E0 00 3C */	rlwinm r0, r31, 0, 0, 0x1e
/* 8039C4B4 00399414  90 0D AE 74 */	stw r0, synthFlags@sda21(r13)
/* 8039C4B8 00399418  60 00 00 02 */	ori r0, r0, 2
/* 8039C4BC 0039941C  90 0D AE 74 */	stw r0, synthFlags@sda21(r13)
/* 8039C4C0 00399420  48 01 7A 5D */	bl hwDisableHRTF
lbl_8039C4C4:
/* 8039C4C4 00399424  80 0D AE 74 */	lwz r0, synthFlags@sda21(r13)
/* 8039C4C8 00399428  7C 1F 00 40 */	cmplw r31, r0
/* 8039C4CC 0039942C  41 82 00 54 */	beq lbl_8039C520
/* 8039C4D0 00399430  3C 60 80 55 */	lis r3, synthInfo@ha
/* 8039C4D4 00399434  38 E0 00 00 */	li r7, 0
/* 8039C4D8 00399438  38 A3 00 50 */	addi r5, r3, synthInfo@l
/* 8039C4DC 0039943C  38 C0 00 00 */	li r6, 0
/* 8039C4E0 00399440  48 00 00 30 */	b lbl_8039C510
lbl_8039C4E4:
/* 8039C4E4 00399444  80 6D AE 78 */	lwz r3, synthVoice@sda21(r13)
/* 8039C4E8 00399448  38 06 01 14 */	addi r0, r6, 0x114
/* 8039C4EC 0039944C  38 C6 04 04 */	addi r6, r6, 0x404
/* 8039C4F0 00399450  38 E7 00 01 */	addi r7, r7, 1
/* 8039C4F4 00399454  7C 83 02 14 */	add r4, r3, r0
/* 8039C4F8 00399458  7C 63 02 14 */	add r3, r3, r0
/* 8039C4FC 0039945C  80 04 00 00 */	lwz r0, 0(r4)
/* 8039C500 00399460  80 84 00 04 */	lwz r4, 4(r4)
/* 8039C504 00399464  60 00 20 00 */	ori r0, r0, 0x2000
/* 8039C508 00399468  90 83 00 04 */	stw r4, 4(r3)
/* 8039C50C 0039946C  90 03 00 00 */	stw r0, 0(r3)
lbl_8039C510:
/* 8039C510 00399470  88 05 02 10 */	lbz r0, 0x210(r5)
/* 8039C514 00399474  7C 07 00 40 */	cmplw r7, r0
/* 8039C518 00399478  41 80 FF CC */	blt lbl_8039C4E4
/* 8039C51C 0039947C  48 00 12 81 */	bl streamOutputModeChanged
lbl_8039C520:
/* 8039C520 00399480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C524 00399484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039C528 00399488  7C 08 03 A6 */	mtlr r0
/* 8039C52C 0039948C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C530 00399490  4E 80 00 20 */	blr

.global sndSetAuxProcessingCallbacks
sndSetAuxProcessingCallbacks:
/* 8039C534 00399494  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8039C538 00399498  7C 08 02 A6 */	mflr r0
/* 8039C53C 0039949C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8039C540 003994A0  39 61 00 30 */	addi r11, r1, 0x30
/* 8039C544 003994A4  4B FE D5 25 */	bl _savegpr_22
/* 8039C548 003994A8  83 E1 00 38 */	lwz r31, 0x38(r1)
/* 8039C54C 003994AC  7C 79 1B 78 */	mr r25, r3
/* 8039C550 003994B0  7C 9A 23 78 */	mr r26, r4
/* 8039C554 003994B4  7C BB 2B 78 */	mr r27, r5
/* 8039C558 003994B8  7C D6 33 78 */	mr r22, r6
/* 8039C55C 003994BC  7C F7 3B 78 */	mr r23, r7
/* 8039C560 003994C0  7D 1C 43 78 */	mr r28, r8
/* 8039C564 003994C4  7D 3D 4B 78 */	mr r29, r9
/* 8039C568 003994C8  7D 5E 53 78 */	mr r30, r10
/* 8039C56C 003994CC  48 01 8B 51 */	bl hwDisableIrq
/* 8039C570 003994D0  28 1A 00 00 */	cmplwi r26, 0
/* 8039C574 003994D4  41 82 00 4C */	beq lbl_8039C5C0
/* 8039C578 003994D8  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 8039C57C 003994DC  57 38 06 3E */	clrlwi r24, r25, 0x18
/* 8039C580 003994E0  38 6D AE 64 */	addi r3, r13, synthAuxAMIDI@sda21
/* 8039C584 003994E4  28 00 00 FF */	cmplwi r0, 0xff
/* 8039C588 003994E8  7E C3 C1 AE */	stbx r22, r3, r24
/* 8039C58C 003994EC  41 82 00 58 */	beq lbl_8039C5E4
/* 8039C590 003994F0  7E E3 BB 78 */	mr r3, r23
/* 8039C594 003994F4  4B FF 87 9D */	bl seqGetPrivateId
/* 8039C598 003994F8  3C A0 80 55 */	lis r5, synthAuxACallback@ha
/* 8039C59C 003994FC  3C 80 80 55 */	lis r4, synthAuxAUser@ha
/* 8039C5A0 00399500  38 CD AE 5C */	addi r6, r13, synthAuxAMIDISet@sda21
/* 8039C5A4 00399504  57 00 10 3A */	slwi r0, r24, 2
/* 8039C5A8 00399508  38 A5 0A 44 */	addi r5, r5, synthAuxACallback@l
/* 8039C5AC 0039950C  38 84 0A 24 */	addi r4, r4, synthAuxAUser@l
/* 8039C5B0 00399510  7C 66 C1 AE */	stbx r3, r6, r24
/* 8039C5B4 00399514  7F 45 01 2E */	stwx r26, r5, r0
/* 8039C5B8 00399518  7F 64 01 2E */	stwx r27, r4, r0
/* 8039C5BC 0039951C  48 00 00 28 */	b lbl_8039C5E4
lbl_8039C5C0:
/* 8039C5C0 00399520  3C 60 80 55 */	lis r3, synthAuxACallback@ha
/* 8039C5C4 00399524  57 27 06 3E */	clrlwi r7, r25, 0x18
/* 8039C5C8 00399528  57 25 15 BA */	rlwinm r5, r25, 2, 0x16, 0x1d
/* 8039C5CC 0039952C  38 C0 00 00 */	li r6, 0
/* 8039C5D0 00399530  38 83 0A 44 */	addi r4, r3, synthAuxACallback@l
/* 8039C5D4 00399534  38 00 00 FF */	li r0, 0xff
/* 8039C5D8 00399538  38 6D AE 64 */	addi r3, r13, synthAuxAMIDI@sda21
/* 8039C5DC 0039953C  7C C4 29 2E */	stwx r6, r4, r5
/* 8039C5E0 00399540  7C 03 39 AE */	stbx r0, r3, r7
lbl_8039C5E4:
/* 8039C5E4 00399544  28 1C 00 00 */	cmplwi r28, 0
/* 8039C5E8 00399548  41 82 00 4C */	beq lbl_8039C634
/* 8039C5EC 0039954C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8039C5F0 00399550  57 38 06 3E */	clrlwi r24, r25, 0x18
/* 8039C5F4 00399554  38 6D AE 54 */	addi r3, r13, synthAuxBMIDI@sda21
/* 8039C5F8 00399558  28 00 00 FF */	cmplwi r0, 0xff
/* 8039C5FC 0039955C  7F C3 C1 AE */	stbx r30, r3, r24
/* 8039C600 00399560  41 82 00 58 */	beq lbl_8039C658
/* 8039C604 00399564  7F E3 FB 78 */	mr r3, r31
/* 8039C608 00399568  4B FF 87 29 */	bl seqGetPrivateId
/* 8039C60C 0039956C  3C A0 80 55 */	lis r5, synthAuxBCallback@ha
/* 8039C610 00399570  3C 80 80 55 */	lis r4, synthAuxBUser@ha
/* 8039C614 00399574  38 CD AE 4C */	addi r6, r13, synthAuxBMIDISet@sda21
/* 8039C618 00399578  57 00 10 3A */	slwi r0, r24, 2
/* 8039C61C 0039957C  38 A5 0A 84 */	addi r5, r5, synthAuxBCallback@l
/* 8039C620 00399580  38 84 0A 64 */	addi r4, r4, synthAuxBUser@l
/* 8039C624 00399584  7C 66 C1 AE */	stbx r3, r6, r24
/* 8039C628 00399588  7F 85 01 2E */	stwx r28, r5, r0
/* 8039C62C 0039958C  7F A4 01 2E */	stwx r29, r4, r0
/* 8039C630 00399590  48 00 00 28 */	b lbl_8039C658
lbl_8039C634:
/* 8039C634 00399594  3C 60 80 55 */	lis r3, synthAuxBCallback@ha
/* 8039C638 00399598  57 27 06 3E */	clrlwi r7, r25, 0x18
/* 8039C63C 0039959C  57 25 15 BA */	rlwinm r5, r25, 2, 0x16, 0x1d
/* 8039C640 003995A0  38 C0 00 00 */	li r6, 0
/* 8039C644 003995A4  38 83 0A 84 */	addi r4, r3, synthAuxBCallback@l
/* 8039C648 003995A8  38 00 00 FF */	li r0, 0xff
/* 8039C64C 003995AC  38 6D AE 54 */	addi r3, r13, synthAuxBMIDI@sda21
/* 8039C650 003995B0  7C C4 29 2E */	stwx r6, r4, r5
/* 8039C654 003995B4  7C 03 39 AE */	stbx r0, r3, r7
lbl_8039C658:
/* 8039C658 003995B8  7F 23 CB 78 */	mr r3, r25
/* 8039C65C 003995BC  7F 44 D3 78 */	mr r4, r26
/* 8039C660 003995C0  7F 65 DB 78 */	mr r5, r27
/* 8039C664 003995C4  7F 86 E3 78 */	mr r6, r28
/* 8039C668 003995C8  7F A7 EB 78 */	mr r7, r29
/* 8039C66C 003995CC  48 01 74 09 */	bl hwSetAUXProcessingCallbacks
/* 8039C670 003995D0  48 01 8A 15 */	bl hwEnableIrq
/* 8039C674 003995D4  39 61 00 30 */	addi r11, r1, 0x30
/* 8039C678 003995D8  4B FE D4 3D */	bl _restgpr_22
/* 8039C67C 003995DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8039C680 003995E0  7C 08 03 A6 */	mtlr r0
/* 8039C684 003995E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8039C688 003995E8  4E 80 00 20 */	blr

.global synthActivateStudio
synthActivateStudio:
/* 8039C68C 003995EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C690 003995F0  7C 08 02 A6 */	mflr r0
/* 8039C694 003995F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C698 003995F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039C69C 003995FC  7C BF 2B 78 */	mr r31, r5
/* 8039C6A0 00399600  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039C6A4 00399604  7C 9E 23 78 */	mr r30, r4
/* 8039C6A8 00399608  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039C6AC 0039960C  7C 7D 1B 78 */	mr r29, r3
/* 8039C6B0 00399610  48 01 8A 0D */	bl hwDisableIrq
/* 8039C6B4 00399614  3C 60 80 55 */	lis r3, synthITDDefault@ha
/* 8039C6B8 00399618  3C 80 80 55 */	lis r4, synthAuxACallback@ha
/* 8039C6BC 0039961C  38 C3 0A A4 */	addi r6, r3, synthITDDefault@l
/* 8039C6C0 00399620  57 AC 0D FC */	rlwinm r12, r29, 1, 0x17, 0x1e
/* 8039C6C4 00399624  7C 66 62 14 */	add r3, r6, r12
/* 8039C6C8 00399628  39 20 00 00 */	li r9, 0
/* 8039C6CC 0039962C  99 23 00 01 */	stb r9, 1(r3)
/* 8039C6D0 00399630  3C 60 80 55 */	lis r3, synthAuxBCallback@ha
/* 8039C6D4 00399634  57 AB 06 3E */	clrlwi r11, r29, 0x18
/* 8039C6D8 00399638  57 AA 15 BA */	rlwinm r10, r29, 2, 0x16, 0x1d
/* 8039C6DC 0039963C  38 84 0A 44 */	addi r4, r4, synthAuxACallback@l
/* 8039C6E0 00399640  38 A3 0A 84 */	addi r5, r3, synthAuxBCallback@l
/* 8039C6E4 00399644  38 00 00 FF */	li r0, 0xff
/* 8039C6E8 00399648  39 0D AE 64 */	addi r8, r13, synthAuxAMIDI@sda21
/* 8039C6EC 0039964C  38 ED AE 54 */	addi r7, r13, synthAuxBMIDI@sda21
/* 8039C6F0 00399650  7D 24 51 2E */	stwx r9, r4, r10
/* 8039C6F4 00399654  7F A3 EB 78 */	mr r3, r29
/* 8039C6F8 00399658  7F C4 F3 78 */	mr r4, r30
/* 8039C6FC 0039965C  7D 25 51 2E */	stwx r9, r5, r10
/* 8039C700 00399660  7F E5 FB 78 */	mr r5, r31
/* 8039C704 00399664  7C 08 59 AE */	stbx r0, r8, r11
/* 8039C708 00399668  7C 07 59 AE */	stbx r0, r7, r11
/* 8039C70C 0039966C  7D 26 61 AE */	stbx r9, r6, r12
/* 8039C710 00399670  48 01 73 8D */	bl hwActivateStudio
/* 8039C714 00399674  48 01 89 71 */	bl hwEnableIrq
/* 8039C718 00399678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C71C 0039967C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039C720 00399680  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039C724 00399684  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039C728 00399688  7C 08 03 A6 */	mtlr r0
/* 8039C72C 0039968C  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C730 00399690  4E 80 00 20 */	blr

.global synthDeactivateStudio
synthDeactivateStudio:
/* 8039C734 00399694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039C738 00399698  7C 08 02 A6 */	mflr r0
/* 8039C73C 0039969C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039C740 003996A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8039C744 003996A4  4B FE D3 39 */	bl _savegpr_27
/* 8039C748 003996A8  7C 7F 1B 78 */	mr r31, r3
/* 8039C74C 003996AC  3C 60 80 55 */	lis r3, synthInfo@ha
/* 8039C750 003996B0  3B A3 00 50 */	addi r29, r3, synthInfo@l
/* 8039C754 003996B4  3B 60 00 00 */	li r27, 0
/* 8039C758 003996B8  57 FE 06 3E */	clrlwi r30, r31, 0x18
/* 8039C75C 003996BC  3B 80 00 00 */	li r28, 0
/* 8039C760 003996C0  48 00 00 58 */	b lbl_8039C7B8
lbl_8039C764:
/* 8039C764 003996C4  80 0D AE 78 */	lwz r0, synthVoice@sda21(r13)
/* 8039C768 003996C8  7C 80 E2 14 */	add r4, r0, r28
/* 8039C76C 003996CC  88 04 01 1F */	lbz r0, 0x11f(r4)
/* 8039C770 003996D0  7C 1E 00 40 */	cmplw r30, r0
/* 8039C774 003996D4  40 82 00 3C */	bne lbl_8039C7B0
/* 8039C778 003996D8  80 64 00 F4 */	lwz r3, 0xf4(r4)
/* 8039C77C 003996DC  3C 03 00 01 */	addis r0, r3, 1
/* 8039C780 003996E0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8039C784 003996E4  41 82 00 14 */	beq lbl_8039C798
/* 8039C788 003996E8  80 64 00 F8 */	lwz r3, 0xf8(r4)
/* 8039C78C 003996EC  80 63 00 08 */	lwz r3, 8(r3)
/* 8039C790 003996F0  48 00 C4 C1 */	bl voiceKillSound
/* 8039C794 003996F4  48 00 00 1C */	b lbl_8039C7B0
lbl_8039C798:
/* 8039C798 003996F8  7F 63 DB 78 */	mr r3, r27
/* 8039C79C 003996FC  48 01 6A 01 */	bl hwIsActive
/* 8039C7A0 00399700  28 03 00 00 */	cmplwi r3, 0
/* 8039C7A4 00399704  41 82 00 0C */	beq lbl_8039C7B0
/* 8039C7A8 00399708  7F 63 DB 78 */	mr r3, r27
/* 8039C7AC 0039970C  48 01 72 9D */	bl hwOff
lbl_8039C7B0:
/* 8039C7B0 00399710  3B 9C 04 04 */	addi r28, r28, 0x404
/* 8039C7B4 00399714  3B 7B 00 01 */	addi r27, r27, 1
lbl_8039C7B8:
/* 8039C7B8 00399718  88 1D 02 10 */	lbz r0, 0x210(r29)
/* 8039C7BC 0039971C  7C 1B 00 40 */	cmplw r27, r0
/* 8039C7C0 00399720  41 80 FF A4 */	blt lbl_8039C764
/* 8039C7C4 00399724  48 01 88 F9 */	bl hwDisableIrq
/* 8039C7C8 00399728  3C 80 80 55 */	lis r4, synthAuxACallback@ha
/* 8039C7CC 0039972C  3C 60 80 55 */	lis r3, synthAuxBCallback@ha
/* 8039C7D0 00399730  57 E9 06 3E */	clrlwi r9, r31, 0x18
/* 8039C7D4 00399734  57 E8 15 BA */	rlwinm r8, r31, 2, 0x16, 0x1d
/* 8039C7D8 00399738  38 C4 0A 44 */	addi r6, r4, synthAuxACallback@l
/* 8039C7DC 0039973C  38 E0 00 00 */	li r7, 0
/* 8039C7E0 00399740  38 A3 0A 84 */	addi r5, r3, synthAuxBCallback@l
/* 8039C7E4 00399744  38 00 00 FF */	li r0, 0xff
/* 8039C7E8 00399748  38 8D AE 64 */	addi r4, r13, synthAuxAMIDI@sda21
/* 8039C7EC 0039974C  38 6D AE 54 */	addi r3, r13, synthAuxBMIDI@sda21
/* 8039C7F0 00399750  7C E6 41 2E */	stwx r7, r6, r8
/* 8039C7F4 00399754  7C E5 41 2E */	stwx r7, r5, r8
/* 8039C7F8 00399758  7C 04 49 AE */	stbx r0, r4, r9
/* 8039C7FC 0039975C  7C 03 49 AE */	stbx r0, r3, r9
/* 8039C800 00399760  48 01 88 85 */	bl hwEnableIrq
/* 8039C804 00399764  7F E3 FB 78 */	mr r3, r31
/* 8039C808 00399768  48 01 72 B5 */	bl hwDeactivateStudio
/* 8039C80C 0039976C  39 61 00 20 */	addi r11, r1, 0x20
/* 8039C810 00399770  4B FE D2 B9 */	bl _restgpr_27
/* 8039C814 00399774  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039C818 00399778  7C 08 03 A6 */	mtlr r0
/* 8039C81C 0039977C  38 21 00 20 */	addi r1, r1, 0x20
/* 8039C820 00399780  4E 80 00 20 */	blr

.global synthAddStudioInput
synthAddStudioInput:
/* 8039C824 00399784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C828 00399788  7C 08 02 A6 */	mflr r0
/* 8039C82C 0039978C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C830 00399790  48 01 72 AD */	bl hwAddInput
/* 8039C834 00399794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C838 00399798  7C 08 03 A6 */	mtlr r0
/* 8039C83C 0039979C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C840 003997A0  4E 80 00 20 */	blr

.global synthRemoveStudioInput
synthRemoveStudioInput:
/* 8039C844 003997A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C848 003997A8  7C 08 02 A6 */	mflr r0
/* 8039C84C 003997AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C850 003997B0  48 01 72 C1 */	bl hwRemoveInput
/* 8039C854 003997B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C858 003997B8  7C 08 03 A6 */	mtlr r0
/* 8039C85C 003997BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C860 003997C0  4E 80 00 20 */	blr
