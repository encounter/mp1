.include "macros.inc"

.section .data
.balign 8

.global lbl_803EC8E0
lbl_803EC8E0:
	# ROM: 0x3E98E0
	.4byte 0
	.4byte 0
	.4byte __dt__8CGuiPaneFv
	.4byte Update__10CGuiWidgetFf
	.4byte Draw__8CGuiPaneCFRC19CGuiWidgetDrawParms
	.4byte Initialize__10CGuiWidgetFv
	.4byte ProcessUserInput__10CGuiWidgetFRC11CFinalInput
	.4byte Touch__10CGuiWidgetCFv
	.4byte GetIsVisible__10CGuiWidgetCFv
	.4byte sub_80020464
	.4byte GetWidgetTypeID__8CGuiPaneCFv
	.4byte AddWorkerWidget__10CGuiWidgetFP10CGuiWidget
	.4byte GetIsFinishedLoadingWidgetSpecific__10CGuiWidgetCFv
	.4byte OnVisible__10CGuiWidgetFv
	.4byte OnActivate__10CGuiWidgetFv
	.4byte ScaleDimensions__8CGuiPaneFRC9CVector3f
	.4byte SetDimensions__8CGuiPaneFRC9CVector2fb
	.4byte GetDimensions__8CGuiPaneCFv
	.4byte InitializeBuffers__8CGuiPaneFv
	.4byte WriteData__8CGuiPaneCFR13COutputStreamb

.section .text, "ax"

.global GetWidgetTypeID__8CGuiPaneCFv
GetWidgetTypeID__8CGuiPaneCFv:
/* 802C54E4 002C2444  3C 60 50 41 */	lis r3, 0x50414E45@ha
/* 802C54E8 002C2448  38 63 4E 45 */	addi r3, r3, 0x50414E45@l
/* 802C54EC 002C244C  4E 80 00 20 */	blr

.global GetDimensions__8CGuiPaneCFv
GetDimensions__8CGuiPaneCFv:
/* 802C54F0 002C2450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C54F4 002C2454  7C 08 02 A6 */	mflr r0
/* 802C54F8 002C2458  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C54FC 002C245C  C0 24 00 B8 */	lfs f1, 0xb8(r4)
/* 802C5500 002C2460  C0 44 00 BC */	lfs f2, 0xbc(r4)
/* 802C5504 002C2464  48 04 EC FD */	bl __ct__9CVector2fFff
/* 802C5508 002C2468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C550C 002C246C  7C 08 03 A6 */	mtlr r0
/* 802C5510 002C2470  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5514 002C2474  4E 80 00 20 */	blr

.global SetDimensions__8CGuiPaneFRC9CVector2fb
SetDimensions__8CGuiPaneFRC9CVector2fb:
/* 802C5518 002C2478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C551C 002C247C  7C 08 02 A6 */	mflr r0
/* 802C5520 002C2480  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5524 002C2484  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802C5528 002C2488  C0 04 00 00 */	lfs f0, 0(r4)
/* 802C552C 002C248C  D0 03 00 B8 */	stfs f0, 0xb8(r3)
/* 802C5530 002C2490  C0 04 00 04 */	lfs f0, 4(r4)
/* 802C5534 002C2494  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 802C5538 002C2498  41 82 00 14 */	beq lbl_802C554C
/* 802C553C 002C249C  81 83 00 00 */	lwz r12, 0(r3)
/* 802C5540 002C24A0  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802C5544 002C24A4  7D 89 03 A6 */	mtctr r12
/* 802C5548 002C24A8  4E 80 04 21 */	bctrl
lbl_802C554C:
/* 802C554C 002C24AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5550 002C24B0  7C 08 03 A6 */	mtlr r0
/* 802C5554 002C24B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5558 002C24B8  4E 80 00 20 */	blr

