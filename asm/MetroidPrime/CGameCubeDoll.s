.include "macros.inc"

.section .text, "ax"

.global Draw__13CGameCubeDollFf
Draw__13CGameCubeDollFf:
/* 8029E644 0029B5A4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8029E648 0029B5A8  7C 08 02 A6 */	mflr r0
/* 8029E64C 0029B5AC  90 01 01 14 */	stw r0, 0x114(r1)
/* 8029E650 0029B5B0  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8029E654 0029B5B4  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 8029E658 0029B5B8  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8029E65C 0029B5BC  7C 7F 1B 78 */	mr r31, r3
/* 8029E660 0029B5C0  FF E0 08 90 */	fmr f31, f1
/* 8029E664 0029B5C4  48 00 04 D5 */	bl IsLoaded__13CGameCubeDollCFv
/* 8029E668 0029B5C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029E66C 0029B5CC  41 82 01 44 */	beq lbl_8029E7B0
/* 8029E670 0029B5D0  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 8029E674 0029B5D4  3C 80 43 30 */	lis r4, 0x4330
/* 8029E678 0029B5D8  38 C3 D9 10 */	addi r6, r3, mViewport__9CGraphics@l
/* 8029E67C 0029B5DC  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8029E680 0029B5E0  80 A6 00 08 */	lwz r5, 8(r6)
/* 8029E684 0029B5E4  80 06 00 0C */	lwz r0, 0xc(r6)
/* 8029E688 0029B5E8  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8029E68C 0029B5EC  81 83 00 00 */	lwz r12, 0(r3)
/* 8029E690 0029B5F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8029E694 0029B5F4  90 A1 00 E4 */	stw r5, 0xe4(r1)
/* 8029E698 0029B5F8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8029E69C 0029B5FC  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 8029E6A0 0029B600  C8 62 C0 D8 */	lfd f3, lbl_805ADDF8@sda21(r2)
/* 8029E6A4 0029B604  EF FF 00 32 */	fmuls f31, f31, f0
/* 8029E6A8 0029B608  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8029E6AC 0029B60C  90 01 00 EC */	stw r0, 0xec(r1)
/* 8029E6B0 0029B610  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8029E6B4 0029B614  EC 40 18 28 */	fsubs f2, f0, f3
/* 8029E6B8 0029B618  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 8029E6BC 0029B61C  C0 22 C0 B0 */	lfs f1, lbl_805ADDD0@sda21(r2)
/* 8029E6C0 0029B620  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 8029E6C4 0029B624  C0 82 C0 B4 */	lfs f4, lbl_805ADDD4@sda21(r2)
/* 8029E6C8 0029B628  EC 60 18 28 */	fsubs f3, f0, f3
/* 8029E6CC 0029B62C  C0 A2 C0 B8 */	lfs f5, lbl_805ADDD8@sda21(r2)
/* 8029E6D0 0029B630  7D 89 03 A6 */	mtctr r12
/* 8029E6D4 0029B634  4E 80 04 21 */	bctrl
/* 8029E6D8 0029B638  C0 22 C0 BC */	lfs f1, lbl_805ADDDC@sda21(r2)
/* 8029E6DC 0029B63C  38 61 00 AC */	addi r3, r1, 0xac
/* 8029E6E0 0029B640  C0 42 C0 C0 */	lfs f2, lbl_805ADDE0@sda21(r2)
/* 8029E6E4 0029B644  FC 60 08 90 */	fmr f3, f1
/* 8029E6E8 0029B648  48 07 4A A1 */	bl Translate__12CTransform4fFfff
/* 8029E6EC 0029B64C  38 61 00 AC */	addi r3, r1, 0xac
/* 8029E6F0 0029B650  48 06 E0 5D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 8029E6F4 0029B654  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029E6F8 0029B658  4B E6 66 91 */	bl ActivateLights__12CActorLightsCFv
/* 8029E6FC 0029B65C  48 06 B7 E5 */	bl GetSecondsMod900__9CGraphicsFv
/* 8029E700 0029B660  C0 42 C0 C8 */	lfs f2, lbl_805ADDE8@sda21(r2)
/* 8029E704 0029B664  38 61 00 1C */	addi r3, r1, 0x1c
/* 8029E708 0029B668  C0 02 C0 C4 */	lfs f0, lbl_805ADDE4@sda21(r2)
/* 8029E70C 0029B66C  EC 62 00 72 */	fmuls f3, f2, f1
/* 8029E710 0029B670  C0 42 C0 CC */	lfs f2, lbl_805ADDEC@sda21(r2)
/* 8029E714 0029B674  C0 22 C0 B4 */	lfs f1, lbl_805ADDD4@sda21(r2)
/* 8029E718 0029B678  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8029E71C 0029B67C  FC 00 00 50 */	fneg f0, f0
/* 8029E720 0029B680  EC 02 00 32 */	fmuls f0, f2, f0
/* 8029E724 0029B684  D0 01 00 08 */	stfs f0, 8(r1)
/* 8029E728 0029B688  48 07 4B 19 */	bl Scale__12CTransform4fFf
/* 8029E72C 0029B68C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8029E730 0029B690  38 81 00 08 */	addi r4, r1, 8
/* 8029E734 0029B694  48 07 50 DD */	bl RotateZ__12CTransform4fFRC9CRelAngle
/* 8029E738 0029B698  38 61 00 7C */	addi r3, r1, 0x7c
/* 8029E73C 0029B69C  38 81 00 4C */	addi r4, r1, 0x4c
/* 8029E740 0029B6A0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8029E744 0029B6A4  48 07 42 0D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8029E748 0029B6A8  38 61 00 7C */	addi r3, r1, 0x7c
/* 8029E74C 0029B6AC  48 06 DE 95 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 8029E750 0029B6B0  7F E4 FB 78 */	mr r4, r31
/* 8029E754 0029B6B4  38 61 00 14 */	addi r3, r1, 0x14
/* 8029E758 0029B6B8  48 0A 27 51 */	bl __ct__6CTokenFRC6CToken
/* 8029E75C 0029B6BC  C0 22 C0 D0 */	lfs f1, lbl_805ADDF0@sda21(r2)
/* 8029E760 0029B6C0  38 60 00 05 */	li r3, 5
/* 8029E764 0029B6C4  38 80 00 00 */	li r4, 0
/* 8029E768 0029B6C8  38 00 00 03 */	li r0, 3
/* 8029E76C 0029B6CC  FC 40 08 90 */	fmr f2, f1
/* 8029E770 0029B6D0  98 61 00 0C */	stb r3, 0xc(r1)
/* 8029E774 0029B6D4  FC 60 08 90 */	fmr f3, f1
/* 8029E778 0029B6D8  38 61 00 10 */	addi r3, r1, 0x10
/* 8029E77C 0029B6DC  FC 80 F8 90 */	fmr f4, f31
/* 8029E780 0029B6E0  98 81 00 0D */	stb r4, 0xd(r1)
/* 8029E784 0029B6E4  B0 01 00 0E */	sth r0, 0xe(r1)
/* 8029E788 0029B6E8  48 0C 4C 65 */	bl __ct__6CColorFffff
/* 8029E78C 0029B6EC  38 61 00 14 */	addi r3, r1, 0x14
/* 8029E790 0029B6F0  48 0A 26 7D */	bl GetObj__6CTokenFv
/* 8029E794 0029B6F4  80 63 00 04 */	lwz r3, 4(r3)
/* 8029E798 0029B6F8  38 81 00 0C */	addi r4, r1, 0xc
/* 8029E79C 0029B6FC  48 0B 74 39 */	bl Draw__6CModelCFRC11CModelFlags
/* 8029E7A0 0029B700  48 06 E1 DD */	bl DisableAllLights__9CGraphicsFv
/* 8029E7A4 0029B704  38 61 00 14 */	addi r3, r1, 0x14
/* 8029E7A8 0029B708  38 80 00 00 */	li r4, 0
/* 8029E7AC 0029B70C  48 0A 26 95 */	bl __dt__6CTokenFv
lbl_8029E7B0:
/* 8029E7B0 0029B710  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 8029E7B4 0029B714  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8029E7B8 0029B718  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8029E7BC 0029B71C  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8029E7C0 0029B720  7C 08 03 A6 */	mtlr r0
/* 8029E7C4 0029B724  38 21 01 10 */	addi r1, r1, 0x110
/* 8029E7C8 0029B728  4E 80 00 20 */	blr

