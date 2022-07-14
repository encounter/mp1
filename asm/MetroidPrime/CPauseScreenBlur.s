.include "macros.inc"

.section .data

.global lbl_803E9A00
lbl_803E9A00:
	# ROM: 0x3E6A00
	.4byte 0
	.4byte 0
	.4byte __dt__16CPauseScreenBlurFv
	.4byte 0

.section .sdata

.global lbl_805A8398
lbl_805A8398:
	# ROM: 0x3F5D38
	.4byte 0

.global lbl_805A839C
lbl_805A839C:
	# ROM: 0x3F5D3C
	.4byte 0x3F800000

.section .text, "ax"

.global GetBlurAmt__16CPauseScreenBlurCFv
GetBlurAmt__16CPauseScreenBlurCFv:
/* 8025D5B4 0025A514  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8025D5B8 0025A518  FC 00 02 10 */	fabs f0, f0
/* 8025D5BC 0025A51C  FC 20 00 18 */	frsp f1, f0
/* 8025D5C0 0025A520  4E 80 00 20 */	blr 

.global SetState__16CPauseScreenBlurFQ216CPauseScreenBlur6EState
SetState__16CPauseScreenBlurFQ216CPauseScreenBlur6EState:
/* 8025D5C4 0025A524  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025D5C8 0025A528  7C 08 02 A6 */	mflr r0
/* 8025D5CC 0025A52C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025D5D0 0025A530  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025D5D4 0025A534  7C 9F 23 78 */	mr r31, r4
/* 8025D5D8 0025A538  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025D5DC 0025A53C  7C 7E 1B 78 */	mr r30, r3
/* 8025D5E0 0025A540  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8025D5E4 0025A544  2C 00 00 00 */	cmpwi r0, 0
/* 8025D5E8 0025A548  41 82 00 0C */	beq lbl_8025D5F4
/* 8025D5EC 0025A54C  41 80 00 7C */	blt lbl_8025D668
/* 8025D5F0 0025A550  48 00 00 78 */	b lbl_8025D668
lbl_8025D5F4:
/* 8025D5F4 0025A554  2C 1F 00 00 */	cmpwi r31, 0
/* 8025D5F8 0025A558  41 82 00 70 */	beq lbl_8025D668
/* 8025D5FC 0025A55C  38 60 00 02 */	li r3, 2
/* 8025D600 0025A560  48 08 C2 B5 */	bl SetChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels
/* 8025D604 0025A564  2C 1F 00 03 */	cmpwi r31, 3
/* 8025D608 0025A568  40 82 00 2C */	bne lbl_8025D634
/* 8025D60C 0025A56C  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8025D610 0025A570  38 61 00 14 */	addi r3, r1, 0x14
/* 8025D614 0025A574  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8025D618 0025A578  38 80 05 87 */	li r4, 0x587
/* 8025D61C 0025A57C  38 A0 00 7F */	li r5, 0x7f
/* 8025D620 0025A580  38 C0 00 40 */	li r6, 0x40
/* 8025D624 0025A584  38 E0 00 00 */	li r7, 0
/* 8025D628 0025A588  39 20 00 00 */	li r9, 0
/* 8025D62C 0025A58C  48 08 C7 49 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8025D630 0025A590  48 00 00 30 */	b lbl_8025D660
lbl_8025D634:
/* 8025D634 0025A594  2C 1F 00 01 */	cmpwi r31, 1
/* 8025D638 0025A598  40 82 00 28 */	bne lbl_8025D660
/* 8025D63C 0025A59C  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8025D640 0025A5A0  38 61 00 10 */	addi r3, r1, 0x10
/* 8025D644 0025A5A4  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8025D648 0025A5A8  38 80 05 62 */	li r4, 0x562
/* 8025D64C 0025A5AC  38 A0 00 7F */	li r5, 0x7f
/* 8025D650 0025A5B0  38 C0 00 40 */	li r6, 0x40
/* 8025D654 0025A5B4  38 E0 00 00 */	li r7, 0
/* 8025D658 0025A5B8  39 20 00 00 */	li r9, 0
/* 8025D65C 0025A5BC  48 08 C7 19 */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_8025D660:
/* 8025D660 0025A5C0  C0 02 BA 10 */	lfs f0, lbl_805AD730@sda21(r2)
/* 8025D664 0025A5C4  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_8025D668:
/* 8025D668 0025A5C8  2C 1F 00 00 */	cmpwi r31, 0
/* 8025D66C 0025A5CC  41 82 00 0C */	beq lbl_8025D678
/* 8025D670 0025A5D0  41 80 00 A0 */	blt lbl_8025D710
/* 8025D674 0025A5D4  48 00 00 9C */	b lbl_8025D710
lbl_8025D678:
/* 8025D678 0025A5D8  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8025D67C 0025A5DC  38 60 00 01 */	li r3, 1
/* 8025D680 0025A5E0  2C 00 00 00 */	cmpwi r0, 0
/* 8025D684 0025A5E4  40 82 00 14 */	bne lbl_8025D698
/* 8025D688 0025A5E8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8025D68C 0025A5EC  2C 00 00 00 */	cmpwi r0, 0
/* 8025D690 0025A5F0  40 82 00 08 */	bne lbl_8025D698
/* 8025D694 0025A5F4  38 60 00 00 */	li r3, 0
lbl_8025D698:
/* 8025D698 0025A5F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025D69C 0025A5FC  41 82 00 74 */	beq lbl_8025D710
/* 8025D6A0 0025A600  38 60 00 01 */	li r3, 1
/* 8025D6A4 0025A604  48 08 C2 11 */	bl SetChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels
/* 8025D6A8 0025A608  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8025D6AC 0025A60C  2C 00 00 03 */	cmpwi r0, 3
/* 8025D6B0 0025A610  40 82 00 2C */	bne lbl_8025D6DC
/* 8025D6B4 0025A614  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8025D6B8 0025A618  38 61 00 0C */	addi r3, r1, 0xc
/* 8025D6BC 0025A61C  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8025D6C0 0025A620  38 80 05 88 */	li r4, 0x588
/* 8025D6C4 0025A624  38 A0 00 7F */	li r5, 0x7f
/* 8025D6C8 0025A628  38 C0 00 40 */	li r6, 0x40
/* 8025D6CC 0025A62C  38 E0 00 00 */	li r7, 0
/* 8025D6D0 0025A630  39 20 00 00 */	li r9, 0
/* 8025D6D4 0025A634  48 08 C6 A1 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8025D6D8 0025A638  48 00 00 30 */	b lbl_8025D708
lbl_8025D6DC:
/* 8025D6DC 0025A63C  2C 00 00 01 */	cmpwi r0, 1
/* 8025D6E0 0025A640  40 82 00 28 */	bne lbl_8025D708
/* 8025D6E4 0025A644  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 8025D6E8 0025A648  38 61 00 08 */	addi r3, r1, 8
/* 8025D6EC 0025A64C  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8025D6F0 0025A650  38 80 05 64 */	li r4, 0x564
/* 8025D6F4 0025A654  38 A0 00 7F */	li r5, 0x7f
/* 8025D6F8 0025A658  38 C0 00 40 */	li r6, 0x40
/* 8025D6FC 0025A65C  38 E0 00 00 */	li r7, 0
/* 8025D700 0025A660  39 20 00 00 */	li r9, 0
/* 8025D704 0025A664  48 08 C6 71 */	bl SfxStart__11CSfxManagerFUsssbsbi
lbl_8025D708:
/* 8025D708 0025A668  C0 02 BA 14 */	lfs f0, lbl_805AD734@sda21(r2)
/* 8025D70C 0025A66C  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_8025D710:
/* 8025D710 0025A670  93 FE 00 14 */	stw r31, 0x14(r30)
/* 8025D714 0025A674  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025D718 0025A678  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025D71C 0025A67C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025D720 0025A680  7C 08 03 A6 */	mtlr r0
/* 8025D724 0025A684  38 21 00 20 */	addi r1, r1, 0x20
/* 8025D728 0025A688  4E 80 00 20 */	blr 

