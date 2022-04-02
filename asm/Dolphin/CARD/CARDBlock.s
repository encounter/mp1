.include "macros.inc"

.section .text, "ax"

.global __CARDGetFatBlock
__CARDGetFatBlock:
/* 803BA56C 003B74CC  80 63 00 88 */	lwz r3, 0x88(r3)
/* 803BA570 003B74D0  4E 80 00 20 */	blr 

WriteCallback:
/* 803BA574 003B74D4  7C 08 02 A6 */	mflr r0
/* 803BA578 003B74D8  90 01 00 04 */	stw r0, 4(r1)
/* 803BA57C 003B74DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BA580 003B74E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BA584 003B74E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BA588 003B74E8  7C 9E 23 79 */	or. r30, r4, r4
/* 803BA58C 003B74EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803BA590 003B74F0  3B A3 00 00 */	addi r29, r3, 0
/* 803BA594 003B74F4  1C BD 01 10 */	mulli r5, r29, 0x110
/* 803BA598 003B74F8  3C 60 80 57 */	lis r3, lbl_80569A58@ha
/* 803BA59C 003B74FC  38 03 9A 58 */	addi r0, r3, lbl_80569A58@l
/* 803BA5A0 003B7500  7F E0 2A 14 */	add r31, r0, r5
/* 803BA5A4 003B7504  41 80 00 48 */	blt lbl_803BA5EC
/* 803BA5A8 003B7508  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 803BA5AC 003B750C  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 803BA5B0 003B7510  38 83 60 00 */	addi r4, r3, 0x6000
/* 803BA5B4 003B7514  7C 00 20 40 */	cmplw r0, r4
/* 803BA5B8 003B7518  3C A3 00 01 */	addis r5, r3, 1
/* 803BA5BC 003B751C  38 A5 80 00 */	addi r5, r5, -32768
/* 803BA5C0 003B7520  40 82 00 18 */	bne lbl_803BA5D8
/* 803BA5C4 003B7524  90 BF 00 88 */	stw r5, 0x88(r31)
/* 803BA5C8 003B7528  38 65 00 00 */	addi r3, r5, 0
/* 803BA5CC 003B752C  38 A0 20 00 */	li r5, 0x2000
/* 803BA5D0 003B7530  4B C4 8E C1 */	bl memcpy
/* 803BA5D4 003B7534  48 00 00 18 */	b lbl_803BA5EC
lbl_803BA5D8:
/* 803BA5D8 003B7538  90 9F 00 88 */	stw r4, 0x88(r31)
/* 803BA5DC 003B753C  38 64 00 00 */	addi r3, r4, 0
/* 803BA5E0 003B7540  38 85 00 00 */	addi r4, r5, 0
/* 803BA5E4 003B7544  38 A0 20 00 */	li r5, 0x2000
/* 803BA5E8 003B7548  4B C4 8E A9 */	bl memcpy
lbl_803BA5EC:
/* 803BA5EC 003B754C  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 803BA5F0 003B7550  28 00 00 00 */	cmplwi r0, 0
/* 803BA5F4 003B7554  40 82 00 10 */	bne lbl_803BA604
/* 803BA5F8 003B7558  38 7F 00 00 */	addi r3, r31, 0
/* 803BA5FC 003B755C  38 9E 00 00 */	addi r4, r30, 0
/* 803BA600 003B7560  4B FF E8 59 */	bl __CARDPutControlBlock
lbl_803BA604:
/* 803BA604 003B7564  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 803BA608 003B7568  28 00 00 00 */	cmplwi r0, 0
/* 803BA60C 003B756C  7C 0C 03 78 */	mr r12, r0
/* 803BA610 003B7570  41 82 00 1C */	beq lbl_803BA62C
/* 803BA614 003B7574  38 00 00 00 */	li r0, 0
/* 803BA618 003B7578  7D 88 03 A6 */	mtlr r12
/* 803BA61C 003B757C  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 803BA620 003B7580  38 7D 00 00 */	addi r3, r29, 0
/* 803BA624 003B7584  38 9E 00 00 */	addi r4, r30, 0
/* 803BA628 003B7588  4E 80 00 21 */	blrl 
lbl_803BA62C:
/* 803BA62C 003B758C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BA630 003B7590  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BA634 003B7594  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BA638 003B7598  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803BA63C 003B759C  38 21 00 20 */	addi r1, r1, 0x20
/* 803BA640 003B75A0  7C 08 03 A6 */	mtlr r0
/* 803BA644 003B75A4  4E 80 00 20 */	blr 