.global InitializeBuffers__8CGuiPaneFv
InitializeBuffers__8CGuiPaneFv:
/* 802C555C 002C24BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5560 002C24C0  7C 08 02 A6 */	mflr r0
/* 802C5564 002C24C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5568 002C24C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C556C 002C24CC  7C 7F 1B 78 */	mr r31, r3
/* 802C5570 002C24D0  80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 802C5574 002C24D4  28 00 00 00 */	cmplwi r0, 0
/* 802C5578 002C24D8  40 82 00 24 */	bne lbl_802C559C
/* 802C557C 002C24DC  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 802C5580 002C24E0  3C 60 80 3D */	lis r3, lbl_803D68B8@ha
/* 802C5584 002C24E4  38 83 68 B8 */	addi r4, r3, lbl_803D68B8@l
/* 802C5588 002C24E8  38 A0 00 00 */	li r5, 0
/* 802C558C 002C24EC  1C 00 00 03 */	mulli r0, r0, 3
/* 802C5590 002C24F0  54 03 10 3A */	slwi r3, r0, 2
/* 802C5594 002C24F4  48 05 02 85 */	bl __nwa__FUlPCcPCc
/* 802C5598 002C24F8  90 7F 00 C0 */	stw r3, 0xc0(r31)
lbl_802C559C:
/* 802C559C 002C24FC  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 802C55A0 002C2500  C0 42 C3 A0 */	lfs f2, lbl_805AE0C0@sda21(r2)
/* 802C55A4 002C2504  FC 00 00 50 */	fneg f0, f0
/* 802C55A8 002C2508  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C55AC 002C250C  C0 22 C3 A4 */	lfs f1, lbl_805AE0C4@sda21(r2)
/* 802C55B0 002C2510  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802C55B4 002C2514  D0 03 00 00 */	stfs f0, 0(r3)
/* 802C55B8 002C2518  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C55BC 002C251C  D0 23 00 04 */	stfs f1, 4(r3)
/* 802C55C0 002C2520  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 802C55C4 002C2524  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C55C8 002C2528  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802C55CC 002C252C  D0 03 00 08 */	stfs f0, 8(r3)
/* 802C55D0 002C2530  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 802C55D4 002C2534  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C55D8 002C2538  FC 00 00 50 */	fneg f0, f0
/* 802C55DC 002C253C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802C55E0 002C2540  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802C55E4 002C2544  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C55E8 002C2548  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 802C55EC 002C254C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 802C55F0 002C2550  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C55F4 002C2554  FC 00 00 50 */	fneg f0, f0
/* 802C55F8 002C2558  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802C55FC 002C255C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802C5600 002C2560  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 802C5604 002C2564  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C5608 002C2568  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802C560C 002C256C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802C5610 002C2570  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C5614 002C2574  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 802C5618 002C2578  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 802C561C 002C257C  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C5620 002C2580  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802C5624 002C2584  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802C5628 002C2588  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 802C562C 002C258C  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C5630 002C2590  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802C5634 002C2594  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802C5638 002C2598  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C563C 002C259C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 802C5640 002C25A0  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 802C5644 002C25A4  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 802C5648 002C25A8  FC 00 00 50 */	fneg f0, f0
/* 802C564C 002C25AC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802C5650 002C25B0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802C5654 002C25B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5658 002C25B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C565C 002C25BC  7C 08 03 A6 */	mtlr r0
/* 802C5660 002C25C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5664 002C25C4  4E 80 00 20 */	blr

