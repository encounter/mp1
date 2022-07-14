.include "macros.inc"

.section .data

.global lbl_803EE3B8
lbl_803EE3B8:
	# ROM: 0x3EB3B8
	.4byte 0
	.4byte 0
	.4byte __dt__13COutputStreamFv
	.4byte 0

.section .text, "ax"

.global WriteBits__13COutputStreamFii
WriteBits__13COutputStreamFii:
/* 8033F3BC 0033C31C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F3C0 0033C320  7C 08 02 A6 */	mflr r0
/* 8033F3C4 0033C324  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033F3C8 0033C328  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F3CC 0033C32C  7C 9F 23 78 */	mr r31, r4
/* 8033F3D0 0033C330  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F3D4 0033C334  7C 7E 1B 78 */	mr r30, r3
/* 8033F3D8 0033C338  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033F3DC 0033C33C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8033F3E0 0033C340  7C 03 28 40 */	cmplw r3, r5
/* 8033F3E4 0033C344  41 80 00 44 */	blt lbl_8033F428
/* 8033F3E8 0033C348  28 05 00 20 */	cmplwi r5, 0x20
/* 8033F3EC 0033C34C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8033F3F0 0033C350  7C C5 18 50 */	subf r6, r5, r3
/* 8033F3F4 0033C354  38 00 FF FF */	li r0, -1
/* 8033F3F8 0033C358  41 82 00 10 */	beq lbl_8033F408
/* 8033F3FC 0033C35C  38 00 00 01 */	li r0, 1
/* 8033F400 0033C360  7C 03 28 30 */	slw r3, r0, r5
/* 8033F404 0033C364  38 03 FF FF */	addi r0, r3, -1
lbl_8033F408:
/* 8033F408 0033C368  7F E0 00 38 */	and r0, r31, r0
/* 8033F40C 0033C36C  7C 00 30 30 */	slw r0, r0, r6
/* 8033F410 0033C370  7C 80 03 78 */	or r0, r4, r0
/* 8033F414 0033C374  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8033F418 0033C378  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8033F41C 0033C37C  7C 05 00 50 */	subf r0, r5, r0
/* 8033F420 0033C380  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8033F424 0033C384  48 00 00 78 */	b lbl_8033F49C
lbl_8033F428:
/* 8033F428 0033C388  28 03 00 20 */	cmplwi r3, 0x20
/* 8033F42C 0033C38C  7F A3 28 50 */	subf r29, r3, r5
/* 8033F430 0033C390  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8033F434 0033C394  7F E5 EC 30 */	srw r5, r31, r29
/* 8033F438 0033C398  38 00 FF FF */	li r0, -1
/* 8033F43C 0033C39C  41 82 00 10 */	beq lbl_8033F44C
/* 8033F440 0033C3A0  38 00 00 01 */	li r0, 1
/* 8033F444 0033C3A4  7C 03 18 30 */	slw r3, r0, r3
/* 8033F448 0033C3A8  38 03 FF FF */	addi r0, r3, -1
lbl_8033F44C:
/* 8033F44C 0033C3AC  7C A3 00 38 */	and r3, r5, r0
/* 8033F450 0033C3B0  38 00 00 00 */	li r0, 0
/* 8033F454 0033C3B4  7C 84 1B 78 */	or r4, r4, r3
/* 8033F458 0033C3B8  7F C3 F3 78 */	mr r3, r30
/* 8033F45C 0033C3BC  90 9E 00 14 */	stw r4, 0x14(r30)
/* 8033F460 0033C3C0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8033F464 0033C3C4  48 00 00 55 */	bl FlushShiftRegister__13COutputStreamFv
/* 8033F468 0033C3C8  28 1D 00 20 */	cmplwi r29, 0x20
/* 8033F46C 0033C3CC  20 9D 00 20 */	subfic r4, r29, 0x20
/* 8033F470 0033C3D0  38 00 FF FF */	li r0, -1
/* 8033F474 0033C3D4  41 82 00 10 */	beq lbl_8033F484
/* 8033F478 0033C3D8  38 00 00 01 */	li r0, 1
/* 8033F47C 0033C3DC  7C 03 E8 30 */	slw r3, r0, r29
/* 8033F480 0033C3E0  38 03 FF FF */	addi r0, r3, -1
lbl_8033F484:
/* 8033F484 0033C3E4  7F E0 00 38 */	and r0, r31, r0
/* 8033F488 0033C3E8  7C 00 20 30 */	slw r0, r0, r4
/* 8033F48C 0033C3EC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8033F490 0033C3F0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8033F494 0033C3F4  7C 1D 00 50 */	subf r0, r29, r0
/* 8033F498 0033C3F8  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_8033F49C:
/* 8033F49C 0033C3FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F4A0 0033C400  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F4A4 0033C404  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F4A8 0033C408  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033F4AC 0033C40C  7C 08 03 A6 */	mtlr r0
/* 8033F4B0 0033C410  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F4B4 0033C414  4E 80 00 20 */	blr 