.global sub_8025d72c
sub_8025d72c:
/* 8025D72C 0025A68C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8025D730 0025A690  2C 00 00 00 */	cmpwi r0, 0
/* 8025D734 0025A694  40 82 00 0C */	bne lbl_8025D740
/* 8025D738 0025A698  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8025D73C 0025A69C  4D 82 00 20 */	beqlr 
lbl_8025D740:
/* 8025D740 0025A6A0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8025D744 0025A6A4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8025D748 0025A6A8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8025D74C 0025A6AC  2C 00 00 00 */	cmpwi r0, 0
/* 8025D750 0025A6B0  4C 82 00 20 */	bnelr 
/* 8025D754 0025A6B4  88 03 00 50 */	lbz r0, 0x50(r3)
/* 8025D758 0025A6B8  38 80 00 01 */	li r4, 1
/* 8025D75C 0025A6BC  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8025D760 0025A6C0  98 03 00 50 */	stb r0, 0x50(r3)
/* 8025D764 0025A6C4  4E 80 00 20 */	blr 

.global Draw__16CPauseScreenBlurFRC13CStateManager
Draw__16CPauseScreenBlurFRC13CStateManager:
/* 8025D768 0025A6C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8025D76C 0025A6CC  7C 08 02 A6 */	mflr r0
/* 8025D770 0025A6D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025D774 0025A6D4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8025D778 0025A6D8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8025D77C 0025A6DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025D780 0025A6E0  7C 7F 1B 78 */	mr r31, r3
/* 8025D784 0025A6E4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8025D788 0025A6E8  4B E8 D3 01 */	bl Draw__15CCameraBlurPassCFv
/* 8025D78C 0025A6EC  48 0A F1 F1 */	bl DisableAllLights__9CGraphicsFv
/* 8025D790 0025A6F0  38 00 FF FF */	li r0, -1
/* 8025D794 0025A6F4  38 61 00 14 */	addi r3, r1, 0x14
/* 8025D798 0025A6F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D79C 0025A6FC  48 0A E8 81 */	bl SetAmbientColor__9CGraphicsFRC6CColor
/* 8025D7A0 0025A700  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8025D7A4 0025A704  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8025D7A8 0025A708  FC 00 02 10 */	fabs f0, f0
/* 8025D7AC 0025A70C  2C 00 00 00 */	cmpwi r0, 0
/* 8025D7B0 0025A710  FF E0 00 18 */	frsp f31, f0
/* 8025D7B4 0025A714  41 82 00 74 */	beq lbl_8025D828
/* 8025D7B8 0025A718  48 0E C7 F5 */	bl White__6CColorFv
/* 8025D7BC 0025A71C  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 8025D7C0 0025A720  FC 20 F8 90 */	fmr f1, f31
/* 8025D7C4 0025A724  7C 64 1B 78 */	mr r4, r3
/* 8025D7C8 0025A728  38 61 00 10 */	addi r3, r1, 0x10
/* 8025D7CC 0025A72C  38 A5 00 04 */	addi r5, r5, 4
/* 8025D7D0 0025A730  48 10 5A DD */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 8025D7D4 0025A734  FC 20 F8 90 */	fmr f1, f31
/* 8025D7D8 0025A738  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 8025D7DC 0025A73C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8025D7E0 0025A740  38 60 00 01 */	li r3, 1
/* 8025D7E4 0025A744  38 80 00 03 */	li r4, 3
/* 8025D7E8 0025A748  4B E8 E9 61 */	bl DrawFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapeRC6CColorPC8CTexturef
/* 8025D7EC 0025A74C  3C 60 C0 C1 */	lis r3, 0xC0C0C0FF@ha
/* 8025D7F0 0025A750  38 03 C0 FF */	addi r0, r3, 0xC0C0C0FF@l
/* 8025D7F4 0025A754  90 01 00 08 */	stw r0, 8(r1)
/* 8025D7F8 0025A758  48 0E C7 B5 */	bl White__6CColorFv
/* 8025D7FC 0025A75C  FC 20 F8 90 */	fmr f1, f31
/* 8025D800 0025A760  7C 64 1B 78 */	mr r4, r3
/* 8025D804 0025A764  38 61 00 0C */	addi r3, r1, 0xc
/* 8025D808 0025A768  38 A1 00 08 */	addi r5, r1, 8
/* 8025D80C 0025A76C  48 10 5A A1 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 8025D810 0025A770  FC 20 F8 90 */	fmr f1, f31
/* 8025D814 0025A774  38 A1 00 0C */	addi r5, r1, 0xc
/* 8025D818 0025A778  38 60 00 01 */	li r3, 1
/* 8025D81C 0025A77C  38 80 00 05 */	li r4, 5
/* 8025D820 0025A780  38 C0 00 00 */	li r6, 0
/* 8025D824 0025A784  4B E8 E9 25 */	bl DrawFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapeRC6CColorPC8CTexturef
lbl_8025D828:
/* 8025D828 0025A788  88 9F 00 50 */	lbz r4, 0x50(r31)
/* 8025D82C 0025A78C  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 8025D830 0025A790  41 82 00 28 */	beq lbl_8025D858
/* 8025D834 0025A794  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8025D838 0025A798  28 00 00 00 */	cmplwi r0, 0
/* 8025D83C 0025A79C  41 82 00 1C */	beq lbl_8025D858
/* 8025D840 0025A7A0  38 60 00 00 */	li r3, 0
/* 8025D844 0025A7A4  50 64 3E 30 */	rlwimi r4, r3, 7, 0x18, 0x18
/* 8025D848 0025A7A8  98 9F 00 50 */	stb r4, 0x50(r31)
/* 8025D84C 0025A7AC  88 1F 00 50 */	lbz r0, 0x50(r31)
/* 8025D850 0025A7B0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8025D854 0025A7B4  98 1F 00 50 */	stb r0, 0x50(r31)
lbl_8025D858:
/* 8025D858 0025A7B8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8025D85C 0025A7BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025D860 0025A7C0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8025D864 0025A7C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025D868 0025A7C8  7C 08 03 A6 */	mtlr r0
/* 8025D86C 0025A7CC  38 21 00 30 */	addi r1, r1, 0x30
/* 8025D870 0025A7D0  4E 80 00 20 */	blr 