.global ScaleDimensions__8CGuiPaneFRC9CVector3f
ScaleDimensions__8CGuiPaneFRC9CVector3f:
/* 802C5668 002C25C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C566C 002C25CC  7C 08 02 A6 */	mflr r0
/* 802C5670 002C25D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5674 002C25D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5678 002C25D8  7C 9F 23 78 */	mr r31, r4
/* 802C567C 002C25DC  93 C1 00 08 */	stw r30, 8(r1)
/* 802C5680 002C25E0  7C 7E 1B 78 */	mr r30, r3
/* 802C5684 002C25E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802C5688 002C25E8  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802C568C 002C25EC  7D 89 03 A6 */	mtctr r12
/* 802C5690 002C25F0  4E 80 04 21 */	bctrl
/* 802C5694 002C25F4  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 802C5698 002C25F8  38 DE 00 C8 */	addi r6, r30, 0xc8
/* 802C569C 002C25FC  38 83 55 56 */	addi r4, r3, 0x55555556@l
/* 802C56A0 002C2600  39 00 00 00 */	li r8, 0
/* 802C56A4 002C2604  38 E0 00 00 */	li r7, 0
/* 802C56A8 002C2608  48 00 00 54 */	b lbl_802C56FC
lbl_802C56AC:
/* 802C56AC 002C260C  7C A4 40 96 */	mulhw r5, r4, r8
/* 802C56B0 002C2610  80 7E 00 C0 */	lwz r3, 0xc0(r30)
/* 802C56B4 002C2614  7C 43 3C 2E */	lfsx f2, r3, r7
/* 802C56B8 002C2618  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 802C56BC 002C261C  7C 05 02 14 */	add r0, r5, r0
/* 802C56C0 002C2620  1C 00 00 03 */	mulli r0, r0, 3
/* 802C56C4 002C2624  7C 00 40 50 */	subf r0, r0, r8
/* 802C56C8 002C2628  39 08 00 01 */	addi r8, r8, 1
/* 802C56CC 002C262C  54 00 10 3A */	slwi r0, r0, 2
/* 802C56D0 002C2630  7C 26 04 2E */	lfsx f1, r6, r0
/* 802C56D4 002C2634  7C 1F 04 2E */	lfsx f0, r31, r0
/* 802C56D8 002C2638  EC 22 08 28 */	fsubs f1, f2, f1
/* 802C56DC 002C263C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C56E0 002C2640  7C 03 3D 2E */	stfsx f0, r3, r7
/* 802C56E4 002C2644  80 7E 00 C0 */	lwz r3, 0xc0(r30)
/* 802C56E8 002C2648  7C 06 04 2E */	lfsx f0, r6, r0
/* 802C56EC 002C264C  7C 23 3C 2E */	lfsx f1, r3, r7
/* 802C56F0 002C2650  EC 01 00 2A */	fadds f0, f1, f0
/* 802C56F4 002C2654  7C 03 3D 2E */	stfsx f0, r3, r7
/* 802C56F8 002C2658  38 E7 00 04 */	addi r7, r7, 4
lbl_802C56FC:
/* 802C56FC 002C265C  80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 802C5700 002C2660  1C 00 00 03 */	mulli r0, r0, 3
/* 802C5704 002C2664  7C 08 00 00 */	cmpw r8, r0
/* 802C5708 002C2668  41 80 FF A4 */	blt lbl_802C56AC
/* 802C570C 002C266C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5710 002C2670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5714 002C2674  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C5718 002C2678  7C 08 03 A6 */	mtlr r0
/* 802C571C 002C267C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5720 002C2680  4E 80 00 20 */	blr

