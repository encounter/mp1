.include "macros.inc"

.section .text, "ax"

.global "__ct__21CMetroidModelInstanceFPCvPCvPCvPCvPCvPCvPCvRCQ24rstl37vector<Pv,Q24rstl17rmemory_allocator>"
"__ct__21CMetroidModelInstanceFPCvPCvPCvPCvPCvPCvPCvRCQ24rstl37vector<Pv,Q24rstl17rmemory_allocator>":
/* 802A2778 0029F6D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802A277C 0029F6DC  7C 08 02 A6 */	mflr r0
/* 802A2780 0029F6E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 802A2784 0029F6E4  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 802A2788 0029F6E8  7C 97 23 78 */	mr r23, r4
/* 802A278C 0029F6EC  83 E1 00 58 */	lwz r31, 0x58(r1)
/* 802A2790 0029F6F0  7C 79 1B 78 */	mr r25, r3
/* 802A2794 0029F6F4  7C B8 2B 78 */	mr r24, r5
/* 802A2798 0029F6F8  7C DA 33 78 */	mr r26, r6
/* 802A279C 0029F6FC  7C FB 3B 78 */	mr r27, r7
/* 802A27A0 0029F700  7D 1C 43 78 */	mr r28, r8
/* 802A27A4 0029F704  7D 3D 4B 78 */	mr r29, r9
/* 802A27A8 0029F708  7D 5E 53 78 */	mr r30, r10
/* 802A27AC 0029F70C  80 04 00 00 */	lwz r0, 0(r4)
/* 802A27B0 0029F710  90 03 00 00 */	stw r0, 0(r3)
/* 802A27B4 0029F714  38 77 00 04 */	addi r3, r23, 4
/* 802A27B8 0029F718  48 00 01 65 */	bl TransformFromData__FPCv
/* 802A27BC 0029F71C  7C 64 1B 78 */	mr r4, r3
/* 802A27C0 0029F720  38 79 00 04 */	addi r3, r25, 4
/* 802A27C4 0029F724  48 07 03 B1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802A27C8 0029F728  38 61 00 08 */	addi r3, r1, 8
/* 802A27CC 0029F72C  38 97 00 34 */	addi r4, r23, 0x34
/* 802A27D0 0029F730  48 00 00 F9 */	bl BoundingBoxFromData__FPCv
/* 802A27D4 0029F734  C0 01 00 08 */	lfs f0, 8(r1)
/* 802A27D8 0029F738  D0 19 00 34 */	stfs f0, 0x34(r25)
/* 802A27DC 0029F73C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802A27E0 0029F740  D0 19 00 38 */	stfs f0, 0x38(r25)
/* 802A27E4 0029F744  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802A27E8 0029F748  D0 19 00 3C */	stfs f0, 0x3c(r25)
/* 802A27EC 0029F74C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802A27F0 0029F750  D0 19 00 40 */	stfs f0, 0x40(r25)
/* 802A27F4 0029F754  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802A27F8 0029F758  D0 19 00 44 */	stfs f0, 0x44(r25)
/* 802A27FC 0029F75C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802A2800 0029F760  D0 19 00 48 */	stfs f0, 0x48(r25)
/* 802A2804 0029F764  93 19 00 4C */	stw r24, 0x4c(r25)
/* 802A2808 0029F768  80 1F 00 04 */	lwz r0, 4(r31)
/* 802A280C 0029F76C  90 19 00 54 */	stw r0, 0x54(r25)
/* 802A2810 0029F770  80 1F 00 08 */	lwz r0, 8(r31)
/* 802A2814 0029F774  90 19 00 58 */	stw r0, 0x58(r25)
/* 802A2818 0029F778  80 1F 00 04 */	lwz r0, 4(r31)
/* 802A281C 0029F77C  2C 00 00 00 */	cmpwi r0, 0
/* 802A2820 0029F780  40 82 00 1C */	bne lbl_802A283C
/* 802A2824 0029F784  80 1F 00 08 */	lwz r0, 8(r31)
/* 802A2828 0029F788  2C 00 00 00 */	cmpwi r0, 0
/* 802A282C 0029F78C  40 82 00 10 */	bne lbl_802A283C
/* 802A2830 0029F790  38 00 00 00 */	li r0, 0
/* 802A2834 0029F794  90 19 00 5C */	stw r0, 0x5c(r25)
/* 802A2838 0029F798  48 00 00 64 */	b lbl_802A289C
lbl_802A283C:
/* 802A283C 0029F79C  80 19 00 58 */	lwz r0, 0x58(r25)
/* 802A2840 0029F7A0  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 802A2844 0029F7A4  40 82 00 10 */	bne lbl_802A2854
/* 802A2848 0029F7A8  38 00 00 00 */	li r0, 0
/* 802A284C 0029F7AC  90 19 00 5C */	stw r0, 0x5c(r25)
/* 802A2850 0029F7B0  48 00 00 18 */	b lbl_802A2868
lbl_802A2854:
/* 802A2854 0029F7B4  3C 80 80 3D */	lis r4, lbl_803D6018@ha
/* 802A2858 0029F7B8  38 A0 00 00 */	li r5, 0
/* 802A285C 0029F7BC  38 84 60 18 */	addi r4, r4, lbl_803D6018@l
/* 802A2860 0029F7C0  48 07 2F B9 */	bl __nwa__FUlPCcPCc
/* 802A2864 0029F7C4  90 79 00 5C */	stw r3, 0x5c(r25)
lbl_802A2868:
/* 802A2868 0029F7C8  80 19 00 54 */	lwz r0, 0x54(r25)
/* 802A286C 0029F7CC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802A2870 0029F7D0  80 79 00 5C */	lwz r3, 0x5c(r25)
/* 802A2874 0029F7D4  7C 09 03 A6 */	mtctr r0
/* 802A2878 0029F7D8  2C 00 00 00 */	cmpwi r0, 0
/* 802A287C 0029F7DC  40 81 00 20 */	ble lbl_802A289C
lbl_802A2880:
/* 802A2880 0029F7E0  28 03 00 00 */	cmplwi r3, 0
/* 802A2884 0029F7E4  41 82 00 0C */	beq lbl_802A2890
/* 802A2888 0029F7E8  80 04 00 00 */	lwz r0, 0(r4)
/* 802A288C 0029F7EC  90 03 00 00 */	stw r0, 0(r3)
lbl_802A2890:
/* 802A2890 0029F7F0  38 63 00 04 */	addi r3, r3, 4
/* 802A2894 0029F7F4  38 84 00 04 */	addi r4, r4, 4
/* 802A2898 0029F7F8  42 00 FF E8 */	bdnz lbl_802A2880
lbl_802A289C:
/* 802A289C 0029F7FC  93 59 00 60 */	stw r26, 0x60(r25)
/* 802A28A0 0029F800  7F 23 CB 78 */	mr r3, r25
/* 802A28A4 0029F804  93 79 00 64 */	stw r27, 0x64(r25)
/* 802A28A8 0029F808  93 99 00 68 */	stw r28, 0x68(r25)
/* 802A28AC 0029F80C  93 B9 00 6C */	stw r29, 0x6c(r25)
/* 802A28B0 0029F810  93 D9 00 70 */	stw r30, 0x70(r25)
/* 802A28B4 0029F814  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 802A28B8 0029F818  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802A28BC 0029F81C  7C 08 03 A6 */	mtlr r0
/* 802A28C0 0029F820  38 21 00 50 */	addi r1, r1, 0x50
/* 802A28C4 0029F824  4E 80 00 20 */	blr

