.include "macros.inc"

.section .data
.balign 8

.global __vt__18CScriptRandomRelay
__vt__18CScriptRandomRelay:
	# ROM: 0x3DC870
	.4byte 0
	.4byte 0
	.4byte __dt__18CScriptRandomRelayFv
	.4byte Accept__18CScriptRandomRelayFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__18CScriptRandomRelayF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFUc

.section .sdata
.balign 8

.global lbl_805A7330
lbl_805A7330:
	# ROM: 0x3F4CD0
	.4byte 0

.global lbl_805A7334
lbl_805A7334:
	# ROM: 0x3F4CD4
	.4byte 0x00000064

.section .sdata2, "a"
.balign 8

.global lbl_805AACC8
lbl_805AACC8:
	# ROM: 0x3F7568
	.float 0.5

.global lbl_805AACCC
lbl_805AACCC:
	# ROM: 0x3F756C
	.4byte 0x42C80000

.global lbl_805AACD0
lbl_805AACD0:
	# ROM: 0x3F7570
	.float 2.0

.global lbl_805AACD4
lbl_805AACD4:
	# ROM: 0x3F7574
	.4byte 0x3F7D70A4

.global lbl_805AACD8
lbl_805AACD8:
	# ROM: 0x3F7578
	.double 4.503601774854144E15

.section .text, "ax"

.global Accept__18CScriptRandomRelayFR8IVisitor
Accept__18CScriptRandomRelayFR8IVisitor:
/* 800E2784 000DF6E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E2788 000DF6E8  7C 08 02 A6 */	mflr r0
/* 800E278C 000DF6EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E2790 000DF6F0  7C 60 1B 78 */	mr r0, r3
/* 800E2794 000DF6F4  7C 83 23 78 */	mr r3, r4
/* 800E2798 000DF6F8  81 84 00 00 */	lwz r12, 0(r4)
/* 800E279C 000DF6FC  7C 04 03 78 */	mr r4, r0
/* 800E27A0 000DF700  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800E27A4 000DF704  7D 89 03 A6 */	mtctr r12
/* 800E27A8 000DF708  4E 80 04 21 */	bctrl
/* 800E27AC 000DF70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E27B0 000DF710  7C 08 03 A6 */	mtlr r0
/* 800E27B4 000DF714  38 21 00 10 */	addi r1, r1, 0x10
/* 800E27B8 000DF718  4E 80 00 20 */	blr

