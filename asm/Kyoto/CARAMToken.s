.include "macros.inc"

.section .text, "ax"

.global GetMRAMSafe__10CARAMTokenFv
GetMRAMSafe__10CARAMTokenFv:
/* 80358334 00355294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80358338 00355298  7C 08 02 A6 */	mflr r0
/* 8035833C 0035529C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358340 003552A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358344 003552A4  7C 7F 1B 78 */	mr r31, r3
/* 80358348 003552A8  80 03 00 00 */	lwz r0, 0(r3)
/* 8035834C 003552AC  2C 00 00 01 */	cmpwi r0, 1
/* 80358350 003552B0  40 82 00 0C */	bne lbl_8035835C
/* 80358354 003552B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80358358 003552B8  48 00 00 1C */	b lbl_80358374
lbl_8035835C:
/* 8035835C 003552BC  48 00 04 11 */	bl LoadToMRAM__10CARAMTokenFv
lbl_80358360:
/* 80358360 003552C0  7F E3 FB 78 */	mr r3, r31
/* 80358364 003552C4  48 00 02 45 */	bl RefreshStatus__10CARAMTokenFv
/* 80358368 003552C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035836C 003552CC  41 82 FF F4 */	beq lbl_80358360
/* 80358370 003552D0  80 7F 00 04 */	lwz r3, 4(r31)
lbl_80358374:
/* 80358374 003552D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358378 003552D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035837C 003552DC  7C 08 03 A6 */	mtlr r0
/* 80358380 003552E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80358384 003552E4  4E 80 00 20 */	blr

.global sub_80358388
sub_80358388:
/* 80358388 003552E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035838C 003552EC  7C 08 02 A6 */	mflr r0
/* 80358390 003552F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358394 003552F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358398 003552F8  7C 7F 1B 78 */	mr r31, r3
/* 8035839C 003552FC  80 03 00 00 */	lwz r0, 0(r3)
/* 803583A0 00355300  2C 00 00 02 */	cmpwi r0, 2
/* 803583A4 00355304  41 80 00 1C */	blt lbl_803583C0
/* 803583A8 00355308  2C 00 00 05 */	cmpwi r0, 5
/* 803583AC 0035530C  41 81 00 14 */	bgt lbl_803583C0
/* 803583B0 00355310  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803583B4 00355314  4B FE C3 95 */	bl WaitForDMACompletion__12CARAMManagerFUi
/* 803583B8 00355318  7F E3 FB 78 */	mr r3, r31
/* 803583BC 0035531C  48 00 01 ED */	bl RefreshStatus__10CARAMTokenFv
lbl_803583C0:
/* 803583C0 00355320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803583C4 00355324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803583C8 00355328  7C 08 03 A6 */	mtlr r0
/* 803583CC 0035532C  38 21 00 10 */	addi r1, r1, 0x10
/* 803583D0 00355330  4E 80 00 20 */	blr

.global sub_803583d4
sub_803583d4:
/* 803583D4 00355334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803583D8 00355338  7C 08 02 A6 */	mflr r0
/* 803583DC 0035533C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803583E0 00355340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803583E4 00355344  7C 7F 1B 78 */	mr r31, r3
/* 803583E8 00355348  4B FF FF 4D */	bl GetMRAMSafe__10CARAMTokenFv
/* 803583EC 0035534C  7C 60 1B 78 */	mr r0, r3
/* 803583F0 00355350  7F E3 FB 78 */	mr r3, r31
/* 803583F4 00355354  7C 1F 03 78 */	mr r31, r0
/* 803583F8 00355358  48 00 00 1D */	bl MakeInvalid__10CARAMTokenFv
/* 803583FC 0035535C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358400 00355360  7F E3 FB 78 */	mr r3, r31
/* 80358404 00355364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358408 00355368  7C 08 03 A6 */	mtlr r0
/* 8035840C 0035536C  38 21 00 10 */	addi r1, r1, 0x10
/* 80358410 00355370  4E 80 00 20 */	blr

.global MakeInvalid__10CARAMTokenFv
MakeInvalid__10CARAMTokenFv:
/* 80358414 00355374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80358418 00355378  7C 08 02 A6 */	mflr r0
/* 8035841C 0035537C  38 80 00 06 */	li r4, 6
/* 80358420 00355380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358424 00355384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358428 00355388  7C 7F 1B 78 */	mr r31, r3
/* 8035842C 0035538C  48 00 00 7D */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
/* 80358430 00355390  38 80 00 00 */	li r4, 0
/* 80358434 00355394  80 62 CB A8 */	lwz r3, lbl_805AE8C8@sda21(r2)
/* 80358438 00355398  90 9F 00 04 */	stw r4, 4(r31)
/* 8035843C 0035539C  80 02 CB AC */	lwz r0, lbl_805AE8CC@sda21(r2)
/* 80358440 003553A0  90 7F 00 08 */	stw r3, 8(r31)
/* 80358444 003553A4  90 9F 00 0C */	stw r4, 0xc(r31)
/* 80358448 003553A8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8035844C 003553AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358450 003553B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358454 003553B4  7C 08 03 A6 */	mtlr r0
/* 80358458 003553B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8035845C 003553BC  4E 80 00 20 */	blr