.global Update__13CGameCubeDollFf
Update__13CGameCubeDollFf:
/* 8029E7CC 0029B72C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029E7D0 0029B730  7C 08 02 A6 */	mflr r0
/* 8029E7D4 0029B734  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029E7D8 0029B738  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8029E7DC 0029B73C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8029E7E0 0029B740  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029E7E4 0029B744  7C 7F 1B 78 */	mr r31, r3
/* 8029E7E8 0029B748  FF E0 08 90 */	fmr f31, f1
/* 8029E7EC 0029B74C  48 00 03 65 */	bl CheckLoadComplete__13CGameCubeDollFv
/* 8029E7F0 0029B750  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029E7F4 0029B754  41 82 00 3C */	beq lbl_8029E830
/* 8029E7F8 0029B758  C0 42 C0 E0 */	lfs f2, lbl_805ADE00@sda21(r2)
/* 8029E7FC 0029B75C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8029E800 0029B760  C0 0D 9A 28 */	lfs f0, lbl_805A85E8@sda21(r13)
/* 8029E804 0029B764  EC 22 0F FA */	fmadds f1, f2, f31, f1
/* 8029E808 0029B768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029E80C 0029B76C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8029E810 0029B770  40 80 00 0C */	bge lbl_8029E81C
/* 8029E814 0029B774  38 61 00 08 */	addi r3, r1, 8
/* 8029E818 0029B778  48 00 00 08 */	b lbl_8029E820
lbl_8029E81C:
/* 8029E81C 0029B77C  38 6D 9A 28 */	addi r3, r13, lbl_805A85E8@sda21
lbl_8029E820:
/* 8029E820 0029B780  C0 03 00 00 */	lfs f0, 0(r3)
/* 8029E824 0029B784  7F E3 FB 78 */	mr r3, r31
/* 8029E828 0029B788  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8029E82C 0029B78C  48 00 00 81 */	bl UpdateActorLights__13CGameCubeDollFv
lbl_8029E830:
/* 8029E830 0029B790  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8029E834 0029B794  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8029E838 0029B798  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8029E83C 0029B79C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029E840 0029B7A0  7C 08 03 A6 */	mtlr r0
/* 8029E844 0029B7A4  38 21 00 30 */	addi r1, r1, 0x30
/* 8029E848 0029B7A8  4E 80 00 20 */	blr