.global SendLocalScriptMsgs__18CScriptRandomRelayF18EScriptObjectStateR13CStateManager
SendLocalScriptMsgs__18CScriptRandomRelayF18EScriptObjectStateR13CStateManager:
/* 800E27BC 000DF71C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 800E27C0 000DF720  7C 08 02 A6 */	mflr r0
/* 800E27C4 000DF724  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 800E27C8 000DF728  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 800E27CC 000DF72C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 800E27D0 000DF730  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 800E27D4 000DF734  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 800E27D8 000DF738  BE C1 00 88 */	stmw r22, 0x88(r1)
/* 800E27DC 000DF73C  7C 96 23 78 */	mr r22, r4
/* 800E27E0 000DF740  7C 7F 1B 78 */	mr r31, r3
/* 800E27E4 000DF744  2C 16 00 09 */	cmpwi r22, 9
/* 800E27E8 000DF748  7C B7 2B 78 */	mr r23, r5
/* 800E27EC 000DF74C  41 82 00 08 */	beq lbl_800E27F4
/* 800E27F0 000DF750  48 00 03 68 */	b lbl_800E2B58
lbl_800E27F4:
/* 800E27F4 000DF754  38 00 00 00 */	li r0, 0
/* 800E27F8 000DF758  38 61 00 54 */	addi r3, r1, 0x54
/* 800E27FC 000DF75C  90 01 00 58 */	stw r0, 0x58(r1)
/* 800E2800 000DF760  38 80 00 0A */	li r4, 0xa
/* 800E2804 000DF764  90 01 00 5C */	stw r0, 0x5c(r1)
/* 800E2808 000DF768  90 01 00 60 */	stw r0, 0x60(r1)
/* 800E280C 000DF76C  48 00 05 DD */	bl "reserve__Q24rstl82vector<Q24rstl38pair<P7CEntity,20EScriptObjectMessage>,Q24rstl17rmemory_allocator>Fi"
/* 800E2810 000DF770  83 9F 00 2C */	lwz r28, 0x2c(r31)
/* 800E2814 000DF774  48 00 01 18 */	b lbl_800E292C
lbl_800E2818:
/* 800E2818 000DF778  80 1C 00 00 */	lwz r0, 0(r28)
/* 800E281C 000DF77C  7C 16 00 00 */	cmpw r22, r0
/* 800E2820 000DF780  40 82 01 08 */	bne lbl_800E2928
/* 800E2824 000DF784  83 B7 08 10 */	lwz r29, 0x810(r23)
/* 800E2828 000DF788  7E E4 BB 78 */	mr r4, r23
/* 800E282C 000DF78C  80 1C 00 08 */	lwz r0, 8(r28)
/* 800E2830 000DF790  38 61 00 44 */	addi r3, r1, 0x44
/* 800E2834 000DF794  38 A1 00 30 */	addi r5, r1, 0x30
/* 800E2838 000DF798  90 01 00 30 */	stw r0, 0x30(r1)
/* 800E283C 000DF79C  4B F6 57 8D */	bl GetIdListForScript__13CStateManagerCF9TEditorId
/* 800E2840 000DF7A0  83 01 00 44 */	lwz r24, 0x44(r1)
/* 800E2844 000DF7A4  38 00 00 00 */	li r0, 0
/* 800E2848 000DF7A8  83 41 00 4C */	lwz r26, 0x4c(r1)
/* 800E284C 000DF7AC  83 61 00 48 */	lwz r27, 0x48(r1)
/* 800E2850 000DF7B0  7C 18 D0 40 */	cmplw r24, r26
/* 800E2854 000DF7B4  83 21 00 50 */	lwz r25, 0x50(r1)
/* 800E2858 000DF7B8  40 82 00 10 */	bne lbl_800E2868
/* 800E285C 000DF7BC  7C 1B C8 40 */	cmplw r27, r25
/* 800E2860 000DF7C0  40 82 00 08 */	bne lbl_800E2868
/* 800E2864 000DF7C4  38 00 00 01 */	li r0, 1
lbl_800E2868:
/* 800E2868 000DF7C8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800E286C 000DF7CC  40 82 00 BC */	bne lbl_800E2928
/* 800E2870 000DF7D0  48 00 00 98 */	b lbl_800E2908
lbl_800E2874:
/* 800E2874 000DF7D4  A0 18 00 14 */	lhz r0, 0x14(r24)
/* 800E2878 000DF7D8  7F A3 EB 78 */	mr r3, r29
/* 800E287C 000DF7DC  38 81 00 14 */	addi r4, r1, 0x14
/* 800E2880 000DF7E0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 800E2884 000DF7E4  4B F2 D5 C5 */	bl GetObjectById__11CObjectListF9TUniqueId
/* 800E2888 000DF7E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 800E288C 000DF7EC  41 82 00 6C */	beq lbl_800E28F8
/* 800E2890 000DF7F0  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 800E2894 000DF7F4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800E2898 000DF7F8  41 82 00 60 */	beq lbl_800E28F8
/* 800E289C 000DF7FC  80 01 00 58 */	lwz r0, 0x58(r1)
/* 800E28A0 000DF800  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 800E28A4 000DF804  80 7C 00 04 */	lwz r3, 4(r28)
/* 800E28A8 000DF808  7C 00 28 00 */	cmpw r0, r5
/* 800E28AC 000DF80C  90 61 00 40 */	stw r3, 0x40(r1)
/* 800E28B0 000DF810  41 80 00 1C */	blt lbl_800E28CC
/* 800E28B4 000DF814  2C 05 00 00 */	cmpwi r5, 0
/* 800E28B8 000DF818  38 61 00 54 */	addi r3, r1, 0x54
/* 800E28BC 000DF81C  38 80 00 04 */	li r4, 4
/* 800E28C0 000DF820  41 82 00 08 */	beq lbl_800E28C8
/* 800E28C4 000DF824  54 A4 08 3C */	slwi r4, r5, 1
lbl_800E28C8:
/* 800E28C8 000DF828  48 00 05 21 */	bl "reserve__Q24rstl82vector<Q24rstl38pair<P7CEntity,20EScriptObjectMessage>,Q24rstl17rmemory_allocator>Fi"
lbl_800E28CC:
/* 800E28CC 000DF82C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 800E28D0 000DF830  80 61 00 60 */	lwz r3, 0x60(r1)
/* 800E28D4 000DF834  54 00 18 38 */	slwi r0, r0, 3
/* 800E28D8 000DF838  7C 63 02 15 */	add. r3, r3, r0
/* 800E28DC 000DF83C  41 82 00 10 */	beq lbl_800E28EC
/* 800E28E0 000DF840  93 C3 00 00 */	stw r30, 0(r3)
/* 800E28E4 000DF844  80 01 00 40 */	lwz r0, 0x40(r1)
/* 800E28E8 000DF848  90 03 00 04 */	stw r0, 4(r3)
lbl_800E28EC:
/* 800E28EC 000DF84C  80 61 00 58 */	lwz r3, 0x58(r1)
/* 800E28F0 000DF850  38 03 00 01 */	addi r0, r3, 1
/* 800E28F4 000DF854  90 01 00 58 */	stw r0, 0x58(r1)
lbl_800E28F8:
/* 800E28F8 000DF858  7F 63 DB 78 */	mr r3, r27
/* 800E28FC 000DF85C  7F 04 C3 78 */	mr r4, r24
/* 800E2900 000DF860  48 25 9C E1 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800E2904 000DF864  7C 78 1B 78 */	mr r24, r3
lbl_800E2908:
/* 800E2908 000DF868  7C 18 D0 40 */	cmplw r24, r26
/* 800E290C 000DF86C  38 00 00 00 */	li r0, 0
/* 800E2910 000DF870  40 82 00 0C */	bne lbl_800E291C
/* 800E2914 000DF874  7C 1B C8 40 */	cmplw r27, r25
/* 800E2918 000DF878  41 82 00 08 */	beq lbl_800E2920
lbl_800E291C:
/* 800E291C 000DF87C  38 00 00 01 */	li r0, 1
lbl_800E2920:
/* 800E2920 000DF880  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800E2924 000DF884  40 82 FF 50 */	bne lbl_800E2874
lbl_800E2928:
/* 800E2928 000DF888  3B 9C 00 0C */	addi r28, r28, 0xc
lbl_800E292C:
/* 800E292C 000DF88C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 800E2930 000DF890  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 800E2934 000DF894  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800E2938 000DF898  7C 03 02 14 */	add r0, r3, r0
/* 800E293C 000DF89C  7C 1C 00 40 */	cmplw r28, r0
/* 800E2940 000DF8A0  40 82 FE D8 */	bne lbl_800E2818
/* 800E2944 000DF8A4  38 00 00 00 */	li r0, 0
/* 800E2948 000DF8A8  80 81 00 58 */	lwz r4, 0x58(r1)
/* 800E294C 000DF8AC  90 01 00 38 */	stw r0, 0x38(r1)
/* 800E2950 000DF8B0  7C 98 23 78 */	mr r24, r4
/* 800E2954 000DF8B4  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 800E2958 000DF8B8  28 00 00 00 */	cmplwi r0, 0
/* 800E295C 000DF8BC  41 82 00 48 */	beq lbl_800E29A4
/* 800E2960 000DF8C0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 800E2964 000DF8C4  3C 00 43 30 */	lis r0, 0x4330
/* 800E2968 000DF8C8  90 01 00 68 */	stw r0, 0x68(r1)
/* 800E296C 000DF8CC  7C 04 19 D6 */	mullw r0, r4, r3
/* 800E2970 000DF8D0  C8 42 8F B8 */	lfd f2, lbl_805AACD8@sda21(r2)
/* 800E2974 000DF8D4  C0 02 8F AC */	lfs f0, lbl_805AACCC@sda21(r2)
/* 800E2978 000DF8D8  C0 62 8F A8 */	lfs f3, lbl_805AACC8@sda21(r2)
/* 800E297C 000DF8DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E2980 000DF8E0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800E2984 000DF8E4  C8 21 00 68 */	lfd f1, 0x68(r1)
/* 800E2988 000DF8E8  EC 21 10 28 */	fsubs f1, f1, f2
/* 800E298C 000DF8EC  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E2990 000DF8F0  EC 03 00 2A */	fadds f0, f3, f0
/* 800E2994 000DF8F4  FC 00 00 1E */	fctiwz f0, f0
/* 800E2998 000DF8F8  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 800E299C 000DF8FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800E29A0 000DF900  48 00 00 08 */	b lbl_800E29A8
lbl_800E29A4:
/* 800E29A4 000DF904  80 1F 00 34 */	lwz r0, 0x34(r31)
lbl_800E29A8:
/* 800E29A8 000DF908  90 01 00 38 */	stw r0, 0x38(r1)
/* 800E29AC 000DF90C  80 77 09 00 */	lwz r3, 0x900(r23)
/* 800E29B0 000DF910  48 22 FB 2D */	bl Float__9CRandom16Fv
/* 800E29B4 000DF914  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 800E29B8 000DF918  3C 00 43 30 */	lis r0, 0x4330
/* 800E29BC 000DF91C  C0 02 8F B0 */	lfs f0, lbl_805AACD0@sda21(r2)
/* 800E29C0 000DF920  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 800E29C4 000DF924  90 01 00 78 */	stw r0, 0x78(r1)
/* 800E29C8 000DF928  C8 42 8F B8 */	lfd f2, lbl_805AACD8@sda21(r2)
/* 800E29CC 000DF92C  EC 20 00 72 */	fmuls f1, f0, f1
/* 800E29D0 000DF930  90 61 00 7C */	stw r3, 0x7c(r1)
/* 800E29D4 000DF934  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 800E29D8 000DF938  EC 00 10 28 */	fsubs f0, f0, f2
/* 800E29DC 000DF93C  EF C0 00 72 */	fmuls f30, f0, f1
/* 800E29E0 000DF940  F3 C1 D0 08 */	psq_st f30, 8(r1), 1, qr5
/* 800E29E4 000DF944  38 CD 87 70 */	addi r6, r13, lbl_805A7330@sda21
/* 800E29E8 000DF948  80 81 00 38 */	lwz r4, 0x38(r1)
/* 800E29EC 000DF94C  A8 61 00 08 */	lha r3, 8(r1)
/* 800E29F0 000DF950  80 0D 87 70 */	lwz r0, lbl_805A7330@sda21(r13)
/* 800E29F4 000DF954  7C 65 18 50 */	subf r3, r5, r3
/* 800E29F8 000DF958  7C 64 1A 14 */	add r3, r4, r3
/* 800E29FC 000DF95C  7C 00 18 00 */	cmpw r0, r3
/* 800E2A00 000DF960  90 61 00 38 */	stw r3, 0x38(r1)
/* 800E2A04 000DF964  40 80 00 08 */	bge lbl_800E2A0C
/* 800E2A08 000DF968  38 C1 00 38 */	addi r6, r1, 0x38
lbl_800E2A0C:
/* 800E2A0C 000DF96C  80 6D 87 74 */	lwz r3, lbl_805A7334@sda21(r13)
/* 800E2A10 000DF970  80 06 00 00 */	lwz r0, 0(r6)
/* 800E2A14 000DF974  7C 03 00 00 */	cmpw r3, r0
/* 800E2A18 000DF978  40 80 00 08 */	bge lbl_800E2A20
/* 800E2A1C 000DF97C  38 CD 87 74 */	addi r6, r13, lbl_805A7334@sda21
lbl_800E2A20:
/* 800E2A20 000DF980  80 06 00 00 */	lwz r0, 0(r6)
/* 800E2A24 000DF984  3E C0 43 30 */	lis r22, 0x4330
/* 800E2A28 000DF988  CB C2 8F B8 */	lfd f30, lbl_805AACD8@sda21(r2)
/* 800E2A2C 000DF98C  90 01 00 38 */	stw r0, 0x38(r1)
/* 800E2A30 000DF990  C3 E2 8F B4 */	lfs f31, lbl_805AACD4@sda21(r2)
/* 800E2A34 000DF994  48 00 00 A0 */	b lbl_800E2AD4
lbl_800E2A38:
/* 800E2A38 000DF998  80 01 00 60 */	lwz r0, 0x60(r1)
/* 800E2A3C 000DF99C  80 77 09 00 */	lwz r3, 0x900(r23)
/* 800E2A40 000DF9A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E2A44 000DF9A4  48 22 FA 99 */	bl Float__9CRandom16Fv
/* 800E2A48 000DF9A8  80 61 00 58 */	lwz r3, 0x58(r1)
/* 800E2A4C 000DF9AC  80 01 00 58 */	lwz r0, 0x58(r1)
/* 800E2A50 000DF9B0  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 800E2A54 000DF9B4  92 C1 00 78 */	stw r22, 0x78(r1)
/* 800E2A58 000DF9B8  80 61 00 60 */	lwz r3, 0x60(r1)
/* 800E2A5C 000DF9BC  54 00 18 38 */	slwi r0, r0, 3
/* 800E2A60 000DF9C0  90 81 00 7C */	stw r4, 0x7c(r1)
/* 800E2A64 000DF9C4  7C 83 02 14 */	add r4, r3, r0
/* 800E2A68 000DF9C8  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 800E2A6C 000DF9CC  EC 00 F0 28 */	fsubs f0, f0, f30
/* 800E2A70 000DF9D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E2A74 000DF9D4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800E2A78 000DF9D8  FC 00 00 1E */	fctiwz f0, f0
/* 800E2A7C 000DF9DC  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 800E2A80 000DF9E0  80 A1 00 74 */	lwz r5, 0x74(r1)
/* 800E2A84 000DF9E4  7C A9 03 A6 */	mtctr r5
/* 800E2A88 000DF9E8  2C 05 00 00 */	cmpwi r5, 0
/* 800E2A8C 000DF9EC  40 81 00 20 */	ble lbl_800E2AAC
lbl_800E2A90:
/* 800E2A90 000DF9F0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 800E2A94 000DF9F4  38 03 00 08 */	addi r0, r3, 8
/* 800E2A98 000DF9F8  7C 04 00 40 */	cmplw r4, r0
/* 800E2A9C 000DF9FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E2AA0 000DFA00  41 82 00 0C */	beq lbl_800E2AAC
/* 800E2AA4 000DFA04  38 A5 FF FF */	addi r5, r5, -1
/* 800E2AA8 000DFA08  42 00 FF E8 */	bdnz lbl_800E2A90
lbl_800E2AAC:
/* 800E2AAC 000DFA0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E2AB0 000DFA10  7C 04 00 40 */	cmplw r4, r0
/* 800E2AB4 000DFA14  41 82 00 20 */	beq lbl_800E2AD4
/* 800E2AB8 000DFA18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E2ABC 000DFA1C  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E2AC0 000DFA20  38 81 00 54 */	addi r4, r1, 0x54
/* 800E2AC4 000DFA24  38 A1 00 28 */	addi r5, r1, 0x28
/* 800E2AC8 000DFA28  90 01 00 28 */	stw r0, 0x28(r1)
/* 800E2ACC 000DFA2C  48 00 00 B9 */	bl sub_800e2b84
/* 800E2AD0 000DFA30  3B 18 FF FF */	addi r24, r24, -1
lbl_800E2AD4:
/* 800E2AD4 000DFA34  80 01 00 38 */	lwz r0, 0x38(r1)
/* 800E2AD8 000DFA38  7C 18 00 00 */	cmpw r24, r0
/* 800E2ADC 000DFA3C  41 81 FF 5C */	bgt lbl_800E2A38
/* 800E2AE0 000DFA40  82 C1 00 60 */	lwz r22, 0x60(r1)
/* 800E2AE4 000DFA44  48 00 00 28 */	b lbl_800E2B0C
lbl_800E2AE8:
/* 800E2AE8 000DFA48  A0 1F 00 08 */	lhz r0, 8(r31)
/* 800E2AEC 000DFA4C  7E E3 BB 78 */	mr r3, r23
/* 800E2AF0 000DFA50  38 A1 00 10 */	addi r5, r1, 0x10
/* 800E2AF4 000DFA54  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800E2AF8 000DFA58  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800E2AFC 000DFA5C  80 96 00 00 */	lwz r4, 0(r22)
/* 800E2B00 000DFA60  80 D6 00 04 */	lwz r6, 4(r22)
/* 800E2B04 000DFA64  4B F6 13 CD */	bl SendScriptMsg__13CStateManagerFP7CEntity9TUniqueId20EScriptObjectMessage
/* 800E2B08 000DFA68  3A D6 00 08 */	addi r22, r22, 8
lbl_800E2B0C:
/* 800E2B0C 000DFA6C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 800E2B10 000DFA70  80 61 00 60 */	lwz r3, 0x60(r1)
/* 800E2B14 000DFA74  54 00 18 38 */	slwi r0, r0, 3
/* 800E2B18 000DFA78  7C 03 02 14 */	add r0, r3, r0
/* 800E2B1C 000DFA7C  7C 00 B0 40 */	cmplw r0, r22
/* 800E2B20 000DFA80  40 82 FF C8 */	bne lbl_800E2AE8
/* 800E2B24 000DFA84  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E2B28 000DFA88  7C 64 1B 78 */	mr r4, r3
/* 800E2B2C 000DFA8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 800E2B30 000DFA90  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800E2B34 000DFA94  90 61 00 18 */	stw r3, 0x18(r1)
/* 800E2B38 000DFA98  48 00 00 08 */	b lbl_800E2B40
lbl_800E2B3C:
/* 800E2B3C 000DFA9C  38 84 00 08 */	addi r4, r4, 8
lbl_800E2B40:
/* 800E2B40 000DFAA0  7C 04 00 40 */	cmplw r4, r0
/* 800E2B44 000DFAA4  40 82 FF F8 */	bne lbl_800E2B3C
/* 800E2B48 000DFAA8  28 03 00 00 */	cmplwi r3, 0
/* 800E2B4C 000DFAAC  41 82 00 14 */	beq lbl_800E2B60
/* 800E2B50 000DFAB0  48 23 2D E1 */	bl Free__7CMemoryFPCv
/* 800E2B54 000DFAB4  48 00 00 0C */	b lbl_800E2B60
lbl_800E2B58:
/* 800E2B58 000DFAB8  38 C0 FF FF */	li r6, -1
/* 800E2B5C 000DFABC  4B F6 E5 65 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_800E2B60:
/* 800E2B60 000DFAC0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 800E2B64 000DFAC4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 800E2B68 000DFAC8  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 800E2B6C 000DFACC  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 800E2B70 000DFAD0  BA C1 00 88 */	lmw r22, 0x88(r1)
/* 800E2B74 000DFAD4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 800E2B78 000DFAD8  7C 08 03 A6 */	mtlr r0
/* 800E2B7C 000DFADC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 800E2B80 000DFAE0  4E 80 00 20 */	blr

