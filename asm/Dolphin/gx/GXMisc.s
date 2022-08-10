.include "macros.inc"

.section .sbss
.balign 8
.global lbl_805A9868
lbl_805A9868:
	.skip 0x4
.global lbl_805A986C
lbl_805A986C:
	.skip 0x4
.global lbl_805A9870
lbl_805A9870:
	.skip 0x4
.global lbl_805A9874
lbl_805A9874:
	.skip 0xC


.section .text, "ax"

.global GXSetMisc
GXSetMisc:
/* 803782A4 00375204  2C 03 00 01 */	cmpwi r3, 1
/* 803782A8 00375208  41 82 00 14 */	beq lbl_803782BC
/* 803782AC 0037520C  4D 80 00 20 */	bltlr
/* 803782B0 00375210  2C 03 00 03 */	cmpwi r3, 3
/* 803782B4 00375214  4C 80 00 20 */	bgelr
/* 803782B8 00375218  48 00 00 40 */	b lbl_803782F8
lbl_803782BC:
/* 803782BC 0037521C  80 A2 CE 08 */	lwz r5, lbl_805AEB28@sda21(r2)
/* 803782C0 00375220  38 00 00 01 */	li r0, 1
/* 803782C4 00375224  B0 85 00 04 */	sth r4, 4(r5)
/* 803782C8 00375228  A0 65 00 04 */	lhz r3, 4(r5)
/* 803782CC 0037522C  7C 63 00 34 */	cntlzw r3, r3
/* 803782D0 00375230  54 63 DC 3E */	rlwinm r3, r3, 0x1b, 0x10, 0x1f
/* 803782D4 00375234  B0 65 00 00 */	sth r3, 0(r5)
/* 803782D8 00375238  B0 05 00 02 */	sth r0, 2(r5)
/* 803782DC 0037523C  A0 05 00 04 */	lhz r0, 4(r5)
/* 803782E0 00375240  28 00 00 00 */	cmplwi r0, 0
/* 803782E4 00375244  4D 82 00 20 */	beqlr
/* 803782E8 00375248  80 05 04 F4 */	lwz r0, 0x4f4(r5)
/* 803782EC 0037524C  60 00 00 08 */	ori r0, r0, 8
/* 803782F0 00375250  90 05 04 F4 */	stw r0, 0x4f4(r5)
/* 803782F4 00375254  4E 80 00 20 */	blr
lbl_803782F8:
/* 803782F8 00375258  7C 84 00 D0 */	neg r4, r4
/* 803782FC 0037525C  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 80378300 00375260  30 04 FF FF */	addic r0, r4, -1
/* 80378304 00375264  7C 00 21 10 */	subfe r0, r0, r4
/* 80378308 00375268  98 03 04 F1 */	stb r0, 0x4f1(r3)
/* 8037830C 0037526C  4E 80 00 20 */	blr

.global GXFlush
GXFlush:
/* 80378310 00375270  7C 08 02 A6 */	mflr r0
/* 80378314 00375274  90 01 00 04 */	stw r0, 4(r1)
/* 80378318 00375278  94 21 FF F8 */	stwu r1, -8(r1)
/* 8037831C 0037527C  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 80378320 00375280  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80378324 00375284  28 00 00 00 */	cmplwi r0, 0
/* 80378328 00375288  41 82 00 08 */	beq lbl_80378330
/* 8037832C 0037528C  48 00 05 29 */	bl __GXSetDirtyState
lbl_80378330:
/* 80378330 00375290  38 00 00 00 */	li r0, 0
/* 80378334 00375294  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80378338 00375298  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8037833C 0037529C  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80378340 003752A0  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80378344 003752A4  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80378348 003752A8  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8037834C 003752AC  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80378350 003752B0  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80378354 003752B4  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 80378358 003752B8  4B FF 74 B5 */	bl PPCSync
/* 8037835C 003752BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80378360 003752C0  38 21 00 08 */	addi r1, r1, 8
/* 80378364 003752C4  7C 08 03 A6 */	mtlr r0
/* 80378368 003752C8  4E 80 00 20 */	blr