.global FlushShiftRegister__13COutputStreamFv
FlushShiftRegister__13COutputStreamFv:
/* 8033F4B8 0033C418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F4BC 0033C41C  7C 08 02 A6 */	mflr r0
/* 8033F4C0 0033C420  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F4C4 0033C424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F4C8 0033C428  7C 7F 1B 78 */	mr r31, r3
/* 8033F4CC 0033C42C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8033F4D0 0033C430  28 00 00 20 */	cmplwi r0, 0x20
/* 8033F4D4 0033C434  40 80 00 3C */	bge lbl_8033F510
/* 8033F4D8 0033C438  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8033F4DC 0033C43C  38 9F 00 14 */	addi r4, r31, 0x14
/* 8033F4E0 0033C440  20 C0 00 20 */	subfic r6, r0, 0x20
/* 8033F4E4 0033C444  54 C5 07 7E */	clrlwi r5, r6, 0x1d
/* 8033F4E8 0033C448  7C 05 00 D0 */	neg r0, r5
/* 8033F4EC 0033C44C  54 C6 E8 FE */	srwi r6, r6, 3
/* 8033F4F0 0033C450  7C 00 2B 78 */	or r0, r0, r5
/* 8033F4F4 0033C454  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8033F4F8 0033C458  7C A6 02 14 */	add r5, r6, r0
/* 8033F4FC 0033C45C  48 00 00 AD */	bl DoPut__13COutputStreamFPCvUl
/* 8033F500 0033C460  38 60 00 00 */	li r3, 0
/* 8033F504 0033C464  38 00 00 20 */	li r0, 0x20
/* 8033F508 0033C468  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8033F50C 0033C46C  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8033F510:
/* 8033F510 0033C470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F514 0033C474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F518 0033C478  7C 08 03 A6 */	mtlr r0
/* 8033F51C 0033C47C  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F520 0033C480  4E 80 00 20 */	blr 

.global DoFlush__13COutputStreamFv
DoFlush__13COutputStreamFv:
/* 8033F524 0033C484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F528 0033C488  7C 08 02 A6 */	mflr r0
/* 8033F52C 0033C48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F530 0033C490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F534 0033C494  7C 7F 1B 78 */	mr r31, r3
/* 8033F538 0033C498  80 A3 00 04 */	lwz r5, 4(r3)
/* 8033F53C 0033C49C  28 05 00 00 */	cmplwi r5, 0
/* 8033F540 0033C4A0  41 82 00 20 */	beq lbl_8033F560
/* 8033F544 0033C4A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8033F548 0033C4A8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8033F54C 0033C4AC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8033F550 0033C4B0  7D 89 03 A6 */	mtctr r12
/* 8033F554 0033C4B4  4E 80 04 21 */	bctrl 
/* 8033F558 0033C4B8  38 00 00 00 */	li r0, 0
/* 8033F55C 0033C4BC  90 1F 00 04 */	stw r0, 4(r31)
lbl_8033F560:
/* 8033F560 0033C4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F564 0033C4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F568 0033C4C8  7C 08 03 A6 */	mtlr r0
/* 8033F56C 0033C4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F570 0033C4D0  4E 80 00 20 */	blr 

