.include "macros.inc"

.section .text, "ax"

WriteCallback:
/* 803BD940 003BA8A0  7C 08 02 A6 */	mflr r0
/* 803BD944 003BA8A4  90 01 00 04 */	stw r0, 4(r1)
/* 803BD948 003BA8A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BD94C 003BA8AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BD950 003BA8B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BD954 003BA8B4  3B C3 00 00 */	addi r30, r3, 0
/* 803BD958 003BA8B8  3C 60 80 57 */	lis r3, lbl_80569A58@ha
/* 803BD95C 003BA8BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803BD960 003BA8C0  1C BE 01 10 */	mulli r5, r30, 0x110
/* 803BD964 003BA8C4  93 81 00 10 */	stw r28, 0x10(r1)
/* 803BD968 003BA8C8  38 03 9A 58 */	addi r0, r3, lbl_80569A58@l
/* 803BD96C 003BA8CC  7C 9C 23 79 */	or. r28, r4, r4
/* 803BD970 003BA8D0  7F E0 2A 14 */	add r31, r0, r5
/* 803BD974 003BA8D4  41 80 00 F0 */	blt lbl_803BDA64
/* 803BD978 003BA8D8  83 BF 00 C0 */	lwz r29, 0xc0(r31)
/* 803BD97C 003BA8DC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 803BD980 003BA8E0  2C 03 00 00 */	cmpwi r3, 0
/* 803BD984 003BA8E4  40 80 00 0C */	bge lbl_803BD990
/* 803BD988 003BA8E8  3B 80 FF F2 */	li r28, -14
/* 803BD98C 003BA8EC  48 00 00 D8 */	b lbl_803BDA64
lbl_803BD990:
/* 803BD990 003BA8F0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803BD994 003BA8F4  7C 00 18 50 */	subf r0, r0, r3
/* 803BD998 003BA8F8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 803BD99C 003BA8FC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803BD9A0 003BA900  2C 00 00 00 */	cmpwi r0, 0
/* 803BD9A4 003BA904  41 81 00 54 */	bgt lbl_803BD9F8
/* 803BD9A8 003BA908  7F E3 FB 78 */	mr r3, r31
/* 803BD9AC 003BA90C  4B FF CF C5 */	bl __CARDGetDirBlock
/* 803BD9B0 003BA910  80 BD 00 04 */	lwz r5, 4(r29)
/* 803BD9B4 003BA914  3C 80 80 00 */	lis r4, 0x800000F8@ha
/* 803BD9B8 003BA918  80 04 00 F8 */	lwz r0, 0x800000F8@l(r4)
/* 803BD9BC 003BA91C  54 A4 30 32 */	slwi r4, r5, 6
/* 803BD9C0 003BA920  7F 83 22 14 */	add r28, r3, r4
/* 803BD9C4 003BA924  54 1D F0 BE */	srwi r29, r0, 2
/* 803BD9C8 003BA928  4B FC 79 E1 */	bl OSGetTime
/* 803BD9CC 003BA92C  38 DD 00 00 */	addi r6, r29, 0
/* 803BD9D0 003BA930  38 A0 00 00 */	li r5, 0
/* 803BD9D4 003BA934  4B FC C1 F9 */	bl __div2i
/* 803BD9D8 003BA938  90 9C 00 28 */	stw r4, 0x28(r28)
/* 803BD9DC 003BA93C  38 00 00 00 */	li r0, 0
/* 803BD9E0 003BA940  38 7E 00 00 */	addi r3, r30, 0
/* 803BD9E4 003BA944  80 9F 00 D0 */	lwz r4, 0xd0(r31)
/* 803BD9E8 003BA948  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 803BD9EC 003BA94C  4B FF D1 25 */	bl __CARDUpdateDir
/* 803BD9F0 003BA950  7C 7C 1B 78 */	mr r28, r3
/* 803BD9F4 003BA954  48 00 00 68 */	b lbl_803BDA5C
lbl_803BD9F8:
/* 803BD9F8 003BA958  7F E3 FB 78 */	mr r3, r31
/* 803BD9FC 003BA95C  4B FF CB 71 */	bl __CARDGetFatBlock
/* 803BDA00 003BA960  80 9D 00 08 */	lwz r4, 8(r29)
/* 803BDA04 003BA964  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803BDA08 003BA968  7C 04 02 14 */	add r0, r4, r0
/* 803BDA0C 003BA96C  90 1D 00 08 */	stw r0, 8(r29)
/* 803BDA10 003BA970  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 803BDA14 003BA974  54 00 08 3C */	slwi r0, r0, 1
/* 803BDA18 003BA978  7C 03 02 2E */	lhzx r0, r3, r0
/* 803BDA1C 003BA97C  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 803BDA20 003BA980  A0 9D 00 10 */	lhz r4, 0x10(r29)
/* 803BDA24 003BA984  28 04 00 05 */	cmplwi r4, 5
/* 803BDA28 003BA988  41 80 00 10 */	blt lbl_803BDA38
/* 803BDA2C 003BA98C  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 803BDA30 003BA990  7C 04 00 40 */	cmplw r4, r0
/* 803BDA34 003BA994  41 80 00 0C */	blt lbl_803BDA40
lbl_803BDA38:
/* 803BDA38 003BA998  3B 80 FF FA */	li r28, -6
/* 803BDA3C 003BA99C  48 00 00 28 */	b lbl_803BDA64
lbl_803BDA40:
/* 803BDA40 003BA9A0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803BDA44 003BA9A4  3C 60 80 3C */	lis r3, EraseCallback@ha
/* 803BDA48 003BA9A8  38 A3 DA B0 */	addi r5, r3, EraseCallback@l
/* 803BDA4C 003BA9AC  7C 80 21 D6 */	mullw r4, r0, r4
/* 803BDA50 003BA9B0  38 7E 00 00 */	addi r3, r30, 0
/* 803BDA54 003BA9B4  4B FF B1 81 */	bl __CARDEraseSector
/* 803BDA58 003BA9B8  7C 7C 1B 78 */	mr r28, r3
lbl_803BDA5C:
/* 803BDA5C 003BA9BC  2C 1C 00 00 */	cmpwi r28, 0
/* 803BDA60 003BA9C0  40 80 00 30 */	bge lbl_803BDA90
lbl_803BDA64:
/* 803BDA64 003BA9C4  83 BF 00 D0 */	lwz r29, 0xd0(r31)
/* 803BDA68 003BA9C8  38 00 00 00 */	li r0, 0
/* 803BDA6C 003BA9CC  38 7F 00 00 */	addi r3, r31, 0
/* 803BDA70 003BA9D0  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 803BDA74 003BA9D4  7F 84 E3 78 */	mr r4, r28
/* 803BDA78 003BA9D8  4B FF B3 E1 */	bl __CARDPutControlBlock
/* 803BDA7C 003BA9DC  39 9D 00 00 */	addi r12, r29, 0
/* 803BDA80 003BA9E0  7D 88 03 A6 */	mtlr r12
/* 803BDA84 003BA9E4  38 7E 00 00 */	addi r3, r30, 0
/* 803BDA88 003BA9E8  38 9C 00 00 */	addi r4, r28, 0
/* 803BDA8C 003BA9EC  4E 80 00 21 */	blrl 
lbl_803BDA90:
/* 803BDA90 003BA9F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BDA94 003BA9F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BDA98 003BA9F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BDA9C 003BA9FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803BDAA0 003BAA00  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803BDAA4 003BAA04  38 21 00 20 */	addi r1, r1, 0x20
/* 803BDAA8 003BAA08  7C 08 03 A6 */	mtlr r0
/* 803BDAAC 003BAA0C  4E 80 00 20 */	blr 

