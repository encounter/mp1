.include "macros.inc"

.section .text, "ax"

.global GXCallDisplayList
GXCallDisplayList:
/* 8037C1D4 00379134  7C 08 02 A6 */	mflr r0
/* 8037C1D8 00379138  90 01 00 04 */	stw r0, 4(r1)
/* 8037C1DC 0037913C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037C1E0 00379140  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8037C1E4 00379144  3B E4 00 00 */	addi r31, r4, 0
/* 8037C1E8 00379148  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8037C1EC 0037914C  3B C3 00 00 */	addi r30, r3, 0
/* 8037C1F0 00379150  80 A2 CE 08 */	lwz r5, __GXData@sda21(r2)
/* 8037C1F4 00379154  80 05 04 F4 */	lwz r0, 0x4f4(r5)
/* 8037C1F8 00379158  28 00 00 00 */	cmplwi r0, 0
/* 8037C1FC 0037915C  41 82 00 08 */	beq lbl_8037C204
/* 8037C200 00379160  4B FF C6 55 */	bl __GXSetDirtyState
lbl_8037C204:
/* 8037C204 00379164  80 62 CE 08 */	lwz r3, __GXData@sda21(r2)
/* 8037C208 00379168  80 03 00 00 */	lwz r0, 0(r3)
/* 8037C20C 0037916C  28 00 00 00 */	cmplwi r0, 0
/* 8037C210 00379170  40 82 00 08 */	bne lbl_8037C218
/* 8037C214 00379174  4B FF C7 D1 */	bl __GXSendFlushPrim
lbl_8037C218:
/* 8037C218 00379178  38 00 00 40 */	li r0, 0x40
/* 8037C21C 0037917C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8037C220 00379180  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8037C224 00379184  93 C3 80 00 */	stw r30, 0xCC008000@l(r3)
/* 8037C228 00379188  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 8037C22C 0037918C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8037C230 00379190  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8037C234 00379194  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8037C238 00379198  38 21 00 18 */	addi r1, r1, 0x18
/* 8037C23C 0037919C  7C 08 03 A6 */	mtlr r0
/* 8037C240 003791A0  4E 80 00 20 */	blr