.global Flush__13COutputStreamFv
Flush__13COutputStreamFv:
/* 8033F574 0033C4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F578 0033C4D8  7C 08 02 A6 */	mflr r0
/* 8033F57C 0033C4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F580 0033C4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F584 0033C4E4  7C 7F 1B 78 */	mr r31, r3
/* 8033F588 0033C4E8  4B FF FF 31 */	bl FlushShiftRegister__13COutputStreamFv
/* 8033F58C 0033C4EC  7F E3 FB 78 */	mr r3, r31
/* 8033F590 0033C4F0  4B FF FF 95 */	bl DoFlush__13COutputStreamFv
/* 8033F594 0033C4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F598 0033C4F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F59C 0033C4FC  7C 08 03 A6 */	mtlr r0
/* 8033F5A0 0033C500  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F5A4 0033C504  4E 80 00 20 */	blr 

.global DoPut__13COutputStreamFPCvUl
DoPut__13COutputStreamFPCvUl:
/* 8033F5A8 0033C508  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F5AC 0033C50C  7C 08 02 A6 */	mflr r0
/* 8033F5B0 0033C510  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033F5B4 0033C514  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F5B8 0033C518  7C 7F 1B 78 */	mr r31, r3
/* 8033F5BC 0033C51C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F5C0 0033C520  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033F5C4 0033C524  93 81 00 10 */	stw r28, 0x10(r1)
/* 8033F5C8 0033C528  7C BC 2B 79 */	or. r28, r5, r5
/* 8033F5CC 0033C52C  41 82 00 A4 */	beq lbl_8033F670
/* 8033F5D0 0033C530  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8033F5D4 0033C534  7C 00 E2 14 */	add r0, r0, r28
/* 8033F5D8 0033C538  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8033F5DC 0033C53C  80 DF 00 04 */	lwz r6, 4(r31)
/* 8033F5E0 0033C540  80 1F 00 08 */	lwz r0, 8(r31)
/* 8033F5E4 0033C544  7C 7C 32 14 */	add r3, r28, r6
/* 8033F5E8 0033C548  7C 03 00 40 */	cmplw r3, r0
/* 8033F5EC 0033C54C  41 81 00 20 */	bgt lbl_8033F60C
/* 8033F5F0 0033C550  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8033F5F4 0033C554  7C 60 32 14 */	add r3, r0, r6
/* 8033F5F8 0033C558  4B CC 3E 99 */	bl memcpy
/* 8033F5FC 0033C55C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8033F600 0033C560  7C 00 E2 14 */	add r0, r0, r28
/* 8033F604 0033C564  90 1F 00 04 */	stw r0, 4(r31)
/* 8033F608 0033C568  48 00 00 68 */	b lbl_8033F670
lbl_8033F60C:
/* 8033F60C 0033C56C  7F A4 E2 14 */	add r29, r4, r28
/* 8033F610 0033C570  48 00 00 58 */	b lbl_8033F668
lbl_8033F614:
/* 8033F614 0033C574  80 7F 00 04 */	lwz r3, 4(r31)
/* 8033F618 0033C578  80 1F 00 08 */	lwz r0, 8(r31)
/* 8033F61C 0033C57C  7C 03 00 50 */	subf r0, r3, r0
/* 8033F620 0033C580  7C 1C 00 40 */	cmplw r28, r0
/* 8033F624 0033C584  7C 1E 03 78 */	mr r30, r0
/* 8033F628 0033C588  40 80 00 08 */	bge lbl_8033F630
/* 8033F62C 0033C58C  7F 9E E3 78 */	mr r30, r28
lbl_8033F630:
/* 8033F630 0033C590  28 1E 00 00 */	cmplwi r30, 0
/* 8033F634 0033C594  41 82 00 2C */	beq lbl_8033F660
/* 8033F638 0033C598  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8033F63C 0033C59C  7F C5 F3 78 */	mr r5, r30
/* 8033F640 0033C5A0  7C 9C E8 50 */	subf r4, r28, r29
/* 8033F644 0033C5A4  7C 60 1A 14 */	add r3, r0, r3
/* 8033F648 0033C5A8  4B CC 3E 49 */	bl memcpy
/* 8033F64C 0033C5AC  80 1F 00 04 */	lwz r0, 4(r31)
/* 8033F650 0033C5B0  7F 9E E0 50 */	subf r28, r30, r28
/* 8033F654 0033C5B4  7C 00 F2 14 */	add r0, r0, r30
/* 8033F658 0033C5B8  90 1F 00 04 */	stw r0, 4(r31)
/* 8033F65C 0033C5BC  48 00 00 0C */	b lbl_8033F668
lbl_8033F660:
/* 8033F660 0033C5C0  7F E3 FB 78 */	mr r3, r31
/* 8033F664 0033C5C4  4B FF FE C1 */	bl DoFlush__13COutputStreamFv
lbl_8033F668:
/* 8033F668 0033C5C8  28 1C 00 00 */	cmplwi r28, 0
/* 8033F66C 0033C5CC  40 82 FF A8 */	bne lbl_8033F614
lbl_8033F670:
/* 8033F670 0033C5D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F674 0033C5D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F678 0033C5D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F67C 0033C5DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033F680 0033C5E0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8033F684 0033C5E4  7C 08 03 A6 */	mtlr r0
/* 8033F688 0033C5E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F68C 0033C5EC  4E 80 00 20 */	blr 