.global Touch__13CGameCubeDollFv
Touch__13CGameCubeDollFv:
/* 8029E84C 0029B7AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E850 0029B7B0  7C 08 02 A6 */	mflr r0
/* 8029E854 0029B7B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E858 0029B7B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029E85C 0029B7BC  7C 7F 1B 78 */	mr r31, r3
/* 8029E860 0029B7C0  48 00 02 F1 */	bl CheckLoadComplete__13CGameCubeDollFv
/* 8029E864 0029B7C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029E868 0029B7C8  41 82 00 30 */	beq lbl_8029E898
/* 8029E86C 0029B7CC  7F E4 FB 78 */	mr r4, r31
/* 8029E870 0029B7D0  38 61 00 08 */	addi r3, r1, 8
/* 8029E874 0029B7D4  48 0A 26 35 */	bl __ct__6CTokenFRC6CToken
/* 8029E878 0029B7D8  38 61 00 08 */	addi r3, r1, 8
/* 8029E87C 0029B7DC  48 0A 25 91 */	bl GetObj__6CTokenFv
/* 8029E880 0029B7E0  80 63 00 04 */	lwz r3, 4(r3)
/* 8029E884 0029B7E4  38 80 00 00 */	li r4, 0
/* 8029E888 0029B7E8  48 0B 6D AD */	bl Touch__6CModelCFi
/* 8029E88C 0029B7EC  38 61 00 08 */	addi r3, r1, 8
/* 8029E890 0029B7F0  38 80 00 00 */	li r4, 0
/* 8029E894 0029B7F4  48 0A 25 AD */	bl __dt__6CTokenFv
lbl_8029E898:
/* 8029E898 0029B7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E89C 0029B7FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029E8A0 0029B800  7C 08 03 A6 */	mtlr r0
/* 8029E8A4 0029B804  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E8A8 0029B808  4E 80 00 20 */	blr