.global RemoveFromList__10CARAMTokenFv
RemoveFromList__10CARAMTokenFv:
/* 80358460 003553C0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80358464 003553C4  28 04 00 00 */	cmplwi r4, 0
/* 80358468 003553C8  40 82 00 20 */	bne lbl_80358488
/* 8035846C 003553CC  80 03 00 00 */	lwz r0, 0(r3)
/* 80358470 003553D0  3C 80 80 5A */	lis r4, lbl_805A680C@ha
/* 80358474 003553D4  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80358478 003553D8  38 84 68 0C */	addi r4, r4, lbl_805A680C@l
/* 8035847C 003553DC  54 00 10 3A */	slwi r0, r0, 2
/* 80358480 003553E0  7C A4 01 2E */	stwx r5, r4, r0
/* 80358484 003553E4  48 00 00 0C */	b lbl_80358490
lbl_80358488:
/* 80358488 003553E8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8035848C 003553EC  90 04 00 18 */	stw r0, 0x18(r4)
lbl_80358490:
/* 80358490 003553F0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80358494 003553F4  28 04 00 00 */	cmplwi r4, 0
/* 80358498 003553F8  4D 82 00 20 */	beqlr
/* 8035849C 003553FC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803584A0 00355400  90 04 00 14 */	stw r0, 0x14(r4)
/* 803584A4 00355404  4E 80 00 20 */	blr

.global MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
MoveToList__10CARAMTokenFQ210CARAMToken7EStatus:
/* 803584A8 00355408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803584AC 0035540C  7C 08 02 A6 */	mflr r0
/* 803584B0 00355410  90 01 00 14 */	stw r0, 0x14(r1)
/* 803584B4 00355414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803584B8 00355418  7C 9F 23 78 */	mr r31, r4
/* 803584BC 0035541C  93 C1 00 08 */	stw r30, 8(r1)
/* 803584C0 00355420  7C 7E 1B 78 */	mr r30, r3
/* 803584C4 00355424  80 03 00 00 */	lwz r0, 0(r3)
/* 803584C8 00355428  7C 00 F8 00 */	cmpw r0, r31
/* 803584CC 0035542C  41 82 00 14 */	beq lbl_803584E0
/* 803584D0 00355430  4B FF FF 91 */	bl RemoveFromList__10CARAMTokenFv
/* 803584D4 00355434  93 FE 00 00 */	stw r31, 0(r30)
/* 803584D8 00355438  7F C3 F3 78 */	mr r3, r30
/* 803584DC 0035543C  48 00 00 1D */	bl InitiallyMoveToList__10CARAMTokenFv
lbl_803584E0:
/* 803584E0 00355440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803584E4 00355444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803584E8 00355448  83 C1 00 08 */	lwz r30, 8(r1)
/* 803584EC 0035544C  7C 08 03 A6 */	mtlr r0
/* 803584F0 00355450  38 21 00 10 */	addi r1, r1, 0x10
/* 803584F4 00355454  4E 80 00 20 */	blr

.global InitiallyMoveToList__10CARAMTokenFv
InitiallyMoveToList__10CARAMTokenFv:
/* 803584F8 00355458  38 00 00 00 */	li r0, 0
/* 803584FC 0035545C  3C 80 80 5A */	lis r4, lbl_805A680C@ha
/* 80358500 00355460  90 03 00 14 */	stw r0, 0x14(r3)
/* 80358504 00355464  38 84 68 0C */	addi r4, r4, lbl_805A680C@l
/* 80358508 00355468  80 03 00 00 */	lwz r0, 0(r3)
/* 8035850C 0035546C  54 00 10 3A */	slwi r0, r0, 2
/* 80358510 00355470  7C 04 00 2E */	lwzx r0, r4, r0
/* 80358514 00355474  90 03 00 18 */	stw r0, 0x18(r3)
/* 80358518 00355478  80 03 00 00 */	lwz r0, 0(r3)
/* 8035851C 0035547C  54 00 10 3A */	slwi r0, r0, 2
/* 80358520 00355480  7C 64 01 2E */	stwx r3, r4, r0
/* 80358524 00355484  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80358528 00355488  28 04 00 00 */	cmplwi r4, 0
/* 8035852C 0035548C  4D 82 00 20 */	beqlr
/* 80358530 00355490  90 64 00 14 */	stw r3, 0x14(r4)
/* 80358534 00355494  4E 80 00 20 */	blr

