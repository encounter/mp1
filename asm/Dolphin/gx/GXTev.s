.include "macros.inc"

.section .data
.balign 8
.global lbl_803F0C18
lbl_803F0C18:
	# ROM: 0x3EDC18
	.4byte 0xC008F8AF
	.4byte 0xC008A89F
	.4byte 0xC008AC8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFFA
	.4byte 0xC008F80F
	.4byte 0xC008089F
	.4byte 0xC0080C8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFF0
	.4byte 0xC108F2F0
	.4byte 0xC108FFD0
	.4byte 0xC108F2F0
	.4byte 0xC108FFC0
	.4byte 0xC108FFD0
	.4byte 0xC108F070
	.4byte 0xC108FF80
	.4byte 0xC108F070
	.4byte 0xC108FFC0
	.4byte 0xC108FF80

.global lbl_803F0C68
lbl_803F0C68:
	# ROM: 0x3EDC68
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0


.section .text, "ax"

.global GXSetTevOp
GXSetTevOp:
/* 8037B418 00378378  2C 03 00 00 */	cmpwi r3, 0
/* 8037B41C 0037837C  3C A0 80 3F */	lis r5, lbl_803F0C18@ha
/* 8037B420 00378380  38 05 0C 18 */	addi r0, r5, lbl_803F0C18@l
/* 8037B424 00378384  40 82 00 14 */	bne lbl_8037B438
/* 8037B428 00378388  54 84 10 3A */	slwi r4, r4, 2
/* 8037B42C 0037838C  7C A0 22 14 */	add r5, r0, r4
/* 8037B430 00378390  39 25 00 28 */	addi r9, r5, 0x28
/* 8037B434 00378394  48 00 00 18 */	b lbl_8037B44C
lbl_8037B438:
/* 8037B438 00378398  54 84 10 3A */	slwi r4, r4, 2
/* 8037B43C 0037839C  7C A0 22 14 */	add r5, r0, r4
/* 8037B440 003783A0  7D 20 22 14 */	add r9, r0, r4
/* 8037B444 003783A4  38 A5 00 14 */	addi r5, r5, 0x14
/* 8037B448 003783A8  39 29 00 3C */	addi r9, r9, 0x3c
lbl_8037B44C:
/* 8037B44C 003783AC  80 E2 CE 08 */	lwz r7, lbl_805AEB28@sda21(r2)
/* 8037B450 003783B0  54 63 10 3A */	slwi r3, r3, 2
/* 8037B454 003783B4  80 05 00 00 */	lwz r0, 0(r5)
/* 8037B458 003783B8  38 A0 00 61 */	li r5, 0x61
/* 8037B45C 003783BC  7C C7 1A 14 */	add r6, r7, r3
/* 8037B460 003783C0  80 66 01 30 */	lwz r3, 0x130(r6)
/* 8037B464 003783C4  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8037B468 003783C8  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B46C 003783CC  54 63 00 0E */	rlwinm r3, r3, 0, 0, 7
/* 8037B470 003783D0  50 03 02 3E */	rlwimi r3, r0, 0, 8, 0x1f
/* 8037B474 003783D4  90 64 80 00 */	stw r3, 0xCC008000@l(r4)
/* 8037B478 003783D8  38 00 00 00 */	li r0, 0
/* 8037B47C 003783DC  90 66 01 30 */	stw r3, 0x130(r6)
/* 8037B480 003783E0  81 06 01 70 */	lwz r8, 0x170(r6)
/* 8037B484 003783E4  80 69 00 00 */	lwz r3, 0(r9)
/* 8037B488 003783E8  55 08 07 0E */	rlwinm r8, r8, 0, 0x1c, 7
/* 8037B48C 003783EC  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B490 003783F0  50 68 02 36 */	rlwimi r8, r3, 0, 8, 0x1b
/* 8037B494 003783F4  91 04 80 00 */	stw r8, 0xCC008000@l(r4)
/* 8037B498 003783F8  91 06 01 70 */	stw r8, 0x170(r6)
/* 8037B49C 003783FC  B0 07 00 02 */	sth r0, 2(r7)
/* 8037B4A0 00378400  4E 80 00 20 */	blr

.global GXSetTevColorIn
GXSetTevColorIn:
/* 8037B4A4 00378404  81 22 CE 08 */	lwz r9, lbl_805AEB28@sda21(r2)
/* 8037B4A8 00378408  54 63 10 3A */	slwi r3, r3, 2
/* 8037B4AC 0037840C  38 00 00 61 */	li r0, 0x61
/* 8037B4B0 00378410  7D 09 1A 14 */	add r8, r9, r3
/* 8037B4B4 00378414  81 48 01 30 */	lwz r10, 0x130(r8)
/* 8037B4B8 00378418  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8037B4BC 0037841C  50 8A 64 26 */	rlwimi r10, r4, 0xc, 0x10, 0x13
/* 8037B4C0 00378420  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8037B4C4 00378424  38 8A 00 00 */	addi r4, r10, 0
/* 8037B4C8 00378428  50 A4 45 2E */	rlwimi r4, r5, 8, 0x14, 0x17
/* 8037B4CC 0037842C  50 C4 26 36 */	rlwimi r4, r6, 4, 0x18, 0x1b
/* 8037B4D0 00378430  50 E4 07 3E */	rlwimi r4, r7, 0, 0x1c, 0x1f
/* 8037B4D4 00378434  90 83 80 00 */	stw r4, 0xCC008000@l(r3)
/* 8037B4D8 00378438  38 00 00 00 */	li r0, 0
/* 8037B4DC 0037843C  90 88 01 30 */	stw r4, 0x130(r8)
/* 8037B4E0 00378440  B0 09 00 02 */	sth r0, 2(r9)
/* 8037B4E4 00378444  4E 80 00 20 */	blr

