.include "macros.inc"

.section .text, "ax" 

.global sndAuxCallbackReverbSTD
sndAuxCallbackReverbSTD:
/* 803B5188 003B20E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B518C 003B20EC  7C 08 02 A6 */	mflr r0
/* 803B5190 003B20F0  7C 87 23 78 */	mr r7, r4
/* 803B5194 003B20F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5198 003B20F8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803B519C 003B20FC  2C 00 00 01 */	cmpwi r0, 1
/* 803B51A0 003B2100  41 82 00 34 */	beq lbl_803B51D4
/* 803B51A4 003B2104  40 80 00 30 */	bge lbl_803B51D4
/* 803B51A8 003B2108  2C 00 00 00 */	cmpwi r0, 0
/* 803B51AC 003B210C  40 80 00 08 */	bge lbl_803B51B4
/* 803B51B0 003B2110  48 00 00 24 */	b lbl_803B51D4
lbl_803B51B4:
/* 803B51B4 003B2114  88 05 01 3C */	lbz r0, 0x13c(r5)
/* 803B51B8 003B2118  28 00 00 00 */	cmplwi r0, 0
/* 803B51BC 003B211C  40 82 00 18 */	bne lbl_803B51D4
/* 803B51C0 003B2120  80 67 00 00 */	lwz r3, 0(r7)
/* 803B51C4 003B2124  7C A6 2B 78 */	mr r6, r5
/* 803B51C8 003B2128  80 87 00 04 */	lwz r4, 4(r7)
/* 803B51CC 003B212C  80 A7 00 08 */	lwz r5, 8(r7)
/* 803B51D0 003B2130  48 00 08 51 */	bl ReverbSTDCallback
lbl_803B51D4:
/* 803B51D4 003B2134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B51D8 003B2138  7C 08 03 A6 */	mtlr r0
/* 803B51DC 003B213C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B51E0 003B2140  4E 80 00 20 */	blr 

.global sndAuxCallbackPrepareReverbSTD
sndAuxCallbackPrepareReverbSTD:
/* 803B51E4 003B2144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B51E8 003B2148  7C 08 02 A6 */	mflr r0
/* 803B51EC 003B214C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B51F0 003B2150  38 00 00 00 */	li r0, 0
/* 803B51F4 003B2154  98 03 01 3C */	stb r0, 0x13c(r3)
/* 803B51F8 003B2158  C0 23 01 40 */	lfs f1, 0x140(r3)
/* 803B51FC 003B215C  C0 43 01 48 */	lfs f2, 0x148(r3)
/* 803B5200 003B2160  C0 63 01 44 */	lfs f3, 0x144(r3)
/* 803B5204 003B2164  C0 83 01 4C */	lfs f4, 0x14c(r3)
/* 803B5208 003B2168  C0 A3 01 50 */	lfs f5, 0x150(r3)
/* 803B520C 003B216C  48 00 00 39 */	bl ReverbSTDCreate
/* 803B5210 003B2170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5214 003B2174  7C 08 03 A6 */	mtlr r0
/* 803B5218 003B2178  38 21 00 10 */	addi r1, r1, 0x10
/* 803B521C 003B217C  4E 80 00 20 */	blr 

.global sndAuxCallbackShutdownReverbSTD
sndAuxCallbackShutdownReverbSTD:
/* 803B5220 003B2180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5224 003B2184  7C 08 02 A6 */	mflr r0
/* 803B5228 003B2188  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B522C 003B218C  48 00 08 19 */	bl ReverbSTDFree
/* 803B5230 003B2190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5234 003B2194  38 60 00 01 */	li r3, 1
/* 803B5238 003B2198  7C 08 03 A6 */	mtlr r0
/* 803B523C 003B219C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5240 003B21A0  4E 80 00 20 */	blr 