.global UpdateAllDMAs__10CARAMTokenFv
UpdateAllDMAs__10CARAMTokenFv:
/* 80358538 00355498  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035853C 0035549C  7C 08 02 A6 */	mflr r0
/* 80358540 003554A0  3C 60 80 5A */	lis r3, lbl_805A680C@ha
/* 80358544 003554A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80358548 003554A8  38 63 68 0C */	addi r3, r3, lbl_805A680C@l
/* 8035854C 003554AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80358550 003554B0  3B E3 00 08 */	addi r31, r3, 8
/* 80358554 003554B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80358558 003554B8  3B C0 00 02 */	li r30, 2
/* 8035855C 003554BC  93 A1 00 14 */	stw r29, 0x14(r1)
lbl_80358560:
/* 80358560 003554C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80358564 003554C4  48 00 00 10 */	b lbl_80358574
lbl_80358568:
/* 80358568 003554C8  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 8035856C 003554CC  48 00 00 3D */	bl RefreshStatus__10CARAMTokenFv
/* 80358570 003554D0  7F A3 EB 78 */	mr r3, r29
lbl_80358574:
/* 80358574 003554D4  28 03 00 00 */	cmplwi r3, 0
/* 80358578 003554D8  40 82 FF F0 */	bne lbl_80358568
/* 8035857C 003554DC  3B DE 00 01 */	addi r30, r30, 1
/* 80358580 003554E0  3B FF 00 04 */	addi r31, r31, 4
/* 80358584 003554E4  2C 1E 00 05 */	cmpwi r30, 5
/* 80358588 003554E8  40 81 FF D8 */	ble lbl_80358560
/* 8035858C 003554EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358590 003554F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358594 003554F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80358598 003554F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035859C 003554FC  7C 08 03 A6 */	mtlr r0
/* 803585A0 00355500  38 21 00 20 */	addi r1, r1, 0x20
/* 803585A4 00355504  4E 80 00 20 */	blr

.global RefreshStatus__10CARAMTokenFv
RefreshStatus__10CARAMTokenFv:
/* 803585A8 00355508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803585AC 0035550C  7C 08 02 A6 */	mflr r0
/* 803585B0 00355510  90 01 00 14 */	stw r0, 0x14(r1)
/* 803585B4 00355514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803585B8 00355518  7C 7F 1B 78 */	mr r31, r3
/* 803585BC 0035551C  80 03 00 00 */	lwz r0, 0(r3)
/* 803585C0 00355520  2C 00 00 01 */	cmpwi r0, 1
/* 803585C4 00355524  41 82 00 0C */	beq lbl_803585D0
/* 803585C8 00355528  2C 00 00 00 */	cmpwi r0, 0
/* 803585CC 0035552C  40 82 00 0C */	bne lbl_803585D8
lbl_803585D0:
/* 803585D0 00355530  38 60 00 01 */	li r3, 1
/* 803585D4 00355534  48 00 00 90 */	b lbl_80358664
lbl_803585D8:
/* 803585D8 00355538  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803585DC 0035553C  4B FE C1 E9 */	bl IsDMACompleted__12CARAMManagerFUi
/* 803585E0 00355540  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803585E4 00355544  40 82 00 0C */	bne lbl_803585F0
/* 803585E8 00355548  38 60 00 00 */	li r3, 0
/* 803585EC 0035554C  48 00 00 78 */	b lbl_80358664
lbl_803585F0:
/* 803585F0 00355550  80 02 CB AC */	lwz r0, lbl_805AE8CC@sda21(r2)
/* 803585F4 00355554  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803585F8 00355558  80 1F 00 00 */	lwz r0, 0(r31)
/* 803585FC 0035555C  2C 00 00 05 */	cmpwi r0, 5
/* 80358600 00355560  41 82 00 44 */	beq lbl_80358644
/* 80358604 00355564  40 80 00 5C */	bge lbl_80358660
/* 80358608 00355568  2C 00 00 02 */	cmpwi r0, 2
/* 8035860C 0035556C  41 82 00 38 */	beq lbl_80358644
/* 80358610 00355570  40 80 00 08 */	bge lbl_80358618
/* 80358614 00355574  48 00 00 4C */	b lbl_80358660
lbl_80358618:
/* 80358618 00355578  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 8035861C 0035557C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80358620 00355580  40 82 00 14 */	bne lbl_80358634
/* 80358624 00355584  80 7F 00 08 */	lwz r3, 8(r31)
/* 80358628 00355588  4B FE C4 95 */	bl Free__12CARAMManagerFPCv
/* 8035862C 0035558C  80 02 CB A8 */	lwz r0, lbl_805AE8C8@sda21(r2)
/* 80358630 00355590  90 1F 00 08 */	stw r0, 8(r31)
lbl_80358634:
/* 80358634 00355594  7F E3 FB 78 */	mr r3, r31
/* 80358638 00355598  38 80 00 01 */	li r4, 1
/* 8035863C 0035559C  4B FF FE 6D */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
/* 80358640 003555A0  48 00 00 20 */	b lbl_80358660
lbl_80358644:
/* 80358644 003555A4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80358648 003555A8  4B FB D2 E9 */	bl Free__7CMemoryFPCv
/* 8035864C 003555AC  38 00 00 00 */	li r0, 0
/* 80358650 003555B0  7F E3 FB 78 */	mr r3, r31
/* 80358654 003555B4  90 1F 00 04 */	stw r0, 4(r31)
/* 80358658 003555B8  38 80 00 00 */	li r4, 0
/* 8035865C 003555BC  4B FF FE 4D */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
lbl_80358660:
/* 80358660 003555C0  38 60 00 01 */	li r3, 1
lbl_80358664:
/* 80358664 003555C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358668 003555C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035866C 003555CC  7C 08 03 A6 */	mtlr r0
/* 80358670 003555D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80358674 003555D4  4E 80 00 20 */	blr