.global GXSetTevAlphaIn
GXSetTevAlphaIn:
/* 8037B4E8 00378448  81 22 CE 08 */	lwz r9, lbl_805AEB28@sda21(r2)
/* 8037B4EC 0037844C  54 63 10 3A */	slwi r3, r3, 2
/* 8037B4F0 00378450  38 00 00 61 */	li r0, 0x61
/* 8037B4F4 00378454  7D 09 1A 14 */	add r8, r9, r3
/* 8037B4F8 00378458  81 48 01 70 */	lwz r10, 0x170(r8)
/* 8037B4FC 0037845C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8037B500 00378460  50 8A 6C 24 */	rlwimi r10, r4, 0xd, 0x10, 0x12
/* 8037B504 00378464  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8037B508 00378468  38 8A 00 00 */	addi r4, r10, 0
/* 8037B50C 0037846C  50 A4 54 EA */	rlwimi r4, r5, 0xa, 0x13, 0x15
/* 8037B510 00378470  50 C4 3D B0 */	rlwimi r4, r6, 7, 0x16, 0x18
/* 8037B514 00378474  50 E4 26 76 */	rlwimi r4, r7, 4, 0x19, 0x1b
/* 8037B518 00378478  90 83 80 00 */	stw r4, 0xCC008000@l(r3)
/* 8037B51C 0037847C  38 00 00 00 */	li r0, 0
/* 8037B520 00378480  90 88 01 70 */	stw r4, 0x170(r8)
/* 8037B524 00378484  B0 09 00 02 */	sth r0, 2(r9)
/* 8037B528 00378488  4E 80 00 20 */	blr

.global GXSetTevColorOp
GXSetTevColorOp:
/* 8037B52C 0037848C  80 02 CE 08 */	lwz r0, lbl_805AEB28@sda21(r2)
/* 8037B530 00378490  54 69 10 3A */	slwi r9, r3, 2
/* 8037B534 00378494  2C 04 00 01 */	cmpwi r4, 1
/* 8037B538 00378498  7C 60 4A 14 */	add r3, r0, r9
/* 8037B53C 0037849C  80 63 01 30 */	lwz r3, 0x130(r3)
/* 8037B540 003784A0  50 83 93 5A */	rlwimi r3, r4, 0x12, 0xd, 0xd
/* 8037B544 003784A4  39 43 00 00 */	addi r10, r3, 0
/* 8037B548 003784A8  41 81 00 10 */	bgt lbl_8037B558
/* 8037B54C 003784AC  50 CA A2 96 */	rlwimi r10, r6, 0x14, 0xa, 0xb
/* 8037B550 003784B0  50 AA 83 9E */	rlwimi r10, r5, 0x10, 0xe, 0xf
/* 8037B554 003784B4  48 00 00 10 */	b lbl_8037B564
lbl_8037B558:
/* 8037B558 003784B8  38 00 00 03 */	li r0, 3
/* 8037B55C 003784BC  50 8A 9A 96 */	rlwimi r10, r4, 0x13, 0xa, 0xb
/* 8037B560 003784C0  50 0A 83 9E */	rlwimi r10, r0, 0x10, 0xe, 0xf
lbl_8037B564:
/* 8037B564 003784C4  38 00 00 61 */	li r0, 0x61
/* 8037B568 003784C8  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 8037B56C 003784CC  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8037B570 003784D0  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8037B574 003784D4  50 EA 9B 18 */	rlwimi r10, r7, 0x13, 0xc, 0xc
/* 8037B578 003784D8  51 0A B2 12 */	rlwimi r10, r8, 0x16, 8, 9
/* 8037B57C 003784DC  91 45 80 00 */	stw r10, 0xCC008000@l(r5)
/* 8037B580 003784E0  7C 64 4A 14 */	add r3, r4, r9
/* 8037B584 003784E4  38 00 00 00 */	li r0, 0
/* 8037B588 003784E8  91 43 01 30 */	stw r10, 0x130(r3)
/* 8037B58C 003784EC  B0 04 00 02 */	sth r0, 2(r4)
/* 8037B590 003784F0  4E 80 00 20 */	blr

.global GXSetTevAlphaOp
GXSetTevAlphaOp:
/* 8037B594 003784F4  80 02 CE 08 */	lwz r0, lbl_805AEB28@sda21(r2)
/* 8037B598 003784F8  54 69 10 3A */	slwi r9, r3, 2
/* 8037B59C 003784FC  2C 04 00 01 */	cmpwi r4, 1
/* 8037B5A0 00378500  7C 60 4A 14 */	add r3, r0, r9
/* 8037B5A4 00378504  80 63 01 70 */	lwz r3, 0x170(r3)
/* 8037B5A8 00378508  50 83 93 5A */	rlwimi r3, r4, 0x12, 0xd, 0xd
/* 8037B5AC 0037850C  39 43 00 00 */	addi r10, r3, 0
/* 8037B5B0 00378510  41 81 00 10 */	bgt lbl_8037B5C0
/* 8037B5B4 00378514  50 CA A2 96 */	rlwimi r10, r6, 0x14, 0xa, 0xb
/* 8037B5B8 00378518  50 AA 83 9E */	rlwimi r10, r5, 0x10, 0xe, 0xf
/* 8037B5BC 0037851C  48 00 00 10 */	b lbl_8037B5CC
lbl_8037B5C0:
/* 8037B5C0 00378520  38 00 00 03 */	li r0, 3
/* 8037B5C4 00378524  50 8A 9A 96 */	rlwimi r10, r4, 0x13, 0xa, 0xb
/* 8037B5C8 00378528  50 0A 83 9E */	rlwimi r10, r0, 0x10, 0xe, 0xf
lbl_8037B5CC:
/* 8037B5CC 0037852C  38 00 00 61 */	li r0, 0x61
/* 8037B5D0 00378530  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 8037B5D4 00378534  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8037B5D8 00378538  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8037B5DC 0037853C  50 EA 9B 18 */	rlwimi r10, r7, 0x13, 0xc, 0xc
/* 8037B5E0 00378540  51 0A B2 12 */	rlwimi r10, r8, 0x16, 8, 9
/* 8037B5E4 00378544  91 45 80 00 */	stw r10, 0xCC008000@l(r5)
/* 8037B5E8 00378548  7C 64 4A 14 */	add r3, r4, r9
/* 8037B5EC 0037854C  38 00 00 00 */	li r0, 0
/* 8037B5F0 00378550  91 43 01 70 */	stw r10, 0x170(r3)
/* 8037B5F4 00378554  B0 04 00 02 */	sth r0, 2(r4)
/* 8037B5F8 00378558  4E 80 00 20 */	blr