.global BoundingBoxFromData__FPCv
BoundingBoxFromData__FPCv:
/* 802A28C8 0029F828  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A28CC 0029F82C  C0 24 00 00 */	lfs f1, 0(r4)
/* 802A28D0 0029F830  C0 A4 00 04 */	lfs f5, 4(r4)
/* 802A28D4 0029F834  C0 84 00 08 */	lfs f4, 8(r4)
/* 802A28D8 0029F838  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 802A28DC 0029F83C  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 802A28E0 0029F840  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 802A28E4 0029F844  D0 21 00 08 */	stfs f1, 8(r1)
/* 802A28E8 0029F848  D0 23 00 00 */	stfs f1, 0(r3)
/* 802A28EC 0029F84C  D0 A3 00 04 */	stfs f5, 4(r3)
/* 802A28F0 0029F850  D0 83 00 08 */	stfs f4, 8(r3)
/* 802A28F4 0029F854  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 802A28F8 0029F858  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 802A28FC 0029F85C  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 802A2900 0029F860  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 802A2904 0029F864  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 802A2908 0029F868  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802A290C 0029F86C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802A2910 0029F870  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802A2914 0029F874  38 21 00 20 */	addi r1, r1, 0x20
/* 802A2918 0029F878  4E 80 00 20 */	blr

.global TransformFromData__FPCv
TransformFromData__FPCv:
/* 802A291C 0029F87C  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D6018
lbl_803D6018:
	# ROM: 0x3D3018
	.asciz "??(??)"
	.balign 4