.global sub_8037836c
sub_8037836c:
/* 8037836C 003752CC  7C 08 02 A6 */	mflr r0
/* 80378370 003752D0  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 80378374 003752D4  90 01 00 04 */	stw r0, 4(r1)
/* 80378378 003752D8  38 00 00 01 */	li r0, 1
/* 8037837C 003752DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80378380 003752E0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80378384 003752E4  3B 63 30 00 */	addi r27, r3, 0xCC003000@l
/* 80378388 003752E8  94 1B 00 18 */	stwu r0, 0x18(r27)
/* 8037838C 003752EC  48 00 D0 1D */	bl OSGetTime
/* 80378390 003752F0  38 00 00 00 */	li r0, 0
/* 80378394 003752F4  3B E4 00 00 */	addi r31, r4, 0
/* 80378398 003752F8  3B C3 00 00 */	addi r30, r3, 0
/* 8037839C 003752FC  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 803783A0 00375300  3B A0 00 32 */	li r29, 0x32
lbl_803783A4:
/* 803783A4 00375304  48 00 D0 05 */	bl OSGetTime
/* 803783A8 00375308  7C 9F 20 10 */	subfc r4, r31, r4
/* 803783AC 0037530C  7C 1E 19 10 */	subfe r0, r30, r3
/* 803783B0 00375310  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 803783B4 00375314  7C 04 E8 10 */	subfc r0, r4, r29
/* 803783B8 00375318  7C 63 E1 10 */	subfe r3, r3, r28
/* 803783BC 0037531C  7C 7C E1 10 */	subfe r3, r28, r28
/* 803783C0 00375320  7C 63 00 D1 */	neg. r3, r3
/* 803783C4 00375324  41 82 FF E0 */	beq lbl_803783A4
/* 803783C8 00375328  3B C0 00 00 */	li r30, 0
/* 803783CC 0037532C  93 DB 00 00 */	stw r30, 0(r27)
/* 803783D0 00375330  48 00 CF D9 */	bl OSGetTime
/* 803783D4 00375334  3B 84 00 00 */	addi r28, r4, 0
/* 803783D8 00375338  3B A3 00 00 */	addi r29, r3, 0
/* 803783DC 0037533C  6F DF 80 00 */	xoris r31, r30, 0x8000
/* 803783E0 00375340  3B C0 00 05 */	li r30, 5
lbl_803783E4:
/* 803783E4 00375344  48 00 CF C5 */	bl OSGetTime
/* 803783E8 00375348  7C 9C 20 10 */	subfc r4, r28, r4
/* 803783EC 0037534C  7C 1D 19 10 */	subfe r0, r29, r3
/* 803783F0 00375350  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 803783F4 00375354  7C 04 F0 10 */	subfc r0, r4, r30
/* 803783F8 00375358  7C 63 F9 10 */	subfe r3, r3, r31
/* 803783FC 0037535C  7C 7F F9 10 */	subfe r3, r31, r31
/* 80378400 00375360  7C 63 00 D1 */	neg. r3, r3
/* 80378404 00375364  41 82 FF E0 */	beq lbl_803783E4
/* 80378408 00375368  4B FF E6 1D */	bl __GXCleanGPFifo
/* 8037840C 0037536C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80378410 00375370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80378414 00375374  38 21 00 20 */	addi r1, r1, 0x20
/* 80378418 00375378  7C 08 03 A6 */	mtlr r0
/* 8037841C 0037537C  4E 80 00 20 */	blr