.global sub_800e2b84
sub_800e2b84:
/* 800E2B84 000DFAE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E2B88 000DFAE8  7C 08 02 A6 */	mflr r0
/* 800E2B8C 000DFAEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E2B90 000DFAF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E2B94 000DFAF4  7C 7F 1B 78 */	mr r31, r3
/* 800E2B98 000DFAF8  80 C5 00 00 */	lwz r6, 0(r5)
/* 800E2B9C 000DFAFC  80 05 00 00 */	lwz r0, 0(r5)
/* 800E2BA0 000DFB00  38 A1 00 10 */	addi r5, r1, 0x10
/* 800E2BA4 000DFB04  38 E6 00 08 */	addi r7, r6, 8
/* 800E2BA8 000DFB08  38 C1 00 0C */	addi r6, r1, 0xc
/* 800E2BAC 000DFB0C  90 E1 00 08 */	stw r7, 8(r1)
/* 800E2BB0 000DFB10  90 E1 00 0C */	stw r7, 0xc(r1)
/* 800E2BB4 000DFB14  90 01 00 10 */	stw r0, 0x10(r1)
/* 800E2BB8 000DFB18  48 00 00 19 */	bl sub_800e2bd0
/* 800E2BBC 000DFB1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E2BC0 000DFB20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E2BC4 000DFB24  7C 08 03 A6 */	mtlr r0
/* 800E2BC8 000DFB28  38 21 00 20 */	addi r1, r1, 0x20
/* 800E2BCC 000DFB2C  4E 80 00 20 */	blr