.global Draw__8CGuiPaneCFRC19CGuiWidgetDrawParms
Draw__8CGuiPaneCFRC19CGuiWidgetDrawParms:
/* 802C5724 002C2684  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 802C5728 002C2688  7C 08 02 A6 */	mflr r0
/* 802C572C 002C268C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802C5730 002C2690  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 802C5734 002C2694  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 802C5738 002C2698  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 802C573C 002C269C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 802C5740 002C26A0  7C 7E 1B 78 */	mr r30, r3
/* 802C5744 002C26A4  7C 9F 23 78 */	mr r31, r4
/* 802C5748 002C26A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 802C574C 002C26AC  38 9E 00 C8 */	addi r4, r30, 0xc8
/* 802C5750 002C26B0  48 04 D9 F1 */	bl Translate__12CTransform4fFRC9CVector3f
/* 802C5754 002C26B4  38 61 00 4C */	addi r3, r1, 0x4c
/* 802C5758 002C26B8  38 9E 00 34 */	addi r4, r30, 0x34
/* 802C575C 002C26BC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802C5760 002C26C0  48 04 D1 F1 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 802C5764 002C26C4  38 61 00 4C */	addi r3, r1, 0x4c
/* 802C5768 002C26C8  48 04 6E 79 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802C576C 002C26CC  7F C3 F3 78 */	mr r3, r30
/* 802C5770 002C26D0  81 9E 00 00 */	lwz r12, 0(r30)
/* 802C5774 002C26D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802C5778 002C26D8  7D 89 03 A6 */	mtctr r12
/* 802C577C 002C26DC  4E 80 04 21 */	bctrl
/* 802C5780 002C26E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802C5784 002C26E4  41 82 00 74 */	beq lbl_802C57F8
/* 802C5788 002C26E8  80 8D 9C 68 */	lwz r4, lbl_805A8828@sda21(r13)
/* 802C578C 002C26EC  38 60 00 00 */	li r3, 0
/* 802C5790 002C26F0  48 04 4B 29 */	bl SetTevOp__9CGraphicsF12ERglTevStageRCQ213CTevCombiners8CTevPass
/* 802C5794 002C26F4  88 7E 00 AB */	lbz r3, 0xab(r30)
/* 802C5798 002C26F8  3C 00 43 30 */	lis r0, 0x4330
/* 802C579C 002C26FC  90 01 00 80 */	stw r0, 0x80(r1)
/* 802C57A0 002C2700  C8 22 C3 B0 */	lfd f1, lbl_805AE0D0@sda21(r2)
/* 802C57A4 002C2704  90 61 00 84 */	stw r3, 0x84(r1)
/* 802C57A8 002C2708  C0 5F 00 00 */	lfs f2, 0(r31)
/* 802C57AC 002C270C  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 802C57B0 002C2710  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C57B4 002C2714  EF E2 00 32 */	fmuls f31, f2, f0
/* 802C57B8 002C2718  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 802C57BC 002C271C  38 A1 00 10 */	addi r5, r1, 0x10
/* 802C57C0 002C2720  C0 22 C3 A4 */	lfs f1, lbl_805AE0C4@sda21(r2)
/* 802C57C4 002C2724  38 C1 00 0C */	addi r6, r1, 0xc
/* 802C57C8 002C2728  C0 02 C3 A8 */	lfs f0, lbl_805AE0C8@sda21(r2)
/* 802C57CC 002C272C  38 60 00 98 */	li r3, 0x98
/* 802C57D0 002C2730  80 9E 00 A8 */	lwz r4, 0xa8(r30)
/* 802C57D4 002C2734  88 01 00 08 */	lbz r0, 8(r1)
/* 802C57D8 002C2738  50 80 00 2E */	rlwimi r0, r4, 0, 0, 0x17
/* 802C57DC 002C273C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802C57E0 002C2740  80 9E 00 C0 */	lwz r4, 0xc0(r30)
/* 802C57E4 002C2744  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C57E8 002C2748  80 FE 00 C4 */	lwz r7, 0xc4(r30)
/* 802C57EC 002C274C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802C57F0 002C2750  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802C57F4 002C2754  48 04 5E E1 */	bl DrawPrimitive__9CGraphicsF13ERglPrimitivePCfRC9CVector3fRC6CColori
lbl_802C57F8:
/* 802C57F8 002C2758  7F C3 F3 78 */	mr r3, r30
/* 802C57FC 002C275C  7F E4 FB 78 */	mr r4, r31
/* 802C5800 002C2760  48 00 52 61 */	bl Draw__10CGuiWidgetCFRC19CGuiWidgetDrawParms
/* 802C5804 002C2764  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 802C5808 002C2768  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802C580C 002C276C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 802C5810 002C2770  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 802C5814 002C2774  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 802C5818 002C2778  7C 08 03 A6 */	mtlr r0
/* 802C581C 002C277C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 802C5820 002C2780  4E 80 00 20 */	blr

.global __dt__8CGuiPaneFv
__dt__8CGuiPaneFv:
/* 802C5824 002C2784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5828 002C2788  7C 08 02 A6 */	mflr r0
/* 802C582C 002C278C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5830 002C2790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5834 002C2794  7C 9F 23 78 */	mr r31, r4
/* 802C5838 002C2798  93 C1 00 08 */	stw r30, 8(r1)
/* 802C583C 002C279C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C5840 002C27A0  41 82 00 40 */	beq lbl_802C5880
/* 802C5844 002C27A4  3C 60 80 3F */	lis r3, lbl_803EC8E0@ha
/* 802C5848 002C27A8  38 03 C8 E0 */	addi r0, r3, lbl_803EC8E0@l
/* 802C584C 002C27AC  90 1E 00 00 */	stw r0, 0(r30)
/* 802C5850 002C27B0  80 7E 00 C0 */	lwz r3, 0xc0(r30)
/* 802C5854 002C27B4  28 03 00 00 */	cmplwi r3, 0
/* 802C5858 002C27B8  41 82 00 0C */	beq lbl_802C5864
/* 802C585C 002C27BC  41 82 00 08 */	beq lbl_802C5864
/* 802C5860 002C27C0  48 05 00 D1 */	bl Free__7CMemoryFPCv
lbl_802C5864:
/* 802C5864 002C27C4  7F C3 F3 78 */	mr r3, r30
/* 802C5868 002C27C8  38 80 00 00 */	li r4, 0
/* 802C586C 002C27CC  48 00 53 49 */	bl __dt__10CGuiWidgetFv
/* 802C5870 002C27D0  7F E0 07 35 */	extsh. r0, r31
/* 802C5874 002C27D4  40 81 00 0C */	ble lbl_802C5880
/* 802C5878 002C27D8  7F C3 F3 78 */	mr r3, r30
/* 802C587C 002C27DC  48 05 00 B5 */	bl Free__7CMemoryFPCv
lbl_802C5880:
/* 802C5880 002C27E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5884 002C27E4  7F C3 F3 78 */	mr r3, r30
/* 802C5888 002C27E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C588C 002C27EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C5890 002C27F0  7C 08 03 A6 */	mtlr r0
/* 802C5894 002C27F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5898 002C27F8  4E 80 00 20 */	blr