.global LoadToARAM__10CARAMTokenFv
LoadToARAM__10CARAMTokenFv:
/* 80358678 003555D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035867C 003555DC  7C 08 02 A6 */	mflr r0
/* 80358680 003555E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358684 003555E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358688 003555E8  7C 7F 1B 78 */	mr r31, r3
/* 8035868C 003555EC  80 03 00 00 */	lwz r0, 0(r3)
/* 80358690 003555F0  2C 00 00 03 */	cmpwi r0, 3
/* 80358694 003555F4  41 82 00 38 */	beq lbl_803586CC
/* 80358698 003555F8  40 80 00 1C */	bge lbl_803586B4
/* 8035869C 003555FC  2C 00 00 01 */	cmpwi r0, 1
/* 803586A0 00355600  41 82 00 60 */	beq lbl_80358700
/* 803586A4 00355604  40 80 00 AC */	bge lbl_80358750
/* 803586A8 00355608  2C 00 00 00 */	cmpwi r0, 0
/* 803586AC 0035560C  40 80 00 18 */	bge lbl_803586C4
/* 803586B0 00355610  48 00 00 A0 */	b lbl_80358750
lbl_803586B4:
/* 803586B4 00355614  2C 00 00 05 */	cmpwi r0, 5
/* 803586B8 00355618  41 82 00 0C */	beq lbl_803586C4
/* 803586BC 0035561C  40 80 00 94 */	bge lbl_80358750
/* 803586C0 00355620  48 00 00 34 */	b lbl_803586F4
lbl_803586C4:
/* 803586C4 00355624  38 60 00 01 */	li r3, 1
/* 803586C8 00355628  48 00 00 90 */	b lbl_80358758
lbl_803586CC:
/* 803586CC 0035562C  38 80 00 05 */	li r4, 5
/* 803586D0 00355630  4B FF FD D9 */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
/* 803586D4 00355634  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803586D8 00355638  4B FE BF E5 */	bl CancelDMA__12CARAMManagerFUi
/* 803586DC 0035563C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803586E0 00355640  41 82 00 0C */	beq lbl_803586EC
/* 803586E4 00355644  7F E3 FB 78 */	mr r3, r31
/* 803586E8 00355648  4B FF FE C1 */	bl RefreshStatus__10CARAMTokenFv
lbl_803586EC:
/* 803586EC 0035564C  38 60 00 01 */	li r3, 1
/* 803586F0 00355650  48 00 00 68 */	b lbl_80358758
lbl_803586F4:
/* 803586F4 00355654  38 80 00 02 */	li r4, 2
/* 803586F8 00355658  4B FF FD B1 */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
/* 803586FC 0035565C  48 00 00 54 */	b lbl_80358750
lbl_80358700:
/* 80358700 00355660  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 80358704 00355664  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80358708 00355668  40 82 00 3C */	bne lbl_80358744
/* 8035870C 0035566C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80358710 00355670  4B FE C5 19 */	bl Alloc__12CARAMManagerFUi
/* 80358714 00355674  90 7F 00 08 */	stw r3, 8(r31)
/* 80358718 00355678  80 02 CB A8 */	lwz r0, lbl_805AE8C8@sda21(r2)
/* 8035871C 0035567C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80358720 00355680  7C 00 20 40 */	cmplw r0, r4
/* 80358724 00355684  40 82 00 0C */	bne lbl_80358730
/* 80358728 00355688  38 60 00 00 */	li r3, 0
/* 8035872C 0035568C  48 00 00 2C */	b lbl_80358758
lbl_80358730:
/* 80358730 00355690  80 7F 00 04 */	lwz r3, 4(r31)
/* 80358734 00355694  38 C0 00 01 */	li r6, 1
/* 80358738 00355698  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8035873C 0035569C  4B FE C2 4D */	bl DMAToARAM__12CARAMManagerFPvPvUiQ212CARAMManager12EDMAPriority
/* 80358740 003556A0  90 7F 00 10 */	stw r3, 0x10(r31)
lbl_80358744:
/* 80358744 003556A4  7F E3 FB 78 */	mr r3, r31
/* 80358748 003556A8  38 80 00 02 */	li r4, 2
/* 8035874C 003556AC  4B FF FD 5D */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
lbl_80358750:
/* 80358750 003556B0  7F E3 FB 78 */	mr r3, r31
/* 80358754 003556B4  4B FF FE 55 */	bl RefreshStatus__10CARAMTokenFv
lbl_80358758:
/* 80358758 003556B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035875C 003556BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358760 003556C0  7C 08 03 A6 */	mtlr r0
/* 80358764 003556C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80358768 003556C8  4E 80 00 20 */	blr