.global UpdateActorLights__13CGameCubeDollFv
UpdateActorLights__13CGameCubeDollFv:
/* 8029E8AC 0029B80C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8029E8B0 0029B810  7C 08 02 A6 */	mflr r0
/* 8029E8B4 0029B814  3C 80 80 5A */	lis r4, sRightVector__9CVector3f@ha
/* 8029E8B8 0029B818  3C C0 80 5A */	lis r6, sDownVector__9CVector3f@ha
/* 8029E8BC 0029B81C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8029E8C0 0029B820  38 A4 67 18 */	addi r5, r4, sRightVector__9CVector3f@l
/* 8029E8C4 0029B824  3C 80 80 5A */	lis r4, sForwardVector__9CVector3f@ha
/* 8029E8C8 0029B828  C0 62 C0 C4 */	lfs f3, lbl_805ADDE4@sda21(r2)
/* 8029E8CC 0029B82C  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8029E8D0 0029B830  7C 7F 1B 78 */	mr r31, r3
/* 8029E8D4 0029B834  38 84 67 24 */	addi r4, r4, sForwardVector__9CVector3f@l
/* 8029E8D8 0029B838  38 C6 67 00 */	addi r6, r6, sDownVector__9CVector3f@l
/* 8029E8DC 0029B83C  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8029E8E0 0029B840  38 61 00 40 */	addi r3, r1, 0x40
/* 8029E8E4 0029B844  C0 C2 C0 E4 */	lfs f6, lbl_805ADE04@sda21(r2)
/* 8029E8E8 0029B848  C0 45 00 08 */	lfs f2, 8(r5)
/* 8029E8EC 0029B84C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8029E8F0 0029B850  EC E3 00 B2 */	fmuls f7, f3, f2
/* 8029E8F4 0029B854  C0 05 00 04 */	lfs f0, 4(r5)
/* 8029E8F8 0029B858  EC 83 00 72 */	fmuls f4, f3, f1
/* 8029E8FC 0029B85C  C0 24 00 08 */	lfs f1, 8(r4)
/* 8029E900 0029B860  EC 63 00 32 */	fmuls f3, f3, f0
/* 8029E904 0029B864  C0 04 00 00 */	lfs f0, 0(r4)
/* 8029E908 0029B868  C0 44 00 04 */	lfs f2, 4(r4)
/* 8029E90C 0029B86C  ED 01 38 2A */	fadds f8, f1, f7
/* 8029E910 0029B870  EC 20 20 2A */	fadds f1, f0, f4
/* 8029E914 0029B874  C0 06 00 00 */	lfs f0, 0(r6)
/* 8029E918 0029B878  ED 22 18 2A */	fadds f9, f2, f3
/* 8029E91C 0029B87C  C0 46 00 08 */	lfs f2, 8(r6)
/* 8029E920 0029B880  EC A6 00 32 */	fmuls f5, f6, f0
/* 8029E924 0029B884  ED 46 00 B2 */	fmuls f10, f6, f2
/* 8029E928 0029B888  C0 06 00 04 */	lfs f0, 4(r6)
/* 8029E92C 0029B88C  38 81 00 34 */	addi r4, r1, 0x34
/* 8029E930 0029B890  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8029E934 0029B894  EC 46 00 32 */	fmuls f2, f6, f0
/* 8029E938 0029B898  EC 88 50 2A */	fadds f4, f8, f10
/* 8029E93C 0029B89C  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8029E940 0029B8A0  EC 01 28 2A */	fadds f0, f1, f5
/* 8029E944 0029B8A4  EC A9 10 2A */	fadds f5, f9, f2
/* 8029E948 0029B8A8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8029E94C 0029B8AC  D1 41 00 18 */	stfs f10, 0x18(r1)
/* 8029E950 0029B8B0  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8029E954 0029B8B4  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 8029E958 0029B8B8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8029E95C 0029B8BC  D1 21 00 2C */	stfs f9, 0x2c(r1)
/* 8029E960 0029B8C0  D1 01 00 30 */	stfs f8, 0x30(r1)
/* 8029E964 0029B8C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8029E968 0029B8C8  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 8029E96C 0029B8CC  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8029E970 0029B8D0  48 07 5E E1 */	bl AsNormalized__9CVector3fCFv
/* 8029E974 0029B8D4  38 00 00 FF */	li r0, 0xff
/* 8029E978 0029B8D8  3C 60 80 5A */	lis r3, sForwardVector__9CVector3f@ha
/* 8029E97C 0029B8DC  98 01 00 0C */	stb r0, 0xc(r1)
/* 8029E980 0029B8E0  38 83 67 24 */	addi r4, r3, sForwardVector__9CVector3f@l
/* 8029E984 0029B8E4  38 61 00 4C */	addi r3, r1, 0x4c
/* 8029E988 0029B8E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8029E98C 0029B8EC  98 01 00 0D */	stb r0, 0xd(r1)
/* 8029E990 0029B8F0  98 01 00 0E */	stb r0, 0xe(r1)
/* 8029E994 0029B8F4  98 01 00 0F */	stb r0, 0xf(r1)
/* 8029E998 0029B8F8  48 06 7A D5 */	bl BuildDirectional__6CLightFRC9CVector3fRC6CColor
/* 8029E99C 0029B8FC  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029E9A0 0029B900  38 61 00 08 */	addi r3, r1, 8
/* 8029E9A4 0029B904  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8029E9A8 0029B908  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8029E9AC 0029B90C  C0 22 C0 C4 */	lfs f1, lbl_805ADDE4@sda21(r2)
/* 8029E9B0 0029B910  90 85 00 00 */	stw r4, 0(r5)
/* 8029E9B4 0029B914  FC 40 08 90 */	fmr f2, f1
/* 8029E9B8 0029B918  C0 82 C0 D0 */	lfs f4, lbl_805ADDF0@sda21(r2)
/* 8029E9BC 0029B91C  90 05 00 04 */	stw r0, 4(r5)
/* 8029E9C0 0029B920  FC 60 08 90 */	fmr f3, f1
/* 8029E9C4 0029B924  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8029E9C8 0029B928  90 05 00 08 */	stw r0, 8(r5)
/* 8029E9CC 0029B92C  80 81 00 58 */	lwz r4, 0x58(r1)
/* 8029E9D0 0029B930  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8029E9D4 0029B934  90 85 00 0C */	stw r4, 0xc(r5)
/* 8029E9D8 0029B938  90 05 00 10 */	stw r0, 0x10(r5)
/* 8029E9DC 0029B93C  80 01 00 60 */	lwz r0, 0x60(r1)
/* 8029E9E0 0029B940  90 05 00 14 */	stw r0, 0x14(r5)
/* 8029E9E4 0029B944  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8029E9E8 0029B948  90 05 00 18 */	stw r0, 0x18(r5)
/* 8029E9EC 0029B94C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8029E9F0 0029B950  90 05 00 1C */	stw r0, 0x1c(r5)
/* 8029E9F4 0029B954  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8029E9F8 0029B958  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 8029E9FC 0029B95C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8029EA00 0029B960  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 8029EA04 0029B964  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8029EA08 0029B968  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 8029EA0C 0029B96C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8029EA10 0029B970  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 8029EA14 0029B974  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8029EA18 0029B978  D0 05 00 30 */	stfs f0, 0x30(r5)
/* 8029EA1C 0029B97C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8029EA20 0029B980  D0 05 00 34 */	stfs f0, 0x34(r5)
/* 8029EA24 0029B984  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8029EA28 0029B988  D0 05 00 38 */	stfs f0, 0x38(r5)
/* 8029EA2C 0029B98C  80 01 00 88 */	lwz r0, 0x88(r1)
/* 8029EA30 0029B990  90 05 00 3C */	stw r0, 0x3c(r5)
/* 8029EA34 0029B994  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8029EA38 0029B998  90 05 00 40 */	stw r0, 0x40(r5)
/* 8029EA3C 0029B99C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8029EA40 0029B9A0  D0 05 00 44 */	stfs f0, 0x44(r5)
/* 8029EA44 0029B9A4  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8029EA48 0029B9A8  D0 05 00 48 */	stfs f0, 0x48(r5)
/* 8029EA4C 0029B9AC  88 01 00 98 */	lbz r0, 0x98(r1)
/* 8029EA50 0029B9B0  98 05 00 4C */	stb r0, 0x4c(r5)
/* 8029EA54 0029B9B4  83 DF 00 18 */	lwz r30, 0x18(r31)
/* 8029EA58 0029B9B8  48 0C 49 95 */	bl __ct__6CColorFffff
/* 8029EA5C 0029B9BC  7C 65 1B 78 */	mr r5, r3
/* 8029EA60 0029B9C0  7F C3 F3 78 */	mr r3, r30
/* 8029EA64 0029B9C4  38 9F 00 08 */	addi r4, r31, 8
/* 8029EA68 0029B9C8  4B E6 46 C5 */	bl "BuildFakeLightList__12CActorLightsFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>RC6CColor"
/* 8029EA6C 0029B9CC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8029EA70 0029B9D0  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8029EA74 0029B9D4  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8029EA78 0029B9D8  7C 08 03 A6 */	mtlr r0
/* 8029EA7C 0029B9DC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8029EA80 0029B9E0  4E 80 00 20 */	blr