.global GXSetDrawSync
GXSetDrawSync:
/* 80378420 00375380  7C 08 02 A6 */	mflr r0
/* 80378424 00375384  90 01 00 04 */	stw r0, 4(r1)
/* 80378428 00375388  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8037842C 0037538C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80378430 00375390  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80378434 00375394  7C 7E 1B 78 */	mr r30, r3
/* 80378438 00375398  48 00 92 29 */	bl OSDisableInterrupts
/* 8037843C 0037539C  38 C0 00 61 */	li r6, 0x61
/* 80378440 003753A0  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 80378444 003753A4  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80378448 003753A8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8037844C 003753AC  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 80378450 003753B0  64 00 48 00 */	oris r0, r0, 0x4800
/* 80378454 003753B4  90 05 80 00 */	stw r0, 0xCC008000@l(r5)
/* 80378458 003753B8  54 00 00 1E */	rlwinm r0, r0, 0, 0, 0xf
/* 8037845C 003753BC  53 C0 04 3E */	rlwimi r0, r30, 0, 0x10, 0x1f
/* 80378460 003753C0  54 00 02 3E */	clrlwi r0, r0, 8
/* 80378464 003753C4  98 C5 80 00 */	stb r6, 0xCC008000@l(r5)
/* 80378468 003753C8  64 00 47 00 */	oris r0, r0, 0x4700
/* 8037846C 003753CC  90 05 80 00 */	stw r0, 0xCC008000@l(r5)
/* 80378470 003753D0  7C 7E 1B 78 */	mr r30, r3
/* 80378474 003753D4  80 04 04 F4 */	lwz r0, 0x4f4(r4)
/* 80378478 003753D8  28 00 00 00 */	cmplwi r0, 0
/* 8037847C 003753DC  41 82 00 08 */	beq lbl_80378484
/* 80378480 003753E0  48 00 03 D5 */	bl __GXSetDirtyState
lbl_80378484:
/* 80378484 003753E4  3B E0 00 00 */	li r31, 0
/* 80378488 003753E8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8037848C 003753EC  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 80378490 003753F0  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 80378494 003753F4  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 80378498 003753F8  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 8037849C 003753FC  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 803784A0 00375400  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 803784A4 00375404  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 803784A8 00375408  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 803784AC 0037540C  4B FF 73 61 */	bl PPCSync
/* 803784B0 00375410  7F C3 F3 78 */	mr r3, r30
/* 803784B4 00375414  48 00 91 D5 */	bl OSRestoreInterrupts
/* 803784B8 00375418  80 62 CE 08 */	lwz r3, lbl_805AEB28@sda21(r2)
/* 803784BC 0037541C  B3 E3 00 02 */	sth r31, 2(r3)
/* 803784C0 00375420  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803784C4 00375424  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803784C8 00375428  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803784CC 0037542C  38 21 00 18 */	addi r1, r1, 0x18
/* 803784D0 00375430  7C 08 03 A6 */	mtlr r0
/* 803784D4 00375434  4E 80 00 20 */	blr

.global GXReadDrawSync
GXReadDrawSync:
/* 803784D8 00375438  80 6D AC 80 */	lwz r3, lbl_805A9840@sda21(r13)
/* 803784DC 0037543C  A0 63 00 0E */	lhz r3, 0xe(r3)
/* 803784E0 00375440  4E 80 00 20 */	blr

.global GXDrawDone
GXDrawDone:
/* 803784E4 00375444  7C 08 02 A6 */	mflr r0
/* 803784E8 00375448  90 01 00 04 */	stw r0, 4(r1)
/* 803784EC 0037544C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803784F0 00375450  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803784F4 00375454  48 00 91 6D */	bl OSDisableInterrupts
/* 803784F8 00375458  38 00 00 61 */	li r0, 0x61
/* 803784FC 0037545C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80378500 00375460  3C 80 45 00 */	lis r4, 0x45000002@ha
/* 80378504 00375464  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80378508 00375468  38 04 00 02 */	addi r0, r4, 0x45000002@l
/* 8037850C 0037546C  90 05 80 00 */	stw r0, 0xCC008000@l(r5)
/* 80378510 00375470  7C 7F 1B 78 */	mr r31, r3
/* 80378514 00375474  4B FF FD FD */	bl GXFlush
/* 80378518 00375478  38 00 00 00 */	li r0, 0
/* 8037851C 0037547C  98 0D AC B0 */	stb r0, lbl_805A9870@sda21(r13)
/* 80378520 00375480  7F E3 FB 78 */	mr r3, r31
/* 80378524 00375484  48 00 91 65 */	bl OSRestoreInterrupts
/* 80378528 00375488  48 00 91 39 */	bl OSDisableInterrupts
/* 8037852C 0037548C  7C 7F 1B 78 */	mr r31, r3
/* 80378530 00375490  48 00 00 0C */	b lbl_8037853C
lbl_80378534:
/* 80378534 00375494  38 6D AC B4 */	addi r3, r13, lbl_805A9874@sda21
/* 80378538 00375498  48 00 CB D5 */	bl OSSleepThread
lbl_8037853C:
/* 8037853C 0037549C  88 0D AC B0 */	lbz r0, lbl_805A9870@sda21(r13)
/* 80378540 003754A0  28 00 00 00 */	cmplwi r0, 0
/* 80378544 003754A4  41 82 FF F0 */	beq lbl_80378534
/* 80378548 003754A8  7F E3 FB 78 */	mr r3, r31
/* 8037854C 003754AC  48 00 91 3D */	bl OSRestoreInterrupts
/* 80378550 003754B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80378554 003754B4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80378558 003754B8  38 21 00 18 */	addi r1, r1, 0x18
/* 8037855C 003754BC  7C 08 03 A6 */	mtlr r0
/* 80378560 003754C0  4E 80 00 20 */	blr