.global sub_800e2bd0
sub_800e2bd0:
/* 800E2BD0 000DFB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E2BD4 000DFB34  80 E5 00 00 */	lwz r7, 0(r5)
/* 800E2BD8 000DFB38  80 06 00 00 */	lwz r0, 0(r6)
/* 800E2BDC 000DFB3C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 800E2BE0 000DFB40  90 01 00 08 */	stw r0, 8(r1)
/* 800E2BE4 000DFB44  48 00 00 08 */	b lbl_800E2BEC
lbl_800E2BE8:
/* 800E2BE8 000DFB48  38 E7 00 08 */	addi r7, r7, 8
lbl_800E2BEC:
/* 800E2BEC 000DFB4C  7C 07 00 40 */	cmplw r7, r0
/* 800E2BF0 000DFB50  40 82 FF F8 */	bne lbl_800E2BE8
/* 800E2BF4 000DFB54  81 04 00 0C */	lwz r8, 0xc(r4)
/* 800E2BF8 000DFB58  80 05 00 00 */	lwz r0, 0(r5)
/* 800E2BFC 000DFB5C  80 E6 00 00 */	lwz r7, 0(r6)
/* 800E2C00 000DFB60  7C 08 00 50 */	subf r0, r8, r0
/* 800E2C04 000DFB64  7C 00 1E 70 */	srawi r0, r0, 3
/* 800E2C08 000DFB68  7C C0 01 94 */	addze r6, r0
/* 800E2C0C 000DFB6C  54 C0 18 38 */	slwi r0, r6, 3
/* 800E2C10 000DFB70  7C C9 33 78 */	mr r9, r6
/* 800E2C14 000DFB74  7D 08 02 14 */	add r8, r8, r0
/* 800E2C18 000DFB78  48 00 00 28 */	b lbl_800E2C40
lbl_800E2C1C:
/* 800E2C1C 000DFB7C  28 08 00 00 */	cmplwi r8, 0
/* 800E2C20 000DFB80  41 82 00 14 */	beq lbl_800E2C34
/* 800E2C24 000DFB84  80 07 00 00 */	lwz r0, 0(r7)
/* 800E2C28 000DFB88  90 08 00 00 */	stw r0, 0(r8)
/* 800E2C2C 000DFB8C  80 07 00 04 */	lwz r0, 4(r7)
/* 800E2C30 000DFB90  90 08 00 04 */	stw r0, 4(r8)
lbl_800E2C34:
/* 800E2C34 000DFB94  39 08 00 08 */	addi r8, r8, 8
/* 800E2C38 000DFB98  39 29 00 01 */	addi r9, r9, 1
/* 800E2C3C 000DFB9C  38 E7 00 08 */	addi r7, r7, 8
lbl_800E2C40:
/* 800E2C40 000DFBA0  80 04 00 04 */	lwz r0, 4(r4)
/* 800E2C44 000DFBA4  80 C4 00 0C */	lwz r6, 0xc(r4)
/* 800E2C48 000DFBA8  54 00 18 38 */	slwi r0, r0, 3
/* 800E2C4C 000DFBAC  7C 06 02 14 */	add r0, r6, r0
/* 800E2C50 000DFBB0  7C 07 00 40 */	cmplw r7, r0
/* 800E2C54 000DFBB4  40 82 FF C8 */	bne lbl_800E2C1C
/* 800E2C58 000DFBB8  91 24 00 04 */	stw r9, 4(r4)
/* 800E2C5C 000DFBBC  80 05 00 00 */	lwz r0, 0(r5)
/* 800E2C60 000DFBC0  90 03 00 00 */	stw r0, 0(r3)
/* 800E2C64 000DFBC4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E2C68 000DFBC8  4E 80 00 20 */	blr

