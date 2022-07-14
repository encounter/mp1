.include "macros.inc"

.section .sdata

.global lbl_805A8920
lbl_805A8920:
	# ROM: 0x3F62C0
	.4byte 0x00004000
	.4byte 0

.section .bss

.global lbl_804BFF40
lbl_804BFF40:
	.skip 0x10

.section .sbss, "wa"

.global lbl_805A9520
lbl_805A9520:
	.skip 0x4
.global lbl_805A9524
lbl_805A9524:
	.skip 0x4
.global lbl_805A9528
lbl_805A9528:
	.skip 0x4
.global lbl_805A952C
lbl_805A952C:
	.skip 0x4
.global lbl_805A9530
lbl_805A9530:
	.skip 0x4
.global lbl_805A9534
lbl_805A9534:
	.skip 0x4
.global lbl_805A9538
lbl_805A9538:
	.skip 0x8

.section .text, "ax"

.global CollectGarbage__12CARAMManagerFv
CollectGarbage__12CARAMManagerFv:
/* 803445E8 00341548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803445EC 0034154C  7C 08 02 A6 */	mflr r0
/* 803445F0 00341550  90 01 00 14 */	stw r0, 0x14(r1)
/* 803445F4 00341554  48 00 00 15 */	bl RefreshActiveDMAList__12CARAMManagerFv
/* 803445F8 00341558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803445FC 0034155C  7C 08 03 A6 */	mtlr r0
/* 80344600 00341560  38 21 00 10 */	addi r1, r1, 0x10
/* 80344604 00341564  4E 80 00 20 */	blr 

.global RefreshActiveDMAList__12CARAMManagerFv
RefreshActiveDMAList__12CARAMManagerFv:
/* 80344608 00341568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034460C 0034156C  7C 08 02 A6 */	mflr r0
/* 80344610 00341570  3C 60 80 5A */	lis r3, lbl_805A679C@ha
/* 80344614 00341574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80344618 00341578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034461C 0034157C  3B E3 67 9C */	addi r31, r3, lbl_805A679C@l
/* 80344620 00341580  93 C1 00 08 */	stw r30, 8(r1)
/* 80344624 00341584  83 DF 00 04 */	lwz r30, 4(r31)
/* 80344628 00341588  48 00 00 30 */	b lbl_80344658
lbl_8034462C:
/* 8034462C 0034158C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80344630 00341590  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80344634 00341594  28 00 00 00 */	cmplwi r0, 0
/* 80344638 00341598  41 82 00 1C */	beq lbl_80344654
/* 8034463C 0034159C  4B FD 12 F5 */	bl Free__7CMemoryFPCv
/* 80344640 003415A0  7F E3 FB 78 */	mr r3, r31
/* 80344644 003415A4  7F C4 F3 78 */	mr r4, r30
/* 80344648 003415A8  48 00 08 3D */	bl sub_80344e84
/* 8034464C 003415AC  7C 7E 1B 78 */	mr r30, r3
/* 80344650 003415B0  48 00 00 08 */	b lbl_80344658
lbl_80344654:
/* 80344654 003415B4  83 DE 00 04 */	lwz r30, 4(r30)
lbl_80344658:
/* 80344658 003415B8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8034465C 003415BC  7C 1E 00 40 */	cmplw r30, r0
/* 80344660 003415C0  40 82 FF CC */	bne lbl_8034462C
/* 80344664 003415C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80344668 003415C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034466C 003415CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80344670 003415D0  7C 08 03 A6 */	mtlr r0
/* 80344674 003415D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80344678 003415D8  4E 80 00 20 */	blr 

.global AramManagerDMACallback__12CARAMManagerFUl
AramManagerDMACallback__12CARAMManagerFUl:
/* 8034467C 003415DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80344680 003415E0  7C 08 02 A6 */	mflr r0
/* 80344684 003415E4  7C 64 1B 78 */	mr r4, r3
/* 80344688 003415E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034468C 003415EC  38 00 00 01 */	li r0, 1
/* 80344690 003415F0  98 03 00 24 */	stb r0, 0x24(r3)
/* 80344694 003415F4  80 03 00 08 */	lwz r0, 8(r3)
/* 80344698 003415F8  28 00 00 01 */	cmplwi r0, 1
/* 8034469C 003415FC  40 82 00 10 */	bne lbl_803446AC
/* 803446A0 00341600  80 64 00 14 */	lwz r3, 0x14(r4)
/* 803446A4 00341604  80 84 00 18 */	lwz r4, 0x18(r4)
/* 803446A8 00341608  48 03 A3 DD */	bl DCInvalidateRange
lbl_803446AC:
/* 803446AC 0034160C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803446B0 00341610  7C 08 03 A6 */	mtlr r0
/* 803446B4 00341614  38 21 00 10 */	addi r1, r1, 0x10
/* 803446B8 00341618  4E 80 00 20 */	blr 

.global CancelDMA__12CARAMManagerFUi
CancelDMA__12CARAMManagerFUi:
/* 803446BC 0034161C  3C 80 80 5A */	lis r4, lbl_805A679C@ha
/* 803446C0 00341620  38 84 67 9C */	addi r4, r4, lbl_805A679C@l
/* 803446C4 00341624  80 A4 00 04 */	lwz r5, 4(r4)
/* 803446C8 00341628  80 84 00 08 */	lwz r4, 8(r4)
/* 803446CC 0034162C  48 00 00 2C */	b lbl_803446F8
lbl_803446D0:
/* 803446D0 00341630  80 C5 00 08 */	lwz r6, 8(r5)
/* 803446D4 00341634  80 06 00 20 */	lwz r0, 0x20(r6)
/* 803446D8 00341638  7C 00 18 40 */	cmplw r0, r3
/* 803446DC 0034163C  40 82 00 18 */	bne lbl_803446F4
/* 803446E0 00341640  88 66 00 24 */	lbz r3, 0x24(r6)
/* 803446E4 00341644  7C 03 00 D0 */	neg r0, r3
/* 803446E8 00341648  7C 00 1B 78 */	or r0, r0, r3
/* 803446EC 0034164C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803446F0 00341650  4E 80 00 20 */	blr 
lbl_803446F4:
/* 803446F4 00341654  80 A5 00 04 */	lwz r5, 4(r5)
lbl_803446F8:
/* 803446F8 00341658  7C 05 20 40 */	cmplw r5, r4
/* 803446FC 0034165C  40 82 FF D4 */	bne lbl_803446D0
/* 80344700 00341660  38 60 00 01 */	li r3, 1
/* 80344704 00341664  4E 80 00 20 */	blr 