.global __dt__13CGameCubeDollFv
__dt__13CGameCubeDollFv:
/* 8029EA84 0029B9E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029EA88 0029B9E8  7C 08 02 A6 */	mflr r0
/* 8029EA8C 0029B9EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029EA90 0029B9F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029EA94 0029B9F4  7C 9F 23 78 */	mr r31, r4
/* 8029EA98 0029B9F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8029EA9C 0029B9FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8029EAA0 0029BA00  41 82 00 7C */	beq lbl_8029EB1C
/* 8029EAA4 0029BA04  34 1E 00 18 */	addic. r0, r30, 0x18
/* 8029EAA8 0029BA08  41 82 00 10 */	beq lbl_8029EAB8
/* 8029EAAC 0029BA0C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8029EAB0 0029BA10  38 80 00 01 */	li r4, 1
/* 8029EAB4 0029BA14  4B E6 66 21 */	bl __dt__12CActorLightsFv
lbl_8029EAB8:
/* 8029EAB8 0029BA18  34 1E 00 08 */	addic. r0, r30, 8
/* 8029EABC 0029BA1C  41 82 00 44 */	beq lbl_8029EB00
/* 8029EAC0 0029BA20  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8029EAC4 0029BA24  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8029EAC8 0029BA28  1C 00 00 50 */	mulli r0, r0, 0x50
/* 8029EACC 0029BA2C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8029EAD0 0029BA30  7C 64 1B 78 */	mr r4, r3
/* 8029EAD4 0029BA34  7C 03 02 14 */	add r0, r3, r0
/* 8029EAD8 0029BA38  90 61 00 08 */	stw r3, 8(r1)
/* 8029EADC 0029BA3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EAE0 0029BA40  90 01 00 10 */	stw r0, 0x10(r1)
/* 8029EAE4 0029BA44  48 00 00 08 */	b lbl_8029EAEC
lbl_8029EAE8:
/* 8029EAE8 0029BA48  38 84 00 50 */	addi r4, r4, 0x50
lbl_8029EAEC:
/* 8029EAEC 0029BA4C  7C 04 00 40 */	cmplw r4, r0
/* 8029EAF0 0029BA50  40 82 FF F8 */	bne lbl_8029EAE8
/* 8029EAF4 0029BA54  28 03 00 00 */	cmplwi r3, 0
/* 8029EAF8 0029BA58  41 82 00 08 */	beq lbl_8029EB00
/* 8029EAFC 0029BA5C  48 07 6E 35 */	bl Free__7CMemoryFPCv
lbl_8029EB00:
/* 8029EB00 0029BA60  7F C3 F3 78 */	mr r3, r30
/* 8029EB04 0029BA64  38 80 FF FF */	li r4, -1
/* 8029EB08 0029BA68  48 0A 23 39 */	bl __dt__6CTokenFv
/* 8029EB0C 0029BA6C  7F E0 07 35 */	extsh. r0, r31
/* 8029EB10 0029BA70  40 81 00 0C */	ble lbl_8029EB1C
/* 8029EB14 0029BA74  7F C3 F3 78 */	mr r3, r30
/* 8029EB18 0029BA78  48 07 6E 19 */	bl Free__7CMemoryFPCv
lbl_8029EB1C:
/* 8029EB1C 0029BA7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029EB20 0029BA80  7F C3 F3 78 */	mr r3, r30
/* 8029EB24 0029BA84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029EB28 0029BA88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8029EB2C 0029BA8C  7C 08 03 A6 */	mtlr r0
/* 8029EB30 0029BA90  38 21 00 20 */	addi r1, r1, 0x20
/* 8029EB34 0029BA94  4E 80 00 20 */	blr