.global GXSetTevColor
GXSetTevColor:
/* 8037B5FC 0037855C  88 04 00 03 */	lbz r0, 3(r4)
/* 8037B600 00378560  54 68 08 3C */	slwi r8, r3, 1
/* 8037B604 00378564  88 A4 00 00 */	lbz r5, 0(r4)
/* 8037B608 00378568  38 E8 00 E0 */	addi r7, r8, 0xe0
/* 8037B60C 0037856C  54 09 60 26 */	slwi r9, r0, 0xc
/* 8037B610 00378570  50 A9 06 3E */	rlwimi r9, r5, 0, 0x18, 0x1f
/* 8037B614 00378574  89 44 00 02 */	lbz r10, 2(r4)
/* 8037B618 00378578  88 C4 00 01 */	lbz r6, 1(r4)
/* 8037B61C 0037857C  54 E7 C0 0E */	slwi r7, r7, 0x18
/* 8037B620 00378580  38 A0 00 61 */	li r5, 0x61
/* 8037B624 00378584  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 8037B628 00378588  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8037B62C 0037858C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B630 00378590  51 27 03 3E */	rlwimi r7, r9, 0, 0xc, 0x1f
/* 8037B634 00378594  38 08 00 E1 */	addi r0, r8, 0xe1
/* 8037B638 00378598  90 E4 80 00 */	stw r7, 0xCC008000@l(r4)
/* 8037B63C 0037859C  54 C7 60 26 */	slwi r7, r6, 0xc
/* 8037B640 003785A0  54 06 C0 0E */	slwi r6, r0, 0x18
/* 8037B644 003785A4  51 47 06 3E */	rlwimi r7, r10, 0, 0x18, 0x1f
/* 8037B648 003785A8  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B64C 003785AC  50 E6 03 3E */	rlwimi r6, r7, 0, 0xc, 0x1f
/* 8037B650 003785B0  90 C4 80 00 */	stw r6, 0xCC008000@l(r4)
/* 8037B654 003785B4  38 00 00 00 */	li r0, 0
/* 8037B658 003785B8  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B65C 003785BC  90 C4 80 00 */	stw r6, 0xCC008000@l(r4)
/* 8037B660 003785C0  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B664 003785C4  90 C4 80 00 */	stw r6, 0xCC008000@l(r4)
/* 8037B668 003785C8  B0 03 00 02 */	sth r0, 2(r3)
/* 8037B66C 003785CC  4E 80 00 20 */	blr

.global GXSetTevColorS10
GXSetTevColorS10:
/* 8037B670 003785D0  A8 04 00 06 */	lha r0, 6(r4)
/* 8037B674 003785D4  54 69 08 3C */	slwi r9, r3, 1
/* 8037B678 003785D8  A8 A4 00 00 */	lha r5, 0(r4)
/* 8037B67C 003785DC  39 09 00 E0 */	addi r8, r9, 0xe0
/* 8037B680 003785E0  54 0A 62 66 */	rlwinm r10, r0, 0xc, 9, 0x13
/* 8037B684 003785E4  50 AA 05 7E */	rlwimi r10, r5, 0, 0x15, 0x1f
/* 8037B688 003785E8  A8 E4 00 04 */	lha r7, 4(r4)
/* 8037B68C 003785EC  A8 C4 00 02 */	lha r6, 2(r4)
/* 8037B690 003785F0  55 08 C0 0E */	slwi r8, r8, 0x18
/* 8037B694 003785F4  38 A0 00 61 */	li r5, 0x61
/* 8037B698 003785F8  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 8037B69C 003785FC  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8037B6A0 00378600  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B6A4 00378604  51 48 02 7E */	rlwimi r8, r10, 0, 9, 0x1f
/* 8037B6A8 00378608  38 09 00 E1 */	addi r0, r9, 0xe1
/* 8037B6AC 0037860C  91 04 80 00 */	stw r8, 0xCC008000@l(r4)
/* 8037B6B0 00378610  54 C8 62 66 */	rlwinm r8, r6, 0xc, 9, 0x13
/* 8037B6B4 00378614  54 06 C0 0E */	slwi r6, r0, 0x18
/* 8037B6B8 00378618  50 E8 05 7E */	rlwimi r8, r7, 0, 0x15, 0x1f
/* 8037B6BC 0037861C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B6C0 00378620  51 06 02 7E */	rlwimi r6, r8, 0, 9, 0x1f
/* 8037B6C4 00378624  90 C4 80 00 */	stw r6, 0xCC008000@l(r4)
/* 8037B6C8 00378628  38 00 00 00 */	li r0, 0
/* 8037B6CC 0037862C  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B6D0 00378630  90 C4 80 00 */	stw r6, 0xCC008000@l(r4)
/* 8037B6D4 00378634  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 8037B6D8 00378638  90 C4 80 00 */	stw r6, 0xCC008000@l(r4)
/* 8037B6DC 0037863C  B0 03 00 02 */	sth r0, 2(r3)
/* 8037B6E0 00378640  4E 80 00 20 */	blr

