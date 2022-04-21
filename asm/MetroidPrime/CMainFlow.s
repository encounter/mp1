.include "macros.inc"

.section .data
.global lbl_803D9928
lbl_803D9928:
	# ROM: 0x3D6928
	.4byte 0
	.4byte 0
	.4byte __dt__9CMainFlowFv
	.4byte OnMessage__9CMainFlowFRC20CArchitectureMessageR18CArchitectureQueue
	.4byte GetIsContinueDraw__9CMainFlowCFv
	.4byte Draw__9CMainFlowCFv
	.4byte PreDraw__6CIOWinCFv

.global lbl_803D9944
lbl_803D9944:
	# ROM: 0x3D6944
	.4byte lbl_800238E0
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_80023898
	.4byte lbl_800238A8
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_800238EC
	.4byte lbl_80023888
	.4byte lbl_800238B8

.section .sdata

.global lbl_805A6D20
lbl_805A6D20:
	# ROM: 0x3F46C0
	.4byte 0x0000000C

.global lbl_805A6D24
lbl_805A6D24:
	# ROM: 0x3F46C4
	.4byte 0x0000000B

.global lbl_805A6D28
lbl_805A6D28:
	# ROM: 0x3F46C8
	.4byte 0x0000000C

.global lbl_805A6D2C
lbl_805A6D2C:
	# ROM: 0x3F46CC
	.4byte 0x0000000B

.global lbl_805A6D30
lbl_805A6D30:
	# ROM: 0x3F46D0
	.4byte 0x0000000C

.global lbl_805A6D34
lbl_805A6D34:
	# ROM: 0x3F46D4
	.4byte 0x0000000B

.global lbl_805A6D38
lbl_805A6D38:
	# ROM: 0x3F46D8
	.4byte 0x0000000C

.global lbl_805A6D3C
lbl_805A6D3C:
	# ROM: 0x3F46DC
	.4byte 0x0000000B

.global lbl_805A6D40
lbl_805A6D40:
	# ROM: 0x3F46E0
	.4byte 0x0000000A

.global lbl_805A6D44
lbl_805A6D44:
	# ROM: 0x3F46E4
	.4byte 0x000003E8

.section .rodata

.global lbl_803CCAA8
lbl_803CCAA8:
	.asciz "??(??)"
	.asciz "MainFlow"
	.balign 4
	
.section .text, "ax"

.global __dt__9CMainFlowFv
__dt__9CMainFlowFv:
/* 80023524 00020484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023528 00020488  7C 08 02 A6 */	mflr r0
/* 8002352C 0002048C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023530 00020490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023534 00020494  7C 9F 23 78 */	mr r31, r4
/* 80023538 00020498  93 C1 00 08 */	stw r30, 8(r1)
/* 8002353C 0002049C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80023540 000204A0  41 82 00 28 */	beq lbl_80023568
/* 80023544 000204A4  3C A0 80 3E */	lis r5, lbl_803D9928@ha
/* 80023548 000204A8  38 80 00 00 */	li r4, 0
/* 8002354C 000204AC  38 05 99 28 */	addi r0, r5, lbl_803D9928@l
/* 80023550 000204B0  90 1E 00 00 */	stw r0, 0(r30)
/* 80023554 000204B4  48 02 F6 51 */	bl __dt__6CIOWinFv
/* 80023558 000204B8  7F E0 07 35 */	extsh. r0, r31
/* 8002355C 000204BC  40 81 00 0C */	ble lbl_80023568
/* 80023560 000204C0  7F C3 F3 78 */	mr r3, r30
/* 80023564 000204C4  48 2F 23 CD */	bl Free__7CMemoryFPCv
lbl_80023568:
/* 80023568 000204C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002356C 000204CC  7F C3 F3 78 */	mr r3, r30
/* 80023570 000204D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023574 000204D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80023578 000204D8  7C 08 03 A6 */	mtlr r0
/* 8002357C 000204DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80023580 000204E0  4E 80 00 20 */	blr 