.global __ct__8CGuiPaneFRCQ210CGuiWidget15CGuiWidgetParmsffRC9CVector3f
__ct__8CGuiPaneFRCQ210CGuiWidget15CGuiWidgetParmsffRC9CVector3f:
/* 802C589C 002C27FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C58A0 002C2800  7C 08 02 A6 */	mflr r0
/* 802C58A4 002C2804  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C58A8 002C2808  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802C58AC 002C280C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802C58B0 002C2810  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 802C58B4 002C2814  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 802C58B8 002C2818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C58BC 002C281C  93 C1 00 08 */	stw r30, 8(r1)
/* 802C58C0 002C2820  FF C0 08 90 */	fmr f30, f1
/* 802C58C4 002C2824  7C 7E 1B 78 */	mr r30, r3
/* 802C58C8 002C2828  FF E0 10 90 */	fmr f31, f2
/* 802C58CC 002C282C  7C BF 2B 78 */	mr r31, r5
/* 802C58D0 002C2830  48 00 53 55 */	bl __ct__10CGuiWidgetFRCQ210CGuiWidget15CGuiWidgetParms
/* 802C58D4 002C2834  3C 60 80 3F */	lis r3, lbl_803EC8E0@ha
/* 802C58D8 002C2838  38 80 00 00 */	li r4, 0
/* 802C58DC 002C283C  38 63 C8 E0 */	addi r3, r3, lbl_803EC8E0@l
/* 802C58E0 002C2840  38 00 00 04 */	li r0, 4
/* 802C58E4 002C2844  90 7E 00 00 */	stw r3, 0(r30)
/* 802C58E8 002C2848  7F C3 F3 78 */	mr r3, r30
/* 802C58EC 002C284C  D3 DE 00 B8 */	stfs f30, 0xb8(r30)
/* 802C58F0 002C2850  D3 FE 00 BC */	stfs f31, 0xbc(r30)
/* 802C58F4 002C2854  90 9E 00 C0 */	stw r4, 0xc0(r30)
/* 802C58F8 002C2858  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 802C58FC 002C285C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802C5900 002C2860  D0 1E 00 C8 */	stfs f0, 0xc8(r30)
/* 802C5904 002C2864  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802C5908 002C2868  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 802C590C 002C286C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802C5910 002C2870  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 802C5914 002C2874  81 9E 00 00 */	lwz r12, 0(r30)
/* 802C5918 002C2878  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802C591C 002C287C  7D 89 03 A6 */	mtctr r12
/* 802C5920 002C2880  4E 80 04 21 */	bctrl
/* 802C5924 002C2884  7F C3 F3 78 */	mr r3, r30
/* 802C5928 002C2888  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802C592C 002C288C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802C5930 002C2890  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 802C5934 002C2894  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 802C5938 002C2898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C593C 002C289C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C5940 002C28A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C5944 002C28A4  7C 08 03 A6 */	mtlr r0
/* 802C5948 002C28A8  38 21 00 30 */	addi r1, r1, 0x30
/* 802C594C 002C28AC  4E 80 00 20 */	blr