.global WaitForAllDMAsToComplete__12CARAMManagerFv
WaitForAllDMAsToComplete__12CARAMManagerFv:
/* 80344708 00341668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034470C 0034166C  7C 08 02 A6 */	mflr r0
/* 80344710 00341670  3C 60 80 5A */	lis r3, lbl_805A679C@ha
/* 80344714 00341674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80344718 00341678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034471C 0034167C  3B E3 67 9C */	addi r31, r3, lbl_805A679C@l
/* 80344720 00341680  48 00 00 08 */	b lbl_80344728
lbl_80344724:
/* 80344724 00341684  4B FF FE E5 */	bl RefreshActiveDMAList__12CARAMManagerFv
lbl_80344728:
/* 80344728 00341688  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8034472C 0034168C  2C 00 00 00 */	cmpwi r0, 0
/* 80344730 00341690  41 81 FF F4 */	bgt lbl_80344724
/* 80344734 00341694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80344738 00341698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034473C 0034169C  7C 08 03 A6 */	mtlr r0
/* 80344740 003416A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80344744 003416A4  4E 80 00 20 */	blr 

.global WaitForDMACompletion__12CARAMManagerFUi
WaitForDMACompletion__12CARAMManagerFUi:
/* 80344748 003416A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034474C 003416AC  7C 08 02 A6 */	mflr r0
/* 80344750 003416B0  3C 80 80 5A */	lis r4, lbl_805A679C@ha
/* 80344754 003416B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80344758 003416B8  38 84 67 9C */	addi r4, r4, lbl_805A679C@l
/* 8034475C 003416BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80344760 003416C0  83 E4 00 04 */	lwz r31, 4(r4)
/* 80344764 003416C4  80 84 00 08 */	lwz r4, 8(r4)
/* 80344768 003416C8  48 00 00 40 */	b lbl_803447A8
lbl_8034476C:
/* 8034476C 003416CC  80 BF 00 08 */	lwz r5, 8(r31)
/* 80344770 003416D0  80 05 00 20 */	lwz r0, 0x20(r5)
/* 80344774 003416D4  7C 00 18 40 */	cmplw r0, r3
/* 80344778 003416D8  40 82 00 2C */	bne lbl_803447A4
lbl_8034477C:
/* 8034477C 003416DC  88 05 00 24 */	lbz r0, 0x24(r5)
/* 80344780 003416E0  28 00 00 00 */	cmplwi r0, 0
/* 80344784 003416E4  41 82 FF F8 */	beq lbl_8034477C
/* 80344788 003416E8  7C A3 2B 78 */	mr r3, r5
/* 8034478C 003416EC  4B FD 11 A5 */	bl Free__7CMemoryFPCv
/* 80344790 003416F0  3C 60 80 5A */	lis r3, lbl_805A679C@ha
/* 80344794 003416F4  7F E4 FB 78 */	mr r4, r31
/* 80344798 003416F8  38 63 67 9C */	addi r3, r3, lbl_805A679C@l
/* 8034479C 003416FC  48 00 06 E9 */	bl sub_80344e84
/* 803447A0 00341700  48 00 00 10 */	b lbl_803447B0
lbl_803447A4:
/* 803447A4 00341704  83 FF 00 04 */	lwz r31, 4(r31)
lbl_803447A8:
/* 803447A8 00341708  7C 1F 20 40 */	cmplw r31, r4
/* 803447AC 0034170C  40 82 FF C0 */	bne lbl_8034476C
lbl_803447B0:
/* 803447B0 00341710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803447B4 00341714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803447B8 00341718  7C 08 03 A6 */	mtlr r0
/* 803447BC 0034171C  38 21 00 10 */	addi r1, r1, 0x10
/* 803447C0 00341720  4E 80 00 20 */	blr 

.global IsDMACompleted__12CARAMManagerFUi
IsDMACompleted__12CARAMManagerFUi:
/* 803447C4 00341724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803447C8 00341728  7C 08 02 A6 */	mflr r0
/* 803447CC 0034172C  3C 80 80 5A */	lis r4, lbl_805A679C@ha
/* 803447D0 00341730  90 01 00 14 */	stw r0, 0x14(r1)
/* 803447D4 00341734  38 84 67 9C */	addi r4, r4, lbl_805A679C@l
/* 803447D8 00341738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803447DC 0034173C  83 E4 00 04 */	lwz r31, 4(r4)
/* 803447E0 00341740  80 84 00 08 */	lwz r4, 8(r4)
/* 803447E4 00341744  48 00 00 4C */	b lbl_80344830
lbl_803447E8:
/* 803447E8 00341748  80 BF 00 08 */	lwz r5, 8(r31)
/* 803447EC 0034174C  80 05 00 20 */	lwz r0, 0x20(r5)
/* 803447F0 00341750  7C 00 18 40 */	cmplw r0, r3
/* 803447F4 00341754  40 82 00 38 */	bne lbl_8034482C
/* 803447F8 00341758  88 05 00 24 */	lbz r0, 0x24(r5)
/* 803447FC 0034175C  28 00 00 00 */	cmplwi r0, 0
/* 80344800 00341760  41 82 00 24 */	beq lbl_80344824
/* 80344804 00341764  7C A3 2B 78 */	mr r3, r5
/* 80344808 00341768  4B FD 11 29 */	bl Free__7CMemoryFPCv
/* 8034480C 0034176C  3C 60 80 5A */	lis r3, lbl_805A679C@ha
/* 80344810 00341770  7F E4 FB 78 */	mr r4, r31
/* 80344814 00341774  38 63 67 9C */	addi r3, r3, lbl_805A679C@l
/* 80344818 00341778  48 00 06 6D */	bl sub_80344e84
/* 8034481C 0034177C  38 60 00 01 */	li r3, 1
/* 80344820 00341780  48 00 00 1C */	b lbl_8034483C
lbl_80344824:
/* 80344824 00341784  38 60 00 00 */	li r3, 0
/* 80344828 00341788  48 00 00 14 */	b lbl_8034483C
lbl_8034482C:
/* 8034482C 0034178C  83 FF 00 04 */	lwz r31, 4(r31)
lbl_80344830:
/* 80344830 00341790  7C 1F 20 40 */	cmplw r31, r4
/* 80344834 00341794  40 82 FF B4 */	bne lbl_803447E8
/* 80344838 00341798  38 60 00 01 */	li r3, 1
lbl_8034483C:
/* 8034483C 0034179C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80344840 003417A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80344844 003417A4  7C 08 03 A6 */	mtlr r0
/* 80344848 003417A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8034484C 003417AC  4E 80 00 20 */	blr 