.global GXPixModeSync
GXPixModeSync:
/* 80378564 003754C4  38 00 00 61 */	li r0, 0x61
/* 80378568 003754C8  80 82 CE 08 */	lwz r4, lbl_805AEB28@sda21(r2)
/* 8037856C 003754CC  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80378570 003754D0  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80378574 003754D4  38 00 00 00 */	li r0, 0
/* 80378578 003754D8  80 64 01 DC */	lwz r3, 0x1dc(r4)
/* 8037857C 003754DC  90 65 80 00 */	stw r3, 0xCC008000@l(r5)
/* 80378580 003754E0  B0 04 00 02 */	sth r0, 2(r4)
/* 80378584 003754E4  4E 80 00 20 */	blr

.global GXPokeAlphaMode
GXPokeAlphaMode:
/* 80378588 003754E8  80 AD AC 80 */	lwz r5, lbl_805A9840@sda21(r13)
/* 8037858C 003754EC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80378590 003754F0  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 80378594 003754F4  B0 05 00 06 */	sth r0, 6(r5)
/* 80378598 003754F8  4E 80 00 20 */	blr

.global GXPokeAlphaRead
GXPokeAlphaRead:
/* 8037859C 003754FC  54 60 07 B8 */	rlwinm r0, r3, 0, 0x1e, 0x1c
/* 803785A0 00375500  80 6D AC 80 */	lwz r3, lbl_805A9840@sda21(r13)
/* 803785A4 00375504  60 00 00 04 */	ori r0, r0, 4
/* 803785A8 00375508  B0 03 00 08 */	sth r0, 8(r3)
/* 803785AC 0037550C  4E 80 00 20 */	blr

.global GXPokeAlphaUpdate
GXPokeAlphaUpdate:
/* 803785B0 00375510  80 8D AC 80 */	lwz r4, lbl_805A9840@sda21(r13)
/* 803785B4 00375514  54 60 25 36 */	rlwinm r0, r3, 4, 0x14, 0x1b
/* 803785B8 00375518  A4 64 00 02 */	lhzu r3, 2(r4)
/* 803785BC 0037551C  54 63 07 34 */	rlwinm r3, r3, 0, 0x1c, 0x1a
/* 803785C0 00375520  7C 60 03 78 */	or r0, r3, r0
/* 803785C4 00375524  B0 04 00 00 */	sth r0, 0(r4)
/* 803785C8 00375528  4E 80 00 20 */	blr