.global WriteData__8CGuiPaneCFR13COutputStreamb
WriteData__8CGuiPaneCFR13COutputStreamb:
/* 802C5950 002C28B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C5954 002C28B4  7C 08 02 A6 */	mflr r0
/* 802C5958 002C28B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C595C 002C28BC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802C5960 002C28C0  7C 9F 23 78 */	mr r31, r4
/* 802C5964 002C28C4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802C5968 002C28C8  7C 7E 1B 78 */	mr r30, r3
/* 802C596C 002C28CC  C0 03 00 B8 */	lfs f0, 0xb8(r3)
/* 802C5970 002C28D0  7F E3 FB 78 */	mr r3, r31
/* 802C5974 002C28D4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802C5978 002C28D8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802C597C 002C28DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C5980 002C28E0  48 07 9B 39 */	bl FlushShiftRegister__13COutputStreamFv
/* 802C5984 002C28E4  7F E3 FB 78 */	mr r3, r31
/* 802C5988 002C28E8  38 81 00 18 */	addi r4, r1, 0x18
/* 802C598C 002C28EC  38 A0 00 04 */	li r5, 4
/* 802C5990 002C28F0  48 07 9C 19 */	bl DoPut__13COutputStreamFPCvUl
/* 802C5994 002C28F4  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 802C5998 002C28F8  7F E3 FB 78 */	mr r3, r31
/* 802C599C 002C28FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802C59A0 002C2900  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802C59A4 002C2904  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C59A8 002C2908  48 07 9B 11 */	bl FlushShiftRegister__13COutputStreamFv
/* 802C59AC 002C290C  7F E3 FB 78 */	mr r3, r31
/* 802C59B0 002C2910  38 81 00 14 */	addi r4, r1, 0x14
/* 802C59B4 002C2914  38 A0 00 04 */	li r5, 4
/* 802C59B8 002C2918  48 07 9B F1 */	bl DoPut__13COutputStreamFPCvUl
/* 802C59BC 002C291C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 802C59C0 002C2920  7F E3 FB 78 */	mr r3, r31
/* 802C59C4 002C2924  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802C59C8 002C2928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C59CC 002C292C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C59D0 002C2930  48 07 9A E9 */	bl FlushShiftRegister__13COutputStreamFv
/* 802C59D4 002C2934  7F E3 FB 78 */	mr r3, r31
/* 802C59D8 002C2938  38 81 00 10 */	addi r4, r1, 0x10
/* 802C59DC 002C293C  38 A0 00 04 */	li r5, 4
/* 802C59E0 002C2940  48 07 9B C9 */	bl DoPut__13COutputStreamFPCvUl
/* 802C59E4 002C2944  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 802C59E8 002C2948  7F E3 FB 78 */	mr r3, r31
/* 802C59EC 002C294C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802C59F0 002C2950  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802C59F4 002C2954  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C59F8 002C2958  48 07 9A C1 */	bl FlushShiftRegister__13COutputStreamFv
/* 802C59FC 002C295C  7F E3 FB 78 */	mr r3, r31
/* 802C5A00 002C2960  38 81 00 0C */	addi r4, r1, 0xc
/* 802C5A04 002C2964  38 A0 00 04 */	li r5, 4
/* 802C5A08 002C2968  48 07 9B A1 */	bl DoPut__13COutputStreamFPCvUl
/* 802C5A0C 002C296C  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 802C5A10 002C2970  7F E3 FB 78 */	mr r3, r31
/* 802C5A14 002C2974  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802C5A18 002C2978  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C5A1C 002C297C  90 01 00 08 */	stw r0, 8(r1)
/* 802C5A20 002C2980  48 07 9A 99 */	bl FlushShiftRegister__13COutputStreamFv
/* 802C5A24 002C2984  7F E3 FB 78 */	mr r3, r31
/* 802C5A28 002C2988  38 81 00 08 */	addi r4, r1, 8
/* 802C5A2C 002C298C  38 A0 00 04 */	li r5, 4
/* 802C5A30 002C2990  48 07 9B 79 */	bl DoPut__13COutputStreamFPCvUl
/* 802C5A34 002C2994  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C5A38 002C2998  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802C5A3C 002C299C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802C5A40 002C29A0  7C 08 03 A6 */	mtlr r0
/* 802C5A44 002C29A4  38 21 00 40 */	addi r1, r1, 0x40
/* 802C5A48 002C29A8  4E 80 00 20 */	blr