.global __dt__13COutputStreamFv
__dt__13COutputStreamFv:
/* 8033F690 0033C5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F694 0033C5F4  7C 08 02 A6 */	mflr r0
/* 8033F698 0033C5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F69C 0033C5FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F6A0 0033C600  7C 9F 23 78 */	mr r31, r4
/* 8033F6A4 0033C604  93 C1 00 08 */	stw r30, 8(r1)
/* 8033F6A8 0033C608  7C 7E 1B 79 */	or. r30, r3, r3
/* 8033F6AC 0033C60C  41 82 00 34 */	beq lbl_8033F6E0
/* 8033F6B0 0033C610  3C 60 80 3F */	lis r3, lbl_803EE3B8@ha
/* 8033F6B4 0033C614  38 03 E3 B8 */	addi r0, r3, lbl_803EE3B8@l
/* 8033F6B8 0033C618  90 1E 00 00 */	stw r0, 0(r30)
/* 8033F6BC 0033C61C  80 1E 00 08 */	lwz r0, 8(r30)
/* 8033F6C0 0033C620  28 00 00 40 */	cmplwi r0, 0x40
/* 8033F6C4 0033C624  40 81 00 0C */	ble lbl_8033F6D0
/* 8033F6C8 0033C628  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8033F6CC 0033C62C  4B FD 62 65 */	bl Free__7CMemoryFPCv
lbl_8033F6D0:
/* 8033F6D0 0033C630  7F E0 07 35 */	extsh. r0, r31
/* 8033F6D4 0033C634  40 81 00 0C */	ble lbl_8033F6E0
/* 8033F6D8 0033C638  7F C3 F3 78 */	mr r3, r30
/* 8033F6DC 0033C63C  4B FD 62 55 */	bl Free__7CMemoryFPCv
lbl_8033F6E0:
/* 8033F6E0 0033C640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F6E4 0033C644  7F C3 F3 78 */	mr r3, r30
/* 8033F6E8 0033C648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F6EC 0033C64C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8033F6F0 0033C650  7C 08 03 A6 */	mtlr r0
/* 8033F6F4 0033C654  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F6F8 0033C658  4E 80 00 20 */	blr 