EraseCallback:
/* 803BA648 003B75A8  7C 08 02 A6 */	mflr r0
/* 803BA64C 003B75AC  90 01 00 04 */	stw r0, 4(r1)
/* 803BA650 003B75B0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 803BA654 003B75B4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 803BA658 003B75B8  3B E3 00 00 */	addi r31, r3, 0
/* 803BA65C 003B75BC  3C 60 80 57 */	lis r3, lbl_80569A58@ha
/* 803BA660 003B75C0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 803BA664 003B75C4  1C BF 01 10 */	mulli r5, r31, 0x110
/* 803BA668 003B75C8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 803BA66C 003B75CC  38 03 9A 58 */	addi r0, r3, lbl_80569A58@l
/* 803BA670 003B75D0  7C 9D 23 79 */	or. r29, r4, r4
/* 803BA674 003B75D4  7F C0 2A 14 */	add r30, r0, r5
/* 803BA678 003B75D8  41 80 00 3C */	blt lbl_803BA6B4
/* 803BA67C 003B75DC  80 BE 00 88 */	lwz r5, 0x88(r30)
/* 803BA680 003B75E0  3C 60 80 3C */	lis r3, WriteCallback@ha
/* 803BA684 003B75E4  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 803BA688 003B75E8  38 E3 A5 74 */	addi r7, r3, WriteCallback@l
/* 803BA68C 003B75EC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 803BA690 003B75F0  7C 00 28 50 */	subf r0, r0, r5
/* 803BA694 003B75F4  54 00 9B 7E */	srwi r0, r0, 0xd
/* 803BA698 003B75F8  7C 83 01 D6 */	mullw r4, r3, r0
/* 803BA69C 003B75FC  38 C5 00 00 */	addi r6, r5, 0
/* 803BA6A0 003B7600  38 7F 00 00 */	addi r3, r31, 0
/* 803BA6A4 003B7604  38 A0 20 00 */	li r5, 0x2000
/* 803BA6A8 003B7608  4B FF FE 61 */	bl __CARDWrite
/* 803BA6AC 003B760C  7C 7D 1B 79 */	or. r29, r3, r3
/* 803BA6B0 003B7610  40 80 00 44 */	bge lbl_803BA6F4
lbl_803BA6B4:
/* 803BA6B4 003B7614  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 803BA6B8 003B7618  28 00 00 00 */	cmplwi r0, 0
/* 803BA6BC 003B761C  40 82 00 10 */	bne lbl_803BA6CC
/* 803BA6C0 003B7620  38 7E 00 00 */	addi r3, r30, 0
/* 803BA6C4 003B7624  38 9D 00 00 */	addi r4, r29, 0
/* 803BA6C8 003B7628  4B FF E7 91 */	bl __CARDPutControlBlock
lbl_803BA6CC:
/* 803BA6CC 003B762C  80 1E 00 D8 */	lwz r0, 0xd8(r30)
/* 803BA6D0 003B7630  28 00 00 00 */	cmplwi r0, 0
/* 803BA6D4 003B7634  7C 0C 03 78 */	mr r12, r0
/* 803BA6D8 003B7638  41 82 00 1C */	beq lbl_803BA6F4
/* 803BA6DC 003B763C  38 00 00 00 */	li r0, 0
/* 803BA6E0 003B7640  7D 88 03 A6 */	mtlr r12
/* 803BA6E4 003B7644  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 803BA6E8 003B7648  38 7F 00 00 */	addi r3, r31, 0
/* 803BA6EC 003B764C  38 9D 00 00 */	addi r4, r29, 0
/* 803BA6F0 003B7650  4E 80 00 21 */	blrl 
lbl_803BA6F4:
/* 803BA6F4 003B7654  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803BA6F8 003B7658  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 803BA6FC 003B765C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 803BA700 003B7660  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 803BA704 003B7664  38 21 00 28 */	addi r1, r1, 0x28
/* 803BA708 003B7668  7C 08 03 A6 */	mtlr r0
/* 803BA70C 003B766C  4E 80 00 20 */	blr 