.global SetGameState__9CMainFlowF17EClientFlowStatesR18CArchitectureQueue
SetGameState__9CMainFlowF17EClientFlowStatesR18CArchitectureQueue:
/* 80023584 000204E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80023588 000204E8  7C 08 02 A6 */	mflr r0
/* 8002358C 000204EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80023590 000204F0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80023594 000204F4  7C BF 2B 78 */	mr r31, r5
/* 80023598 000204F8  90 83 00 14 */	stw r4, 0x14(r3)
/* 8002359C 000204FC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800235A0 00020500  2C 00 00 0E */	cmpwi r0, 0xe
/* 800235A4 00020504  41 82 02 2C */	beq lbl_800237D0
/* 800235A8 00020508  40 80 00 1C */	bge lbl_800235C4
/* 800235AC 0002050C  2C 00 00 08 */	cmpwi r0, 8
/* 800235B0 00020510  41 82 01 80 */	beq lbl_80023730
/* 800235B4 00020514  40 80 02 8C */	bge lbl_80023840
/* 800235B8 00020518  2C 00 00 07 */	cmpwi r0, 7
/* 800235BC 0002051C  40 80 01 08 */	bge lbl_800236C4
/* 800235C0 00020520  48 00 02 80 */	b lbl_80023840
lbl_800235C4:
/* 800235C4 00020524  2C 00 00 10 */	cmpwi r0, 0x10
/* 800235C8 00020528  40 80 02 78 */	bge lbl_80023840
/* 800235CC 0002052C  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 800235D0 00020530  38 00 00 00 */	li r0, 0
/* 800235D4 00020534  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 800235D8 00020538  2C 03 00 01 */	cmpwi r3, 1
/* 800235DC 0002053C  41 80 00 10 */	blt lbl_800235EC
/* 800235E0 00020540  2C 03 00 04 */	cmpwi r3, 4
/* 800235E4 00020544  41 81 00 08 */	bgt lbl_800235EC
/* 800235E8 00020548  38 00 00 01 */	li r0, 1
lbl_800235EC:
/* 800235EC 0002054C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800235F0 00020550  41 82 02 50 */	beq lbl_80023840
/* 800235F4 00020554  2C 03 00 04 */	cmpwi r3, 4
/* 800235F8 00020558  40 80 00 6C */	bge lbl_80023664
/* 800235FC 0002055C  2C 03 00 01 */	cmpwi r3, 1
/* 80023600 00020560  40 80 00 08 */	bge lbl_80023608
/* 80023604 00020564  48 00 00 60 */	b lbl_80023664
lbl_80023608:
/* 80023608 00020568  3C 80 80 3D */	lis r4, lbl_803CCAA8@ha
/* 8002360C 0002056C  38 60 00 60 */	li r3, 0x60
/* 80023610 00020570  38 84 CA A8 */	addi r4, r4, lbl_803CCAA8@l
/* 80023614 00020574  38 A0 00 00 */	li r5, 0
/* 80023618 00020578  48 2F 22 55 */	bl __nw__FUlPCcPCc
/* 8002361C 0002057C  7C 60 1B 79 */	or. r0, r3, r3
/* 80023620 00020580  41 82 00 0C */	beq lbl_8002362C
/* 80023624 00020584  48 00 2C 99 */	bl __ct__8CCreditsFv
/* 80023628 00020588  7C 60 1B 78 */	mr r0, r3
lbl_8002362C:
/* 8002362C 0002058C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80023630 00020590  38 61 00 4C */	addi r3, r1, 0x4c
/* 80023634 00020594  38 E1 00 18 */	addi r7, r1, 0x18
/* 80023638 00020598  38 80 00 00 */	li r4, 0
/* 8002363C 0002059C  38 AD 81 60 */	addi r5, r13, lbl_805A6D20@sda21
/* 80023640 000205A0  38 CD 81 64 */	addi r6, r13, lbl_805A6D24@sda21
/* 80023644 000205A4  48 02 E6 69 */	bl CreateCreateIOWin__7MakeMsgF14EArchMsgTargetRCiRCiRCP6CIOWin
/* 80023648 000205A8  7F E3 FB 78 */	mr r3, r31
/* 8002364C 000205AC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80023650 000205B0  4B FE 36 B1 */	bl InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
/* 80023654 000205B4  34 61 00 54 */	addic. r3, r1, 0x54
/* 80023658 000205B8  41 82 01 E8 */	beq lbl_80023840
/* 8002365C 000205BC  4B FE 50 B1 */	bl sub_8000870c
/* 80023660 000205C0  48 00 01 E0 */	b lbl_80023840
lbl_80023664:
/* 80023664 000205C4  3C 80 80 3D */	lis r4, lbl_803CCAA8@ha
/* 80023668 000205C8  38 60 00 7C */	li r3, 0x7c
/* 8002366C 000205CC  38 84 CA A8 */	addi r4, r4, lbl_803CCAA8@l
/* 80023670 000205D0  38 A0 00 00 */	li r5, 0
/* 80023674 000205D4  48 2F 21 F9 */	bl __nw__FUlPCcPCc
/* 80023678 000205D8  7C 60 1B 79 */	or. r0, r3, r3
/* 8002367C 000205DC  41 82 00 10 */	beq lbl_8002368C
/* 80023680 000205E0  38 80 00 03 */	li r4, 3
/* 80023684 000205E4  48 00 40 E1 */	bl __ct__10CPlayMovieFQ210CPlayMovie11EWhichMovie
/* 80023688 000205E8  7C 60 1B 78 */	mr r0, r3
lbl_8002368C:
/* 8002368C 000205EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023690 000205F0  38 61 00 40 */	addi r3, r1, 0x40
/* 80023694 000205F4  38 E1 00 14 */	addi r7, r1, 0x14
/* 80023698 000205F8  38 80 00 00 */	li r4, 0
/* 8002369C 000205FC  38 AD 81 68 */	addi r5, r13, lbl_805A6D28@sda21
/* 800236A0 00020600  38 CD 81 6C */	addi r6, r13, lbl_805A6D2C@sda21
/* 800236A4 00020604  48 02 E6 09 */	bl CreateCreateIOWin__7MakeMsgF14EArchMsgTargetRCiRCiRCP6CIOWin
/* 800236A8 00020608  7F E3 FB 78 */	mr r3, r31
/* 800236AC 0002060C  38 81 00 40 */	addi r4, r1, 0x40
/* 800236B0 00020610  4B FE 36 51 */	bl InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
/* 800236B4 00020614  34 61 00 48 */	addic. r3, r1, 0x48
/* 800236B8 00020618  41 82 01 88 */	beq lbl_80023840
/* 800236BC 0002061C  4B FE 50 51 */	bl sub_8000870c
/* 800236C0 00020620  48 00 01 80 */	b lbl_80023840
lbl_800236C4:
/* 800236C4 00020624  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 800236C8 00020628  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 800236CC 0002062C  2C 00 00 00 */	cmpwi r0, 0
/* 800236D0 00020630  41 82 01 70 */	beq lbl_80023840
/* 800236D4 00020634  3C 80 80 3D */	lis r4, lbl_803CCAA8@ha
/* 800236D8 00020638  38 60 00 18 */	li r3, 0x18
/* 800236DC 0002063C  38 84 CA A8 */	addi r4, r4, lbl_803CCAA8@l
/* 800236E0 00020640  38 A0 00 00 */	li r5, 0
/* 800236E4 00020644  48 2F 21 89 */	bl __nw__FUlPCcPCc
/* 800236E8 00020648  7C 60 1B 79 */	or. r0, r3, r3
/* 800236EC 0002064C  41 82 00 0C */	beq lbl_800236F8
/* 800236F0 00020650  48 27 AE F1 */	bl __ct__12CPreFrontEndFv
/* 800236F4 00020654  7C 60 1B 78 */	mr r0, r3
lbl_800236F8:
/* 800236F8 00020658  90 01 00 10 */	stw r0, 0x10(r1)
/* 800236FC 0002065C  38 61 00 34 */	addi r3, r1, 0x34
/* 80023700 00020660  38 E1 00 10 */	addi r7, r1, 0x10
/* 80023704 00020664  38 80 00 00 */	li r4, 0
/* 80023708 00020668  38 AD 81 70 */	addi r5, r13, lbl_805A6D30@sda21
/* 8002370C 0002066C  38 CD 81 74 */	addi r6, r13, lbl_805A6D34@sda21
/* 80023710 00020670  48 02 E5 9D */	bl CreateCreateIOWin__7MakeMsgF14EArchMsgTargetRCiRCiRCP6CIOWin
/* 80023714 00020674  7F E3 FB 78 */	mr r3, r31
/* 80023718 00020678  38 81 00 34 */	addi r4, r1, 0x34
/* 8002371C 0002067C  4B FE 35 E5 */	bl InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
/* 80023720 00020680  34 61 00 3C */	addic. r3, r1, 0x3c
/* 80023724 00020684  41 82 01 1C */	beq lbl_80023840
/* 80023728 00020688  4B FE 4F E5 */	bl sub_8000870c
/* 8002372C 0002068C  48 00 01 14 */	b lbl_80023840
lbl_80023730:
/* 80023730 00020690  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 80023734 00020694  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 80023738 00020698  2C 00 00 00 */	cmpwi r0, 0
/* 8002373C 0002069C  41 82 01 04 */	beq lbl_80023840
/* 80023740 000206A0  2C 00 00 06 */	cmpwi r0, 6
/* 80023744 000206A4  40 82 00 30 */	bne lbl_80023774
/* 80023748 000206A8  3C 80 80 3D */	lis r4, lbl_803CCAA8@ha
/* 8002374C 000206AC  38 60 00 14 */	li r3, 0x14
/* 80023750 000206B0  38 84 CA A8 */	addi r4, r4, lbl_803CCAA8@l
/* 80023754 000206B4  38 A0 00 00 */	li r5, 0
/* 80023758 000206B8  48 2F 21 15 */	bl __nw__FUlPCcPCc
/* 8002375C 000206BC  7C 60 1B 79 */	or. r0, r3, r3
/* 80023760 000206C0  41 82 00 0C */	beq lbl_8002376C
/* 80023764 000206C4  4B FF E3 35 */	bl __ct__16CStateSetterFlowFv
/* 80023768 000206C8  7C 60 1B 78 */	mr r0, r3
lbl_8002376C:
/* 8002376C 000206CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80023770 000206D0  48 00 00 2C */	b lbl_8002379C
lbl_80023774:
/* 80023774 000206D4  3C 80 80 3D */	lis r4, lbl_803CCAA8@ha
/* 80023778 000206D8  38 60 00 F8 */	li r3, 0xf8
/* 8002377C 000206DC  38 84 CA A8 */	addi r4, r4, lbl_803CCAA8@l
/* 80023780 000206E0  38 A0 00 00 */	li r5, 0
/* 80023784 000206E4  48 2F 20 E9 */	bl __nw__FUlPCcPCc
/* 80023788 000206E8  7C 60 1B 79 */	or. r0, r3, r3
/* 8002378C 000206EC  41 82 00 0C */	beq lbl_80023798
/* 80023790 000206F0  4B FF A4 49 */	bl __ct__11CFrontEndUIFR18CArchitectureQueue
/* 80023794 000206F4  7C 60 1B 78 */	mr r0, r3
lbl_80023798:
/* 80023798 000206F8  90 01 00 0C */	stw r0, 0xc(r1)
lbl_8002379C:
/* 8002379C 000206FC  38 61 00 28 */	addi r3, r1, 0x28
/* 800237A0 00020700  38 E1 00 0C */	addi r7, r1, 0xc
/* 800237A4 00020704  38 80 00 00 */	li r4, 0
/* 800237A8 00020708  38 AD 81 78 */	addi r5, r13, lbl_805A6D38@sda21
/* 800237AC 0002070C  38 CD 81 7C */	addi r6, r13, lbl_805A6D3C@sda21
/* 800237B0 00020710  48 02 E4 FD */	bl CreateCreateIOWin__7MakeMsgF14EArchMsgTargetRCiRCiRCP6CIOWin
/* 800237B4 00020714  7F E3 FB 78 */	mr r3, r31
/* 800237B8 00020718  38 81 00 28 */	addi r4, r1, 0x28
/* 800237BC 0002071C  4B FE 35 45 */	bl InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
/* 800237C0 00020720  34 61 00 30 */	addic. r3, r1, 0x30
/* 800237C4 00020724  41 82 00 7C */	beq lbl_80023840
/* 800237C8 00020728  4B FE 4F 45 */	bl sub_8000870c
/* 800237CC 0002072C  48 00 00 74 */	b lbl_80023840
lbl_800237D0:
/* 800237D0 00020730  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 800237D4 00020734  38 63 01 7C */	addi r3, r3, 0x17c
/* 800237D8 00020738  48 1E B9 25 */	bl EnsureOptions__12CGameOptionsFv
/* 800237DC 0002073C  3C 80 80 3D */	lis r4, lbl_803CCAA8@ha
/* 800237E0 00020740  38 60 00 30 */	li r3, 0x30
/* 800237E4 00020744  38 84 CA A8 */	addi r4, r4, lbl_803CCAA8@l
/* 800237E8 00020748  38 A0 00 00 */	li r5, 0
/* 800237EC 0002074C  48 2F 20 81 */	bl __nw__FUlPCcPCc
/* 800237F0 00020750  7C 64 1B 79 */	or. r4, r3, r3
/* 800237F4 00020754  41 82 00 0C */	beq lbl_80023800
/* 800237F8 00020758  48 00 09 9D */	bl __ct__13CMFGameLoaderFv
/* 800237FC 0002075C  7C 64 1B 78 */	mr r4, r3
lbl_80023800:
/* 80023800 00020760  80 AD A0 78 */	lwz r5, gpMain@sda21(r13)
/* 80023804 00020764  38 00 00 05 */	li r0, 5
/* 80023808 00020768  90 81 00 08 */	stw r4, 8(r1)
/* 8002380C 0002076C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80023810 00020770  38 E1 00 08 */	addi r7, r1, 8
/* 80023814 00020774  38 80 00 00 */	li r4, 0
/* 80023818 00020778  90 05 01 2C */	stw r0, 0x12c(r5)
/* 8002381C 0002077C  38 AD 81 80 */	addi r5, r13, lbl_805A6D40@sda21
/* 80023820 00020780  38 CD 81 84 */	addi r6, r13, lbl_805A6D44@sda21
/* 80023824 00020784  48 02 E4 89 */	bl CreateCreateIOWin__7MakeMsgF14EArchMsgTargetRCiRCiRCP6CIOWin
/* 80023828 00020788  7F E3 FB 78 */	mr r3, r31
/* 8002382C 0002078C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80023830 00020790  4B FE 34 D1 */	bl InsertMsg__18CArchitectureQueueFRC20CArchitectureMessage
/* 80023834 00020794  34 61 00 24 */	addic. r3, r1, 0x24
/* 80023838 00020798  41 82 00 08 */	beq lbl_80023840
/* 8002383C 0002079C  4B FE 4E D1 */	bl sub_8000870c
lbl_80023840:
/* 80023840 000207A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80023844 000207A4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80023848 000207A8  7C 08 03 A6 */	mtlr r0
/* 8002384C 000207AC  38 21 00 60 */	addi r1, r1, 0x60
/* 80023850 000207B0  4E 80 00 20 */	blr 