.global GXPokeBlendMode
GXPokeBlendMode:
/* 803785CC 0037552C  80 ED AC 80 */	lwz r7, lbl_805A9840@sda21(r13)
/* 803785D0 00375530  2C 03 00 01 */	cmpwi r3, 1
/* 803785D4 00375534  39 20 00 01 */	li r9, 1
/* 803785D8 00375538  39 47 00 02 */	addi r10, r7, 2
/* 803785DC 0037553C  A0 E7 00 02 */	lhz r7, 2(r7)
/* 803785E0 00375540  41 82 00 10 */	beq lbl_803785F0
/* 803785E4 00375544  2C 03 00 03 */	cmpwi r3, 3
/* 803785E8 00375548  41 82 00 08 */	beq lbl_803785F0
/* 803785EC 0037554C  39 20 00 00 */	li r9, 0
lbl_803785F0:
/* 803785F0 00375550  54 E8 00 3C */	rlwinm r8, r7, 0, 0, 0x1e
/* 803785F4 00375554  20 03 00 03 */	subfic r0, r3, 3
/* 803785F8 00375558  7C 07 00 34 */	cntlzw r7, r0
/* 803785FC 0037555C  20 03 00 02 */	subfic r0, r3, 2
/* 80378600 00375560  7D 08 4B 78 */	or r8, r8, r9
/* 80378604 00375564  7C 00 00 34 */	cntlzw r0, r0
/* 80378608 00375568  55 08 05 66 */	rlwinm r8, r8, 0, 0x15, 0x13
/* 8037860C 0037556C  54 E3 30 28 */	rlwinm r3, r7, 6, 0, 0x14
/* 80378610 00375570  7D 03 1B 78 */	or r3, r8, r3
/* 80378614 00375574  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 80378618 00375578  54 00 E1 3C */	rlwinm r0, r0, 0x1c, 4, 0x1e
/* 8037861C 0037557C  7C 60 03 78 */	or r0, r3, r0
/* 80378620 00375580  54 03 05 1E */	rlwinm r3, r0, 0, 0x14, 0xf
/* 80378624 00375584  54 C0 60 26 */	slwi r0, r6, 0xc
/* 80378628 00375588  7C 60 03 78 */	or r0, r3, r0
/* 8037862C 0037558C  54 03 06 28 */	rlwinm r3, r0, 0, 0x18, 0x14
/* 80378630 00375590  54 80 40 2E */	slwi r0, r4, 8
/* 80378634 00375594  7C 60 03 78 */	or r0, r3, r0
/* 80378638 00375598  54 03 06 EE */	rlwinm r3, r0, 0, 0x1b, 0x17
/* 8037863C 0037559C  54 A0 28 34 */	slwi r0, r5, 5
/* 80378640 003755A0  7C 60 03 78 */	or r0, r3, r0
/* 80378644 003755A4  54 00 02 3E */	clrlwi r0, r0, 8
/* 80378648 003755A8  64 00 41 00 */	oris r0, r0, 0x4100
/* 8037864C 003755AC  B0 0A 00 00 */	sth r0, 0(r10)
/* 80378650 003755B0  4E 80 00 20 */	blr

.global GXPokeColorUpdate
GXPokeColorUpdate:
/* 80378654 003755B4  80 8D AC 80 */	lwz r4, lbl_805A9840@sda21(r13)
/* 80378658 003755B8  54 60 1D 78 */	rlwinm r0, r3, 3, 0x15, 0x1c
/* 8037865C 003755BC  A4 64 00 02 */	lhzu r3, 2(r4)
/* 80378660 003755C0  54 63 07 76 */	rlwinm r3, r3, 0, 0x1d, 0x1b
/* 80378664 003755C4  7C 60 03 78 */	or r0, r3, r0
/* 80378668 003755C8  B0 04 00 00 */	sth r0, 0(r4)
/* 8037866C 003755CC  4E 80 00 20 */	blr

.global GXPokeDstAlpha
GXPokeDstAlpha:
/* 80378670 003755D0  80 AD AC 80 */	lwz r5, lbl_805A9840@sda21(r13)
/* 80378674 003755D4  54 60 44 2E */	rlwinm r0, r3, 8, 0x10, 0x17
/* 80378678 003755D8  50 80 06 3E */	rlwimi r0, r4, 0, 0x18, 0x1f
/* 8037867C 003755DC  B0 05 00 04 */	sth r0, 4(r5)
/* 80378680 003755E0  4E 80 00 20 */	blr

.global GXPokeDither
GXPokeDither:
/* 80378684 003755E4  80 8D AC 80 */	lwz r4, lbl_805A9840@sda21(r13)
/* 80378688 003755E8  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 8037868C 003755EC  A4 64 00 02 */	lhzu r3, 2(r4)
/* 80378690 003755F0  54 63 07 B8 */	rlwinm r3, r3, 0, 0x1e, 0x1c
/* 80378694 003755F4  7C 60 03 78 */	or r0, r3, r0
/* 80378698 003755F8  B0 04 00 00 */	sth r0, 0(r4)
/* 8037869C 003755FC  4E 80 00 20 */	blr