.global Update__16CPauseScreenBlurfRC13CStateManagerb
Update__16CPauseScreenBlurfRC13CStateManagerb:
/* 8025D874 0025A7D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025D878 0025A7D8  7C 08 02 A6 */	mflr r0
/* 8025D87C 0025A7DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025D880 0025A7E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025D884 0025A7E4  7C BF 2B 78 */	mr r31, r5
/* 8025D888 0025A7E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025D88C 0025A7EC  7C 7E 1B 78 */	mr r30, r3
/* 8025D890 0025A7F0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025D894 0025A7F4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8025D898 0025A7F8  7C 03 00 00 */	cmpw r3, r0
/* 8025D89C 0025A7FC  41 82 00 F8 */	beq lbl_8025D994
/* 8025D8A0 0025A800  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 8025D8A4 0025A804  C0 02 BA 18 */	lfs f0, lbl_805AD738@sda21(r2)
/* 8025D8A8 0025A808  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8025D8AC 0025A80C  40 80 00 34 */	bge lbl_8025D8E0
/* 8025D8B0 0025A810  C0 42 BA 1C */	lfs f2, lbl_805AD73C@sda21(r2)
/* 8025D8B4 0025A814  C0 0D 97 D8 */	lfs f0, lbl_805A8398@sda21(r13)
/* 8025D8B8 0025A818  EC 22 18 7A */	fmadds f1, f2, f1, f3
/* 8025D8BC 0025A81C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025D8C0 0025A820  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8025D8C4 0025A824  40 80 00 0C */	bge lbl_8025D8D0
/* 8025D8C8 0025A828  38 61 00 0C */	addi r3, r1, 0xc
/* 8025D8CC 0025A82C  48 00 00 08 */	b lbl_8025D8D4
lbl_8025D8D0:
/* 8025D8D0 0025A830  38 6D 97 D8 */	addi r3, r13, lbl_805A8398@sda21
lbl_8025D8D4:
/* 8025D8D4 0025A834  C0 03 00 00 */	lfs f0, 0(r3)
/* 8025D8D8 0025A838  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8025D8DC 0025A83C  48 00 00 34 */	b lbl_8025D910
lbl_8025D8E0:
/* 8025D8E0 0025A840  40 81 00 30 */	ble lbl_8025D910
/* 8025D8E4 0025A844  C0 42 BA 1C */	lfs f2, lbl_805AD73C@sda21(r2)
/* 8025D8E8 0025A848  C0 0D 97 DC */	lfs f0, lbl_805A839C@sda21(r13)
/* 8025D8EC 0025A84C  EC 22 18 7A */	fmadds f1, f2, f1, f3
/* 8025D8F0 0025A850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025D8F4 0025A854  D0 21 00 08 */	stfs f1, 8(r1)
/* 8025D8F8 0025A858  40 80 00 0C */	bge lbl_8025D904
/* 8025D8FC 0025A85C  38 61 00 08 */	addi r3, r1, 8
/* 8025D900 0025A860  48 00 00 08 */	b lbl_8025D908
lbl_8025D904:
/* 8025D904 0025A864  38 6D 97 DC */	addi r3, r13, lbl_805A839C@sda21
lbl_8025D908:
/* 8025D908 0025A868  C0 03 00 00 */	lfs f0, 0(r3)
/* 8025D90C 0025A86C  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_8025D910:
/* 8025D910 0025A870  C0 02 BA 18 */	lfs f0, lbl_805AD738@sda21(r2)
/* 8025D914 0025A874  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8025D918 0025A878  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8025D91C 0025A87C  41 82 00 10 */	beq lbl_8025D92C
/* 8025D920 0025A880  C0 02 BA 20 */	lfs f0, lbl_805AD740@sda21(r2)
/* 8025D924 0025A884  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8025D928 0025A888  40 82 00 10 */	bne lbl_8025D938
lbl_8025D92C:
/* 8025D92C 0025A88C  7F C3 F3 78 */	mr r3, r30
/* 8025D930 0025A890  7F E4 FB 78 */	mr r4, r31
/* 8025D934 0025A894  4B FF FD F9 */	bl sub_8025d72c
lbl_8025D938:
/* 8025D938 0025A898  C0 22 BA 18 */	lfs f1, lbl_805AD738@sda21(r2)
/* 8025D93C 0025A89C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8025D940 0025A8A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8025D944 0025A8A4  40 82 00 18 */	bne lbl_8025D95C
/* 8025D948 0025A8A8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8025D94C 0025A8AC  41 82 00 10 */	beq lbl_8025D95C
/* 8025D950 0025A8B0  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8025D954 0025A8B4  4B E8 E0 21 */	bl DisableBlur__15CCameraBlurPassFf
/* 8025D958 0025A8B8  48 00 00 3C */	b lbl_8025D994
lbl_8025D95C:
/* 8025D95C 0025A8BC  FC 00 02 10 */	fabs f0, f0
/* 8025D960 0025A8C0  80 8D A1 38 */	lwz r4, gpTweakGui@sda21(r13)
/* 8025D964 0025A8C4  C0 42 BA 18 */	lfs f2, lbl_805AD738@sda21(r2)
/* 8025D968 0025A8C8  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8025D96C 0025A8CC  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8025D970 0025A8D0  38 80 00 02 */	li r4, 2
/* 8025D974 0025A8D4  FC 00 00 18 */	frsp f0, f0
/* 8025D978 0025A8D8  38 A0 00 01 */	li r5, 1
/* 8025D97C 0025A8DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8025D980 0025A8E0  4B E8 E0 25 */	bl SetBlur__15CCameraBlurPassFQ215CCameraBlurPass9EBlurTypeffb
/* 8025D984 0025A8E4  88 1E 00 50 */	lbz r0, 0x50(r30)
/* 8025D988 0025A8E8  38 60 00 01 */	li r3, 1
/* 8025D98C 0025A8EC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8025D990 0025A8F0  98 1E 00 50 */	stb r0, 0x50(r30)
lbl_8025D994:
/* 8025D994 0025A8F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025D998 0025A8F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025D99C 0025A8FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025D9A0 0025A900  7C 08 03 A6 */	mtlr r0
/* 8025D9A4 0025A904  38 21 00 20 */	addi r1, r1, 0x20
/* 8025D9A8 0025A908  4E 80 00 20 */	blr 