.global LoadToMRAM__10CARAMTokenFv
LoadToMRAM__10CARAMTokenFv:
/* 8035876C 003556CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80358770 003556D0  7C 08 02 A6 */	mflr r0
/* 80358774 003556D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80358778 003556D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035877C 003556DC  7C 7F 1B 78 */	mr r31, r3
/* 80358780 003556E0  80 03 00 00 */	lwz r0, 0(r3)
/* 80358784 003556E4  2C 00 00 03 */	cmpwi r0, 3
/* 80358788 003556E8  41 82 00 D0 */	beq lbl_80358858
/* 8035878C 003556EC  40 80 00 1C */	bge lbl_803587A8
/* 80358790 003556F0  2C 00 00 01 */	cmpwi r0, 1
/* 80358794 003556F4  41 82 00 20 */	beq lbl_803587B4
/* 80358798 003556F8  40 80 00 24 */	bge lbl_803587BC
/* 8035879C 003556FC  2C 00 00 00 */	cmpwi r0, 0
/* 803587A0 00355700  40 80 00 50 */	bge lbl_803587F0
/* 803587A4 00355704  48 00 00 B4 */	b lbl_80358858
lbl_803587A8:
/* 803587A8 00355708  2C 00 00 05 */	cmpwi r0, 5
/* 803587AC 0035570C  41 82 00 38 */	beq lbl_803587E4
/* 803587B0 00355710  40 80 00 A8 */	bge lbl_80358858
lbl_803587B4:
/* 803587B4 00355714  38 60 00 01 */	li r3, 1
/* 803587B8 00355718  48 00 00 A8 */	b lbl_80358860
lbl_803587BC:
/* 803587BC 0035571C  38 80 00 04 */	li r4, 4
/* 803587C0 00355720  4B FF FC E9 */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
/* 803587C4 00355724  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803587C8 00355728  4B FE BE F5 */	bl CancelDMA__12CARAMManagerFUi
/* 803587CC 0035572C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803587D0 00355730  41 82 00 0C */	beq lbl_803587DC
/* 803587D4 00355734  7F E3 FB 78 */	mr r3, r31
/* 803587D8 00355738  4B FF FD D1 */	bl RefreshStatus__10CARAMTokenFv
lbl_803587DC:
/* 803587DC 0035573C  38 60 00 01 */	li r3, 1
/* 803587E0 00355740  48 00 00 80 */	b lbl_80358860
lbl_803587E4:
/* 803587E4 00355744  38 80 00 03 */	li r4, 3
/* 803587E8 00355748  4B FF FC C1 */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
/* 803587EC 0035574C  48 00 00 6C */	b lbl_80358858
lbl_803587F0:
/* 803587F0 00355750  3C 60 80 3E */	lis r3, lbl_803D8338@ha
/* 803587F4 00355754  3C 80 80 3D */	lis r4, lbl_803D6AA8@ha
/* 803587F8 00355758  38 A3 83 38 */	addi r5, r3, lbl_803D8338@l
/* 803587FC 0035575C  38 C4 6A A8 */	addi r6, r4, lbl_803D6AA8@l
/* 80358800 00355760  38 61 00 08 */	addi r3, r1, 8
/* 80358804 00355764  38 80 FF FF */	li r4, -1
/* 80358808 00355768  4B F7 DB CD */	bl __ct__10CCallStackFUiPCcPCc
/* 8035880C 0035576C  7C 67 1B 78 */	mr r7, r3
/* 80358810 00355770  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80358814 00355774  38 80 00 02 */	li r4, 2
/* 80358818 00355778  38 A0 00 01 */	li r5, 1
/* 8035881C 0035577C  38 C0 00 00 */	li r6, 0
/* 80358820 00355780  4B FB D1 75 */	bl Alloc__7CMemoryFUlQ210IAllocator5EHintQ210IAllocator6EScopeQ210IAllocator5ETypeRC10CCallStack
/* 80358824 00355784  90 7F 00 04 */	stw r3, 4(r31)
/* 80358828 00355788  80 7F 00 04 */	lwz r3, 4(r31)
/* 8035882C 0035578C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80358830 00355790  48 02 62 55 */	bl DCInvalidateRange
/* 80358834 00355794  80 7F 00 08 */	lwz r3, 8(r31)
/* 80358838 00355798  38 C0 00 01 */	li r6, 1
/* 8035883C 0035579C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80358840 003557A0  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80358844 003557A4  4B FE C0 0D */	bl DMAToMRAM__12CARAMManagerFPvPvUiQ212CARAMManager12EDMAPriority
/* 80358848 003557A8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8035884C 003557AC  7F E3 FB 78 */	mr r3, r31
/* 80358850 003557B0  38 80 00 03 */	li r4, 3
/* 80358854 003557B4  4B FF FC 55 */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
lbl_80358858:
/* 80358858 003557B8  7F E3 FB 78 */	mr r3, r31
/* 8035885C 003557BC  4B FF FD 4D */	bl RefreshStatus__10CARAMTokenFv
lbl_80358860:
/* 80358860 003557C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358864 003557C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358868 003557C8  7C 08 03 A6 */	mtlr r0
/* 8035886C 003557CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80358870 003557D0  4E 80 00 20 */	blr