.global GXPokeZMode
GXPokeZMode:
/* 803786A0 00375600  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803786A4 00375604  80 6D AC 80 */	lwz r3, lbl_805A9840@sda21(r13)
/* 803786A8 00375608  54 06 07 F6 */	rlwinm r6, r0, 0, 0x1f, 0x1b
/* 803786AC 0037560C  54 80 08 3C */	slwi r0, r4, 1
/* 803786B0 00375610  7C C0 03 78 */	or r0, r6, r0
/* 803786B4 00375614  54 04 07 34 */	rlwinm r4, r0, 0, 0x1c, 0x1a
/* 803786B8 00375618  54 A0 25 36 */	rlwinm r0, r5, 4, 0x14, 0x1b
/* 803786BC 0037561C  7C 80 03 78 */	or r0, r4, r0
/* 803786C0 00375620  B0 03 00 00 */	sth r0, 0(r3)
/* 803786C4 00375624  4E 80 00 20 */	blr

.global GXTokenInterruptHandler
GXTokenInterruptHandler:
/* 803786C8 00375628  7C 08 02 A6 */	mflr r0
/* 803786CC 0037562C  90 01 00 04 */	stw r0, 4(r1)
/* 803786D0 00375630  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 803786D4 00375634  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 803786D8 00375638  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 803786DC 0037563C  7C 9E 23 78 */	mr r30, r4
/* 803786E0 00375640  80 0D AC A8 */	lwz r0, lbl_805A9868@sda21(r13)
/* 803786E4 00375644  80 6D AC 80 */	lwz r3, lbl_805A9840@sda21(r13)
/* 803786E8 00375648  28 00 00 00 */	cmplwi r0, 0
/* 803786EC 0037564C  A3 E3 00 0E */	lhz r31, 0xe(r3)
/* 803786F0 00375650  41 82 00 34 */	beq lbl_80378724
/* 803786F4 00375654  38 61 00 10 */	addi r3, r1, 0x10
/* 803786F8 00375658  48 00 6F 1D */	bl OSClearContext
/* 803786FC 0037565C  38 61 00 10 */	addi r3, r1, 0x10
/* 80378700 00375660  48 00 6D 1D */	bl OSSetCurrentContext
/* 80378704 00375664  81 8D AC A8 */	lwz r12, lbl_805A9868@sda21(r13)
/* 80378708 00375668  38 7F 00 00 */	addi r3, r31, 0
/* 8037870C 0037566C  7D 88 03 A6 */	mtlr r12
/* 80378710 00375670  4E 80 00 21 */	blrl
/* 80378714 00375674  38 61 00 10 */	addi r3, r1, 0x10
/* 80378718 00375678  48 00 6E FD */	bl OSClearContext
/* 8037871C 0037567C  7F C3 F3 78 */	mr r3, r30
/* 80378720 00375680  48 00 6C FD */	bl OSSetCurrentContext
lbl_80378724:
/* 80378724 00375684  80 6D AC 80 */	lwz r3, lbl_805A9840@sda21(r13)
/* 80378728 00375688  A4 03 00 0A */	lhzu r0, 0xa(r3)
/* 8037872C 0037568C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80378730 00375690  60 00 00 04 */	ori r0, r0, 4
/* 80378734 00375694  B0 03 00 00 */	sth r0, 0(r3)
/* 80378738 00375698  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8037873C 0037569C  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80378740 003756A0  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 80378744 003756A4  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80378748 003756A8  7C 08 03 A6 */	mtlr r0
/* 8037874C 003756AC  4E 80 00 20 */	blr