.global DMAToMRAM__12CARAMManagerFPvPvUiQ212CARAMManager12EDMAPriority
DMAToMRAM__12CARAMManagerFPvPvUiQ212CARAMManager12EDMAPriority:
/* 80344850 003417B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80344854 003417B4  7C 08 02 A6 */	mflr r0
/* 80344858 003417B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8034485C 003417BC  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80344860 003417C0  7C 9C 23 78 */	mr r28, r4
/* 80344864 003417C4  7C BF 2B 78 */	mr r31, r5
/* 80344868 003417C8  7C 7B 1B 78 */	mr r27, r3
/* 8034486C 003417CC  7C DD 33 78 */	mr r29, r6
/* 80344870 003417D0  7F 83 E3 78 */	mr r3, r28
/* 80344874 003417D4  7F E4 FB 78 */	mr r4, r31
/* 80344878 003417D8  48 03 A2 0D */	bl DCInvalidateRange
/* 8034487C 003417DC  3C 80 80 3D */	lis r4, lbl_803D7F50@ha
/* 80344880 003417E0  38 60 00 28 */	li r3, 0x28
/* 80344884 003417E4  38 84 7F 50 */	addi r4, r4, lbl_803D7F50@l
/* 80344888 003417E8  38 A0 00 00 */	li r5, 0
/* 8034488C 003417EC  4B FD 0F E1 */	bl __nw__FUlPCcPCc
/* 80344890 003417F0  38 00 00 00 */	li r0, 0
/* 80344894 003417F4  3C A0 80 5A */	lis r5, lbl_805A679C@ha
/* 80344898 003417F8  98 03 00 24 */	stb r0, 0x24(r3)
/* 8034489C 003417FC  7C 7E 1B 78 */	mr r30, r3
/* 803448A0 00341800  38 C5 67 9C */	addi r6, r5, lbl_805A679C@l
/* 803448A4 00341804  3C 60 80 3D */	lis r3, lbl_803D7F50@ha
/* 803448A8 00341808  80 0D A9 74 */	lwz r0, lbl_805A9534@sda21(r13)
/* 803448AC 0034180C  38 83 7F 50 */	addi r4, r3, lbl_803D7F50@l
/* 803448B0 00341810  38 60 00 0C */	li r3, 0xc
/* 803448B4 00341814  38 A0 00 00 */	li r5, 0
/* 803448B8 00341818  90 1E 00 20 */	stw r0, 0x20(r30)
/* 803448BC 0034181C  83 46 00 08 */	lwz r26, 8(r6)
/* 803448C0 00341820  83 3A 00 00 */	lwz r25, 0(r26)
/* 803448C4 00341824  4B FD 0F 55 */	bl __nwa__FUlPCcPCc
/* 803448C8 00341828  28 03 00 00 */	cmplwi r3, 0
/* 803448CC 0034182C  41 82 00 0C */	beq lbl_803448D8
/* 803448D0 00341830  93 23 00 00 */	stw r25, 0(r3)
/* 803448D4 00341834  93 43 00 04 */	stw r26, 4(r3)
lbl_803448D8:
/* 803448D8 00341838  34 83 00 08 */	addic. r4, r3, 8
/* 803448DC 0034183C  41 82 00 08 */	beq lbl_803448E4
/* 803448E0 00341840  93 C4 00 00 */	stw r30, 0(r4)
lbl_803448E4:
/* 803448E4 00341844  3C 80 80 5A */	lis r4, lbl_805A679C@ha
/* 803448E8 00341848  38 84 67 9C */	addi r4, r4, lbl_805A679C@l
/* 803448EC 0034184C  80 04 00 04 */	lwz r0, 4(r4)
/* 803448F0 00341850  7C 1A 00 40 */	cmplw r26, r0
/* 803448F4 00341854  40 82 00 08 */	bne lbl_803448FC
/* 803448F8 00341858  90 64 00 04 */	stw r3, 4(r4)
lbl_803448FC:
/* 803448FC 0034185C  80 C3 00 00 */	lwz r6, 0(r3)
/* 80344900 00341860  3C 80 80 34 */	lis r4, AramManagerDMACallback__12CARAMManagerFUl@ha
/* 80344904 00341864  3C A0 80 5A */	lis r5, lbl_805A679C@ha
/* 80344908 00341868  20 1D 00 01 */	subfic r0, r29, 1
/* 8034490C 0034186C  90 66 00 04 */	stw r3, 4(r6)
/* 80344910 00341870  39 44 46 7C */	addi r10, r4, AramManagerDMACallback__12CARAMManagerFUl@l
/* 80344914 00341874  39 65 67 9C */	addi r11, r5, lbl_805A679C@l
/* 80344918 00341878  7C 00 00 34 */	cntlzw r0, r0
/* 8034491C 0034187C  80 83 00 04 */	lwz r4, 4(r3)
/* 80344920 00341880  54 06 D9 7E */	srwi r6, r0, 5
/* 80344924 00341884  7F 67 DB 78 */	mr r7, r27
/* 80344928 00341888  7F 88 E3 78 */	mr r8, r28
/* 8034492C 0034188C  90 64 00 00 */	stw r3, 0(r4)
/* 80344930 00341890  7F E9 FB 78 */	mr r9, r31
/* 80344934 00341894  7F C3 F3 78 */	mr r3, r30
/* 80344938 00341898  38 A0 00 01 */	li r5, 1
/* 8034493C 0034189C  80 8B 00 14 */	lwz r4, 0x14(r11)
/* 80344940 003418A0  38 04 00 01 */	addi r0, r4, 1
/* 80344944 003418A4  90 0B 00 14 */	stw r0, 0x14(r11)
/* 80344948 003418A8  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8034494C 003418AC  48 02 AD 25 */	bl ARQPostRequest
/* 80344950 003418B0  80 6D A9 74 */	lwz r3, lbl_805A9534@sda21(r13)
/* 80344954 003418B4  80 02 CB AC */	lwz r0, lbl_805AE8CC@sda21(r2)
/* 80344958 003418B8  38 63 00 01 */	addi r3, r3, 1
/* 8034495C 003418BC  7C 03 00 40 */	cmplw r3, r0
/* 80344960 003418C0  90 6D A9 74 */	stw r3, lbl_805A9534@sda21(r13)
/* 80344964 003418C4  40 82 00 0C */	bne lbl_80344970
/* 80344968 003418C8  38 03 00 01 */	addi r0, r3, 1
/* 8034496C 003418CC  90 0D A9 74 */	stw r0, lbl_805A9534@sda21(r13)
lbl_80344970:
/* 80344970 003418D0  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80344974 003418D4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80344978 003418D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8034497C 003418DC  7C 08 03 A6 */	mtlr r0
/* 80344980 003418E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80344984 003418E4  4E 80 00 20 */	blr 