.global AcceptScriptMsg__18CScriptRandomRelayF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__18CScriptRandomRelayF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 800E2C6C 000DFBCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E2C70 000DFBD0  7C 08 02 A6 */	mflr r0
/* 800E2C74 000DFBD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E2C78 000DFBD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E2C7C 000DFBDC  7C DF 33 78 */	mr r31, r6
/* 800E2C80 000DFBE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E2C84 000DFBE4  7C 9E 23 78 */	mr r30, r4
/* 800E2C88 000DFBE8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E2C8C 000DFBEC  7C 7D 1B 78 */	mr r29, r3
/* 800E2C90 000DFBF0  A0 05 00 00 */	lhz r0, 0(r5)
/* 800E2C94 000DFBF4  38 A1 00 08 */	addi r5, r1, 8
/* 800E2C98 000DFBF8  B0 01 00 08 */	sth r0, 8(r1)
/* 800E2C9C 000DFBFC  4B F6 E4 C1 */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 800E2CA0 000DFC00  2C 1E 00 0D */	cmpwi r30, 0xd
/* 800E2CA4 000DFC04  41 82 00 08 */	beq lbl_800E2CAC
/* 800E2CA8 000DFC08  48 00 00 20 */	b lbl_800E2CC8
lbl_800E2CAC:
/* 800E2CAC 000DFC0C  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 800E2CB0 000DFC10  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800E2CB4 000DFC14  41 82 00 14 */	beq lbl_800E2CC8
/* 800E2CB8 000DFC18  7F A3 EB 78 */	mr r3, r29
/* 800E2CBC 000DFC1C  7F E5 FB 78 */	mr r5, r31
/* 800E2CC0 000DFC20  38 80 00 09 */	li r4, 9
/* 800E2CC4 000DFC24  4B FF FA F9 */	bl SendLocalScriptMsgs__18CScriptRandomRelayF18EScriptObjectStateR13CStateManager
lbl_800E2CC8:
/* 800E2CC8 000DFC28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E2CCC 000DFC2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E2CD0 000DFC30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E2CD4 000DFC34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E2CD8 000DFC38  7C 08 03 A6 */	mtlr r0
/* 800E2CDC 000DFC3C  38 21 00 20 */	addi r1, r1, 0x20
/* 800E2CE0 000DFC40  4E 80 00 20 */	blr