.global GXSetTevKColor
GXSetTevKColor:
/* 8037B6E4 00378644  88 04 00 03 */	lbz r0, 3(r4)
/* 8037B6E8 00378648  54 65 08 3C */	slwi r5, r3, 1
/* 8037B6EC 0037864C  88 C4 00 00 */	lbz r6, 0(r4)
/* 8037B6F0 00378650  38 E5 00 E0 */	addi r7, r5, 0xe0
/* 8037B6F4 00378654  54 00 60 26 */	slwi r0, r0, 0xc
/* 8037B6F8 00378658  50 C0 06 3E */	rlwimi r0, r6, 0, 0x18, 0x1f
/* 8037B6FC 0037865C  88 C4 00 01 */	lbz r6, 1(r4)
/* 8037B700 00378660  89 24 00 02 */	lbz r9, 2(r4)
/* 8037B704 00378664  54 00 03 0E */	rlwinm r0, r0, 0, 0xc, 7
/* 8037B708 00378668  64 08 00 80 */	oris r8, r0, 0x80
/* 8037B70C 0037866C  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 8037B710 00378670  54 E7 C0 0E */	slwi r7, r7, 0x18
/* 8037B714 00378674  38 00 00 61 */	li r0, 0x61
/* 8037B718 00378678  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8037B71C 0037867C  54 C6 60 26 */	slwi r6, r6, 0xc
/* 8037B720 00378680  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8037B724 00378684  51 07 02 3E */	rlwimi r7, r8, 0, 8, 0x1f
/* 8037B728 00378688  90 E4 80 00 */	stw r7, 0xCC008000@l(r4)
/* 8037B72C 0037868C  51 26 06 3E */	rlwimi r6, r9, 0, 0x18, 0x1f
/* 8037B730 00378690  38 A5 00 E1 */	addi r5, r5, 0xe1
/* 8037B734 00378694  98 04 80 00 */	stb r0, 0xCC008000@l(r4)
/* 8037B738 00378698  54 C0 03 0E */	rlwinm r0, r6, 0, 0xc, 7
/* 8037B73C 0037869C  64 06 00 80 */	oris r6, r0, 0x80
/* 8037B740 003786A0  54 A0 C0 0E */	slwi r0, r5, 0x18
/* 8037B744 003786A4  50 C0 02 3E */	rlwimi r0, r6, 0, 8, 0x1f
/* 8037B748 003786A8  90 04 80 00 */	stw r0, 0xCC008000@l(r4)
/* 8037B74C 003786AC  38 00 00 00 */	li r0, 0
/* 8037B750 003786B0  B0 03 00 02 */	sth r0, 2(r3)
/* 8037B754 003786B4  4E 80 00 20 */	blr

.global GXSetTevKColorSel
GXSetTevKColorSel:
/* 8037B758 003786B8  7C 65 0E 70 */	srawi r5, r3, 1
/* 8037B75C 003786BC  80 C2 CE 08 */	lwz r6, lbl_805AEB28@sda21(r2)
/* 8037B760 003786C0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8037B764 003786C4  54 A3 10 3A */	slwi r3, r5, 2
/* 8037B768 003786C8  38 E3 01 B0 */	addi r7, r3, 0x1b0
/* 8037B76C 003786CC  7C E6 3A 14 */	add r7, r6, r7
/* 8037B770 003786D0  41 82 00 1C */	beq lbl_8037B78C
/* 8037B774 003786D4  80 67 00 00 */	lwz r3, 0(r7)
/* 8037B778 003786D8  54 80 70 22 */	slwi r0, r4, 0xe
/* 8037B77C 003786DC  54 63 04 98 */	rlwinm r3, r3, 0, 0x12, 0xc
/* 8037B780 003786E0  7C 60 03 78 */	or r0, r3, r0
/* 8037B784 003786E4  90 07 00 00 */	stw r0, 0(r7)
/* 8037B788 003786E8  48 00 00 18 */	b lbl_8037B7A0
lbl_8037B78C:
/* 8037B78C 003786EC  80 67 00 00 */	lwz r3, 0(r7)
/* 8037B790 003786F0  54 80 20 36 */	slwi r0, r4, 4
/* 8037B794 003786F4  54 63 07 2C */	rlwinm r3, r3, 0, 0x1c, 0x16
/* 8037B798 003786F8  7C 60 03 78 */	or r0, r3, r0
/* 8037B79C 003786FC  90 07 00 00 */	stw r0, 0(r7)
lbl_8037B7A0:
/* 8037B7A0 00378700  38 00 00 61 */	li r0, 0x61
/* 8037B7A4 00378704  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 8037B7A8 00378708  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8037B7AC 0037870C  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8037B7B0 00378710  38 00 00 00 */	li r0, 0
/* 8037B7B4 00378714  80 87 00 00 */	lwz r4, 0(r7)
/* 8037B7B8 00378718  90 85 80 00 */	stw r4, 0xCC008000@l(r5)
/* 8037B7BC 0037871C  B0 03 00 02 */	sth r0, 2(r3)
/* 8037B7C0 00378720  4E 80 00 20 */	blr