.global OnNewInGameGuiState__16CPauseScreenBlurF15EInGameGuiStateR13CStateManager
OnNewInGameGuiState__16CPauseScreenBlurF15EInGameGuiStateR13CStateManager:
/* 8025D9AC 0025A90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D9B0 0025A910  7C 08 02 A6 */	mflr r0
/* 8025D9B4 0025A914  2C 04 00 00 */	cmpwi r4, 0
/* 8025D9B8 0025A918  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D9BC 0025A91C  38 00 00 00 */	li r0, 0
/* 8025D9C0 0025A920  41 80 00 10 */	blt lbl_8025D9D0
/* 8025D9C4 0025A924  2C 04 00 01 */	cmpwi r4, 1
/* 8025D9C8 0025A928  41 81 00 08 */	bgt lbl_8025D9D0
/* 8025D9CC 0025A92C  38 00 00 01 */	li r0, 1
lbl_8025D9D0:
/* 8025D9D0 0025A930  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8025D9D4 0025A934  41 82 00 10 */	beq lbl_8025D9E4
/* 8025D9D8 0025A938  38 80 00 00 */	li r4, 0
/* 8025D9DC 0025A93C  4B FF FB E9 */	bl SetState__16CPauseScreenBlurFQ216CPauseScreenBlur6EState
/* 8025D9E0 0025A940  48 00 00 58 */	b lbl_8025DA38
lbl_8025D9E4:
/* 8025D9E4 0025A944  2C 04 00 05 */	cmpwi r4, 5
/* 8025D9E8 0025A948  41 82 00 30 */	beq lbl_8025DA18
/* 8025D9EC 0025A94C  40 80 00 14 */	bge lbl_8025DA00
/* 8025D9F0 0025A950  2C 04 00 02 */	cmpwi r4, 2
/* 8025D9F4 0025A954  41 82 00 18 */	beq lbl_8025DA0C
/* 8025D9F8 0025A958  40 80 00 38 */	bge lbl_8025DA30
/* 8025D9FC 0025A95C  48 00 00 3C */	b lbl_8025DA38
lbl_8025DA00:
/* 8025DA00 0025A960  2C 04 00 07 */	cmpwi r4, 7
/* 8025DA04 0025A964  40 80 00 34 */	bge lbl_8025DA38
/* 8025DA08 0025A968  48 00 00 1C */	b lbl_8025DA24
lbl_8025DA0C:
/* 8025DA0C 0025A96C  38 80 00 01 */	li r4, 1
/* 8025DA10 0025A970  4B FF FB B5 */	bl SetState__16CPauseScreenBlurFQ216CPauseScreenBlur6EState
/* 8025DA14 0025A974  48 00 00 24 */	b lbl_8025DA38
lbl_8025DA18:
/* 8025DA18 0025A978  38 80 00 02 */	li r4, 2
/* 8025DA1C 0025A97C  4B FF FB A9 */	bl SetState__16CPauseScreenBlurFQ216CPauseScreenBlur6EState
/* 8025DA20 0025A980  48 00 00 18 */	b lbl_8025DA38
lbl_8025DA24:
/* 8025DA24 0025A984  38 80 00 03 */	li r4, 3
/* 8025DA28 0025A988  4B FF FB 9D */	bl SetState__16CPauseScreenBlurFQ216CPauseScreenBlur6EState
/* 8025DA2C 0025A98C  48 00 00 0C */	b lbl_8025DA38
lbl_8025DA30:
/* 8025DA30 0025A990  38 80 00 04 */	li r4, 4
/* 8025DA34 0025A994  4B FF FB 91 */	bl SetState__16CPauseScreenBlurFQ216CPauseScreenBlur6EState
lbl_8025DA38:
/* 8025DA38 0025A998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025DA3C 0025A99C  7C 08 03 A6 */	mtlr r0
/* 8025DA40 0025A9A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8025DA44 0025A9A4  4E 80 00 20 */	blr 