.global __dt__18CScriptRandomRelayFv
__dt__18CScriptRandomRelayFv:
/* 800E2CE4 000DFC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E2CE8 000DFC48  7C 08 02 A6 */	mflr r0
/* 800E2CEC 000DFC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E2CF0 000DFC50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E2CF4 000DFC54  7C 9F 23 78 */	mr r31, r4
/* 800E2CF8 000DFC58  93 C1 00 08 */	stw r30, 8(r1)
/* 800E2CFC 000DFC5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800E2D00 000DFC60  41 82 00 28 */	beq lbl_800E2D28
/* 800E2D04 000DFC64  3C A0 80 3E */	lis r5, __vt__18CScriptRandomRelay@ha
/* 800E2D08 000DFC68  38 80 00 00 */	li r4, 0
/* 800E2D0C 000DFC6C  38 05 F8 70 */	addi r0, r5, __vt__18CScriptRandomRelay@l
/* 800E2D10 000DFC70  90 1E 00 00 */	stw r0, 0(r30)
/* 800E2D14 000DFC74  4B F6 E5 61 */	bl __dt__7CEntityFv
/* 800E2D18 000DFC78  7F E0 07 35 */	extsh. r0, r31
/* 800E2D1C 000DFC7C  40 81 00 0C */	ble lbl_800E2D28
/* 800E2D20 000DFC80  7F C3 F3 78 */	mr r3, r30
/* 800E2D24 000DFC84  48 23 2C 0D */	bl Free__7CMemoryFPCv
lbl_800E2D28:
/* 800E2D28 000DFC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E2D2C 000DFC8C  7F C3 F3 78 */	mr r3, r30
/* 800E2D30 000DFC90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E2D34 000DFC94  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E2D38 000DFC98  7C 08 03 A6 */	mtlr r0
/* 800E2D3C 000DFC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 800E2D40 000DFCA0  4E 80 00 20 */	blr