.global Create__8CGuiPaneFP9CGuiFrameR12CInputStreamb
Create__8CGuiPaneFP9CGuiFrameR12CInputStreamb:
/* 802C5A4C 002C29AC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802C5A50 002C29B0  7C 08 02 A6 */	mflr r0
/* 802C5A54 002C29B4  90 01 00 84 */	stw r0, 0x84(r1)
/* 802C5A58 002C29B8  39 61 00 80 */	addi r11, r1, 0x80
/* 802C5A5C 002C29BC  48 0C 3F 89 */	bl _savefpr_27
/* 802C5A60 002C29C0  93 E1 00 54 */	stw r31, 0x54(r1)
/* 802C5A64 002C29C4  93 C1 00 50 */	stw r30, 0x50(r1)
/* 802C5A68 002C29C8  93 A1 00 4C */	stw r29, 0x4c(r1)
/* 802C5A6C 002C29CC  7C 7E 1B 78 */	mr r30, r3
/* 802C5A70 002C29D0  7C 9F 23 78 */	mr r31, r4
/* 802C5A74 002C29D4  7F C4 F3 78 */	mr r4, r30
/* 802C5A78 002C29D8  38 61 00 14 */	addi r3, r1, 0x14
/* 802C5A7C 002C29DC  7F E5 FB 78 */	mr r5, r31
/* 802C5A80 002C29E0  48 00 52 D1 */	bl ReadWidgetHeader__10CGuiWidgetFP9CGuiFrameR12CInputStreamb
/* 802C5A84 002C29E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C5A88 002C29E8  7F E3 FB 78 */	mr r3, r31
/* 802C5A8C 002C29EC  89 81 00 18 */	lbz r12, 0x18(r1)
/* 802C5A90 002C29F0  A9 61 00 1A */	lha r11, 0x1a(r1)
/* 802C5A94 002C29F4  A9 41 00 1C */	lha r10, 0x1c(r1)
/* 802C5A98 002C29F8  89 21 00 1E */	lbz r9, 0x1e(r1)
/* 802C5A9C 002C29FC  89 01 00 1F */	lbz r8, 0x1f(r1)
/* 802C5AA0 002C2A00  88 E1 00 20 */	lbz r7, 0x20(r1)
/* 802C5AA4 002C2A04  88 C1 00 21 */	lbz r6, 0x21(r1)
/* 802C5AA8 002C2A08  88 A1 00 22 */	lbz r5, 0x22(r1)
/* 802C5AAC 002C2A0C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 802C5AB0 002C2A10  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802C5AB4 002C2A14  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 802C5AB8 002C2A18  99 81 00 30 */	stb r12, 0x30(r1)
/* 802C5ABC 002C2A1C  B1 61 00 32 */	sth r11, 0x32(r1)
/* 802C5AC0 002C2A20  B1 41 00 34 */	sth r10, 0x34(r1)
/* 802C5AC4 002C2A24  99 21 00 36 */	stb r9, 0x36(r1)
/* 802C5AC8 002C2A28  99 01 00 37 */	stb r8, 0x37(r1)
/* 802C5ACC 002C2A2C  98 E1 00 38 */	stb r7, 0x38(r1)
/* 802C5AD0 002C2A30  98 C1 00 39 */	stb r6, 0x39(r1)
/* 802C5AD4 002C2A34  98 A1 00 3A */	stb r5, 0x3a(r1)
/* 802C5AD8 002C2A38  90 81 00 3C */	stw r4, 0x3c(r1)
/* 802C5ADC 002C2A3C  90 01 00 40 */	stw r0, 0x40(r1)
/* 802C5AE0 002C2A40  48 07 91 49 */	bl ReadFloat__12CInputStreamFv
/* 802C5AE4 002C2A44  FF 80 08 90 */	fmr f28, f1
/* 802C5AE8 002C2A48  7F E3 FB 78 */	mr r3, r31
/* 802C5AEC 002C2A4C  48 07 91 3D */	bl ReadFloat__12CInputStreamFv
/* 802C5AF0 002C2A50  FF 60 08 90 */	fmr f27, f1
/* 802C5AF4 002C2A54  7F E3 FB 78 */	mr r3, r31
/* 802C5AF8 002C2A58  48 07 91 31 */	bl ReadFloat__12CInputStreamFv
/* 802C5AFC 002C2A5C  FF A0 08 90 */	fmr f29, f1
/* 802C5B00 002C2A60  7F E3 FB 78 */	mr r3, r31
/* 802C5B04 002C2A64  48 07 91 25 */	bl ReadFloat__12CInputStreamFv
/* 802C5B08 002C2A68  FF C0 08 90 */	fmr f30, f1
/* 802C5B0C 002C2A6C  7F E3 FB 78 */	mr r3, r31
/* 802C5B10 002C2A70  48 07 91 19 */	bl ReadFloat__12CInputStreamFv
/* 802C5B14 002C2A74  FF E0 08 90 */	fmr f31, f1
/* 802C5B18 002C2A78  3C 60 80 3D */	lis r3, lbl_803D68B8@ha
/* 802C5B1C 002C2A7C  38 83 68 B8 */	addi r4, r3, lbl_803D68B8@l
/* 802C5B20 002C2A80  38 A0 00 00 */	li r5, 0
/* 802C5B24 002C2A84  38 60 00 D4 */	li r3, 0xd4
/* 802C5B28 002C2A88  48 04 FD 45 */	bl __nw__FUlPCcPCc
/* 802C5B2C 002C2A8C  7C 7D 1B 79 */	or. r29, r3, r3
/* 802C5B30 002C2A90  41 82 00 28 */	beq lbl_802C5B58
/* 802C5B34 002C2A94  FC 20 E0 90 */	fmr f1, f28
/* 802C5B38 002C2A98  D3 A1 00 08 */	stfs f29, 8(r1)
/* 802C5B3C 002C2A9C  FC 40 D8 90 */	fmr f2, f27
/* 802C5B40 002C2AA0  38 81 00 2C */	addi r4, r1, 0x2c
/* 802C5B44 002C2AA4  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 802C5B48 002C2AA8  38 A1 00 08 */	addi r5, r1, 8
/* 802C5B4C 002C2AAC  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 802C5B50 002C2AB0  4B FF FD 4D */	bl __ct__8CGuiPaneFRCQ210CGuiWidget15CGuiWidgetParmsffRC9CVector3f
/* 802C5B54 002C2AB4  7C 7D 1B 78 */	mr r29, r3
lbl_802C5B58:
/* 802C5B58 002C2AB8  7F A3 EB 78 */	mr r3, r29
/* 802C5B5C 002C2ABC  7F C4 F3 78 */	mr r4, r30
/* 802C5B60 002C2AC0  7F E5 FB 78 */	mr r5, r31
/* 802C5B64 002C2AC4  38 C1 00 2C */	addi r6, r1, 0x2c
/* 802C5B68 002C2AC8  48 00 4F 21 */	bl ParseBaseInfo__10CGuiWidgetFP9CGuiFrameR12CInputStreamRCQ210CGuiWidget15CGuiWidgetParms
/* 802C5B6C 002C2ACC  7F A3 EB 78 */	mr r3, r29
/* 802C5B70 002C2AD0  39 61 00 80 */	addi r11, r1, 0x80
/* 802C5B74 002C2AD4  48 0C 3E BD */	bl _restfpr_27
/* 802C5B78 002C2AD8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802C5B7C 002C2ADC  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 802C5B80 002C2AE0  83 C1 00 50 */	lwz r30, 0x50(r1)
/* 802C5B84 002C2AE4  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 802C5B88 002C2AE8  7C 08 03 A6 */	mtlr r0
/* 802C5B8C 002C2AEC  38 21 00 80 */	addi r1, r1, 0x80
/* 802C5B90 002C2AF0  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AE0C0
lbl_805AE0C0:
	# ROM: 0x3FA960
	.float 0.5

.global lbl_805AE0C4
lbl_805AE0C4:
	# ROM: 0x3FA964
	.4byte 0

.global lbl_805AE0C8
lbl_805AE0C8:
	# ROM: 0x3FA968
	.float -1.0
	.4byte 0

.global lbl_805AE0D0
lbl_805AE0D0:
	# ROM: 0x3FA970
	.4byte 0x43300000
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D68B8
lbl_803D68B8:
	# ROM: 0x3D38B8
	.asciz "??(??)"
	.balign 4