.global __dt__16CPauseScreenBlurFv
__dt__16CPauseScreenBlurFv:
/* 8025DA48 0025A9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025DA4C 0025A9AC  7C 08 02 A6 */	mflr r0
/* 8025DA50 0025A9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025DA54 0025A9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025DA58 0025A9B8  7C 9F 23 78 */	mr r31, r4
/* 8025DA5C 0025A9BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8025DA60 0025A9C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8025DA64 0025A9C4  41 82 00 78 */	beq lbl_8025DADC
/* 8025DA68 0025A9C8  3C 60 80 3F */	lis r3, lbl_803E9A00@ha
/* 8025DA6C 0025A9CC  34 1E 00 1C */	addic. r0, r30, 0x1c
/* 8025DA70 0025A9D0  38 03 9A 00 */	addi r0, r3, lbl_803E9A00@l
/* 8025DA74 0025A9D4  90 1E 00 00 */	stw r0, 0(r30)
/* 8025DA78 0025A9D8  41 82 00 38 */	beq lbl_8025DAB0
/* 8025DA7C 0025A9DC  34 1E 00 1C */	addic. r0, r30, 0x1c
/* 8025DA80 0025A9E0  41 82 00 30 */	beq lbl_8025DAB0
/* 8025DA84 0025A9E4  88 1E 00 28 */	lbz r0, 0x28(r30)
/* 8025DA88 0025A9E8  28 00 00 00 */	cmplwi r0, 0
/* 8025DA8C 0025A9EC  41 82 00 1C */	beq lbl_8025DAA8
/* 8025DA90 0025A9F0  34 7E 00 1C */	addic. r3, r30, 0x1c
/* 8025DA94 0025A9F4  41 82 00 14 */	beq lbl_8025DAA8
/* 8025DA98 0025A9F8  28 03 00 00 */	cmplwi r3, 0
/* 8025DA9C 0025A9FC  41 82 00 0C */	beq lbl_8025DAA8
/* 8025DAA0 0025AA00  38 80 00 00 */	li r4, 0
/* 8025DAA4 0025AA04  48 0E 33 9D */	bl __dt__6CTokenFv
lbl_8025DAA8:
/* 8025DAA8 0025AA08  38 00 00 00 */	li r0, 0
/* 8025DAAC 0025AA0C  98 1E 00 28 */	stb r0, 0x28(r30)
lbl_8025DAB0:
/* 8025DAB0 0025AA10  34 1E 00 04 */	addic. r0, r30, 4
/* 8025DAB4 0025AA14  41 82 00 18 */	beq lbl_8025DACC
/* 8025DAB8 0025AA18  34 1E 00 04 */	addic. r0, r30, 4
/* 8025DABC 0025AA1C  41 82 00 10 */	beq lbl_8025DACC
/* 8025DAC0 0025AA20  38 7E 00 04 */	addi r3, r30, 4
/* 8025DAC4 0025AA24  38 80 00 00 */	li r4, 0
/* 8025DAC8 0025AA28  48 0E 33 79 */	bl __dt__6CTokenFv
lbl_8025DACC:
/* 8025DACC 0025AA2C  7F E0 07 35 */	extsh. r0, r31
/* 8025DAD0 0025AA30  40 81 00 0C */	ble lbl_8025DADC
/* 8025DAD4 0025AA34  7F C3 F3 78 */	mr r3, r30
/* 8025DAD8 0025AA38  48 0B 7E 59 */	bl Free__7CMemoryFPCv
lbl_8025DADC:
/* 8025DADC 0025AA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025DAE0 0025AA40  7F C3 F3 78 */	mr r3, r30
/* 8025DAE4 0025AA44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025DAE8 0025AA48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025DAEC 0025AA4C  7C 08 03 A6 */	mtlr r0
/* 8025DAF0 0025AA50  38 21 00 10 */	addi r1, r1, 0x10
/* 8025DAF4 0025AA54  4E 80 00 20 */	blr 