EraseCallback:
/* 803BDAB0 003BAA10  7C 08 02 A6 */	mflr r0
/* 803BDAB4 003BAA14  90 01 00 04 */	stw r0, 4(r1)
/* 803BDAB8 003BAA18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BDABC 003BAA1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BDAC0 003BAA20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BDAC4 003BAA24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803BDAC8 003BAA28  7C 9D 23 79 */	or. r29, r4, r4
/* 803BDACC 003BAA2C  93 81 00 10 */	stw r28, 0x10(r1)
/* 803BDAD0 003BAA30  3B 83 00 00 */	addi r28, r3, 0
/* 803BDAD4 003BAA34  1C BC 01 10 */	mulli r5, r28, 0x110
/* 803BDAD8 003BAA38  3C 60 80 57 */	lis r3, lbl_80569A58@ha
/* 803BDADC 003BAA3C  38 03 9A 58 */	addi r0, r3, lbl_80569A58@l
/* 803BDAE0 003BAA40  7F E0 2A 14 */	add r31, r0, r5
/* 803BDAE4 003BAA44  41 80 00 30 */	blt lbl_803BDB14
/* 803BDAE8 003BAA48  80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 803BDAEC 003BAA4C  3C 60 80 3C */	lis r3, WriteCallback@ha
/* 803BDAF0 003BAA50  38 E3 D9 40 */	addi r7, r3, WriteCallback@l
/* 803BDAF4 003BAA54  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 803BDAF8 003BAA58  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 803BDAFC 003BAA5C  80 DF 00 B4 */	lwz r6, 0xb4(r31)
/* 803BDB00 003BAA60  38 7C 00 00 */	addi r3, r28, 0
/* 803BDB04 003BAA64  7C 85 01 D6 */	mullw r4, r5, r0
/* 803BDB08 003BAA68  4B FF CA 01 */	bl __CARDWrite
/* 803BDB0C 003BAA6C  7C 7D 1B 79 */	or. r29, r3, r3
/* 803BDB10 003BAA70  40 80 00 30 */	bge lbl_803BDB40
lbl_803BDB14:
/* 803BDB14 003BAA74  83 DF 00 D0 */	lwz r30, 0xd0(r31)
/* 803BDB18 003BAA78  38 00 00 00 */	li r0, 0
/* 803BDB1C 003BAA7C  38 7F 00 00 */	addi r3, r31, 0
/* 803BDB20 003BAA80  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 803BDB24 003BAA84  7F A4 EB 78 */	mr r4, r29
/* 803BDB28 003BAA88  4B FF B3 31 */	bl __CARDPutControlBlock
/* 803BDB2C 003BAA8C  39 9E 00 00 */	addi r12, r30, 0
/* 803BDB30 003BAA90  7D 88 03 A6 */	mtlr r12
/* 803BDB34 003BAA94  38 7C 00 00 */	addi r3, r28, 0
/* 803BDB38 003BAA98  38 9D 00 00 */	addi r4, r29, 0
/* 803BDB3C 003BAA9C  4E 80 00 21 */	blrl 
lbl_803BDB40:
/* 803BDB40 003BAAA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BDB44 003BAAA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BDB48 003BAAA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BDB4C 003BAAAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803BDB50 003BAAB0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803BDB54 003BAAB4  38 21 00 20 */	addi r1, r1, 0x20
/* 803BDB58 003BAAB8  7C 08 03 A6 */	mtlr r0
/* 803BDB5C 003BAABC  4E 80 00 20 */	blr 

