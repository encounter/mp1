.include "macros.inc"

.section .text, "ax"

.global __ptmf_test
__ptmf_test:
/* 803898FC 0038685C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80389900 00386860  80 C3 00 04 */	lwz r6, 4(r3)
/* 80389904 00386864  80 E3 00 08 */	lwz r7, 8(r3)
/* 80389908 00386868  38 60 00 01 */	li r3, 1
/* 8038990C 0038686C  2C 05 00 00 */	cmpwi r5, 0
/* 80389910 00386870  2F 06 00 00 */	cmpwi cr6, r6, 0
/* 80389914 00386874  2F 87 00 00 */	cmpwi cr7, r7, 0
/* 80389918 00386878  4C 82 00 20 */	bnelr 
/* 8038991C 0038687C  4C 9A 00 20 */	bnelr cr6
/* 80389920 00386880  4C 9E 00 20 */	bnelr cr7
/* 80389924 00386884  38 60 00 00 */	li r3, 0
/* 80389928 00386888  4E 80 00 20 */	blr 

.global __ptmf_scall
__ptmf_scall:
/* 8038992C 0038688C  80 0C 00 00 */	lwz r0, 0(r12)
/* 80389930 00386890  81 6C 00 04 */	lwz r11, 4(r12)
/* 80389934 00386894  81 8C 00 08 */	lwz r12, 8(r12)
/* 80389938 00386898  7C 63 02 14 */	add r3, r3, r0
/* 8038993C 0038689C  2C 0B 00 00 */	cmpwi r11, 0
/* 80389940 003868A0  41 80 00 0C */	blt lbl_8038994C
/* 80389944 003868A4  7D 83 60 2E */	lwzx r12, r3, r12
/* 80389948 003868A8  7D 8C 58 2E */	lwzx r12, r12, r11
lbl_8038994C:
/* 8038994C 003868AC  7D 89 03 A6 */	mtctr r12
/* 80389950 003868B0  4E 80 04 20 */	bctr 