.global "__ct__18CScriptRandomRelayF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoiibb"
"__ct__18CScriptRandomRelayF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoiibb":
/* 800E2D44 000DFCA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E2D48 000DFCA8  7C 08 02 A6 */	mflr r0
/* 800E2D4C 000DFCAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E2D50 000DFCB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E2D54 000DFCB4  7D 3F 4B 78 */	mr r31, r9
/* 800E2D58 000DFCB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E2D5C 000DFCBC  7D 1E 43 78 */	mr r30, r8
/* 800E2D60 000DFCC0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E2D64 000DFCC4  7C FD 3B 78 */	mr r29, r7
/* 800E2D68 000DFCC8  93 81 00 10 */	stw r28, 0x10(r1)
/* 800E2D6C 000DFCCC  7C 7C 1B 78 */	mr r28, r3
/* 800E2D70 000DFCD0  A0 04 00 00 */	lhz r0, 0(r4)
/* 800E2D74 000DFCD4  7C A4 2B 78 */	mr r4, r5
/* 800E2D78 000DFCD8  7C C5 33 78 */	mr r5, r6
/* 800E2D7C 000DFCDC  7D 46 53 78 */	mr r6, r10
/* 800E2D80 000DFCE0  B0 01 00 08 */	sth r0, 8(r1)
/* 800E2D84 000DFCE4  7C 87 23 78 */	mr r7, r4
/* 800E2D88 000DFCE8  38 81 00 08 */	addi r4, r1, 8
/* 800E2D8C 000DFCEC  4B F6 E5 99 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800E2D90 000DFCF0  3C 60 80 3E */	lis r3, __vt__18CScriptRandomRelay@ha
/* 800E2D94 000DFCF4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800E2D98 000DFCF8  38 63 F8 70 */	addi r3, r3, __vt__18CScriptRandomRelay@l
/* 800E2D9C 000DFCFC  90 7C 00 00 */	stw r3, 0(r28)
/* 800E2DA0 000DFD00  93 BC 00 34 */	stw r29, 0x34(r28)
/* 800E2DA4 000DFD04  93 DC 00 38 */	stw r30, 0x38(r28)
/* 800E2DA8 000DFD08  9B FC 00 3C */	stb r31, 0x3c(r28)
/* 800E2DAC 000DFD0C  41 82 00 18 */	beq lbl_800E2DC4
/* 800E2DB0 000DFD10  80 1C 00 34 */	lwz r0, 0x34(r28)
/* 800E2DB4 000DFD14  2C 00 00 64 */	cmpwi r0, 0x64
/* 800E2DB8 000DFD18  40 81 00 0C */	ble lbl_800E2DC4
/* 800E2DBC 000DFD1C  38 00 00 64 */	li r0, 0x64
/* 800E2DC0 000DFD20  90 1C 00 34 */	stw r0, 0x34(r28)
lbl_800E2DC4:
/* 800E2DC4 000DFD24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E2DC8 000DFD28  7F 83 E3 78 */	mr r3, r28
/* 800E2DCC 000DFD2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E2DD0 000DFD30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E2DD4 000DFD34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E2DD8 000DFD38  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800E2DDC 000DFD3C  7C 08 03 A6 */	mtlr r0
/* 800E2DE0 000DFD40  38 21 00 20 */	addi r1, r1, 0x20
/* 800E2DE4 000DFD44  4E 80 00 20 */	blr

