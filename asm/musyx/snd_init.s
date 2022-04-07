.include "macros.inc"

.section .text, "ax" 

.global sndInit
sndInit:
/* 803B0BC0 003ADB20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B0BC4 003ADB24  7C 08 02 A6 */	mflr r0
/* 803B0BC8 003ADB28  39 20 00 00 */	li r9, 0
/* 803B0BCC 003ADB2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B0BD0 003ADB30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803B0BD4 003ADB34  28 00 00 40 */	cmplwi r0, 0x40
/* 803B0BD8 003ADB38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B0BDC 003ADB3C  7D 1F 43 78 */	mr r31, r8
/* 803B0BE0 003ADB40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B0BE4 003ADB44  7C FE 3B 78 */	mr r30, r7
/* 803B0BE8 003ADB48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803B0BEC 003ADB4C  99 2D AE 48 */	stb r9, sndActive@sda21(r13)
/* 803B0BF0 003ADB50  41 81 00 14 */	bgt lbl_803B0C04
/* 803B0BF4 003ADB54  3C E0 80 55 */	lis r7, synthInfo@ha
/* 803B0BF8 003ADB58  38 E7 00 50 */	addi r7, r7, synthInfo@l
/* 803B0BFC 003ADB5C  98 67 02 10 */	stb r3, 0x210(r7)
/* 803B0C00 003ADB60  48 00 00 14 */	b lbl_803B0C14
lbl_803B0C04:
/* 803B0C04 003ADB64  3C 60 80 55 */	lis r3, synthInfo@ha
/* 803B0C08 003ADB68  38 00 00 40 */	li r0, 0x40
/* 803B0C0C 003ADB6C  38 63 00 50 */	addi r3, r3, synthInfo@l
/* 803B0C10 003ADB70  98 03 02 10 */	stb r0, 0x210(r3)
lbl_803B0C14:
/* 803B0C14 003ADB74  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 803B0C18 003ADB78  28 00 00 08 */	cmplwi r0, 8
/* 803B0C1C 003ADB7C  41 81 00 14 */	bgt lbl_803B0C30
/* 803B0C20 003ADB80  3C 60 80 55 */	lis r3, synthInfo@ha
/* 803B0C24 003ADB84  38 63 00 50 */	addi r3, r3, synthInfo@l
/* 803B0C28 003ADB88  98 C3 02 13 */	stb r6, 0x213(r3)
/* 803B0C2C 003ADB8C  48 00 00 14 */	b lbl_803B0C40
lbl_803B0C30:
/* 803B0C30 003ADB90  3C 60 80 55 */	lis r3, synthInfo@ha
/* 803B0C34 003ADB94  38 00 00 08 */	li r0, 8
/* 803B0C38 003ADB98  38 63 00 50 */	addi r3, r3, synthInfo@l
/* 803B0C3C 003ADB9C  98 03 02 13 */	stb r0, 0x213(r3)
lbl_803B0C40:
/* 803B0C40 003ADBA0  3C 60 80 55 */	lis r3, synthInfo@ha
/* 803B0C44 003ADBA4  38 00 7D 00 */	li r0, 0x7d00
/* 803B0C48 003ADBA8  3B A3 00 50 */	addi r29, r3, synthInfo@l
/* 803B0C4C 003ADBAC  90 01 00 08 */	stw r0, 8(r1)
/* 803B0C50 003ADBB0  7F C6 F3 78 */	mr r6, r30
/* 803B0C54 003ADBB4  38 61 00 08 */	addi r3, r1, 8
/* 803B0C58 003ADBB8  98 9D 02 11 */	stb r4, 0x211(r29)
/* 803B0C5C 003ADBBC  88 9D 02 10 */	lbz r4, 0x210(r29)
/* 803B0C60 003ADBC0  98 BD 02 12 */	stb r5, 0x212(r29)
/* 803B0C64 003ADBC4  88 BD 02 13 */	lbz r5, 0x213(r29)
/* 803B0C68 003ADBC8  48 00 24 39 */	bl sub_803b30a0
/* 803B0C6C 003ADBCC  2C 03 00 00 */	cmpwi r3, 0
/* 803B0C70 003ADBD0  40 82 00 4C */	bne lbl_803B0CBC
/* 803B0C74 003ADBD4  8B BD 02 10 */	lbz r29, 0x210(r29)
/* 803B0C78 003ADBD8  4B FF 95 0D */	bl sub_803aa184
/* 803B0C7C 003ADBDC  7F E4 FB 78 */	mr r4, r31
/* 803B0C80 003ADBE0  38 60 00 00 */	li r3, 0
/* 803B0C84 003ADBE4  4B FF 1C 3D */	bl dataInit
/* 803B0C88 003ADBE8  4B FE 7E 71 */	bl seqInit
/* 803B0C8C 003ADBEC  38 00 00 00 */	li r0, 0
/* 803B0C90 003ADBF0  7F A4 EB 78 */	mr r4, r29
/* 803B0C94 003ADBF4  98 0D AE 80 */	stb r0, synthIdleWaitActive@sda21(r13)
/* 803B0C98 003ADBF8  38 60 7D 00 */	li r3, 0x7d00
/* 803B0C9C 003ADBFC  4B FE AD C9 */	bl synthInit
/* 803B0CA0 003ADC00  4B FE BB C5 */	bl streamInit
/* 803B0CA4 003ADC04  4B FF 8D 2D */	bl vsInit
/* 803B0CA8 003ADC08  7F C3 F3 78 */	mr r3, r30
/* 803B0CAC 003ADC0C  4B FF FE D9 */	bl sub_803b0b84
/* 803B0CB0 003ADC10  38 00 00 01 */	li r0, 1
/* 803B0CB4 003ADC14  38 60 00 00 */	li r3, 0
/* 803B0CB8 003ADC18  98 0D AE 48 */	stb r0, sndActive@sda21(r13)
lbl_803B0CBC:
/* 803B0CBC 003ADC1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B0CC0 003ADC20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B0CC4 003ADC24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B0CC8 003ADC28  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803B0CCC 003ADC2C  7C 08 03 A6 */	mtlr r0
/* 803B0CD0 003ADC30  38 21 00 20 */	addi r1, r1, 0x20
/* 803B0CD4 003ADC34  4E 80 00 20 */	blr 

.global sndQuit
sndQuit:
/* 803B0CD8 003ADC38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B0CDC 003ADC3C  7C 08 02 A6 */	mflr r0
/* 803B0CE0 003ADC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B0CE4 003ADC44  48 00 24 75 */	bl hwExit
/* 803B0CE8 003ADC48  4B FF 1C BD */	bl dataExit
/* 803B0CEC 003ADC4C  4B FF FE D1 */	bl s3dExit
/* 803B0CF0 003ADC50  4B FE B2 E9 */	bl synthExit
/* 803B0CF4 003ADC54  38 00 00 00 */	li r0, 0
/* 803B0CF8 003ADC58  98 0D AE 48 */	stb r0, sndActive@sda21(r13)
/* 803B0CFC 003ADC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B0D00 003ADC60  7C 08 03 A6 */	mtlr r0
/* 803B0D04 003ADC64  38 21 00 10 */	addi r1, r1, 0x10
/* 803B0D08 003ADC68  4E 80 00 20 */	blr 