.global IsLoaded__13CGameCubeDollCFv
IsLoaded__13CGameCubeDollCFv:
/* 8029EB38 0029BA98  88 03 00 20 */	lbz r0, 0x20(r3)
/* 8029EB3C 0029BA9C  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 8029EB40 0029BAA0  7C 03 00 D0 */	neg r0, r3
/* 8029EB44 0029BAA4  7C 00 1B 78 */	or r0, r0, r3
/* 8029EB48 0029BAA8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8029EB4C 0029BAAC  4E 80 00 20 */	blr

.global CheckLoadComplete__13CGameCubeDollFv
CheckLoadComplete__13CGameCubeDollFv:
/* 8029EB50 0029BAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EB54 0029BAB4  7C 08 02 A6 */	mflr r0
/* 8029EB58 0029BAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EB5C 0029BABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029EB60 0029BAC0  7C 7F 1B 78 */	mr r31, r3
/* 8029EB64 0029BAC4  4B FF FF D5 */	bl IsLoaded__13CGameCubeDollCFv
/* 8029EB68 0029BAC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029EB6C 0029BACC  41 82 00 0C */	beq lbl_8029EB78
/* 8029EB70 0029BAD0  38 60 00 01 */	li r3, 1
/* 8029EB74 0029BAD4  48 00 00 30 */	b lbl_8029EBA4
lbl_8029EB78:
/* 8029EB78 0029BAD8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8029EB7C 0029BADC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8029EB80 0029BAE0  28 00 00 00 */	cmplwi r0, 0
/* 8029EB84 0029BAE4  40 82 00 0C */	bne lbl_8029EB90
/* 8029EB88 0029BAE8  38 60 00 00 */	li r3, 0
/* 8029EB8C 0029BAEC  48 00 00 18 */	b lbl_8029EBA4
lbl_8029EB90:
/* 8029EB90 0029BAF0  88 1F 00 20 */	lbz r0, 0x20(r31)
/* 8029EB94 0029BAF4  38 60 00 01 */	li r3, 1
/* 8029EB98 0029BAF8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8029EB9C 0029BAFC  38 60 00 01 */	li r3, 1
/* 8029EBA0 0029BB00  98 1F 00 20 */	stb r0, 0x20(r31)
lbl_8029EBA4:
/* 8029EBA4 0029BB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EBA8 0029BB08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029EBAC 0029BB0C  7C 08 03 A6 */	mtlr r0
/* 8029EBB0 0029BB10  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EBB4 0029BB14  4E 80 00 20 */	blr