.global __as__10CARAMTokenFRC10CARAMToken
__as__10CARAMTokenFRC10CARAMToken:
/* 80358874 003557D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80358878 003557D8  7C 08 02 A6 */	mflr r0
/* 8035887C 003557DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358880 003557E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358884 003557E4  7C 9F 23 78 */	mr r31, r4
/* 80358888 003557E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8035888C 003557EC  7C 7E 1B 78 */	mr r30, r3
/* 80358890 003557F0  7C 1F F0 40 */	cmplw r31, r30
/* 80358894 003557F4  40 82 00 08 */	bne lbl_8035889C
/* 80358898 003557F8  48 00 00 24 */	b lbl_803588BC
lbl_8035889C:
/* 8035889C 003557FC  38 80 FF FF */	li r4, -1
/* 803588A0 00355800  48 00 00 A5 */	bl __dt__10CARAMTokenFv
/* 803588A4 00355804  28 1E 00 00 */	cmplwi r30, 0
/* 803588A8 00355808  41 82 00 10 */	beq lbl_803588B8
/* 803588AC 0035580C  7F C3 F3 78 */	mr r3, r30
/* 803588B0 00355810  7F E4 FB 78 */	mr r4, r31
/* 803588B4 00355814  48 00 01 19 */	bl __ct__10CARAMTokenFRC10CARAMToken
lbl_803588B8:
/* 803588B8 00355818  7F C3 F3 78 */	mr r3, r30
lbl_803588BC:
/* 803588BC 0035581C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803588C0 00355820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803588C4 00355824  83 C1 00 08 */	lwz r30, 8(r1)
/* 803588C8 00355828  7C 08 03 A6 */	mtlr r0
/* 803588CC 0035582C  38 21 00 10 */	addi r1, r1, 0x10
/* 803588D0 00355830  4E 80 00 20 */	blr

.global PostConstruct__10CARAMTokenFPvUi
PostConstruct__10CARAMTokenFPvUi:
/* 803588D4 00355834  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803588D8 00355838  7C 08 02 A6 */	mflr r0
/* 803588DC 0035583C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803588E0 00355840  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803588E4 00355844  7C DF 33 78 */	mr r31, r6
/* 803588E8 00355848  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803588EC 0035584C  7C BE 2B 78 */	mr r30, r5
/* 803588F0 00355850  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803588F4 00355854  7C 9D 23 78 */	mr r29, r4
/* 803588F8 00355858  38 80 00 01 */	li r4, 1
/* 803588FC 0035585C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80358900 00355860  7C 7C 1B 78 */	mr r28, r3
/* 80358904 00355864  4B FF FB A5 */	bl MoveToList__10CARAMTokenFQ210CARAMToken7EStatus
/* 80358908 00355868  93 BC 00 04 */	stw r29, 4(r28)
/* 8035890C 0035586C  7F E0 00 34 */	cntlzw r0, r31
/* 80358910 00355870  54 03 D9 7E */	srwi r3, r0, 5
/* 80358914 00355874  93 DC 00 0C */	stw r30, 0xc(r28)
/* 80358918 00355878  88 1C 00 1C */	lbz r0, 0x1c(r28)
/* 8035891C 0035587C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80358920 00355880  98 1C 00 1C */	stb r0, 0x1c(r28)
/* 80358924 00355884  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80358928 00355888  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035892C 0035588C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80358930 00355890  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80358934 00355894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80358938 00355898  7C 08 03 A6 */	mtlr r0
/* 8035893C 0035589C  38 21 00 20 */	addi r1, r1, 0x20
/* 80358940 003558A0  4E 80 00 20 */	blr

