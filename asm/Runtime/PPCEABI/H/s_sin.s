.include "macros.inc"

.section .text, "ax" 

.global sin
sin:
/* 80394ADC 00391A3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80394AE0 00391A40  7C 08 02 A6 */	mflr r0
/* 80394AE4 00391A44  3C 60 3F E9 */	lis r3, 0x3FE921FB@ha
/* 80394AE8 00391A48  D8 21 00 08 */	stfd f1, 8(r1)
/* 80394AEC 00391A4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80394AF0 00391A50  38 03 21 FB */	addi r0, r3, 0x3FE921FB@l
/* 80394AF4 00391A54  80 61 00 08 */	lwz r3, 8(r1)
/* 80394AF8 00391A58  54 63 00 7E */	clrlwi r3, r3, 1
/* 80394AFC 00391A5C  7C 03 00 00 */	cmpw r3, r0
/* 80394B00 00391A60  41 81 00 14 */	bgt lbl_80394B14
/* 80394B04 00391A64  C8 42 D4 E0 */	lfd f2, lbl_805AF200@sda21(r2)
/* 80394B08 00391A68  38 60 00 00 */	li r3, 0
/* 80394B0C 00391A6C  4B FF F4 09 */	bl __kernel_sin
/* 80394B10 00391A70  48 00 00 94 */	b lbl_80394BA4
lbl_80394B14:
/* 80394B14 00391A74  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80394B18 00391A78  7C 03 00 00 */	cmpw r3, r0
/* 80394B1C 00391A7C  41 80 00 0C */	blt lbl_80394B28
/* 80394B20 00391A80  FC 21 08 28 */	fsub f1, f1, f1
/* 80394B24 00391A84  48 00 00 80 */	b lbl_80394BA4
lbl_80394B28:
/* 80394B28 00391A88  38 61 00 10 */	addi r3, r1, 0x10
/* 80394B2C 00391A8C  4B FF E1 01 */	bl __ieee754_rem_pio2
/* 80394B30 00391A90  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80394B34 00391A94  2C 00 00 01 */	cmpwi r0, 1
/* 80394B38 00391A98  41 82 00 34 */	beq lbl_80394B6C
/* 80394B3C 00391A9C  40 80 00 10 */	bge lbl_80394B4C
/* 80394B40 00391AA0  2C 00 00 00 */	cmpwi r0, 0
/* 80394B44 00391AA4  40 80 00 14 */	bge lbl_80394B58
/* 80394B48 00391AA8  48 00 00 4C */	b lbl_80394B94
lbl_80394B4C:
/* 80394B4C 00391AAC  2C 00 00 03 */	cmpwi r0, 3
/* 80394B50 00391AB0  40 80 00 44 */	bge lbl_80394B94
/* 80394B54 00391AB4  48 00 00 28 */	b lbl_80394B7C
lbl_80394B58:
/* 80394B58 00391AB8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80394B5C 00391ABC  38 60 00 01 */	li r3, 1
/* 80394B60 00391AC0  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80394B64 00391AC4  4B FF F3 B1 */	bl __kernel_sin
/* 80394B68 00391AC8  48 00 00 3C */	b lbl_80394BA4
lbl_80394B6C:
/* 80394B6C 00391ACC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80394B70 00391AD0  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80394B74 00391AD4  4B FF E4 59 */	bl __kernel_cos
/* 80394B78 00391AD8  48 00 00 2C */	b lbl_80394BA4
lbl_80394B7C:
/* 80394B7C 00391ADC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80394B80 00391AE0  38 60 00 01 */	li r3, 1
/* 80394B84 00391AE4  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80394B88 00391AE8  4B FF F3 8D */	bl __kernel_sin
/* 80394B8C 00391AEC  FC 20 08 50 */	fneg f1, f1
/* 80394B90 00391AF0  48 00 00 14 */	b lbl_80394BA4
lbl_80394B94:
/* 80394B94 00391AF4  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80394B98 00391AF8  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80394B9C 00391AFC  4B FF E4 31 */	bl __kernel_cos
/* 80394BA0 00391B00  FC 20 08 50 */	fneg f1, f1
lbl_80394BA4:
/* 80394BA4 00391B04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80394BA8 00391B08  7C 08 03 A6 */	mtlr r0
/* 80394BAC 00391B0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80394BB0 00391B10  4E 80 00 20 */	blr 