.global __ct__16CPauseScreenBlurFv
__ct__16CPauseScreenBlurFv:
/* 8025DAF8 0025AA58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025DAFC 0025AA5C  7C 08 02 A6 */	mflr r0
/* 8025DB00 0025AA60  3C 80 80 3F */	lis r4, lbl_803E9A00@ha
/* 8025DB04 0025AA64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025DB08 0025AA68  38 04 9A 00 */	addi r0, r4, lbl_803E9A00@l
/* 8025DB0C 0025AA6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025DB10 0025AA70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025DB14 0025AA74  7C 7E 1B 78 */	mr r30, r3
/* 8025DB18 0025AA78  3C 60 80 3D */	lis r3, lbl_803D5240@ha
/* 8025DB1C 0025AA7C  90 1E 00 00 */	stw r0, 0(r30)
/* 8025DB20 0025AA80  38 A3 52 40 */	addi r5, r3, lbl_803D5240@l
/* 8025DB24 0025AA84  38 61 00 08 */	addi r3, r1, 8
/* 8025DB28 0025AA88  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8025DB2C 0025AA8C  81 84 00 00 */	lwz r12, 0(r4)
/* 8025DB30 0025AA90  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8025DB34 0025AA94  7D 89 03 A6 */	mtctr r12
/* 8025DB38 0025AA98  4E 80 04 21 */	bctrl 
/* 8025DB3C 0025AA9C  3B FE 00 04 */	addi r31, r30, 4
/* 8025DB40 0025AAA0  38 81 00 08 */	addi r4, r1, 8
/* 8025DB44 0025AAA4  7F E3 FB 78 */	mr r3, r31
/* 8025DB48 0025AAA8  48 0E 33 61 */	bl __ct__6CTokenFRC6CToken
/* 8025DB4C 0025AAAC  7F E3 FB 78 */	mr r3, r31
/* 8025DB50 0025AAB0  48 0E 32 BD */	bl GetObj__6CTokenFv
/* 8025DB54 0025AAB4  80 03 00 04 */	lwz r0, 4(r3)
/* 8025DB58 0025AAB8  38 61 00 08 */	addi r3, r1, 8
/* 8025DB5C 0025AABC  38 80 FF FF */	li r4, -1
/* 8025DB60 0025AAC0  90 1F 00 08 */	stw r0, 8(r31)
/* 8025DB64 0025AAC4  48 0E 32 DD */	bl __dt__6CTokenFv
/* 8025DB68 0025AAC8  38 00 00 00 */	li r0, 0
/* 8025DB6C 0025AACC  C0 02 BA 18 */	lfs f0, lbl_805AD738@sda21(r2)
/* 8025DB70 0025AAD0  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8025DB74 0025AAD4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8025DB78 0025AAD8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8025DB7C 0025AADC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8025DB80 0025AAE0  4B E8 E4 BD */	bl __ct__15CCameraBlurPassFv
/* 8025DB84 0025AAE4  88 1E 00 50 */	lbz r0, 0x50(r30)
/* 8025DB88 0025AAE8  38 60 00 00 */	li r3, 0
/* 8025DB8C 0025AAEC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8025DB90 0025AAF0  38 80 00 01 */	li r4, 1
/* 8025DB94 0025AAF4  98 1E 00 50 */	stb r0, 0x50(r30)
/* 8025DB98 0025AAF8  7F C3 F3 78 */	mr r3, r30
/* 8025DB9C 0025AAFC  88 1E 00 50 */	lbz r0, 0x50(r30)
/* 8025DBA0 0025AB00  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8025DBA4 0025AB04  98 1E 00 50 */	stb r0, 0x50(r30)
/* 8025DBA8 0025AB08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025DBAC 0025AB0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025DBB0 0025AB10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025DBB4 0025AB14  7C 08 03 A6 */	mtlr r0
/* 8025DBB8 0025AB18  38 21 00 20 */	addi r1, r1, 0x20
/* 8025DBBC 0025AB1C  4E 80 00 20 */	blr