.global __ct__13CGameCubeDollFv
__ct__13CGameCubeDollFv:
/* 8029EBB8 0029BB18  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8029EBBC 0029BB1C  7C 08 02 A6 */	mflr r0
/* 8029EBC0 0029BB20  3C A0 80 3D */	lis r5, lbl_803D5E98@ha
/* 8029EBC4 0029BB24  90 01 00 84 */	stw r0, 0x84(r1)
/* 8029EBC8 0029BB28  38 A5 5E 98 */	addi r5, r5, lbl_803D5E98@l
/* 8029EBCC 0029BB2C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8029EBD0 0029BB30  7C 7F 1B 78 */	mr r31, r3
/* 8029EBD4 0029BB34  38 61 00 10 */	addi r3, r1, 0x10
/* 8029EBD8 0029BB38  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8029EBDC 0029BB3C  81 84 00 00 */	lwz r12, 0(r4)
/* 8029EBE0 0029BB40  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8029EBE4 0029BB44  7D 89 03 A6 */	mtctr r12
/* 8029EBE8 0029BB48  4E 80 04 21 */	bctrl
/* 8029EBEC 0029BB4C  7F E3 FB 78 */	mr r3, r31
/* 8029EBF0 0029BB50  38 81 00 10 */	addi r4, r1, 0x10
/* 8029EBF4 0029BB54  48 0A 22 B5 */	bl __ct__6CTokenFRC6CToken
/* 8029EBF8 0029BB58  38 61 00 10 */	addi r3, r1, 0x10
/* 8029EBFC 0029BB5C  38 80 FF FF */	li r4, -1
/* 8029EC00 0029BB60  48 0A 22 41 */	bl __dt__6CTokenFv
/* 8029EC04 0029BB64  38 00 FF FF */	li r0, -1
/* 8029EC08 0029BB68  3C 60 80 5A */	lis r3, sForwardVector__9CVector3f@ha
/* 8029EC0C 0029BB6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029EC10 0029BB70  38 83 67 24 */	addi r4, r3, sForwardVector__9CVector3f@l
/* 8029EC14 0029BB74  38 61 00 24 */	addi r3, r1, 0x24
/* 8029EC18 0029BB78  38 A1 00 0C */	addi r5, r1, 0xc
/* 8029EC1C 0029BB7C  48 06 78 51 */	bl BuildDirectional__6CLightFRC9CVector3fRC6CColor
/* 8029EC20 0029BB80  38 7F 00 08 */	addi r3, r31, 8
/* 8029EC24 0029BB84  38 A1 00 24 */	addi r5, r1, 0x24
/* 8029EC28 0029BB88  38 C1 00 08 */	addi r6, r1, 8
/* 8029EC2C 0029BB8C  38 80 00 01 */	li r4, 1
/* 8029EC30 0029BB90  4B E3 FA 99 */	bl "__ct__Q24rstl42vector<6CLight,Q24rstl17rmemory_allocator>FiRC6CLightRCQ24rstl17rmemory_allocator"
/* 8029EC34 0029BB94  3C 80 80 3D */	lis r4, lbl_803D5E98@ha
/* 8029EC38 0029BB98  38 60 02 E0 */	li r3, 0x2e0
/* 8029EC3C 0029BB9C  38 84 5E 98 */	addi r4, r4, lbl_803D5E98@l
/* 8029EC40 0029BBA0  38 A0 00 00 */	li r5, 0
/* 8029EC44 0029BBA4  38 84 00 0E */	addi r4, r4, 0xe
/* 8029EC48 0029BBA8  48 07 6C 25 */	bl __nw__FUlPCcPCc
/* 8029EC4C 0029BBAC  7C 60 1B 79 */	or. r0, r3, r3
/* 8029EC50 0029BBB0  41 82 00 4C */	beq lbl_8029EC9C
/* 8029EC54 0029BBB4  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8029EC58 0029BBB8  C0 22 94 04 */	lfs f1, kDefaultPositionUpdateThreshold__12CActorLights@sda21(r2)
/* 8029EC5C 0029BBBC  38 E4 66 A0 */	addi r7, r4, sZeroVector__9CVector3f@l
/* 8029EC60 0029BBC0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8029EC64 0029BBC4  81 07 00 00 */	lwz r8, 0(r7)
/* 8029EC68 0029BBC8  38 80 00 08 */	li r4, 8
/* 8029EC6C 0029BBCC  81 67 00 04 */	lwz r11, 4(r7)
/* 8029EC70 0029BBD0  38 C0 00 04 */	li r6, 4
/* 8029EC74 0029BBD4  80 07 00 08 */	lwz r0, 8(r7)
/* 8029EC78 0029BBD8  38 E0 00 04 */	li r7, 4
/* 8029EC7C 0029BBDC  91 01 00 18 */	stw r8, 0x18(r1)
/* 8029EC80 0029BBE0  39 00 00 00 */	li r8, 0
/* 8029EC84 0029BBE4  39 20 00 00 */	li r9, 0
/* 8029EC88 0029BBE8  39 40 00 00 */	li r10, 0
/* 8029EC8C 0029BBEC  91 61 00 1C */	stw r11, 0x1c(r1)
/* 8029EC90 0029BBF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8029EC94 0029BBF4  4B E6 65 39 */	bl __ct__12CActorLightsFUi9CVector3fiifbbb
/* 8029EC98 0029BBF8  7C 60 1B 78 */	mr r0, r3
lbl_8029EC9C:
/* 8029EC9C 0029BBFC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8029ECA0 0029BC00  38 80 00 00 */	li r4, 0
/* 8029ECA4 0029BC04  C0 02 C0 BC */	lfs f0, lbl_805ADDDC@sda21(r2)
/* 8029ECA8 0029BC08  7F E3 FB 78 */	mr r3, r31
/* 8029ECAC 0029BC0C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8029ECB0 0029BC10  88 1F 00 20 */	lbz r0, 0x20(r31)
/* 8029ECB4 0029BC14  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8029ECB8 0029BC18  98 1F 00 20 */	stb r0, 0x20(r31)
/* 8029ECBC 0029BC1C  48 0A 20 C9 */	bl Lock__6CTokenFv
/* 8029ECC0 0029BC20  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8029ECC4 0029BC24  7F E3 FB 78 */	mr r3, r31
/* 8029ECC8 0029BC28  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8029ECCC 0029BC2C  7C 08 03 A6 */	mtlr r0
/* 8029ECD0 0029BC30  38 21 00 80 */	addi r1, r1, 0x80
/* 8029ECD4 0029BC34  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ADDD0
lbl_805ADDD0:
	# ROM: 0x3FA670
	.4byte 0x425C0000

.global lbl_805ADDD4
lbl_805ADDD4:
	# ROM: 0x3FA674
	.float 0.2

.global lbl_805ADDD8
lbl_805ADDD8:
	# ROM: 0x3FA678
	.4byte 0x45800000

.global lbl_805ADDDC
lbl_805ADDDC:
	# ROM: 0x3FA67C
	.4byte 0

.global lbl_805ADDE0
lbl_805ADDE0:
	# ROM: 0x3FA680
	.4byte 0xC0000000

.global lbl_805ADDE4
lbl_805ADDE4:
	# ROM: 0x3FA684
	.float 0.25

.global lbl_805ADDE8
lbl_805ADDE8:
	# ROM: 0x3FA688
	.4byte 0x43B40000

.global lbl_805ADDEC
lbl_805ADDEC:
	# ROM: 0x3FA68C
	.float 0.017453292

.global lbl_805ADDF0
lbl_805ADDF0:
	# ROM: 0x3FA690
	.float 1.0
	.4byte 0

.global lbl_805ADDF8
lbl_805ADDF8:
	# ROM: 0x3FA698
	.double 4.503601774854144E15

.global lbl_805ADE00
lbl_805ADE00:
	# ROM: 0x3FA6A0
	.float 2.0

.global lbl_805ADE04
lbl_805ADE04:
	# ROM: 0x3FA6A4
	.float 0.1


.section .rodata
.balign 8
.global lbl_803D5E98
lbl_803D5E98:
	# ROM: 0x3D2E98
	.asciz "CMDL_GameCube"
	.asciz "??(??)"
	.balign 4