.global AdvanceGameState__9CMainFlowFR18CArchitectureQueue
AdvanceGameState__9CMainFlowFR18CArchitectureQueue:
/* 80023854 000207B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023858 000207B8  7C 08 02 A6 */	mflr r0
/* 8002385C 000207BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023860 000207C0  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 80023864 000207C4  38 05 00 01 */	addi r0, r5, 1
/* 80023868 000207C8  28 00 00 10 */	cmplwi r0, 0x10
/* 8002386C 000207CC  41 81 00 80 */	bgt lbl_800238EC
/* 80023870 000207D0  3C A0 80 3E */	lis r5, lbl_803D9944@ha
/* 80023874 000207D4  54 00 10 3A */	slwi r0, r0, 2
/* 80023878 000207D8  38 A5 99 44 */	addi r5, r5, lbl_803D9944@l
/* 8002387C 000207DC  7C 05 00 2E */	lwzx r0, r5, r0
/* 80023880 000207E0  7C 09 03 A6 */	mtctr r0
/* 80023884 000207E4  4E 80 04 20 */	bctr 
.global lbl_80023888
lbl_80023888:
/* 80023888 000207E8  7C 85 23 78 */	mr r5, r4
/* 8002388C 000207EC  38 80 00 0F */	li r4, 0xf
/* 80023890 000207F0  4B FF FC F5 */	bl SetGameState__9CMainFlowF17EClientFlowStatesR18CArchitectureQueue
/* 80023894 000207F4  48 00 00 58 */	b lbl_800238EC
.global lbl_80023898
lbl_80023898:
/* 80023898 000207F8  7C 85 23 78 */	mr r5, r4
/* 8002389C 000207FC  38 80 00 08 */	li r4, 8
/* 800238A0 00020800  4B FF FC E5 */	bl SetGameState__9CMainFlowF17EClientFlowStatesR18CArchitectureQueue
/* 800238A4 00020804  48 00 00 48 */	b lbl_800238EC
.global lbl_800238A8
lbl_800238A8:
/* 800238A8 00020808  7C 85 23 78 */	mr r5, r4
/* 800238AC 0002080C  38 80 00 0E */	li r4, 0xe
/* 800238B0 00020810  4B FF FC D5 */	bl SetGameState__9CMainFlowF17EClientFlowStatesR18CArchitectureQueue
/* 800238B4 00020814  48 00 00 38 */	b lbl_800238EC
.global lbl_800238B8
lbl_800238B8:
/* 800238B8 00020818  80 CD A0 78 */	lwz r6, gpMain@sda21(r13)
/* 800238BC 0002081C  80 06 01 2C */	lwz r0, 0x12c(r6)
/* 800238C0 00020820  2C 00 00 00 */	cmpwi r0, 0
/* 800238C4 00020824  41 82 00 1C */	beq lbl_800238E0
/* 800238C8 00020828  2C 00 00 06 */	cmpwi r0, 6
/* 800238CC 0002082C  41 82 00 14 */	beq lbl_800238E0
/* 800238D0 00020830  88 06 01 60 */	lbz r0, 0x160(r6)
/* 800238D4 00020834  38 A0 00 01 */	li r5, 1
/* 800238D8 00020838  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 800238DC 0002083C  98 06 01 60 */	stb r0, 0x160(r6)
.global lbl_800238E0
lbl_800238E0:
/* 800238E0 00020840  7C 85 23 78 */	mr r5, r4
/* 800238E4 00020844  38 80 00 07 */	li r4, 7
/* 800238E8 00020848  4B FF FC 9D */	bl SetGameState__9CMainFlowF17EClientFlowStatesR18CArchitectureQueue
.global lbl_800238EC
lbl_800238EC:
/* 800238EC 0002084C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800238F0 00020850  7C 08 03 A6 */	mtlr r0
/* 800238F4 00020854  38 21 00 10 */	addi r1, r1, 0x10
/* 800238F8 00020858  4E 80 00 20 */	blr 