.global GXSetTevKAlphaSel
GXSetTevKAlphaSel:
/* 8037B7C4 00378724  7C 65 0E 70 */	srawi r5, r3, 1
/* 8037B7C8 00378728  80 C2 CE 08 */	lwz r6, lbl_805AEB28@sda21(r2)
/* 8037B7CC 0037872C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8037B7D0 00378730  54 A3 10 3A */	slwi r3, r5, 2
/* 8037B7D4 00378734  38 E3 01 B0 */	addi r7, r3, 0x1b0
/* 8037B7D8 00378738  7C E6 3A 14 */	add r7, r6, r7
/* 8037B7DC 0037873C  41 82 00 1C */	beq lbl_8037B7F8
/* 8037B7E0 00378740  80 67 00 00 */	lwz r3, 0(r7)
/* 8037B7E4 00378744  54 80 98 18 */	slwi r0, r4, 0x13
/* 8037B7E8 00378748  54 63 03 4E */	rlwinm r3, r3, 0, 0xd, 7
/* 8037B7EC 0037874C  7C 60 03 78 */	or r0, r3, r0
/* 8037B7F0 00378750  90 07 00 00 */	stw r0, 0(r7)
/* 8037B7F4 00378754  48 00 00 18 */	b lbl_8037B80C
lbl_8037B7F8:
/* 8037B7F8 00378758  80 67 00 00 */	lwz r3, 0(r7)
/* 8037B7FC 0037875C  54 80 48 2C */	slwi r0, r4, 9
/* 8037B800 00378760  54 63 05 E2 */	rlwinm r3, r3, 0, 0x17, 0x11
/* 8037B804 00378764  7C 60 03 78 */	or r0, r3, r0
/* 8037B808 00378768  90 07 00 00 */	stw r0, 0(r7)
lbl_8037B80C:
/* 8037B80C 0037876C  38 00 00 61 */	li r0, 0x61
/* 8037B810 00378770  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 8037B814 00378774  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8037B818 00378778  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8037B81C 0037877C  38 00 00 00 */	li r0, 0
/* 8037B820 00378780  80 87 00 00 */	lwz r4, 0(r7)
/* 8037B824 00378784  90 85 80 00 */	stw r4, 0xCC008000@l(r5)
/* 8037B828 00378788  B0 03 00 02 */	sth r0, 2(r3)
/* 8037B82C 0037878C  4E 80 00 20 */	blr

.global GXSetTevSwapMode
GXSetTevSwapMode:
/* 8037B830 00378790  54 63 10 3A */	slwi r3, r3, 2
/* 8037B834 00378794  80 E2 CE 08 */	lwz r7, lbl_805AEB28@sda21(r2)
/* 8037B838 00378798  39 03 01 70 */	addi r8, r3, 0x170
/* 8037B83C 0037879C  7D 07 42 14 */	add r8, r7, r8
/* 8037B840 003787A0  80 08 00 00 */	lwz r0, 0(r8)
/* 8037B844 003787A4  54 A5 10 3A */	slwi r5, r5, 2
/* 8037B848 003787A8  38 60 00 61 */	li r3, 0x61
/* 8037B84C 003787AC  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 8037B850 003787B0  7C 00 23 78 */	or r0, r0, r4
/* 8037B854 003787B4  90 08 00 00 */	stw r0, 0(r8)
/* 8037B858 003787B8  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 8037B85C 003787BC  38 00 00 00 */	li r0, 0
/* 8037B860 003787C0  80 C8 00 00 */	lwz r6, 0(r8)
/* 8037B864 003787C4  54 C6 07 B6 */	rlwinm r6, r6, 0, 0x1e, 0x1b
/* 8037B868 003787C8  7C C5 2B 78 */	or r5, r6, r5
/* 8037B86C 003787CC  90 A8 00 00 */	stw r5, 0(r8)
/* 8037B870 003787D0  98 64 80 00 */	stb r3, 0xCC008000@l(r4)
/* 8037B874 003787D4  80 68 00 00 */	lwz r3, 0(r8)
/* 8037B878 003787D8  90 64 80 00 */	stw r3, 0xCC008000@l(r4)
/* 8037B87C 003787DC  B0 07 00 02 */	sth r0, 2(r7)
/* 8037B880 003787E0  4E 80 00 20 */	blr

.global GXSetTevSwapModeTable
GXSetTevSwapModeTable:
/* 8037B884 003787E4  54 6A 08 3C */	slwi r10, r3, 1
/* 8037B888 003787E8  81 22 CE 08 */	lwz r9, lbl_805AEB28@sda21(r2)
/* 8037B88C 003787EC  54 63 18 38 */	slwi r3, r3, 3
/* 8037B890 003787F0  39 63 01 B0 */	addi r11, r3, 0x1b0
/* 8037B894 003787F4  7D 69 5A 14 */	add r11, r9, r11
/* 8037B898 003787F8  81 0B 00 00 */	lwz r8, 0(r11)
/* 8037B89C 003787FC  38 0A 00 01 */	addi r0, r10, 1
/* 8037B8A0 00378800  54 03 10 3A */	slwi r3, r0, 2
/* 8037B8A4 00378804  55 00 00 3A */	rlwinm r0, r8, 0, 0, 0x1d
/* 8037B8A8 00378808  7C 00 23 78 */	or r0, r0, r4
/* 8037B8AC 0037880C  90 0B 00 00 */	stw r0, 0(r11)
/* 8037B8B0 00378810  39 43 01 B0 */	addi r10, r3, 0x1b0
/* 8037B8B4 00378814  54 A0 10 3A */	slwi r0, r5, 2
/* 8037B8B8 00378818  80 6B 00 00 */	lwz r3, 0(r11)
/* 8037B8BC 0037881C  39 00 00 61 */	li r8, 0x61
/* 8037B8C0 00378820  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8037B8C4 00378824  54 63 07 B6 */	rlwinm r3, r3, 0, 0x1e, 0x1b
/* 8037B8C8 00378828  7C 60 03 78 */	or r0, r3, r0
/* 8037B8CC 0037882C  90 0B 00 00 */	stw r0, 0(r11)
/* 8037B8D0 00378830  7D 49 52 14 */	add r10, r9, r10
/* 8037B8D4 00378834  54 E3 10 3A */	slwi r3, r7, 2
/* 8037B8D8 00378838  99 05 80 00 */	stb r8, 0xCC008000@l(r5)
/* 8037B8DC 0037883C  38 00 00 00 */	li r0, 0
/* 8037B8E0 00378840  80 8B 00 00 */	lwz r4, 0(r11)
/* 8037B8E4 00378844  90 85 80 00 */	stw r4, 0xCC008000@l(r5)
/* 8037B8E8 00378848  80 8A 00 00 */	lwz r4, 0(r10)
/* 8037B8EC 0037884C  54 84 00 3A */	rlwinm r4, r4, 0, 0, 0x1d
/* 8037B8F0 00378850  7C 84 33 78 */	or r4, r4, r6
/* 8037B8F4 00378854  90 8A 00 00 */	stw r4, 0(r10)
/* 8037B8F8 00378858  80 8A 00 00 */	lwz r4, 0(r10)
/* 8037B8FC 0037885C  54 84 07 B6 */	rlwinm r4, r4, 0, 0x1e, 0x1b
/* 8037B900 00378860  7C 83 1B 78 */	or r3, r4, r3
/* 8037B904 00378864  90 6A 00 00 */	stw r3, 0(r10)
/* 8037B908 00378868  99 05 80 00 */	stb r8, 0xCC008000@l(r5)
/* 8037B90C 0037886C  80 6A 00 00 */	lwz r3, 0(r10)
/* 8037B910 00378870  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 8037B914 00378874  B0 09 00 02 */	sth r0, 2(r9)
/* 8037B918 00378878  4E 80 00 20 */	blr