.global "reserve__Q24rstl82vector<Q24rstl38pair<P7CEntity,20EScriptObjectMessage>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl82vector<Q24rstl38pair<P7CEntity,20EScriptObjectMessage>,Q24rstl17rmemory_allocator>Fi":
/* 800E2DE8 000DFD48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E2DEC 000DFD4C  7C 08 02 A6 */	mflr r0
/* 800E2DF0 000DFD50  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E2DF4 000DFD54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E2DF8 000DFD58  7C 9F 23 78 */	mr r31, r4
/* 800E2DFC 000DFD5C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800E2E00 000DFD60  7C 7E 1B 78 */	mr r30, r3
/* 800E2E04 000DFD64  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800E2E08 000DFD68  80 03 00 08 */	lwz r0, 8(r3)
/* 800E2E0C 000DFD6C  7C 1F 00 00 */	cmpw r31, r0
/* 800E2E10 000DFD70  40 81 00 B0 */	ble lbl_800E2EC0
/* 800E2E14 000DFD74  57 E3 18 39 */	rlwinm. r3, r31, 3, 0, 0x1c
/* 800E2E18 000DFD78  40 82 00 0C */	bne lbl_800E2E24
/* 800E2E1C 000DFD7C  3B A0 00 00 */	li r29, 0
/* 800E2E20 000DFD80  48 00 00 18 */	b lbl_800E2E38
lbl_800E2E24:
/* 800E2E24 000DFD84  3C 80 80 3D */	lis r4, lbl_803CE5C8@ha
/* 800E2E28 000DFD88  38 A0 00 00 */	li r5, 0
/* 800E2E2C 000DFD8C  38 84 E5 C8 */	addi r4, r4, lbl_803CE5C8@l
/* 800E2E30 000DFD90  48 23 29 E9 */	bl __nwa__FUlPCcPCc
/* 800E2E34 000DFD94  7C 7D 1B 78 */	mr r29, r3
lbl_800E2E38:
/* 800E2E38 000DFD98  80 1E 00 04 */	lwz r0, 4(r30)
/* 800E2E3C 000DFD9C  7F A4 EB 78 */	mr r4, r29
/* 800E2E40 000DFDA0  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 800E2E44 000DFDA4  54 00 18 38 */	slwi r0, r0, 3
/* 800E2E48 000DFDA8  7C 65 02 14 */	add r3, r5, r0
/* 800E2E4C 000DFDAC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800E2E50 000DFDB0  90 61 00 08 */	stw r3, 8(r1)
/* 800E2E54 000DFDB4  90 61 00 0C */	stw r3, 0xc(r1)
/* 800E2E58 000DFDB8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 800E2E5C 000DFDBC  48 00 00 24 */	b lbl_800E2E80
lbl_800E2E60:
/* 800E2E60 000DFDC0  28 04 00 00 */	cmplwi r4, 0
/* 800E2E64 000DFDC4  41 82 00 14 */	beq lbl_800E2E78
/* 800E2E68 000DFDC8  80 05 00 00 */	lwz r0, 0(r5)
/* 800E2E6C 000DFDCC  90 04 00 00 */	stw r0, 0(r4)
/* 800E2E70 000DFDD0  80 05 00 04 */	lwz r0, 4(r5)
/* 800E2E74 000DFDD4  90 04 00 04 */	stw r0, 4(r4)
lbl_800E2E78:
/* 800E2E78 000DFDD8  38 84 00 08 */	addi r4, r4, 8
/* 800E2E7C 000DFDDC  38 A5 00 08 */	addi r5, r5, 8
lbl_800E2E80:
/* 800E2E80 000DFDE0  7C 05 18 40 */	cmplw r5, r3
/* 800E2E84 000DFDE4  40 82 FF DC */	bne lbl_800E2E60
/* 800E2E88 000DFDE8  80 1E 00 04 */	lwz r0, 4(r30)
/* 800E2E8C 000DFDEC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800E2E90 000DFDF0  54 00 18 38 */	slwi r0, r0, 3
/* 800E2E94 000DFDF4  7C 64 1B 78 */	mr r4, r3
/* 800E2E98 000DFDF8  7C 03 02 14 */	add r0, r3, r0
/* 800E2E9C 000DFDFC  48 00 00 08 */	b lbl_800E2EA4
lbl_800E2EA0:
/* 800E2EA0 000DFE00  38 84 00 08 */	addi r4, r4, 8
lbl_800E2EA4:
/* 800E2EA4 000DFE04  7C 04 00 40 */	cmplw r4, r0
/* 800E2EA8 000DFE08  40 82 FF F8 */	bne lbl_800E2EA0
/* 800E2EAC 000DFE0C  28 03 00 00 */	cmplwi r3, 0
/* 800E2EB0 000DFE10  41 82 00 08 */	beq lbl_800E2EB8
/* 800E2EB4 000DFE14  48 23 2A 7D */	bl Free__7CMemoryFPCv
lbl_800E2EB8:
/* 800E2EB8 000DFE18  93 BE 00 0C */	stw r29, 0xc(r30)
/* 800E2EBC 000DFE1C  93 FE 00 08 */	stw r31, 8(r30)
lbl_800E2EC0:
/* 800E2EC0 000DFE20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E2EC4 000DFE24  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E2EC8 000DFE28  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800E2ECC 000DFE2C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800E2ED0 000DFE30  7C 08 03 A6 */	mtlr r0
/* 800E2ED4 000DFE34  38 21 00 30 */	addi r1, r1, 0x30
/* 800E2ED8 000DFE38  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CE5C8
lbl_803CE5C8:

	# ROM: 0x3CB5C8
	.asciz "??(??)"
	.balign 4

.global lbl_803CE5D0
lbl_803CE5D0:

	# ROM: 0x3CB5D0
	.asciz "LCTR_GARMOUTH"

.global lbl_803CE5DE
lbl_803CE5DE:

	# ROM: 0x3CB5DE
	.byte 0x54, 0x61
	.asciz "rget_Tail"
	.balign 4
	.4byte 0