.global Draw__9CMainFlowCFv
Draw__9CMainFlowCFv:
/* 800238FC 0002085C  4E 80 00 20 */	blr 

.global GetIsContinueDraw__9CMainFlowCFv
GetIsContinueDraw__9CMainFlowCFv:
/* 80023900 00020860  38 60 00 00 */	li r3, 0
/* 80023904 00020864  4E 80 00 20 */	blr 

.global OnMessage__9CMainFlowFRC20CArchitectureMessageR18CArchitectureQueue
OnMessage__9CMainFlowFRC20CArchitectureMessageR18CArchitectureQueue:
/* 80023908 00020868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002390C 0002086C  7C 08 02 A6 */	mflr r0
/* 80023910 00020870  90 01 00 24 */	stw r0, 0x24(r1)
/* 80023914 00020874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80023918 00020878  7C BF 2B 78 */	mr r31, r5
/* 8002391C 0002087C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80023920 00020880  7C 7E 1B 78 */	mr r30, r3
/* 80023924 00020884  80 04 00 04 */	lwz r0, 4(r4)
/* 80023928 00020888  2C 00 00 05 */	cmpwi r0, 5
/* 8002392C 0002088C  41 82 00 74 */	beq lbl_800239A0
/* 80023930 00020890  40 80 00 10 */	bge lbl_80023940
/* 80023934 00020894  2C 00 00 04 */	cmpwi r0, 4
/* 80023938 00020898  40 80 00 14 */	bge lbl_8002394C
/* 8002393C 0002089C  48 00 00 64 */	b lbl_800239A0
lbl_80023940:
/* 80023940 000208A0  2C 00 00 07 */	cmpwi r0, 7
/* 80023944 000208A4  40 80 00 5C */	bge lbl_800239A0
/* 80023948 000208A8  48 00 00 10 */	b lbl_80023958
lbl_8002394C:
/* 8002394C 000208AC  7F E4 FB 78 */	mr r4, r31
/* 80023950 000208B0  4B FF FF 05 */	bl AdvanceGameState__9CMainFlowFR18CArchitectureQueue
/* 80023954 000208B4  48 00 00 4C */	b lbl_800239A0
lbl_80023958:
/* 80023958 000208B8  7C 83 23 78 */	mr r3, r4
/* 8002395C 000208BC  48 02 E1 7D */	bl GetParmNewGameflowState__7MakeMsgFRC20CArchitectureMessage
/* 80023960 000208C0  3C A0 80 3E */	lis r5, lbl_803D8E9C@ha
/* 80023964 000208C4  3C 80 80 3E */	lis r4, lbl_803D9E50@ha
/* 80023968 000208C8  38 05 8E 9C */	addi r0, r5, lbl_803D8E9C@l
/* 8002396C 000208CC  90 01 00 08 */	stw r0, 8(r1)
/* 80023970 000208D0  38 04 9E 50 */	addi r0, r4, lbl_803D9E50@l
/* 80023974 000208D4  7F E5 FB 78 */	mr r5, r31
/* 80023978 000208D8  90 01 00 08 */	stw r0, 8(r1)
/* 8002397C 000208DC  80 83 00 04 */	lwz r4, 4(r3)
/* 80023980 000208E0  7F C3 F3 78 */	mr r3, r30
/* 80023984 000208E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80023988 000208E8  4B FF FB FD */	bl SetGameState__9CMainFlowF17EClientFlowStatesR18CArchitectureQueue
/* 8002398C 000208EC  38 61 00 08 */	addi r3, r1, 8
/* 80023990 000208F0  38 80 FF FF */	li r4, -1
/* 80023994 000208F4  48 02 DC 35 */	bl __dt__17CArchMsgParmInt32Fv
/* 80023998 000208F8  38 60 00 01 */	li r3, 1
/* 8002399C 000208FC  48 00 00 08 */	b lbl_800239A4
lbl_800239A0:
/* 800239A0 00020900  38 60 00 00 */	li r3, 0
lbl_800239A4:
/* 800239A4 00020904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800239A8 00020908  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800239AC 0002090C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800239B0 00020910  7C 08 03 A6 */	mtlr r0
/* 800239B4 00020914  38 21 00 20 */	addi r1, r1, 0x20
/* 800239B8 00020918  4E 80 00 20 */	blr 