.global GXSetAlphaCompare
GXSetAlphaCompare:
/* 8037B91C 0037887C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8037B920 00378880  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 8037B924 00378884  64 00 F3 00 */	oris r0, r0, 0xf300
/* 8037B928 00378888  54 00 06 1E */	rlwinm r0, r0, 0, 0x18, 0xf
/* 8037B92C 0037888C  50 E0 44 2E */	rlwimi r0, r7, 8, 0x10, 0x17
/* 8037B930 00378890  54 07 04 18 */	rlwinm r7, r0, 0, 0x10, 0xc
/* 8037B934 00378894  54 60 80 1E */	slwi r0, r3, 0x10
/* 8037B938 00378898  7C E0 03 78 */	or r0, r7, r0
/* 8037B93C 0037889C  54 03 03 52 */	rlwinm r3, r0, 0, 0xd, 9
/* 8037B940 003788A0  54 C0 98 18 */	slwi r0, r6, 0x13
/* 8037B944 003788A4  7C 66 03 78 */	or r6, r3, r0
/* 8037B948 003788A8  38 00 00 61 */	li r0, 0x61
/* 8037B94C 003788AC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8037B950 003788B0  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 8037B954 003788B4  54 C6 02 8E */	rlwinm r6, r6, 0, 0xa, 7
/* 8037B958 003788B8  54 A0 B0 12 */	slwi r0, r5, 0x16
/* 8037B95C 003788BC  7C C0 03 78 */	or r0, r6, r0
/* 8037B960 003788C0  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8037B964 003788C4  38 00 00 00 */	li r0, 0
/* 8037B968 003788C8  B0 04 00 02 */	sth r0, 2(r4)
/* 8037B96C 003788CC  4E 80 00 20 */	blr

.global GXSetZTexture
GXSetZTexture:
/* 8037B970 003788D0  2C 04 00 13 */	cmpwi r4, 0x13
/* 8037B974 003788D4  54 A0 02 3E */	clrlwi r0, r5, 8
/* 8037B978 003788D8  64 07 F4 00 */	oris r7, r0, 0xf400
/* 8037B97C 003788DC  41 82 00 28 */	beq lbl_8037B9A4
/* 8037B980 003788E0  40 80 00 10 */	bge lbl_8037B990
/* 8037B984 003788E4  2C 04 00 11 */	cmpwi r4, 0x11
/* 8037B988 003788E8  41 82 00 14 */	beq lbl_8037B99C
/* 8037B98C 003788EC  48 00 00 28 */	b lbl_8037B9B4
lbl_8037B990:
/* 8037B990 003788F0  2C 04 00 16 */	cmpwi r4, 0x16
/* 8037B994 003788F4  41 82 00 18 */	beq lbl_8037B9AC
/* 8037B998 003788F8  48 00 00 1C */	b lbl_8037B9B4
lbl_8037B99C:
/* 8037B99C 003788FC  38 C0 00 00 */	li r6, 0
/* 8037B9A0 00378900  48 00 00 18 */	b lbl_8037B9B8
lbl_8037B9A4:
/* 8037B9A4 00378904  38 C0 00 01 */	li r6, 1
/* 8037B9A8 00378908  48 00 00 10 */	b lbl_8037B9B8
lbl_8037B9AC:
/* 8037B9AC 0037890C  38 C0 00 02 */	li r6, 2
/* 8037B9B0 00378910  48 00 00 08 */	b lbl_8037B9B8
lbl_8037B9B4:
/* 8037B9B4 00378914  38 C0 00 02 */	li r6, 2
lbl_8037B9B8:
/* 8037B9B8 00378918  38 00 00 61 */	li r0, 0x61
/* 8037B9BC 0037891C  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 8037B9C0 00378920  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8037B9C4 00378924  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8037B9C8 00378928  54 C6 07 B6 */	rlwinm r6, r6, 0, 0x1e, 0x1b
/* 8037B9CC 0037892C  54 63 10 3A */	slwi r3, r3, 2
/* 8037B9D0 00378930  90 E5 80 00 */	stw r7, 0xCC008000@l(r5)
/* 8037B9D4 00378934  7C C3 1B 78 */	or r3, r6, r3
/* 8037B9D8 00378938  54 63 02 3E */	clrlwi r3, r3, 8
/* 8037B9DC 0037893C  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8037B9E0 00378940  64 63 F5 00 */	oris r3, r3, 0xf500
/* 8037B9E4 00378944  38 00 00 00 */	li r0, 0
/* 8037B9E8 00378948  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 8037B9EC 0037894C  B0 04 00 02 */	sth r0, 2(r4)
/* 8037B9F0 00378950  4E 80 00 20 */	blr