.global DMAToARAM__12CARAMManagerFPvPvUiQ212CARAMManager12EDMAPriority
DMAToARAM__12CARAMManagerFPvPvUiQ212CARAMManager12EDMAPriority:
/* 80344988 003418E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8034498C 003418EC  7C 08 02 A6 */	mflr r0
/* 80344990 003418F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80344994 003418F4  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80344998 003418F8  7C BF 2B 78 */	mr r31, r5
/* 8034499C 003418FC  7C 9C 23 78 */	mr r28, r4
/* 803449A0 00341900  7C 7B 1B 78 */	mr r27, r3
/* 803449A4 00341904  7C DD 33 78 */	mr r29, r6
/* 803449A8 00341908  7F E4 FB 78 */	mr r4, r31
/* 803449AC 0034190C  48 03 A1 35 */	bl DCStoreRange
/* 803449B0 00341910  3C 80 80 3D */	lis r4, lbl_803D7F50@ha
/* 803449B4 00341914  38 60 00 28 */	li r3, 0x28
/* 803449B8 00341918  38 84 7F 50 */	addi r4, r4, lbl_803D7F50@l
/* 803449BC 0034191C  38 A0 00 00 */	li r5, 0
/* 803449C0 00341920  4B FD 0E AD */	bl __nw__FUlPCcPCc
/* 803449C4 00341924  38 00 00 00 */	li r0, 0
/* 803449C8 00341928  3C A0 80 5A */	lis r5, lbl_805A679C@ha
/* 803449CC 0034192C  98 03 00 24 */	stb r0, 0x24(r3)
/* 803449D0 00341930  7C 7E 1B 78 */	mr r30, r3
/* 803449D4 00341934  38 C5 67 9C */	addi r6, r5, lbl_805A679C@l
/* 803449D8 00341938  3C 60 80 3D */	lis r3, lbl_803D7F50@ha
/* 803449DC 0034193C  80 0D A9 74 */	lwz r0, lbl_805A9534@sda21(r13)
/* 803449E0 00341940  38 83 7F 50 */	addi r4, r3, lbl_803D7F50@l
/* 803449E4 00341944  38 60 00 0C */	li r3, 0xc
/* 803449E8 00341948  38 A0 00 00 */	li r5, 0
/* 803449EC 0034194C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 803449F0 00341950  83 46 00 08 */	lwz r26, 8(r6)
/* 803449F4 00341954  83 3A 00 00 */	lwz r25, 0(r26)
/* 803449F8 00341958  4B FD 0E 21 */	bl __nwa__FUlPCcPCc
/* 803449FC 0034195C  28 03 00 00 */	cmplwi r3, 0
/* 80344A00 00341960  41 82 00 0C */	beq lbl_80344A0C
/* 80344A04 00341964  93 23 00 00 */	stw r25, 0(r3)
/* 80344A08 00341968  93 43 00 04 */	stw r26, 4(r3)
lbl_80344A0C:
/* 80344A0C 0034196C  34 83 00 08 */	addic. r4, r3, 8
/* 80344A10 00341970  41 82 00 08 */	beq lbl_80344A18
/* 80344A14 00341974  93 C4 00 00 */	stw r30, 0(r4)
lbl_80344A18:
/* 80344A18 00341978  3C 80 80 5A */	lis r4, lbl_805A679C@ha
/* 80344A1C 0034197C  38 84 67 9C */	addi r4, r4, lbl_805A679C@l
/* 80344A20 00341980  80 04 00 04 */	lwz r0, 4(r4)
/* 80344A24 00341984  7C 1A 00 40 */	cmplw r26, r0
/* 80344A28 00341988  40 82 00 08 */	bne lbl_80344A30
/* 80344A2C 0034198C  90 64 00 04 */	stw r3, 4(r4)
lbl_80344A30:
/* 80344A30 00341990  80 C3 00 00 */	lwz r6, 0(r3)
/* 80344A34 00341994  3C 80 80 34 */	lis r4, AramManagerDMACallback__12CARAMManagerFUl@ha
/* 80344A38 00341998  3C A0 80 5A */	lis r5, lbl_805A679C@ha
/* 80344A3C 0034199C  20 1D 00 01 */	subfic r0, r29, 1
/* 80344A40 003419A0  90 66 00 04 */	stw r3, 4(r6)
/* 80344A44 003419A4  39 44 46 7C */	addi r10, r4, AramManagerDMACallback__12CARAMManagerFUl@l
/* 80344A48 003419A8  39 65 67 9C */	addi r11, r5, lbl_805A679C@l
/* 80344A4C 003419AC  7C 00 00 34 */	cntlzw r0, r0
/* 80344A50 003419B0  80 83 00 04 */	lwz r4, 4(r3)
/* 80344A54 003419B4  54 06 D9 7E */	srwi r6, r0, 5
/* 80344A58 003419B8  7F 67 DB 78 */	mr r7, r27
/* 80344A5C 003419BC  7F 88 E3 78 */	mr r8, r28
/* 80344A60 003419C0  90 64 00 00 */	stw r3, 0(r4)
/* 80344A64 003419C4  7F E9 FB 78 */	mr r9, r31
/* 80344A68 003419C8  7F C3 F3 78 */	mr r3, r30
/* 80344A6C 003419CC  38 A0 00 00 */	li r5, 0
/* 80344A70 003419D0  80 8B 00 14 */	lwz r4, 0x14(r11)
/* 80344A74 003419D4  38 04 00 01 */	addi r0, r4, 1
/* 80344A78 003419D8  90 0B 00 14 */	stw r0, 0x14(r11)
/* 80344A7C 003419DC  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 80344A80 003419E0  48 02 AB F1 */	bl ARQPostRequest
/* 80344A84 003419E4  80 6D A9 74 */	lwz r3, lbl_805A9534@sda21(r13)
/* 80344A88 003419E8  80 02 CB AC */	lwz r0, lbl_805AE8CC@sda21(r2)
/* 80344A8C 003419EC  38 63 00 01 */	addi r3, r3, 1
/* 80344A90 003419F0  7C 03 00 40 */	cmplw r3, r0
/* 80344A94 003419F4  90 6D A9 74 */	stw r3, lbl_805A9534@sda21(r13)
/* 80344A98 003419F8  40 82 00 0C */	bne lbl_80344AA4
/* 80344A9C 003419FC  38 03 00 01 */	addi r0, r3, 1
/* 80344AA0 00341A00  90 0D A9 74 */	stw r0, lbl_805A9534@sda21(r13)
lbl_80344AA4:
/* 80344AA4 00341A04  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80344AA8 00341A08  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80344AAC 00341A0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80344AB0 00341A10  7C 08 03 A6 */	mtlr r0
/* 80344AB4 00341A14  38 21 00 30 */	addi r1, r1, 0x30
/* 80344AB8 00341A18  4E 80 00 20 */	blr 