.global __dt__10CARAMTokenFv
__dt__10CARAMTokenFv:
/* 80358944 003558A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80358948 003558A8  7C 08 02 A6 */	mflr r0
/* 8035894C 003558AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358950 003558B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358954 003558B4  7C 9F 23 78 */	mr r31, r4
/* 80358958 003558B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8035895C 003558BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80358960 003558C0  41 82 00 50 */	beq lbl_803589B0
/* 80358964 003558C4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80358968 003558C8  80 02 CB AC */	lwz r0, lbl_805AE8CC@sda21(r2)
/* 8035896C 003558CC  7C 03 00 40 */	cmplw r3, r0
/* 80358970 003558D0  41 82 00 18 */	beq lbl_80358988
/* 80358974 003558D4  4B FE BD 49 */	bl CancelDMA__12CARAMManagerFUi
/* 80358978 003558D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035897C 003558DC  40 82 00 0C */	bne lbl_80358988
/* 80358980 003558E0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80358984 003558E4  4B FE BD C5 */	bl WaitForDMACompletion__12CARAMManagerFUi
lbl_80358988:
/* 80358988 003558E8  7F C3 F3 78 */	mr r3, r30
/* 8035898C 003558EC  4B FF FA D5 */	bl RemoveFromList__10CARAMTokenFv
/* 80358990 003558F0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80358994 003558F4  4B FB CF 9D */	bl Free__7CMemoryFPCv
/* 80358998 003558F8  80 7E 00 08 */	lwz r3, 8(r30)
/* 8035899C 003558FC  4B FE C1 21 */	bl Free__12CARAMManagerFPCv
/* 803589A0 00355900  7F E0 07 35 */	extsh. r0, r31
/* 803589A4 00355904  40 81 00 0C */	ble lbl_803589B0
/* 803589A8 00355908  7F C3 F3 78 */	mr r3, r30
/* 803589AC 0035590C  4B FB CF 85 */	bl Free__7CMemoryFPCv
lbl_803589B0:
/* 803589B0 00355910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803589B4 00355914  7F C3 F3 78 */	mr r3, r30
/* 803589B8 00355918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803589BC 0035591C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803589C0 00355920  7C 08 03 A6 */	mtlr r0
/* 803589C4 00355924  38 21 00 10 */	addi r1, r1, 0x10
/* 803589C8 00355928  4E 80 00 20 */	blr

.global __ct__10CARAMTokenFRC10CARAMToken
__ct__10CARAMTokenFRC10CARAMToken:
/* 803589CC 0035592C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803589D0 00355930  7C 08 02 A6 */	mflr r0
/* 803589D4 00355934  90 01 00 14 */	stw r0, 0x14(r1)
/* 803589D8 00355938  38 00 00 00 */	li r0, 0
/* 803589DC 0035593C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803589E0 00355940  7C 7F 1B 78 */	mr r31, r3
/* 803589E4 00355944  7C 83 23 78 */	mr r3, r4
/* 803589E8 00355948  80 A4 00 00 */	lwz r5, 0(r4)
/* 803589EC 0035594C  90 BF 00 00 */	stw r5, 0(r31)
/* 803589F0 00355950  80 A4 00 04 */	lwz r5, 4(r4)
/* 803589F4 00355954  90 BF 00 04 */	stw r5, 4(r31)
/* 803589F8 00355958  80 A4 00 08 */	lwz r5, 8(r4)
/* 803589FC 0035595C  90 BF 00 08 */	stw r5, 8(r31)
/* 80358A00 00355960  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 80358A04 00355964  90 BF 00 0C */	stw r5, 0xc(r31)
/* 80358A08 00355968  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 80358A0C 0035596C  90 BF 00 10 */	stw r5, 0x10(r31)
/* 80358A10 00355970  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80358A14 00355974  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80358A18 00355978  88 84 00 1C */	lbz r4, 0x1c(r4)
/* 80358A1C 0035597C  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 80358A20 00355980  50 80 06 30 */	rlwimi r0, r4, 0, 0x18, 0x18
/* 80358A24 00355984  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 80358A28 00355988  4B FF F9 ED */	bl MakeInvalid__10CARAMTokenFv
/* 80358A2C 0035598C  7F E3 FB 78 */	mr r3, r31
/* 80358A30 00355990  4B FF FA C9 */	bl InitiallyMoveToList__10CARAMTokenFv
/* 80358A34 00355994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358A38 00355998  7F E3 FB 78 */	mr r3, r31
/* 80358A3C 0035599C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358A40 003559A0  7C 08 03 A6 */	mtlr r0
/* 80358A44 003559A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80358A48 003559A8  4E 80 00 20 */	blr