.global GXSetTevOrder
GXSetTevOrder:
/* 8037B9F4 00378954  7C 67 0E 70 */	srawi r7, r3, 1
/* 8037B9F8 00378958  81 22 CE 08 */	lwz r9, lbl_805AEB28@sda21(r2)
/* 8037B9FC 0037895C  54 AA 06 2C */	rlwinm r10, r5, 0, 0x18, 0x16
/* 8037BA00 00378960  7C E7 01 94 */	addze r7, r7
/* 8037BA04 00378964  54 60 10 3A */	slwi r0, r3, 2
/* 8037BA08 00378968  7D 09 02 14 */	add r8, r9, r0
/* 8037BA0C 0037896C  54 E7 10 3A */	slwi r7, r7, 2
/* 8037BA10 00378970  90 A8 04 9C */	stw r5, 0x49c(r8)
/* 8037BA14 00378974  38 E7 01 00 */	addi r7, r7, 0x100
/* 8037BA18 00378978  28 0A 00 08 */	cmplwi r10, 8
/* 8037BA1C 0037897C  38 0A 00 00 */	addi r0, r10, 0
/* 8037BA20 00378980  7C E9 3A 14 */	add r7, r9, r7
/* 8037BA24 00378984  41 80 00 0C */	blt lbl_8037BA30
/* 8037BA28 00378988  39 20 00 00 */	li r9, 0
/* 8037BA2C 0037898C  48 00 00 08 */	b lbl_8037BA34
lbl_8037BA30:
/* 8037BA30 00378990  7C 09 03 78 */	mr r9, r0
lbl_8037BA34:
/* 8037BA34 00378994  2C 04 00 08 */	cmpwi r4, 8
/* 8037BA38 00378998  41 80 00 28 */	blt lbl_8037BA60
/* 8037BA3C 0037899C  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 8037BA40 003789A0  38 00 00 01 */	li r0, 1
/* 8037BA44 003789A4  7C 00 18 30 */	slw r0, r0, r3
/* 8037BA48 003789A8  81 04 04 E0 */	lwz r8, 0x4e0(r4)
/* 8037BA4C 003789AC  39 44 04 E0 */	addi r10, r4, 0x4e0
/* 8037BA50 003789B0  38 80 00 00 */	li r4, 0
/* 8037BA54 003789B4  7D 00 00 78 */	andc r0, r8, r0
/* 8037BA58 003789B8  90 0A 00 00 */	stw r0, 0(r10)
/* 8037BA5C 003789BC  48 00 00 20 */	b lbl_8037BA7C
lbl_8037BA60:
/* 8037BA60 003789C0  81 02 CE 08 */	lwz r8, lbl_805AEB28@sda21(r2)
/* 8037BA64 003789C4  38 00 00 01 */	li r0, 1
/* 8037BA68 003789C8  7C 00 18 30 */	slw r0, r0, r3
/* 8037BA6C 003789CC  39 48 04 E0 */	addi r10, r8, 0x4e0
/* 8037BA70 003789D0  81 08 04 E0 */	lwz r8, 0x4e0(r8)
/* 8037BA74 003789D4  7D 00 03 78 */	or r0, r8, r0
/* 8037BA78 003789D8  90 0A 00 00 */	stw r0, 0(r10)
lbl_8037BA7C:
/* 8037BA7C 003789DC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8037BA80 003789E0  41 82 00 94 */	beq lbl_8037BB14
/* 8037BA84 003789E4  81 07 00 00 */	lwz r8, 0(r7)
/* 8037BA88 003789E8  55 23 60 26 */	slwi r3, r9, 0xc
/* 8037BA8C 003789EC  54 80 78 20 */	slwi r0, r4, 0xf
/* 8037BA90 003789F0  55 04 05 20 */	rlwinm r4, r8, 0, 0x14, 0x10
/* 8037BA94 003789F4  7C 83 1B 78 */	or r3, r4, r3
/* 8037BA98 003789F8  90 67 00 00 */	stw r3, 0(r7)
/* 8037BA9C 003789FC  2C 06 00 FF */	cmpwi r6, 0xff
/* 8037BAA0 00378A00  80 67 00 00 */	lwz r3, 0(r7)
/* 8037BAA4 00378A04  54 63 04 5A */	rlwinm r3, r3, 0, 0x11, 0xd
/* 8037BAA8 00378A08  7C 60 03 78 */	or r0, r3, r0
/* 8037BAAC 00378A0C  90 07 00 00 */	stw r0, 0(r7)
/* 8037BAB0 00378A10  40 82 00 0C */	bne lbl_8037BABC
/* 8037BAB4 00378A14  38 00 00 07 */	li r0, 7
/* 8037BAB8 00378A18  48 00 00 18 */	b lbl_8037BAD0
lbl_8037BABC:
/* 8037BABC 00378A1C  3C 60 80 3F */	lis r3, lbl_803F0C68@ha
/* 8037BAC0 00378A20  54 C4 10 3A */	slwi r4, r6, 2
/* 8037BAC4 00378A24  38 03 0C 68 */	addi r0, r3, lbl_803F0C68@l
/* 8037BAC8 00378A28  7C 60 22 14 */	add r3, r0, r4
/* 8037BACC 00378A2C  80 03 00 00 */	lwz r0, 0(r3)
lbl_8037BAD0:
/* 8037BAD0 00378A30  80 67 00 00 */	lwz r3, 0(r7)
/* 8037BAD4 00378A34  54 00 98 18 */	slwi r0, r0, 0x13
/* 8037BAD8 00378A38  2C 05 00 FF */	cmpwi r5, 0xff
/* 8037BADC 00378A3C  54 63 03 52 */	rlwinm r3, r3, 0, 0xd, 9
/* 8037BAE0 00378A40  7C 60 03 78 */	or r0, r3, r0
/* 8037BAE4 00378A44  90 07 00 00 */	stw r0, 0(r7)
/* 8037BAE8 00378A48  38 80 00 00 */	li r4, 0
/* 8037BAEC 00378A4C  41 82 00 10 */	beq lbl_8037BAFC
/* 8037BAF0 00378A50  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 8037BAF4 00378A54  40 82 00 08 */	bne lbl_8037BAFC
/* 8037BAF8 00378A58  38 80 00 01 */	li r4, 1
lbl_8037BAFC:
/* 8037BAFC 00378A5C  80 67 00 00 */	lwz r3, 0(r7)
/* 8037BB00 00378A60  54 80 90 1A */	slwi r0, r4, 0x12
/* 8037BB04 00378A64  54 63 03 98 */	rlwinm r3, r3, 0, 0xe, 0xc
/* 8037BB08 00378A68  7C 60 03 78 */	or r0, r3, r0
/* 8037BB0C 00378A6C  90 07 00 00 */	stw r0, 0(r7)
/* 8037BB10 00378A70  48 00 00 8C */	b lbl_8037BB9C
lbl_8037BB14:
/* 8037BB14 00378A74  80 67 00 00 */	lwz r3, 0(r7)
/* 8037BB18 00378A78  54 80 18 38 */	slwi r0, r4, 3
/* 8037BB1C 00378A7C  2C 06 00 FF */	cmpwi r6, 0xff
/* 8037BB20 00378A80  54 63 00 38 */	rlwinm r3, r3, 0, 0, 0x1c
/* 8037BB24 00378A84  7C 63 4B 78 */	or r3, r3, r9
/* 8037BB28 00378A88  90 67 00 00 */	stw r3, 0(r7)
/* 8037BB2C 00378A8C  80 67 00 00 */	lwz r3, 0(r7)
/* 8037BB30 00378A90  54 63 07 72 */	rlwinm r3, r3, 0, 0x1d, 0x19
/* 8037BB34 00378A94  7C 60 03 78 */	or r0, r3, r0
/* 8037BB38 00378A98  90 07 00 00 */	stw r0, 0(r7)
/* 8037BB3C 00378A9C  40 82 00 0C */	bne lbl_8037BB48
/* 8037BB40 00378AA0  38 00 00 07 */	li r0, 7
/* 8037BB44 00378AA4  48 00 00 18 */	b lbl_8037BB5C
lbl_8037BB48:
/* 8037BB48 00378AA8  3C 60 80 3F */	lis r3, lbl_803F0C68@ha
/* 8037BB4C 00378AAC  54 C4 10 3A */	slwi r4, r6, 2
/* 8037BB50 00378AB0  38 03 0C 68 */	addi r0, r3, lbl_803F0C68@l
/* 8037BB54 00378AB4  7C 60 22 14 */	add r3, r0, r4
/* 8037BB58 00378AB8  80 03 00 00 */	lwz r0, 0(r3)
lbl_8037BB5C:
/* 8037BB5C 00378ABC  80 67 00 00 */	lwz r3, 0(r7)
/* 8037BB60 00378AC0  54 00 38 30 */	slwi r0, r0, 7
/* 8037BB64 00378AC4  2C 05 00 FF */	cmpwi r5, 0xff
/* 8037BB68 00378AC8  54 63 06 6A */	rlwinm r3, r3, 0, 0x19, 0x15
/* 8037BB6C 00378ACC  7C 60 03 78 */	or r0, r3, r0
/* 8037BB70 00378AD0  90 07 00 00 */	stw r0, 0(r7)
/* 8037BB74 00378AD4  38 80 00 00 */	li r4, 0
/* 8037BB78 00378AD8  41 82 00 10 */	beq lbl_8037BB88
/* 8037BB7C 00378ADC  54 A0 05 EF */	rlwinm. r0, r5, 0, 0x17, 0x17
/* 8037BB80 00378AE0  40 82 00 08 */	bne lbl_8037BB88
/* 8037BB84 00378AE4  38 80 00 01 */	li r4, 1
lbl_8037BB88:
/* 8037BB88 00378AE8  80 67 00 00 */	lwz r3, 0(r7)
/* 8037BB8C 00378AEC  54 80 30 32 */	slwi r0, r4, 6
/* 8037BB90 00378AF0  54 63 06 B0 */	rlwinm r3, r3, 0, 0x1a, 0x18
/* 8037BB94 00378AF4  7C 60 03 78 */	or r0, r3, r0
/* 8037BB98 00378AF8  90 07 00 00 */	stw r0, 0(r7)
lbl_8037BB9C:
/* 8037BB9C 00378AFC  38 00 00 61 */	li r0, 0x61
/* 8037BBA0 00378B00  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 8037BBA4 00378B04  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8037BBA8 00378B08  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8037BBAC 00378B0C  38 00 00 00 */	li r0, 0
/* 8037BBB0 00378B10  80 87 00 00 */	lwz r4, 0(r7)
/* 8037BBB4 00378B14  90 85 80 00 */	stw r4, 0xCC008000@l(r5)
/* 8037BBB8 00378B18  B0 03 00 02 */	sth r0, 2(r3)
/* 8037BBBC 00378B1C  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 8037BBC0 00378B20  60 00 00 01 */	ori r0, r0, 1
/* 8037BBC4 00378B24  90 03 04 F4 */	stw r0, 0x4f4(r3)
/* 8037BBC8 00378B28  4E 80 00 20 */	blr

.global GXSetNumTevStages
GXSetNumTevStages:
/* 8037BBCC 00378B2C  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 8037BBD0 00378B30  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8037BBD4 00378B34  38 03 FF FF */	addi r0, r3, -1
/* 8037BBD8 00378B38  80 64 02 04 */	lwz r3, 0x204(r4)
/* 8037BBDC 00378B3C  54 00 50 2A */	slwi r0, r0, 0xa
/* 8037BBE0 00378B40  54 63 05 A2 */	rlwinm r3, r3, 0, 0x16, 0x11
/* 8037BBE4 00378B44  7C 60 03 78 */	or r0, r3, r0
/* 8037BBE8 00378B48  90 04 02 04 */	stw r0, 0x204(r4)
/* 8037BBEC 00378B4C  80 04 04 F4 */	lwz r0, 0x4f4(r4)
/* 8037BBF0 00378B50  60 00 00 04 */	ori r0, r0, 4
/* 8037BBF4 00378B54  90 04 04 F4 */	stw r0, 0x4f4(r4)
/* 8037BBF8 00378B58  4E 80 00 20 */	blr