.global __ct__13COutputStreamFi
__ct__13COutputStreamFi:
/* 8033F6FC 0033C65C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F700 0033C660  7C 08 02 A6 */	mflr r0
/* 8033F704 0033C664  3C A0 80 3F */	lis r5, lbl_803EE3B8@ha
/* 8033F708 0033C668  2C 04 00 40 */	cmpwi r4, 0x40
/* 8033F70C 0033C66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F710 0033C670  38 00 00 00 */	li r0, 0
/* 8033F714 0033C674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F718 0033C678  7C 7F 1B 78 */	mr r31, r3
/* 8033F71C 0033C67C  38 65 E3 B8 */	addi r3, r5, lbl_803EE3B8@l
/* 8033F720 0033C680  90 7F 00 00 */	stw r3, 0(r31)
/* 8033F724 0033C684  90 1F 00 04 */	stw r0, 4(r31)
/* 8033F728 0033C688  90 9F 00 08 */	stw r4, 8(r31)
/* 8033F72C 0033C68C  40 81 00 1C */	ble lbl_8033F748
/* 8033F730 0033C690  3C A0 80 3D */	lis r5, lbl_803D7A70@ha
/* 8033F734 0033C694  7C 83 23 78 */	mr r3, r4
/* 8033F738 0033C698  38 85 7A 70 */	addi r4, r5, lbl_803D7A70@l
/* 8033F73C 0033C69C  38 A0 00 00 */	li r5, 0
/* 8033F740 0033C6A0  4B FD 60 D9 */	bl __nwa__FUlPCcPCc
/* 8033F744 0033C6A4  48 00 00 38 */	b lbl_8033F77C
lbl_8033F748:
/* 8033F748 0033C6A8  3C 60 08 42 */	lis r3, 0x08421085@ha
/* 8033F74C 0033C6AC  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8033F750 0033C6B0  38 03 10 85 */	addi r0, r3, 0x08421085@l
/* 8033F754 0033C6B4  7C 60 20 16 */	mulhwu r3, r0, r4
/* 8033F758 0033C6B8  7C 03 20 50 */	subf r0, r3, r4
/* 8033F75C 0033C6BC  54 00 F8 7E */	srwi r0, r0, 1
/* 8033F760 0033C6C0  7C 00 1A 14 */	add r0, r0, r3
/* 8033F764 0033C6C4  54 00 E1 3E */	srwi r0, r0, 4
/* 8033F768 0033C6C8  1C 00 00 1F */	mulli r0, r0, 0x1f
/* 8033F76C 0033C6CC  7C 00 20 50 */	subf r0, r0, r4
/* 8033F770 0033C6D0  20 60 00 20 */	subfic r3, r0, 0x20
/* 8033F774 0033C6D4  38 63 00 1C */	addi r3, r3, 0x1c
/* 8033F778 0033C6D8  7C 7F 1A 14 */	add r3, r31, r3
lbl_8033F77C:
/* 8033F77C 0033C6DC  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8033F780 0033C6E0  38 80 00 00 */	li r4, 0
/* 8033F784 0033C6E4  38 00 00 20 */	li r0, 0x20
/* 8033F788 0033C6E8  7F E3 FB 78 */	mr r3, r31
/* 8033F78C 0033C6EC  90 9F 00 10 */	stw r4, 0x10(r31)
/* 8033F790 0033C6F0  90 9F 00 14 */	stw r4, 0x14(r31)
/* 8033F794 0033C6F4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8033F798 0033C6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F79C 0033C6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F7A0 0033C700  7C 08 03 A6 */	mtlr r0
/* 8033F7A4 0033C704  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F7A8 0033C708  4E 80 00 20 */	blr