.global GXFinishInterruptHandler
GXFinishInterruptHandler:
/* 80378750 003756B0  7C 08 02 A6 */	mflr r0
/* 80378754 003756B4  38 60 00 01 */	li r3, 1
/* 80378758 003756B8  90 01 00 04 */	stw r0, 4(r1)
/* 8037875C 003756BC  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80378760 003756C0  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80378764 003756C4  3B E4 00 00 */	addi r31, r4, 0
/* 80378768 003756C8  80 AD AC 80 */	lwz r5, lbl_805A9840@sda21(r13)
/* 8037876C 003756CC  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 80378770 003756D0  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80378774 003756D4  60 00 00 08 */	ori r0, r0, 8
/* 80378778 003756D8  B0 05 00 0A */	sth r0, 0xa(r5)
/* 8037877C 003756DC  80 0D AC AC */	lwz r0, lbl_805A986C@sda21(r13)
/* 80378780 003756E0  98 6D AC B0 */	stb r3, lbl_805A9870@sda21(r13)
/* 80378784 003756E4  28 00 00 00 */	cmplwi r0, 0
/* 80378788 003756E8  41 82 00 30 */	beq lbl_803787B8
/* 8037878C 003756EC  38 61 00 10 */	addi r3, r1, 0x10
/* 80378790 003756F0  48 00 6E 85 */	bl OSClearContext
/* 80378794 003756F4  38 61 00 10 */	addi r3, r1, 0x10
/* 80378798 003756F8  48 00 6C 85 */	bl OSSetCurrentContext
/* 8037879C 003756FC  81 8D AC AC */	lwz r12, lbl_805A986C@sda21(r13)
/* 803787A0 00375700  7D 88 03 A6 */	mtlr r12
/* 803787A4 00375704  4E 80 00 21 */	blrl
/* 803787A8 00375708  38 61 00 10 */	addi r3, r1, 0x10
/* 803787AC 0037570C  48 00 6E 69 */	bl OSClearContext
/* 803787B0 00375710  7F E3 FB 78 */	mr r3, r31
/* 803787B4 00375714  48 00 6C 69 */	bl OSSetCurrentContext
lbl_803787B8:
/* 803787B8 00375718  38 6D AC B4 */	addi r3, r13, lbl_805A9874@sda21
/* 803787BC 0037571C  48 00 CA 3D */	bl OSWakeupThread
/* 803787C0 00375720  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 803787C4 00375724  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 803787C8 00375728  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 803787CC 0037572C  7C 08 03 A6 */	mtlr r0
/* 803787D0 00375730  4E 80 00 20 */	blr

.global __GXPEInit
__GXPEInit:
/* 803787D4 00375734  7C 08 02 A6 */	mflr r0
/* 803787D8 00375738  3C 60 80 38 */	lis r3, GXTokenInterruptHandler@ha
/* 803787DC 0037573C  90 01 00 04 */	stw r0, 4(r1)
/* 803787E0 00375740  38 83 86 C8 */	addi r4, r3, GXTokenInterruptHandler@l
/* 803787E4 00375744  38 60 00 12 */	li r3, 0x12
/* 803787E8 00375748  94 21 FF F8 */	stwu r1, -8(r1)
/* 803787EC 0037574C  48 00 8E C1 */	bl __OSSetInterruptHandler
/* 803787F0 00375750  3C 60 80 38 */	lis r3, GXFinishInterruptHandler@ha
/* 803787F4 00375754  38 83 87 50 */	addi r4, r3, GXFinishInterruptHandler@l
/* 803787F8 00375758  38 60 00 13 */	li r3, 0x13
/* 803787FC 0037575C  48 00 8E B1 */	bl __OSSetInterruptHandler
/* 80378800 00375760  38 6D AC B4 */	addi r3, r13, lbl_805A9874@sda21
/* 80378804 00375764  48 00 BD C1 */	bl OSInitThreadQueue
/* 80378808 00375768  38 60 20 00 */	li r3, 0x2000
/* 8037880C 0037576C  48 00 92 A5 */	bl __OSUnmaskInterrupts
/* 80378810 00375770  38 60 10 00 */	li r3, 0x1000
/* 80378814 00375774  48 00 92 9D */	bl __OSUnmaskInterrupts
/* 80378818 00375778  80 6D AC 80 */	lwz r3, lbl_805A9840@sda21(r13)
/* 8037881C 0037577C  A4 03 00 0A */	lhzu r0, 0xa(r3)
/* 80378820 00375780  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80378824 00375784  60 00 00 04 */	ori r0, r0, 4
/* 80378828 00375788  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8037882C 0037578C  60 00 00 08 */	ori r0, r0, 8
/* 80378830 00375790  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80378834 00375794  60 00 00 01 */	ori r0, r0, 1
/* 80378838 00375798  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8037883C 0037579C  60 00 00 02 */	ori r0, r0, 2
/* 80378840 003757A0  B0 03 00 00 */	sth r0, 0(r3)
/* 80378844 003757A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80378848 003757A8  38 21 00 08 */	addi r1, r1, 8
/* 8037884C 003757AC  7C 08 03 A6 */	mtlr r0
/* 80378850 003757B0  4E 80 00 20 */	blr