.global __CARDAllocBlock
__CARDAllocBlock:
/* 803BA710 003B7670  7C 08 02 A6 */	mflr r0
/* 803BA714 003B7674  1C E3 01 10 */	mulli r7, r3, 0x110
/* 803BA718 003B7678  90 01 00 04 */	stw r0, 4(r1)
/* 803BA71C 003B767C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BA720 003B7680  3C C0 80 57 */	lis r6, lbl_80569A58@ha
/* 803BA724 003B7684  38 06 9A 58 */	addi r0, r6, lbl_80569A58@l
/* 803BA728 003B7688  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BA72C 003B768C  7D 20 3A 14 */	add r9, r0, r7
/* 803BA730 003B7690  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BA734 003B7694  80 09 00 00 */	lwz r0, 0(r9)
/* 803BA738 003B7698  2C 00 00 00 */	cmpwi r0, 0
/* 803BA73C 003B769C  40 82 00 0C */	bne lbl_803BA748
/* 803BA740 003B76A0  38 60 FF FD */	li r3, -3
/* 803BA744 003B76A4  48 00 00 CC */	b lbl_803BA810
lbl_803BA748:
/* 803BA748 003B76A8  81 09 00 88 */	lwz r8, 0x88(r9)
/* 803BA74C 003B76AC  A0 08 00 06 */	lhz r0, 6(r8)
/* 803BA750 003B76B0  7C 00 20 40 */	cmplw r0, r4
/* 803BA754 003B76B4  40 80 00 0C */	bge lbl_803BA760
/* 803BA758 003B76B8  38 60 FF F7 */	li r3, -9
/* 803BA75C 003B76BC  48 00 00 B4 */	b lbl_803BA810
lbl_803BA760:
/* 803BA760 003B76C0  7C 04 00 50 */	subf r0, r4, r0
/* 803BA764 003B76C4  B0 08 00 06 */	sth r0, 6(r8)
/* 803BA768 003B76C8  3C C0 00 01 */	lis r6, 0x0000FFFF@ha
/* 803BA76C 003B76CC  39 86 FF FF */	addi r12, r6, 0x0000FFFF@l
/* 803BA770 003B76D0  A1 68 00 08 */	lhz r11, 8(r8)
/* 803BA774 003B76D4  38 0C 00 00 */	addi r0, r12, 0
/* 803BA778 003B76D8  3B C0 00 00 */	li r30, 0
/* 803BA77C 003B76DC  48 00 00 7C */	b lbl_803BA7F8
lbl_803BA780:
/* 803BA780 003B76E0  A1 49 00 10 */	lhz r10, 0x10(r9)
/* 803BA784 003B76E4  3B DE 00 01 */	addi r30, r30, 1
/* 803BA788 003B76E8  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 803BA78C 003B76EC  38 EA FF FB */	addi r7, r10, -5
/* 803BA790 003B76F0  7C 07 30 00 */	cmpw r7, r6
/* 803BA794 003B76F4  40 80 00 0C */	bge lbl_803BA7A0
/* 803BA798 003B76F8  38 60 FF FA */	li r3, -6
/* 803BA79C 003B76FC  48 00 00 74 */	b lbl_803BA810
lbl_803BA7A0:
/* 803BA7A0 003B7700  39 6B 00 01 */	addi r11, r11, 1
/* 803BA7A4 003B7704  55 66 04 3E */	clrlwi r6, r11, 0x10
/* 803BA7A8 003B7708  28 06 00 05 */	cmplwi r6, 5
/* 803BA7AC 003B770C  41 80 00 0C */	blt lbl_803BA7B8
/* 803BA7B0 003B7710  7C 06 50 40 */	cmplw r6, r10
/* 803BA7B4 003B7714  41 80 00 08 */	blt lbl_803BA7BC
lbl_803BA7B8:
/* 803BA7B8 003B7718  39 60 00 05 */	li r11, 5
lbl_803BA7BC:
/* 803BA7BC 003B771C  55 66 0B FC */	rlwinm r6, r11, 1, 0xf, 0x1e
/* 803BA7C0 003B7720  7C E8 32 14 */	add r7, r8, r6
/* 803BA7C4 003B7724  A0 C7 00 00 */	lhz r6, 0(r7)
/* 803BA7C8 003B7728  28 06 00 00 */	cmplwi r6, 0
/* 803BA7CC 003B772C  40 82 00 2C */	bne lbl_803BA7F8
/* 803BA7D0 003B7730  55 86 04 3E */	clrlwi r6, r12, 0x10
/* 803BA7D4 003B7734  28 06 FF FF */	cmplwi r6, 0xffff
/* 803BA7D8 003B7738  40 82 00 0C */	bne lbl_803BA7E4
/* 803BA7DC 003B773C  7D 6C 5B 78 */	mr r12, r11
/* 803BA7E0 003B7740  48 00 00 0C */	b lbl_803BA7EC
lbl_803BA7E4:
/* 803BA7E4 003B7744  57 E6 0B FC */	rlwinm r6, r31, 1, 0xf, 0x1e
/* 803BA7E8 003B7748  7D 68 33 2E */	sthx r11, r8, r6
lbl_803BA7EC:
/* 803BA7EC 003B774C  B0 07 00 00 */	sth r0, 0(r7)
/* 803BA7F0 003B7750  3B EB 00 00 */	addi r31, r11, 0
/* 803BA7F4 003B7754  38 84 FF FF */	addi r4, r4, -1
lbl_803BA7F8:
/* 803BA7F8 003B7758  28 04 00 00 */	cmplwi r4, 0
/* 803BA7FC 003B775C  40 82 FF 84 */	bne lbl_803BA780
/* 803BA800 003B7760  B1 68 00 08 */	sth r11, 8(r8)
/* 803BA804 003B7764  7D 04 43 78 */	mr r4, r8
/* 803BA808 003B7768  B1 89 00 BE */	sth r12, 0xbe(r9)
/* 803BA80C 003B776C  48 00 00 B9 */	bl __CARDUpdateFatBlock
lbl_803BA810:
/* 803BA810 003B7770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BA814 003B7774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BA818 003B7778  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BA81C 003B777C  38 21 00 20 */	addi r1, r1, 0x20
/* 803BA820 003B7780  7C 08 03 A6 */	mtlr r0
/* 803BA824 003B7784  4E 80 00 20 */	blr 