.global Free__12CARAMManagerFPCv
Free__12CARAMManagerFPCv:
/* 80344ABC 00341A1C  80 02 CB A8 */	lwz r0, lbl_805AE8C8@sda21(r2)
/* 80344AC0 00341A20  7C 00 18 40 */	cmplw r0, r3
/* 80344AC4 00341A24  40 82 00 0C */	bne lbl_80344AD0
/* 80344AC8 00341A28  38 60 00 00 */	li r3, 0
/* 80344ACC 00341A2C  4E 80 00 20 */	blr 
lbl_80344AD0:
/* 80344AD0 00341A30  80 8D A9 64 */	lwz r4, lbl_805A9524@sda21(r13)
/* 80344AD4 00341A34  38 A0 00 00 */	li r5, 0
/* 80344AD8 00341A38  80 0D A9 68 */	lwz r0, lbl_805A9528@sda21(r13)
/* 80344ADC 00341A3C  7C 84 18 50 */	subf r4, r4, r3
/* 80344AE0 00341A40  80 6D A9 70 */	lwz r3, lbl_805A9530@sda21(r13)
/* 80344AE4 00341A44  7C 84 03 96 */	divwu r4, r4, r0
/* 80344AE8 00341A48  80 0D A9 78 */	lwz r0, lbl_805A9538@sda21(r13)
/* 80344AEC 00341A4C  54 86 10 3A */	slwi r6, r4, 2
/* 80344AF0 00341A50  7C 63 30 2E */	lwzx r3, r3, r6
/* 80344AF4 00341A54  7C 03 00 50 */	subf r0, r3, r0
/* 80344AF8 00341A58  28 03 00 00 */	cmplwi r3, 0
/* 80344AFC 00341A5C  90 0D A9 78 */	stw r0, lbl_805A9538@sda21(r13)
/* 80344B00 00341A60  41 82 00 90 */	beq lbl_80344B90
/* 80344B04 00341A64  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 80344B08 00341A68  7C 09 03 A6 */	mtctr r0
/* 80344B0C 00341A6C  41 82 00 70 */	beq lbl_80344B7C
lbl_80344B10:
/* 80344B10 00341A70  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344B14 00341A74  7C A4 31 2E */	stwx r5, r4, r6
/* 80344B18 00341A78  38 C6 00 04 */	addi r6, r6, 4
/* 80344B1C 00341A7C  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344B20 00341A80  7C A4 31 2E */	stwx r5, r4, r6
/* 80344B24 00341A84  38 C6 00 04 */	addi r6, r6, 4
/* 80344B28 00341A88  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344B2C 00341A8C  7C A4 31 2E */	stwx r5, r4, r6
/* 80344B30 00341A90  38 C6 00 04 */	addi r6, r6, 4
/* 80344B34 00341A94  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344B38 00341A98  7C A4 31 2E */	stwx r5, r4, r6
/* 80344B3C 00341A9C  38 C6 00 04 */	addi r6, r6, 4
/* 80344B40 00341AA0  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344B44 00341AA4  7C A4 31 2E */	stwx r5, r4, r6
/* 80344B48 00341AA8  38 C6 00 04 */	addi r6, r6, 4
/* 80344B4C 00341AAC  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344B50 00341AB0  7C A4 31 2E */	stwx r5, r4, r6
/* 80344B54 00341AB4  38 C6 00 04 */	addi r6, r6, 4
/* 80344B58 00341AB8  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344B5C 00341ABC  7C A4 31 2E */	stwx r5, r4, r6
/* 80344B60 00341AC0  38 C6 00 04 */	addi r6, r6, 4
/* 80344B64 00341AC4  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344B68 00341AC8  7C A4 31 2E */	stwx r5, r4, r6
/* 80344B6C 00341ACC  38 C6 00 04 */	addi r6, r6, 4
/* 80344B70 00341AD0  42 00 FF A0 */	bdnz lbl_80344B10
/* 80344B74 00341AD4  70 63 00 07 */	andi. r3, r3, 7
/* 80344B78 00341AD8  41 82 00 18 */	beq lbl_80344B90
lbl_80344B7C:
/* 80344B7C 00341ADC  7C 69 03 A6 */	mtctr r3
lbl_80344B80:
/* 80344B80 00341AE0  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344B84 00341AE4  7C A4 31 2E */	stwx r5, r4, r6
/* 80344B88 00341AE8  38 C6 00 04 */	addi r6, r6, 4
/* 80344B8C 00341AEC  42 00 FF F4 */	bdnz lbl_80344B80
lbl_80344B90:
/* 80344B90 00341AF0  38 60 00 01 */	li r3, 1
/* 80344B94 00341AF4  4E 80 00 20 */	blr 

.global FindFreeBlocks__12CARAMManagerFUiUiUi
FindFreeBlocks__12CARAMManagerFUiUiUi:
/* 80344B98 00341AF8  80 ED A9 70 */	lwz r7, lbl_805A9530@sda21(r13)
/* 80344B9C 00341AFC  48 00 00 7C */	b lbl_80344C18
lbl_80344BA0:
/* 80344BA0 00341B00  54 60 10 3A */	slwi r0, r3, 2
/* 80344BA4 00341B04  7C 07 00 2E */	lwzx r0, r7, r0
/* 80344BA8 00341B08  28 00 00 00 */	cmplwi r0, 0
/* 80344BAC 00341B0C  40 82 00 68 */	bne lbl_80344C14
/* 80344BB0 00341B10  28 05 00 01 */	cmplwi r5, 1
/* 80344BB4 00341B14  4D 82 00 20 */	beqlr 
/* 80344BB8 00341B18  38 63 00 01 */	addi r3, r3, 1
/* 80344BBC 00341B1C  39 00 00 01 */	li r8, 1
/* 80344BC0 00341B20  54 66 10 3A */	slwi r6, r3, 2
/* 80344BC4 00341B24  7C 03 20 50 */	subf r0, r3, r4
/* 80344BC8 00341B28  7C C7 32 14 */	add r6, r7, r6
/* 80344BCC 00341B2C  7C 09 03 A6 */	mtctr r0
/* 80344BD0 00341B30  7C 03 20 40 */	cmplw r3, r4
/* 80344BD4 00341B34  40 80 00 44 */	bge lbl_80344C18
lbl_80344BD8:
/* 80344BD8 00341B38  80 06 00 00 */	lwz r0, 0(r6)
/* 80344BDC 00341B3C  28 00 00 00 */	cmplwi r0, 0
/* 80344BE0 00341B40  41 82 00 0C */	beq lbl_80344BEC
/* 80344BE4 00341B44  7C 63 02 14 */	add r3, r3, r0
/* 80344BE8 00341B48  48 00 00 30 */	b lbl_80344C18
lbl_80344BEC:
/* 80344BEC 00341B4C  39 08 00 01 */	addi r8, r8, 1
/* 80344BF0 00341B50  7C 08 28 40 */	cmplw r8, r5
/* 80344BF4 00341B54  40 82 00 10 */	bne lbl_80344C04
/* 80344BF8 00341B58  38 05 FF FF */	addi r0, r5, -1
/* 80344BFC 00341B5C  7C 60 18 50 */	subf r3, r0, r3
/* 80344C00 00341B60  4E 80 00 20 */	blr 
lbl_80344C04:
/* 80344C04 00341B64  38 C6 00 04 */	addi r6, r6, 4
/* 80344C08 00341B68  38 63 00 01 */	addi r3, r3, 1
/* 80344C0C 00341B6C  42 00 FF CC */	bdnz lbl_80344BD8
/* 80344C10 00341B70  48 00 00 08 */	b lbl_80344C18
lbl_80344C14:
/* 80344C14 00341B74  7C 63 02 14 */	add r3, r3, r0
lbl_80344C18:
/* 80344C18 00341B78  7C 03 20 40 */	cmplw r3, r4
/* 80344C1C 00341B7C  41 80 FF 84 */	blt lbl_80344BA0
/* 80344C20 00341B80  38 60 FF FF */	li r3, -1
/* 80344C24 00341B84  4E 80 00 20 */	blr 