.global __ct__10CARAMTokenFPvUi
__ct__10CARAMTokenFPvUi:
/* 80358A4C 003559AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80358A50 003559B0  7C 08 02 A6 */	mflr r0
/* 80358A54 003559B4  80 E2 CB A8 */	lwz r7, lbl_805AE8C8@sda21(r2)
/* 80358A58 003559B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358A5C 003559BC  38 00 00 01 */	li r0, 1
/* 80358A60 003559C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358A64 003559C4  7C 7F 1B 78 */	mr r31, r3
/* 80358A68 003559C8  90 03 00 00 */	stw r0, 0(r3)
/* 80358A6C 003559CC  7C C0 00 34 */	cntlzw r0, r6
/* 80358A70 003559D0  38 C0 00 00 */	li r6, 0
/* 80358A74 003559D4  90 83 00 04 */	stw r4, 4(r3)
/* 80358A78 003559D8  54 04 D9 7E */	srwi r4, r0, 5
/* 80358A7C 003559DC  80 02 CB AC */	lwz r0, lbl_805AE8CC@sda21(r2)
/* 80358A80 003559E0  90 E3 00 08 */	stw r7, 8(r3)
/* 80358A84 003559E4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80358A88 003559E8  90 03 00 10 */	stw r0, 0x10(r3)
/* 80358A8C 003559EC  90 C3 00 14 */	stw r6, 0x14(r3)
/* 80358A90 003559F0  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80358A94 003559F4  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80358A98 003559F8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80358A9C 003559FC  98 03 00 1C */	stb r0, 0x1c(r3)
/* 80358AA0 00355A00  4B FF FA 59 */	bl InitiallyMoveToList__10CARAMTokenFv
/* 80358AA4 00355A04  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 80358AA8 00355A08  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80358AAC 00355A0C  41 82 00 38 */	beq lbl_80358AE4
/* 80358AB0 00355A10  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80358AB4 00355A14  4B FE C1 75 */	bl Alloc__12CARAMManagerFUi
/* 80358AB8 00355A18  90 7F 00 08 */	stw r3, 8(r31)
/* 80358ABC 00355A1C  38 C0 00 01 */	li r6, 1
/* 80358AC0 00355A20  80 7F 00 04 */	lwz r3, 4(r31)
/* 80358AC4 00355A24  80 9F 00 08 */	lwz r4, 8(r31)
/* 80358AC8 00355A28  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80358ACC 00355A2C  4B FE BE BD */	bl DMAToARAM__12CARAMManagerFPvPvUiQ212CARAMManager12EDMAPriority
/* 80358AD0 00355A30  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80358AD4 00355A34  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80358AD8 00355A38  4B FE BC 71 */	bl WaitForDMACompletion__12CARAMManagerFUi
/* 80358ADC 00355A3C  80 02 CB AC */	lwz r0, lbl_805AE8CC@sda21(r2)
/* 80358AE0 00355A40  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_80358AE4:
/* 80358AE4 00355A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358AE8 00355A48  7F E3 FB 78 */	mr r3, r31
/* 80358AEC 00355A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358AF0 00355A50  7C 08 03 A6 */	mtlr r0
/* 80358AF4 00355A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80358AF8 00355A58  4E 80 00 20 */	blr

.global __ct__10CARAMTokenFv
__ct__10CARAMTokenFv:
/* 80358AFC 00355A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80358B00 00355A60  7C 08 02 A6 */	mflr r0
/* 80358B04 00355A64  38 A0 00 00 */	li r5, 0
/* 80358B08 00355A68  80 82 CB A8 */	lwz r4, lbl_805AE8C8@sda21(r2)
/* 80358B0C 00355A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358B10 00355A70  38 00 00 06 */	li r0, 6
/* 80358B14 00355A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80358B18 00355A78  7C 7F 1B 78 */	mr r31, r3
/* 80358B1C 00355A7C  90 03 00 00 */	stw r0, 0(r3)
/* 80358B20 00355A80  80 02 CB AC */	lwz r0, lbl_805AE8CC@sda21(r2)
/* 80358B24 00355A84  90 A3 00 04 */	stw r5, 4(r3)
/* 80358B28 00355A88  90 83 00 08 */	stw r4, 8(r3)
/* 80358B2C 00355A8C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80358B30 00355A90  90 03 00 10 */	stw r0, 0x10(r3)
/* 80358B34 00355A94  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80358B38 00355A98  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80358B3C 00355A9C  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80358B40 00355AA0  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80358B44 00355AA4  98 03 00 1C */	stb r0, 0x1c(r3)
/* 80358B48 00355AA8  4B FF F9 B1 */	bl InitiallyMoveToList__10CARAMTokenFv
/* 80358B4C 00355AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358B50 00355AB0  7F E3 FB 78 */	mr r3, r31
/* 80358B54 00355AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358B58 00355AB8  7C 08 03 A6 */	mtlr r0
/* 80358B5C 00355ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80358B60 00355AC0  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D8338
lbl_803D8338:
	# ROM: 0x3D5338
	.asciz "??(??)"
	.balign 4