.global __CARDFreeBlock
__CARDFreeBlock:
/* 803BA828 003B7788  7C 08 02 A6 */	mflr r0
/* 803BA82C 003B778C  1C E3 01 10 */	mulli r7, r3, 0x110
/* 803BA830 003B7790  90 01 00 04 */	stw r0, 4(r1)
/* 803BA834 003B7794  3C C0 80 57 */	lis r6, lbl_80569A58@ha
/* 803BA838 003B7798  94 21 FF F8 */	stwu r1, -8(r1)
/* 803BA83C 003B779C  38 06 9A 58 */	addi r0, r6, lbl_80569A58@l
/* 803BA840 003B77A0  7D 20 3A 14 */	add r9, r0, r7
/* 803BA844 003B77A4  80 09 00 00 */	lwz r0, 0(r9)
/* 803BA848 003B77A8  2C 00 00 00 */	cmpwi r0, 0
/* 803BA84C 003B77AC  40 82 00 0C */	bne lbl_803BA858
/* 803BA850 003B77B0  38 60 FF FD */	li r3, -3
/* 803BA854 003B77B4  48 00 00 60 */	b lbl_803BA8B4
lbl_803BA858:
/* 803BA858 003B77B8  81 09 00 88 */	lwz r8, 0x88(r9)
/* 803BA85C 003B77BC  38 E0 00 00 */	li r7, 0
/* 803BA860 003B77C0  48 00 00 40 */	b lbl_803BA8A0
lbl_803BA864:
/* 803BA864 003B77C4  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 803BA868 003B77C8  28 04 00 05 */	cmplwi r4, 5
/* 803BA86C 003B77CC  41 80 00 10 */	blt lbl_803BA87C
/* 803BA870 003B77D0  A0 09 00 10 */	lhz r0, 0x10(r9)
/* 803BA874 003B77D4  7C 04 00 40 */	cmplw r4, r0
/* 803BA878 003B77D8  41 80 00 0C */	blt lbl_803BA884
lbl_803BA87C:
/* 803BA87C 003B77DC  38 60 FF FA */	li r3, -6
/* 803BA880 003B77E0  48 00 00 34 */	b lbl_803BA8B4
lbl_803BA884:
/* 803BA884 003B77E4  54 80 08 3C */	slwi r0, r4, 1
/* 803BA888 003B77E8  7C C8 02 14 */	add r6, r8, r0
/* 803BA88C 003B77EC  A0 86 00 00 */	lhz r4, 0(r6)
/* 803BA890 003B77F0  B0 E6 00 00 */	sth r7, 0(r6)
/* 803BA894 003B77F4  A0 C8 00 06 */	lhz r6, 6(r8)
/* 803BA898 003B77F8  38 06 00 01 */	addi r0, r6, 1
/* 803BA89C 003B77FC  B0 08 00 06 */	sth r0, 6(r8)
lbl_803BA8A0:
/* 803BA8A0 003B7800  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 803BA8A4 003B7804  28 00 FF FF */	cmplwi r0, 0xffff
/* 803BA8A8 003B7808  40 82 FF BC */	bne lbl_803BA864
/* 803BA8AC 003B780C  7D 04 43 78 */	mr r4, r8
/* 803BA8B0 003B7810  48 00 00 15 */	bl __CARDUpdateFatBlock
lbl_803BA8B4:
/* 803BA8B4 003B7814  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803BA8B8 003B7818  38 21 00 08 */	addi r1, r1, 8
/* 803BA8BC 003B781C  7C 08 03 A6 */	mtlr r0
/* 803BA8C0 003B7820  4E 80 00 20 */	blr 