.global Alloc__12CARAMManagerFUi
Alloc__12CARAMManagerFUi:
/* 80344C28 00341B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80344C2C 00341B8C  7C 08 02 A6 */	mflr r0
/* 80344C30 00341B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80344C34 00341B94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80344C38 00341B98  80 CD A9 68 */	lwz r6, lbl_805A9528@sda21(r13)
/* 80344C3C 00341B9C  80 8D A9 6C */	lwz r4, lbl_805A952C@sda21(r13)
/* 80344C40 00341BA0  7C A6 1A 14 */	add r5, r6, r3
/* 80344C44 00341BA4  38 60 00 00 */	li r3, 0
/* 80344C48 00341BA8  38 05 FF FF */	addi r0, r5, -1
/* 80344C4C 00341BAC  7F E0 33 96 */	divwu r31, r0, r6
/* 80344C50 00341BB0  7F E5 FB 78 */	mr r5, r31
/* 80344C54 00341BB4  4B FF FF 45 */	bl FindFreeBlocks__12CARAMManagerFUiUiUi
/* 80344C58 00341BB8  3C 03 00 01 */	addis r0, r3, 1
/* 80344C5C 00341BBC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80344C60 00341BC0  40 82 00 0C */	bne lbl_80344C6C
/* 80344C64 00341BC4  38 60 FF FF */	li r3, -1
/* 80344C68 00341BC8  48 00 00 48 */	b lbl_80344CB0
lbl_80344C6C:
/* 80344C6C 00341BCC  80 0D A9 68 */	lwz r0, lbl_805A9528@sda21(r13)
/* 80344C70 00341BD0  54 67 10 3A */	slwi r7, r3, 2
/* 80344C74 00341BD4  80 CD A9 78 */	lwz r6, lbl_805A9538@sda21(r13)
/* 80344C78 00341BD8  7C 83 01 D6 */	mullw r4, r3, r0
/* 80344C7C 00341BDC  80 AD A9 64 */	lwz r5, lbl_805A9524@sda21(r13)
/* 80344C80 00341BE0  7C 06 FA 14 */	add r0, r6, r31
/* 80344C84 00341BE4  80 6D A9 70 */	lwz r3, lbl_805A9530@sda21(r13)
/* 80344C88 00341BE8  90 0D A9 78 */	stw r0, lbl_805A9538@sda21(r13)
/* 80344C8C 00341BEC  38 00 FF FF */	li r0, -1
/* 80344C90 00341BF0  7F E3 39 2E */	stwx r31, r3, r7
/* 80344C94 00341BF4  7C 65 22 14 */	add r3, r5, r4
/* 80344C98 00341BF8  48 00 00 10 */	b lbl_80344CA8
lbl_80344C9C:
/* 80344C9C 00341BFC  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344CA0 00341C00  38 E7 00 04 */	addi r7, r7, 4
/* 80344CA4 00341C04  7C 04 39 2E */	stwx r0, r4, r7
lbl_80344CA8:
/* 80344CA8 00341C08  37 FF FF FF */	addic. r31, r31, -1
/* 80344CAC 00341C0C  40 82 FF F0 */	bne lbl_80344C9C
lbl_80344CB0:
/* 80344CB0 00341C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80344CB4 00341C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80344CB8 00341C18  7C 08 03 A6 */	mtlr r0
/* 80344CBC 00341C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80344CC0 00341C20  4E 80 00 20 */	blr 

.global Shutdown__12CARAMManagerFv
Shutdown__12CARAMManagerFv:
/* 80344CC4 00341C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80344CC8 00341C28  7C 08 02 A6 */	mflr r0
/* 80344CCC 00341C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80344CD0 00341C30  4B FF FA 39 */	bl WaitForAllDMAsToComplete__12CARAMManagerFv
/* 80344CD4 00341C34  80 6D A9 70 */	lwz r3, lbl_805A9530@sda21(r13)
/* 80344CD8 00341C38  4B FD 0C 59 */	bl Free__7CMemoryFPCv
/* 80344CDC 00341C3C  80 0D A9 6C */	lwz r0, lbl_805A952C@sda21(r13)
/* 80344CE0 00341C40  38 60 00 00 */	li r3, 0
/* 80344CE4 00341C44  90 61 00 08 */	stw r3, 8(r1)
/* 80344CE8 00341C48  7C 00 00 D0 */	neg r0, r0
/* 80344CEC 00341C4C  54 03 10 3A */	slwi r3, r0, 2
/* 80344CF0 00341C50  4B FD 0B D1 */	bl OffsetFakeStatics__7CMemoryFi
/* 80344CF4 00341C54  38 61 00 08 */	addi r3, r1, 8
/* 80344CF8 00341C58  48 02 8D 85 */	bl ARFree
/* 80344CFC 00341C5C  38 00 00 00 */	li r0, 0
/* 80344D00 00341C60  98 0D A9 60 */	stb r0, lbl_805A9520@sda21(r13)
/* 80344D04 00341C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80344D08 00341C68  7C 08 03 A6 */	mtlr r0
/* 80344D0C 00341C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80344D10 00341C70  4E 80 00 20 */	blr 