.global CARDWriteAsync
CARDWriteAsync:
/* 803BDB60 003BAAC0  7C 08 02 A6 */	mflr r0
/* 803BDB64 003BAAC4  90 01 00 04 */	stw r0, 4(r1)
/* 803BDB68 003BAAC8  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 803BDB6C 003BAACC  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 803BDB70 003BAAD0  3B 86 00 00 */	addi r28, r6, 0
/* 803BDB74 003BAAD4  3B 65 00 00 */	addi r27, r5, 0
/* 803BDB78 003BAAD8  3B E4 00 00 */	addi r31, r4, 0
/* 803BDB7C 003BAADC  3B C3 00 00 */	addi r30, r3, 0
/* 803BDB80 003BAAE0  3B A7 00 00 */	addi r29, r7, 0
/* 803BDB84 003BAAE4  38 9B 00 00 */	addi r4, r27, 0
/* 803BDB88 003BAAE8  38 BC 00 00 */	addi r5, r28, 0
/* 803BDB8C 003BAAEC  38 C1 00 1C */	addi r6, r1, 0x1c
/* 803BDB90 003BAAF0  4B FF F9 81 */	bl __CARDSeek
/* 803BDB94 003BAAF4  2C 03 00 00 */	cmpwi r3, 0
/* 803BDB98 003BAAF8  40 80 00 08 */	bge lbl_803BDBA0
/* 803BDB9C 003BAAFC  48 00 00 C4 */	b lbl_803BDC60
lbl_803BDBA0:
/* 803BDBA0 003BAB00  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BDBA4 003BAB04  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803BDBA8 003BAB08  38 84 FF FF */	addi r4, r4, -1
/* 803BDBAC 003BAB0C  7F 80 20 39 */	and. r0, r28, r4
/* 803BDBB0 003BAB10  40 82 00 0C */	bne lbl_803BDBBC
/* 803BDBB4 003BAB14  7F 60 20 39 */	and. r0, r27, r4
/* 803BDBB8 003BAB18  41 82 00 10 */	beq lbl_803BDBC8
lbl_803BDBBC:
/* 803BDBBC 003BAB1C  38 80 FF 80 */	li r4, -128
/* 803BDBC0 003BAB20  4B FF B2 99 */	bl __CARDPutControlBlock
/* 803BDBC4 003BAB24  48 00 00 9C */	b lbl_803BDC60
lbl_803BDBC8:
/* 803BDBC8 003BAB28  4B FF CD A9 */	bl __CARDGetDirBlock
/* 803BDBCC 003BAB2C  80 1E 00 04 */	lwz r0, 4(r30)
/* 803BDBD0 003BAB30  54 00 30 32 */	slwi r0, r0, 6
/* 803BDBD4 003BAB34  7C 83 02 14 */	add r4, r3, r0
/* 803BDBD8 003BAB38  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BDBDC 003BAB3C  4B FF F1 F9 */	bl __CARDAccess
/* 803BDBE0 003BAB40  7C 64 1B 79 */	or. r4, r3, r3
/* 803BDBE4 003BAB44  40 80 00 10 */	bge lbl_803BDBF4
/* 803BDBE8 003BAB48  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BDBEC 003BAB4C  4B FF B2 6D */	bl __CARDPutControlBlock
/* 803BDBF0 003BAB50  48 00 00 70 */	b lbl_803BDC60
lbl_803BDBF4:
/* 803BDBF4 003BAB54  38 7F 00 00 */	addi r3, r31, 0
/* 803BDBF8 003BAB58  38 9B 00 00 */	addi r4, r27, 0
/* 803BDBFC 003BAB5C  4B FC 0E E5 */	bl DCStoreRange
/* 803BDC00 003BAB60  28 1D 00 00 */	cmplwi r29, 0
/* 803BDC04 003BAB64  41 82 00 0C */	beq lbl_803BDC10
/* 803BDC08 003BAB68  7F A0 EB 78 */	mr r0, r29
/* 803BDC0C 003BAB6C  48 00 00 0C */	b lbl_803BDC18
lbl_803BDC10:
/* 803BDC10 003BAB70  3C 60 80 3B */	lis r3, __CARDDefaultApiCallback@ha
/* 803BDC14 003BAB74  38 03 7E 74 */	addi r0, r3, __CARDDefaultApiCallback@l
lbl_803BDC18:
/* 803BDC18 003BAB78  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803BDC1C 003BAB7C  3C 60 80 3C */	lis r3, EraseCallback@ha
/* 803BDC20 003BAB80  38 A3 DA B0 */	addi r5, r3, EraseCallback@l
/* 803BDC24 003BAB84  90 04 00 D0 */	stw r0, 0xd0(r4)
/* 803BDC28 003BAB88  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BDC2C 003BAB8C  93 E3 00 B4 */	stw r31, 0xb4(r3)
/* 803BDC30 003BAB90  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BDC34 003BAB94  A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 803BDC38 003BAB98  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803BDC3C 003BAB9C  80 7E 00 00 */	lwz r3, 0(r30)
/* 803BDC40 003BABA0  7C 84 01 D6 */	mullw r4, r4, r0
/* 803BDC44 003BABA4  4B FF AF 91 */	bl __CARDEraseSector
/* 803BDC48 003BABA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 803BDC4C 003BABAC  40 80 00 10 */	bge lbl_803BDC5C
/* 803BDC50 003BABB0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803BDC54 003BABB4  7F C4 F3 78 */	mr r4, r30
/* 803BDC58 003BABB8  4B FF B2 01 */	bl __CARDPutControlBlock
lbl_803BDC5C:
/* 803BDC5C 003BABBC  7F C3 F3 78 */	mr r3, r30
lbl_803BDC60:
/* 803BDC60 003BABC0  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 803BDC64 003BABC4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803BDC68 003BABC8  38 21 00 38 */	addi r1, r1, 0x38
/* 803BDC6C 003BABCC  7C 08 03 A6 */	mtlr r0
/* 803BDC70 003BABD0  4E 80 00 20 */	blr 
