.include "macros.inc"

.section .text, "ax"

.global __ieee754_atan2
__ieee754_atan2:
/* 8039193C 0038E89C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80391940 0038E8A0  7C 08 02 A6 */	mflr r0
/* 80391944 0038E8A4  3C 60 7F F0 */	lis r3, 0x7ff0
/* 80391948 0038E8A8  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8039194C 0038E8AC  81 01 00 14 */	lwz r8, 0x14(r1)
/* 80391950 0038E8B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80391954 0038E8B4  7C 08 00 D0 */	neg r0, r8
/* 80391958 0038E8B8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8039195C 0038E8BC  7D 00 03 78 */	or r0, r8, r0
/* 80391960 0038E8C0  D8 21 00 08 */	stfd f1, 8(r1)
/* 80391964 0038E8C4  54 86 00 7E */	clrlwi r6, r4, 1
/* 80391968 0038E8C8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8039196C 0038E8CC  80 A1 00 08 */	lwz r5, 8(r1)
/* 80391970 0038E8D0  7C C0 03 78 */	or r0, r6, r0
/* 80391974 0038E8D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80391978 0038E8D8  7C 00 18 40 */	cmplw r0, r3
/* 8039197C 0038E8DC  81 21 00 0C */	lwz r9, 0xc(r1)
/* 80391980 0038E8E0  54 A7 00 7E */	clrlwi r7, r5, 1
/* 80391984 0038E8E4  41 81 00 1C */	bgt lbl_803919A0
/* 80391988 0038E8E8  7C 09 00 D0 */	neg r0, r9
/* 8039198C 0038E8EC  7D 20 03 78 */	or r0, r9, r0
/* 80391990 0038E8F0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80391994 0038E8F4  7C E0 03 78 */	or r0, r7, r0
/* 80391998 0038E8F8  7C 00 18 40 */	cmplw r0, r3
/* 8039199C 0038E8FC  40 81 00 14 */	ble lbl_803919B0
lbl_803919A0:
/* 803919A0 0038E900  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 803919A4 0038E904  C8 01 00 08 */	lfd f0, 8(r1)
/* 803919A8 0038E908  FC 21 00 2A */	fadd f1, f1, f0
/* 803919AC 0038E90C  48 00 02 0C */	b lbl_80391BB8
lbl_803919B0:
/* 803919B0 0038E910  3C 04 C0 10 */	addis r0, r4, 0xc010
/* 803919B4 0038E914  7C 00 43 79 */	or. r0, r0, r8
/* 803919B8 0038E918  40 82 00 0C */	bne lbl_803919C4
/* 803919BC 0038E91C  48 00 28 0D */	bl atan
/* 803919C0 0038E920  48 00 01 F8 */	b lbl_80391BB8
lbl_803919C4:
/* 803919C4 0038E924  7C E0 4B 79 */	or. r0, r7, r9
/* 803919C8 0038E928  54 80 17 BC */	rlwinm r0, r4, 2, 0x1e, 0x1e
/* 803919CC 0038E92C  7C 1F 03 78 */	mr r31, r0
/* 803919D0 0038E930  50 BF 0F FE */	rlwimi r31, r5, 1, 0x1f, 0x1f
/* 803919D4 0038E934  40 82 00 3C */	bne lbl_80391A10
/* 803919D8 0038E938  2C 1F 00 02 */	cmpwi r31, 2
/* 803919DC 0038E93C  41 82 00 24 */	beq lbl_80391A00
/* 803919E0 0038E940  40 80 00 10 */	bge lbl_803919F0
/* 803919E4 0038E944  2C 1F 00 00 */	cmpwi r31, 0
/* 803919E8 0038E948  40 80 01 D0 */	bge lbl_80391BB8
/* 803919EC 0038E94C  48 00 00 24 */	b lbl_80391A10
lbl_803919F0:
/* 803919F0 0038E950  2C 1F 00 04 */	cmpwi r31, 4
/* 803919F4 0038E954  40 80 00 1C */	bge lbl_80391A10
/* 803919F8 0038E958  48 00 00 10 */	b lbl_80391A08
/* 803919FC 0038E95C  48 00 01 BC */	b lbl_80391BB8
lbl_80391A00:
/* 80391A00 0038E960  C8 22 D0 C0 */	lfd f1, lbl_805AEDE0@sda21(r2)
/* 80391A04 0038E964  48 00 01 B4 */	b lbl_80391BB8
lbl_80391A08:
/* 80391A08 0038E968  C8 22 D0 C8 */	lfd f1, lbl_805AEDE8@sda21(r2)
/* 80391A0C 0038E96C  48 00 01 AC */	b lbl_80391BB8
lbl_80391A10:
/* 80391A10 0038E970  7C C0 43 79 */	or. r0, r6, r8
/* 80391A14 0038E974  40 82 00 1C */	bne lbl_80391A30
/* 80391A18 0038E978  2C 05 00 00 */	cmpwi r5, 0
/* 80391A1C 0038E97C  40 80 00 0C */	bge lbl_80391A28
/* 80391A20 0038E980  C8 22 D0 D0 */	lfd f1, lbl_805AEDF0@sda21(r2)
/* 80391A24 0038E984  48 00 01 94 */	b lbl_80391BB8
lbl_80391A28:
/* 80391A28 0038E988  C8 22 D0 D8 */	lfd f1, lbl_805AEDF8@sda21(r2)
/* 80391A2C 0038E98C  48 00 01 8C */	b lbl_80391BB8
lbl_80391A30:
/* 80391A30 0038E990  3C 06 80 10 */	addis r0, r6, 0x8010
/* 80391A34 0038E994  28 00 00 00 */	cmplwi r0, 0
/* 80391A38 0038E998  40 82 00 A0 */	bne lbl_80391AD8
/* 80391A3C 0038E99C  3C 07 80 10 */	addis r0, r7, 0x8010
/* 80391A40 0038E9A0  28 00 00 00 */	cmplwi r0, 0
/* 80391A44 0038E9A4  40 82 00 4C */	bne lbl_80391A90
/* 80391A48 0038E9A8  2C 1F 00 02 */	cmpwi r31, 2
/* 80391A4C 0038E9AC  41 82 00 34 */	beq lbl_80391A80
/* 80391A50 0038E9B0  40 80 00 14 */	bge lbl_80391A64
/* 80391A54 0038E9B4  2C 1F 00 00 */	cmpwi r31, 0
/* 80391A58 0038E9B8  41 82 00 18 */	beq lbl_80391A70
/* 80391A5C 0038E9BC  40 80 00 1C */	bge lbl_80391A78
/* 80391A60 0038E9C0  48 00 00 78 */	b lbl_80391AD8
lbl_80391A64:
/* 80391A64 0038E9C4  2C 1F 00 04 */	cmpwi r31, 4
/* 80391A68 0038E9C8  40 80 00 70 */	bge lbl_80391AD8
/* 80391A6C 0038E9CC  48 00 00 1C */	b lbl_80391A88
lbl_80391A70:
/* 80391A70 0038E9D0  C8 22 D0 E0 */	lfd f1, lbl_805AEE00@sda21(r2)
/* 80391A74 0038E9D4  48 00 01 44 */	b lbl_80391BB8
lbl_80391A78:
/* 80391A78 0038E9D8  C8 22 D0 E8 */	lfd f1, lbl_805AEE08@sda21(r2)
/* 80391A7C 0038E9DC  48 00 01 3C */	b lbl_80391BB8
lbl_80391A80:
/* 80391A80 0038E9E0  C8 22 D0 F0 */	lfd f1, lbl_805AEE10@sda21(r2)
/* 80391A84 0038E9E4  48 00 01 34 */	b lbl_80391BB8
lbl_80391A88:
/* 80391A88 0038E9E8  C8 22 D0 F8 */	lfd f1, lbl_805AEE18@sda21(r2)
/* 80391A8C 0038E9EC  48 00 01 2C */	b lbl_80391BB8
lbl_80391A90:
/* 80391A90 0038E9F0  2C 1F 00 02 */	cmpwi r31, 2
/* 80391A94 0038E9F4  41 82 00 34 */	beq lbl_80391AC8
/* 80391A98 0038E9F8  40 80 00 14 */	bge lbl_80391AAC
/* 80391A9C 0038E9FC  2C 1F 00 00 */	cmpwi r31, 0
/* 80391AA0 0038EA00  41 82 00 18 */	beq lbl_80391AB8
/* 80391AA4 0038EA04  40 80 00 1C */	bge lbl_80391AC0
/* 80391AA8 0038EA08  48 00 00 30 */	b lbl_80391AD8
lbl_80391AAC:
/* 80391AAC 0038EA0C  2C 1F 00 04 */	cmpwi r31, 4
/* 80391AB0 0038EA10  40 80 00 28 */	bge lbl_80391AD8
/* 80391AB4 0038EA14  48 00 00 1C */	b lbl_80391AD0
lbl_80391AB8:
/* 80391AB8 0038EA18  C8 22 D1 00 */	lfd f1, lbl_805AEE20@sda21(r2)
/* 80391ABC 0038EA1C  48 00 00 FC */	b lbl_80391BB8
lbl_80391AC0:
/* 80391AC0 0038EA20  C8 22 D1 08 */	lfd f1, lbl_805AEE28@sda21(r2)
/* 80391AC4 0038EA24  48 00 00 F4 */	b lbl_80391BB8
lbl_80391AC8:
/* 80391AC8 0038EA28  C8 22 D0 C0 */	lfd f1, lbl_805AEDE0@sda21(r2)
/* 80391ACC 0038EA2C  48 00 00 EC */	b lbl_80391BB8
lbl_80391AD0:
/* 80391AD0 0038EA30  C8 22 D0 C8 */	lfd f1, lbl_805AEDE8@sda21(r2)
/* 80391AD4 0038EA34  48 00 00 E4 */	b lbl_80391BB8
lbl_80391AD8:
/* 80391AD8 0038EA38  3C 07 80 10 */	addis r0, r7, 0x8010
/* 80391ADC 0038EA3C  28 00 00 00 */	cmplwi r0, 0
/* 80391AE0 0038EA40  40 82 00 1C */	bne lbl_80391AFC
/* 80391AE4 0038EA44  2C 05 00 00 */	cmpwi r5, 0
/* 80391AE8 0038EA48  40 80 00 0C */	bge lbl_80391AF4
/* 80391AEC 0038EA4C  C8 22 D0 D0 */	lfd f1, lbl_805AEDF0@sda21(r2)
/* 80391AF0 0038EA50  48 00 00 C8 */	b lbl_80391BB8
lbl_80391AF4:
/* 80391AF4 0038EA54  C8 22 D0 D8 */	lfd f1, lbl_805AEDF8@sda21(r2)
/* 80391AF8 0038EA58  48 00 00 C0 */	b lbl_80391BB8
lbl_80391AFC:
/* 80391AFC 0038EA5C  7C 06 38 50 */	subf r0, r6, r7
/* 80391B00 0038EA60  7C 00 A6 70 */	srawi r0, r0, 0x14
/* 80391B04 0038EA64  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80391B08 0038EA68  40 81 00 10 */	ble lbl_80391B18
/* 80391B0C 0038EA6C  C8 02 D0 D8 */	lfd f0, lbl_805AEDF8@sda21(r2)
/* 80391B10 0038EA70  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80391B14 0038EA74  48 00 00 38 */	b lbl_80391B4C
lbl_80391B18:
/* 80391B18 0038EA78  2C 04 00 00 */	cmpwi r4, 0
/* 80391B1C 0038EA7C  40 80 00 18 */	bge lbl_80391B34
/* 80391B20 0038EA80  2C 00 FF C4 */	cmpwi r0, -60
/* 80391B24 0038EA84  40 80 00 10 */	bge lbl_80391B34
/* 80391B28 0038EA88  C8 02 D1 00 */	lfd f0, lbl_805AEE20@sda21(r2)
/* 80391B2C 0038EA8C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80391B30 0038EA90  48 00 00 1C */	b lbl_80391B4C
lbl_80391B34:
/* 80391B34 0038EA94  C8 21 00 08 */	lfd f1, 8(r1)
/* 80391B38 0038EA98  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80391B3C 0038EA9C  FC 01 00 24 */	fdiv f0, f1, f0
/* 80391B40 0038EAA0  FC 20 02 10 */	fabs f1, f0
/* 80391B44 0038EAA4  48 00 26 85 */	bl atan
/* 80391B48 0038EAA8  D8 21 00 18 */	stfd f1, 0x18(r1)
lbl_80391B4C:
/* 80391B4C 0038EAAC  2C 1F 00 01 */	cmpwi r31, 1
/* 80391B50 0038EAB0  41 82 00 28 */	beq lbl_80391B78
/* 80391B54 0038EAB4  40 80 00 10 */	bge lbl_80391B64
/* 80391B58 0038EAB8  2C 1F 00 00 */	cmpwi r31, 0
/* 80391B5C 0038EABC  40 80 00 14 */	bge lbl_80391B70
/* 80391B60 0038EAC0  48 00 00 44 */	b lbl_80391BA4
lbl_80391B64:
/* 80391B64 0038EAC4  2C 1F 00 03 */	cmpwi r31, 3
/* 80391B68 0038EAC8  40 80 00 3C */	bge lbl_80391BA4
/* 80391B6C 0038EACC  48 00 00 20 */	b lbl_80391B8C
lbl_80391B70:
/* 80391B70 0038EAD0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80391B74 0038EAD4  48 00 00 44 */	b lbl_80391BB8
lbl_80391B78:
/* 80391B78 0038EAD8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80391B7C 0038EADC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80391B80 0038EAE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80391B84 0038EAE4  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80391B88 0038EAE8  48 00 00 30 */	b lbl_80391BB8
lbl_80391B8C:
/* 80391B8C 0038EAEC  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80391B90 0038EAF0  C8 02 D1 10 */	lfd f0, lbl_805AEE30@sda21(r2)
/* 80391B94 0038EAF4  C8 42 D0 C0 */	lfd f2, lbl_805AEDE0@sda21(r2)
/* 80391B98 0038EAF8  FC 01 00 28 */	fsub f0, f1, f0
/* 80391B9C 0038EAFC  FC 22 00 28 */	fsub f1, f2, f0
/* 80391BA0 0038EB00  48 00 00 18 */	b lbl_80391BB8
lbl_80391BA4:
/* 80391BA4 0038EB04  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80391BA8 0038EB08  C8 22 D1 10 */	lfd f1, lbl_805AEE30@sda21(r2)
/* 80391BAC 0038EB0C  C8 02 D0 C0 */	lfd f0, lbl_805AEDE0@sda21(r2)
/* 80391BB0 0038EB10  FC 22 08 28 */	fsub f1, f2, f1
/* 80391BB4 0038EB14  FC 21 00 28 */	fsub f1, f1, f0
lbl_80391BB8:
/* 80391BB8 0038EB18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80391BBC 0038EB1C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80391BC0 0038EB20  7C 08 03 A6 */	mtlr r0
/* 80391BC4 0038EB24  38 21 00 30 */	addi r1, r1, 0x30
/* 80391BC8 0038EB28  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AEDE0
lbl_805AEDE0:
	# ROM: 0x3FB680
	.4byte 0x400921FB
	.4byte 0x54442D18

.global lbl_805AEDE8
lbl_805AEDE8:
	# ROM: 0x3FB688
	.4byte 0xC00921FB
	.4byte 0x54442D18

.global lbl_805AEDF0
lbl_805AEDF0:
	# ROM: 0x3FB690
	.4byte 0xBFF921FB
	.4byte 0x54442D18

.global lbl_805AEDF8
lbl_805AEDF8:
	# ROM: 0x3FB698
	.4byte 0x3FF921FB
	.4byte 0x54442D18

.global lbl_805AEE00
lbl_805AEE00:
	# ROM: 0x3FB6A0
	.4byte 0x3FE921FB
	.4byte 0x54442D18

.global lbl_805AEE08
lbl_805AEE08:
	# ROM: 0x3FB6A8
	.4byte 0xBFE921FB
	.4byte 0x54442D18

.global lbl_805AEE10
lbl_805AEE10:
	# ROM: 0x3FB6B0
	.4byte 0x4002D97C
	.4byte 0x7F3321D2

.global lbl_805AEE18
lbl_805AEE18:
	# ROM: 0x3FB6B8
	.4byte 0xC002D97C
	.4byte 0x7F3321D2

.global lbl_805AEE20
lbl_805AEE20:
	# ROM: 0x3FB6C0
	.4byte 0
	.4byte 0

.global lbl_805AEE28
lbl_805AEE28:
	# ROM: 0x3FB6C8
	.4byte 0x80000000
	.4byte 0

.global lbl_805AEE30
lbl_805AEE30:
	# ROM: 0x3FB6D0
	.4byte 0x3CA1A626
	.4byte 0x33145C07