.global Initialize__12CARAMManagerFUi
Initialize__12CARAMManagerFUi:
/* 80344D14 00341C74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80344D18 00341C78  7C 08 02 A6 */	mflr r0
/* 80344D1C 00341C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80344D20 00341C80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80344D24 00341C84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80344D28 00341C88  7C 7E 1B 78 */	mr r30, r3
/* 80344D2C 00341C8C  48 02 8E 91 */	bl ARGetSize
/* 80344D30 00341C90  80 0D 9D 60 */	lwz r0, lbl_805A8920@sda21(r13)
/* 80344D34 00341C94  93 CD A9 68 */	stw r30, lbl_805A9528@sda21(r13)
/* 80344D38 00341C98  7C 00 18 50 */	subf r0, r0, r3
/* 80344D3C 00341C9C  7F E0 F3 96 */	divwu r31, r0, r30
/* 80344D40 00341CA0  7C 7E F9 D6 */	mullw r3, r30, r31
/* 80344D44 00341CA4  93 ED A9 6C */	stw r31, lbl_805A952C@sda21(r13)
/* 80344D48 00341CA8  48 02 8C CD */	bl ARAlloc
/* 80344D4C 00341CAC  3C A0 80 3D */	lis r5, lbl_803D7F50@ha
/* 80344D50 00341CB0  3C 80 80 3D */	lis r4, lbl_803D6AA8@ha
/* 80344D54 00341CB4  90 6D A9 64 */	stw r3, lbl_805A9524@sda21(r13)
/* 80344D58 00341CB8  38 C4 6A A8 */	addi r6, r4, lbl_803D6AA8@l
/* 80344D5C 00341CBC  38 A5 7F 50 */	addi r5, r5, lbl_803D7F50@l
/* 80344D60 00341CC0  38 61 00 08 */	addi r3, r1, 8
/* 80344D64 00341CC4  38 80 FF FF */	li r4, -1
/* 80344D68 00341CC8  4B F9 16 6D */	bl __ct__10CCallStackFUiPCcPCc
/* 80344D6C 00341CCC  7C 67 1B 78 */	mr r7, r3
/* 80344D70 00341CD0  57 E3 10 3A */	slwi r3, r31, 2
/* 80344D74 00341CD4  38 80 00 00 */	li r4, 0
/* 80344D78 00341CD8  38 A0 00 01 */	li r5, 1
/* 80344D7C 00341CDC  38 C0 00 00 */	li r6, 0
/* 80344D80 00341CE0  4B FD 0C 15 */	bl Alloc__7CMemoryFUlQ210IAllocator5EHintQ210IAllocator6EScopeQ210IAllocator5ETypeRC10CCallStack
/* 80344D84 00341CE4  80 0D A9 6C */	lwz r0, lbl_805A952C@sda21(r13)
/* 80344D88 00341CE8  90 6D A9 70 */	stw r3, lbl_805A9530@sda21(r13)
/* 80344D8C 00341CEC  54 03 10 3A */	slwi r3, r0, 2
/* 80344D90 00341CF0  4B FD 0B 31 */	bl OffsetFakeStatics__7CMemoryFi
/* 80344D94 00341CF4  28 1F 00 00 */	cmplwi r31, 0
/* 80344D98 00341CF8  39 80 00 00 */	li r12, 0
/* 80344D9C 00341CFC  40 81 00 BC */	ble lbl_80344E58
/* 80344DA0 00341D00  28 1F 00 08 */	cmplwi r31, 8
/* 80344DA4 00341D04  38 7F FF F8 */	addi r3, r31, -8
/* 80344DA8 00341D08  40 81 00 88 */	ble lbl_80344E30
/* 80344DAC 00341D0C  38 03 00 07 */	addi r0, r3, 7
/* 80344DB0 00341D10  39 60 00 00 */	li r11, 0
/* 80344DB4 00341D14  54 00 E8 FE */	srwi r0, r0, 3
/* 80344DB8 00341D18  7C 09 03 A6 */	mtctr r0
/* 80344DBC 00341D1C  28 03 00 00 */	cmplwi r3, 0
/* 80344DC0 00341D20  40 81 00 70 */	ble lbl_80344E30
lbl_80344DC4:
/* 80344DC4 00341D24  80 6D A9 70 */	lwz r3, lbl_805A9530@sda21(r13)
/* 80344DC8 00341D28  39 40 00 00 */	li r10, 0
/* 80344DCC 00341D2C  39 0B 00 04 */	addi r8, r11, 4
/* 80344DD0 00341D30  38 EB 00 08 */	addi r7, r11, 8
/* 80344DD4 00341D34  7D 43 59 2E */	stwx r10, r3, r11
/* 80344DD8 00341D38  38 CB 00 0C */	addi r6, r11, 0xc
/* 80344DDC 00341D3C  38 AB 00 10 */	addi r5, r11, 0x10
/* 80344DE0 00341D40  38 8B 00 14 */	addi r4, r11, 0x14
/* 80344DE4 00341D44  81 2D A9 70 */	lwz r9, lbl_805A9530@sda21(r13)
/* 80344DE8 00341D48  38 6B 00 18 */	addi r3, r11, 0x18
/* 80344DEC 00341D4C  38 0B 00 1C */	addi r0, r11, 0x1c
/* 80344DF0 00341D50  39 6B 00 20 */	addi r11, r11, 0x20
/* 80344DF4 00341D54  7D 49 41 2E */	stwx r10, r9, r8
/* 80344DF8 00341D58  39 8C 00 08 */	addi r12, r12, 8
/* 80344DFC 00341D5C  81 0D A9 70 */	lwz r8, lbl_805A9530@sda21(r13)
/* 80344E00 00341D60  7D 48 39 2E */	stwx r10, r8, r7
/* 80344E04 00341D64  80 ED A9 70 */	lwz r7, lbl_805A9530@sda21(r13)
/* 80344E08 00341D68  7D 47 31 2E */	stwx r10, r7, r6
/* 80344E0C 00341D6C  80 CD A9 70 */	lwz r6, lbl_805A9530@sda21(r13)
/* 80344E10 00341D70  7D 46 29 2E */	stwx r10, r6, r5
/* 80344E14 00341D74  80 AD A9 70 */	lwz r5, lbl_805A9530@sda21(r13)
/* 80344E18 00341D78  7D 45 21 2E */	stwx r10, r5, r4
/* 80344E1C 00341D7C  80 8D A9 70 */	lwz r4, lbl_805A9530@sda21(r13)
/* 80344E20 00341D80  7D 44 19 2E */	stwx r10, r4, r3
/* 80344E24 00341D84  80 6D A9 70 */	lwz r3, lbl_805A9530@sda21(r13)
/* 80344E28 00341D88  7D 43 01 2E */	stwx r10, r3, r0
/* 80344E2C 00341D8C  42 00 FF 98 */	bdnz lbl_80344DC4
lbl_80344E30:
/* 80344E30 00341D90  7C 0C F8 50 */	subf r0, r12, r31
/* 80344E34 00341D94  55 85 10 3A */	slwi r5, r12, 2
/* 80344E38 00341D98  38 80 00 00 */	li r4, 0
/* 80344E3C 00341D9C  7C 09 03 A6 */	mtctr r0
/* 80344E40 00341DA0  7C 0C F8 40 */	cmplw r12, r31
/* 80344E44 00341DA4  40 80 00 14 */	bge lbl_80344E58
lbl_80344E48:
/* 80344E48 00341DA8  80 6D A9 70 */	lwz r3, lbl_805A9530@sda21(r13)
/* 80344E4C 00341DAC  7C 83 29 2E */	stwx r4, r3, r5
/* 80344E50 00341DB0  38 A5 00 04 */	addi r5, r5, 4
/* 80344E54 00341DB4  42 00 FF F4 */	bdnz lbl_80344E48
lbl_80344E58:
/* 80344E58 00341DB8  38 60 00 00 */	li r3, 0
/* 80344E5C 00341DBC  38 00 00 01 */	li r0, 1
/* 80344E60 00341DC0  90 6D A9 74 */	stw r3, lbl_805A9534@sda21(r13)
/* 80344E64 00341DC4  38 60 00 01 */	li r3, 1
/* 80344E68 00341DC8  98 0D A9 60 */	stb r0, lbl_805A9520@sda21(r13)
/* 80344E6C 00341DCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80344E70 00341DD0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80344E74 00341DD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80344E78 00341DD8  7C 08 03 A6 */	mtlr r0
/* 80344E7C 00341DDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80344E80 00341DE0  4E 80 00 20 */	blr 