.global __ct__9CMainFlowFv
__ct__9CMainFlowFv:
/* 800239BC 0002091C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800239C0 00020920  7C 08 02 A6 */	mflr r0
/* 800239C4 00020924  3C 80 80 3D */	lis r4, lbl_803CCAA8@ha
/* 800239C8 00020928  90 01 00 24 */	stw r0, 0x24(r1)
/* 800239CC 0002092C  38 84 CA A8 */	addi r4, r4, lbl_803CCAA8@l
/* 800239D0 00020930  38 84 00 07 */	addi r4, r4, 7
/* 800239D4 00020934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800239D8 00020938  7C 7F 1B 78 */	mr r31, r3
/* 800239DC 0002093C  38 61 00 08 */	addi r3, r1, 8
/* 800239E0 00020940  4B FE 12 D9 */	bl string_l__4rstlFPCc
/* 800239E4 00020944  7F E3 FB 78 */	mr r3, r31
/* 800239E8 00020948  38 81 00 08 */	addi r4, r1, 8
/* 800239EC 0002094C  48 02 F2 21 */	bl "__ct__6CIOWinFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800239F0 00020950  38 61 00 08 */	addi r3, r1, 8
/* 800239F4 00020954  48 31 A0 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800239F8 00020958  3C 60 80 3E */	lis r3, lbl_803D9928@ha
/* 800239FC 0002095C  38 00 FF FF */	li r0, -1
/* 80023A00 00020960  38 83 99 28 */	addi r4, r3, lbl_803D9928@l
/* 80023A04 00020964  7F E3 FB 78 */	mr r3, r31
/* 80023A08 00020968  90 9F 00 00 */	stw r4, 0(r31)
/* 80023A0C 0002096C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80023A10 00020970  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80023A14 00020974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80023A18 00020978  7C 08 03 A6 */	mtlr r0
/* 80023A1C 0002097C  38 21 00 20 */	addi r1, r1, 0x20
/* 80023A20 00020980  4E 80 00 20 */	blr