.global __CARDUpdateFatBlock
__CARDUpdateFatBlock:
/* 803BA8C4 003B7824  7C 08 02 A6 */	mflr r0
/* 803BA8C8 003B7828  90 01 00 04 */	stw r0, 4(r1)
/* 803BA8CC 003B782C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 803BA8D0 003B7830  93 E1 00 24 */	stw r31, 0x24(r1)
/* 803BA8D4 003B7834  93 C1 00 20 */	stw r30, 0x20(r1)
/* 803BA8D8 003B7838  3B C5 00 00 */	addi r30, r5, 0
/* 803BA8DC 003B783C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 803BA8E0 003B7840  3B A4 00 00 */	addi r29, r4, 0
/* 803BA8E4 003B7844  38 BD 00 00 */	addi r5, r29, 0
/* 803BA8E8 003B7848  93 81 00 18 */	stw r28, 0x18(r1)
/* 803BA8EC 003B784C  3B 83 00 00 */	addi r28, r3, 0
/* 803BA8F0 003B7850  38 DD 00 02 */	addi r6, r29, 2
/* 803BA8F4 003B7854  A0 64 00 04 */	lhz r3, 4(r4)
/* 803BA8F8 003B7858  1C 9C 01 10 */	mulli r4, r28, 0x110
/* 803BA8FC 003B785C  38 03 00 01 */	addi r0, r3, 1
/* 803BA900 003B7860  3C 60 80 57 */	lis r3, lbl_80569A58@ha
/* 803BA904 003B7864  B0 1D 00 04 */	sth r0, 4(r29)
/* 803BA908 003B7868  38 03 9A 58 */	addi r0, r3, lbl_80569A58@l
/* 803BA90C 003B786C  7F E0 22 14 */	add r31, r0, r4
/* 803BA910 003B7870  38 7D 00 04 */	addi r3, r29, 4
/* 803BA914 003B7874  38 80 1F FC */	li r4, 0x1ffc
/* 803BA918 003B7878  48 00 02 BD */	bl __CARDCheckSum
/* 803BA91C 003B787C  38 7D 00 00 */	addi r3, r29, 0
/* 803BA920 003B7880  38 80 20 00 */	li r4, 0x2000
/* 803BA924 003B7884  4B FC 41 BD */	bl DCStoreRange
/* 803BA928 003B7888  93 DF 00 D8 */	stw r30, 0xd8(r31)
/* 803BA92C 003B788C  3C 60 80 3C */	lis r3, EraseCallback@ha
/* 803BA930 003B7890  38 A3 A6 48 */	addi r5, r3, EraseCallback@l
/* 803BA934 003B7894  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 803BA938 003B7898  7F 83 E3 78 */	mr r3, r28
/* 803BA93C 003B789C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 803BA940 003B78A0  7C 00 E8 50 */	subf r0, r0, r29
/* 803BA944 003B78A4  54 00 9B 7E */	srwi r0, r0, 0xd
/* 803BA948 003B78A8  7C 84 01 D6 */	mullw r4, r4, r0
/* 803BA94C 003B78AC  4B FF E2 89 */	bl __CARDEraseSector
/* 803BA950 003B78B0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803BA954 003B78B4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 803BA958 003B78B8  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 803BA95C 003B78BC  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 803BA960 003B78C0  83 81 00 18 */	lwz r28, 0x18(r1)
/* 803BA964 003B78C4  38 21 00 28 */	addi r1, r1, 0x28
/* 803BA968 003B78C8  7C 08 03 A6 */	mtlr r0
/* 803BA96C 003B78CC  4E 80 00 20 */	blr 