.global sub_80344e84
sub_80344e84:
/* 80344E84 00341DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80344E88 00341DE8  7C 08 02 A6 */	mflr r0
/* 80344E8C 00341DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80344E90 00341DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80344E94 00341DF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80344E98 00341DF8  7C 7E 1B 78 */	mr r30, r3
/* 80344E9C 00341DFC  80 03 00 04 */	lwz r0, 4(r3)
/* 80344EA0 00341E00  83 E4 00 04 */	lwz r31, 4(r4)
/* 80344EA4 00341E04  7C 04 00 40 */	cmplw r4, r0
/* 80344EA8 00341E08  40 82 00 08 */	bne lbl_80344EB0
/* 80344EAC 00341E0C  93 FE 00 04 */	stw r31, 4(r30)
lbl_80344EB0:
/* 80344EB0 00341E10  80 04 00 04 */	lwz r0, 4(r4)
/* 80344EB4 00341E14  28 04 00 00 */	cmplwi r4, 0
/* 80344EB8 00341E18  80 64 00 00 */	lwz r3, 0(r4)
/* 80344EBC 00341E1C  90 03 00 04 */	stw r0, 4(r3)
/* 80344EC0 00341E20  80 04 00 00 */	lwz r0, 0(r4)
/* 80344EC4 00341E24  80 64 00 04 */	lwz r3, 4(r4)
/* 80344EC8 00341E28  90 03 00 00 */	stw r0, 0(r3)
/* 80344ECC 00341E2C  41 82 00 0C */	beq lbl_80344ED8
/* 80344ED0 00341E30  7C 83 23 78 */	mr r3, r4
/* 80344ED4 00341E34  4B FD 0A 5D */	bl Free__7CMemoryFPCv
lbl_80344ED8:
/* 80344ED8 00341E38  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80344EDC 00341E3C  7F E3 FB 78 */	mr r3, r31
/* 80344EE0 00341E40  38 04 FF FF */	addi r0, r4, -1
/* 80344EE4 00341E44  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80344EE8 00341E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80344EEC 00341E4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80344EF0 00341E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80344EF4 00341E54  7C 08 03 A6 */	mtlr r0
/* 80344EF8 00341E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80344EFC 00341E5C  4E 80 00 20 */	blr 

.global __sinit_CARAMManager_cpp
__sinit_CARAMManager_cpp:
/* 80344F00 00341E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80344F04 00341E64  7C 08 02 A6 */	mflr r0
/* 80344F08 00341E68  3C 60 80 5A */	lis r3, lbl_805A679C@ha
/* 80344F0C 00341E6C  3C 80 80 34 */	lis r4, "__dt__Q24rstl67list<PQ212CARAMManager15SAramDMARequest,Q24rstl17rmemory_allocator>Fv"@ha
/* 80344F10 00341E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80344F14 00341E74  38 63 67 9C */	addi r3, r3, lbl_805A679C@l
/* 80344F18 00341E78  38 C3 00 0C */	addi r6, r3, 0xc
/* 80344F1C 00341E7C  38 00 00 00 */	li r0, 0
/* 80344F20 00341E80  3C A0 80 4C */	lis r5, lbl_804BFF40@ha
/* 80344F24 00341E84  90 C3 00 04 */	stw r6, 4(r3)
/* 80344F28 00341E88  38 84 4F 54 */	addi r4, r4, "__dt__Q24rstl67list<PQ212CARAMManager15SAramDMARequest,Q24rstl17rmemory_allocator>Fv"@l
/* 80344F2C 00341E8C  90 C3 00 08 */	stw r6, 8(r3)
/* 80344F30 00341E90  38 A5 FF 40 */	addi r5, r5, lbl_804BFF40@l
/* 80344F34 00341E94  90 C6 00 00 */	stw r6, 0(r6)
/* 80344F38 00341E98  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80344F3C 00341E9C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80344F40 00341EA0  48 04 47 4D */	bl __register_global_object
/* 80344F44 00341EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80344F48 00341EA8  7C 08 03 A6 */	mtlr r0
/* 80344F4C 00341EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80344F50 00341EB0  4E 80 00 20 */	blr 

.global "__dt__Q24rstl67list<PQ212CARAMManager15SAramDMARequest,Q24rstl17rmemory_allocator>Fv"
"__dt__Q24rstl67list<PQ212CARAMManager15SAramDMARequest,Q24rstl17rmemory_allocator>Fv":
/* 80344F54 00341EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80344F58 00341EB8  7C 08 02 A6 */	mflr r0
/* 80344F5C 00341EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80344F60 00341EC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80344F64 00341EC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80344F68 00341EC8  7C 9E 23 78 */	mr r30, r4
/* 80344F6C 00341ECC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80344F70 00341ED0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80344F74 00341ED4  41 82 00 38 */	beq lbl_80344FAC
/* 80344F78 00341ED8  83 FD 00 04 */	lwz r31, 4(r29)
/* 80344F7C 00341EDC  48 00 00 14 */	b lbl_80344F90
lbl_80344F80:
/* 80344F80 00341EE0  7F E3 FB 79 */	or. r3, r31, r31
/* 80344F84 00341EE4  83 FF 00 04 */	lwz r31, 4(r31)
/* 80344F88 00341EE8  41 82 00 08 */	beq lbl_80344F90
/* 80344F8C 00341EEC  4B FD 09 A5 */	bl Free__7CMemoryFPCv
lbl_80344F90:
/* 80344F90 00341EF0  80 1D 00 08 */	lwz r0, 8(r29)
/* 80344F94 00341EF4  7C 1F 00 40 */	cmplw r31, r0
/* 80344F98 00341EF8  40 82 FF E8 */	bne lbl_80344F80
/* 80344F9C 00341EFC  7F C0 07 35 */	extsh. r0, r30
/* 80344FA0 00341F00  40 81 00 0C */	ble lbl_80344FAC
/* 80344FA4 00341F04  7F A3 EB 78 */	mr r3, r29
/* 80344FA8 00341F08  4B FD 09 89 */	bl Free__7CMemoryFPCv
lbl_80344FAC:
/* 80344FAC 00341F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80344FB0 00341F10  7F A3 EB 78 */	mr r3, r29
/* 80344FB4 00341F14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80344FB8 00341F18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80344FBC 00341F1C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80344FC0 00341F20  7C 08 03 A6 */	mtlr r0
/* 80344FC4 00341F24  38 21 00 20 */	addi r1, r1, 0x20
/* 80344FC8 00341F28  4E 80 00 20 */	blr
