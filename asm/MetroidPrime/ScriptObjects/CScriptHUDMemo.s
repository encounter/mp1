.include "macros.inc"

.section .data

.global lbl_803DFBF0
lbl_803DFBF0:
	# ROM: 0x3DCBF0
	.4byte 0
	.4byte 0
	.4byte __dt__14CScriptHUDMemoFv
	.4byte Accept__14CScriptHUDMemoFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__14CScriptHUDMemoF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFb

.section .sdata

.global lbl_805A7360
lbl_805A7360:
	# ROM: 0x3F4D00
	.4byte 0
	.4byte 0

.section .text, "ax"

.global Accept__14CScriptHUDMemoFR8IVisitor
Accept__14CScriptHUDMemoFR8IVisitor:
/* 800E832C 000E528C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E8330 000E5290  7C 08 02 A6 */	mflr r0
/* 800E8334 000E5294  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E8338 000E5298  7C 60 1B 78 */	mr r0, r3
/* 800E833C 000E529C  7C 83 23 78 */	mr r3, r4
/* 800E8340 000E52A0  81 84 00 00 */	lwz r12, 0(r4)
/* 800E8344 000E52A4  7C 04 03 78 */	mr r4, r0
/* 800E8348 000E52A8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800E834C 000E52AC  7D 89 03 A6 */	mtctr r12
/* 800E8350 000E52B0  4E 80 04 21 */	bctrl 
/* 800E8354 000E52B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E8358 000E52B8  7C 08 03 A6 */	mtlr r0
/* 800E835C 000E52BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800E8360 000E52C0  4E 80 00 20 */	blr 

.global AcceptScriptMsg__14CScriptHUDMemoF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__14CScriptHUDMemoF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 800E8364 000E52C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800E8368 000E52C8  7C 08 02 A6 */	mflr r0
/* 800E836C 000E52CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 800E8370 000E52D0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800E8374 000E52D4  7C DF 33 78 */	mr r31, r6
/* 800E8378 000E52D8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800E837C 000E52DC  7C BE 2B 78 */	mr r30, r5
/* 800E8380 000E52E0  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800E8384 000E52E4  7C 9D 23 78 */	mr r29, r4
/* 800E8388 000E52E8  2C 1D 00 0D */	cmpwi r29, 0xd
/* 800E838C 000E52EC  93 81 00 50 */	stw r28, 0x50(r1)
/* 800E8390 000E52F0  7C 7C 1B 78 */	mr r28, r3
/* 800E8394 000E52F4  41 82 00 14 */	beq lbl_800E83A8
/* 800E8398 000E52F8  40 80 00 F8 */	bge lbl_800E8490
/* 800E839C 000E52FC  2C 1D 00 04 */	cmpwi r29, 4
/* 800E83A0 000E5300  41 82 00 9C */	beq lbl_800E843C
/* 800E83A4 000E5304  48 00 00 EC */	b lbl_800E8490
lbl_800E83A8:
/* 800E83A8 000E5308  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 800E83AC 000E530C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800E83B0 000E5310  41 82 00 E0 */	beq lbl_800E8490
/* 800E83B4 000E5314  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 800E83B8 000E5318  2C 00 00 01 */	cmpwi r0, 1
/* 800E83BC 000E531C  40 82 00 18 */	bne lbl_800E83D4
/* 800E83C0 000E5320  80 9C 00 40 */	lwz r4, 0x40(r28)
/* 800E83C4 000E5324  7F E3 FB 78 */	mr r3, r31
/* 800E83C8 000E5328  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 800E83CC 000E532C  4B F5 C4 69 */	bl ShowPausedHUDMemo__13CStateManagerFUif
/* 800E83D0 000E5330  48 00 00 C0 */	b lbl_800E8490
lbl_800E83D4:
/* 800E83D4 000E5334  88 1C 00 50 */	lbz r0, 0x50(r28)
/* 800E83D8 000E5338  28 00 00 00 */	cmplwi r0, 0
/* 800E83DC 000E533C  41 82 00 3C */	beq lbl_800E8418
/* 800E83E0 000E5340  80 7C 00 4C */	lwz r3, 0x4c(r28)
/* 800E83E4 000E5344  38 80 00 00 */	li r4, 0
/* 800E83E8 000E5348  48 26 E3 15 */	bl GetString__12CStringTableCFi
/* 800E83EC 000E534C  7C 64 1B 78 */	mr r4, r3
/* 800E83F0 000E5350  38 61 00 38 */	addi r3, r1, 0x38
/* 800E83F4 000E5354  38 C1 00 08 */	addi r6, r1, 8
/* 800E83F8 000E5358  38 A0 FF FF */	li r5, -1
/* 800E83FC 000E535C  48 25 53 C1 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 800E8400 000E5360  38 61 00 38 */	addi r3, r1, 0x38
/* 800E8404 000E5364  38 9C 00 34 */	addi r4, r28, 0x34
/* 800E8408 000E5368  4B F8 38 61 */	bl DisplayHudMemo__9CSamusHudFRC7wstringRC12SHudMemoInfo
/* 800E840C 000E536C  38 61 00 38 */	addi r3, r1, 0x38
/* 800E8410 000E5370  48 25 4D 25 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 800E8414 000E5374  48 00 00 7C */	b lbl_800E8490
lbl_800E8418:
/* 800E8418 000E5378  38 61 00 28 */	addi r3, r1, 0x28
/* 800E841C 000E537C  38 8D 87 A0 */	addi r4, r13, lbl_805A7360@sda21
/* 800E8420 000E5380  4B F2 D5 D1 */	bl wstring_l__4rstlFPCw
/* 800E8424 000E5384  38 61 00 28 */	addi r3, r1, 0x28
/* 800E8428 000E5388  38 9C 00 34 */	addi r4, r28, 0x34
/* 800E842C 000E538C  4B F8 38 3D */	bl DisplayHudMemo__9CSamusHudFRC7wstringRC12SHudMemoInfo
/* 800E8430 000E5390  38 61 00 28 */	addi r3, r1, 0x28
/* 800E8434 000E5394  48 25 4D 01 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 800E8438 000E5398  48 00 00 58 */	b lbl_800E8490
lbl_800E843C:
/* 800E843C 000E539C  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 800E8440 000E53A0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800E8444 000E53A4  41 82 00 4C */	beq lbl_800E8490
/* 800E8448 000E53A8  80 1C 00 3C */	lwz r0, 0x3c(r28)
/* 800E844C 000E53AC  2C 00 00 00 */	cmpwi r0, 0
/* 800E8450 000E53B0  40 82 00 40 */	bne lbl_800E8490
/* 800E8454 000E53B4  38 61 00 18 */	addi r3, r1, 0x18
/* 800E8458 000E53B8  38 8D 87 A0 */	addi r4, r13, lbl_805A7360@sda21
/* 800E845C 000E53BC  4B F2 D5 95 */	bl wstring_l__4rstlFPCw
/* 800E8460 000E53C0  C0 02 90 18 */	lfs f0, lbl_805AAD38@sda21(r2)
/* 800E8464 000E53C4  38 A0 00 00 */	li r5, 0
/* 800E8468 000E53C8  38 00 00 01 */	li r0, 1
/* 800E846C 000E53CC  98 A1 00 14 */	stb r5, 0x14(r1)
/* 800E8470 000E53D0  38 61 00 18 */	addi r3, r1, 0x18
/* 800E8474 000E53D4  38 81 00 10 */	addi r4, r1, 0x10
/* 800E8478 000E53D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800E847C 000E53DC  98 01 00 15 */	stb r0, 0x15(r1)
/* 800E8480 000E53E0  98 A1 00 16 */	stb r5, 0x16(r1)
/* 800E8484 000E53E4  4B F8 37 E5 */	bl DisplayHudMemo__9CSamusHudFRC7wstringRC12SHudMemoInfo
/* 800E8488 000E53E8  38 61 00 18 */	addi r3, r1, 0x18
/* 800E848C 000E53EC  48 25 4C A9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_800E8490:
/* 800E8490 000E53F0  A0 1E 00 00 */	lhz r0, 0(r30)
/* 800E8494 000E53F4  7F 83 E3 78 */	mr r3, r28
/* 800E8498 000E53F8  7F A4 EB 78 */	mr r4, r29
/* 800E849C 000E53FC  7F E6 FB 78 */	mr r6, r31
/* 800E84A0 000E5400  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800E84A4 000E5404  38 A1 00 0C */	addi r5, r1, 0xc
/* 800E84A8 000E5408  4B F6 8C B5 */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 800E84AC 000E540C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800E84B0 000E5410  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800E84B4 000E5414  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800E84B8 000E5418  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800E84BC 000E541C  83 81 00 50 */	lwz r28, 0x50(r1)
/* 800E84C0 000E5420  7C 08 03 A6 */	mtlr r0
/* 800E84C4 000E5424  38 21 00 60 */	addi r1, r1, 0x60
/* 800E84C8 000E5428  4E 80 00 20 */	blr 

.global __dt__14CScriptHUDMemoFv
__dt__14CScriptHUDMemoFv:
/* 800E84CC 000E542C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E84D0 000E5430  7C 08 02 A6 */	mflr r0
/* 800E84D4 000E5434  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E84D8 000E5438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E84DC 000E543C  7C 9F 23 78 */	mr r31, r4
/* 800E84E0 000E5440  93 C1 00 08 */	stw r30, 8(r1)
/* 800E84E4 000E5444  7C 7E 1B 79 */	or. r30, r3, r3
/* 800E84E8 000E5448  41 82 00 60 */	beq lbl_800E8548
/* 800E84EC 000E544C  3C 60 80 3E */	lis r3, lbl_803DFBF0@ha
/* 800E84F0 000E5450  34 1E 00 44 */	addic. r0, r30, 0x44
/* 800E84F4 000E5454  38 03 FB F0 */	addi r0, r3, lbl_803DFBF0@l
/* 800E84F8 000E5458  90 1E 00 00 */	stw r0, 0(r30)
/* 800E84FC 000E545C  41 82 00 30 */	beq lbl_800E852C
/* 800E8500 000E5460  88 1E 00 50 */	lbz r0, 0x50(r30)
/* 800E8504 000E5464  28 00 00 00 */	cmplwi r0, 0
/* 800E8508 000E5468  41 82 00 1C */	beq lbl_800E8524
/* 800E850C 000E546C  34 7E 00 44 */	addic. r3, r30, 0x44
/* 800E8510 000E5470  41 82 00 14 */	beq lbl_800E8524
/* 800E8514 000E5474  28 03 00 00 */	cmplwi r3, 0
/* 800E8518 000E5478  41 82 00 0C */	beq lbl_800E8524
/* 800E851C 000E547C  38 80 00 00 */	li r4, 0
/* 800E8520 000E5480  48 25 89 21 */	bl __dt__6CTokenFv
lbl_800E8524:
/* 800E8524 000E5484  38 00 00 00 */	li r0, 0
/* 800E8528 000E5488  98 1E 00 50 */	stb r0, 0x50(r30)
lbl_800E852C:
/* 800E852C 000E548C  7F C3 F3 78 */	mr r3, r30
/* 800E8530 000E5490  38 80 00 00 */	li r4, 0
/* 800E8534 000E5494  4B F6 8D 41 */	bl __dt__7CEntityFv
/* 800E8538 000E5498  7F E0 07 35 */	extsh. r0, r31
/* 800E853C 000E549C  40 81 00 0C */	ble lbl_800E8548
/* 800E8540 000E54A0  7F C3 F3 78 */	mr r3, r30
/* 800E8544 000E54A4  48 22 D3 ED */	bl Free__7CMemoryFPCv
lbl_800E8548:
/* 800E8548 000E54A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E854C 000E54AC  7F C3 F3 78 */	mr r3, r30
/* 800E8550 000E54B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E8554 000E54B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E8558 000E54B8  7C 08 03 A6 */	mtlr r0
/* 800E855C 000E54BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800E8560 000E54C0  4E 80 00 20 */	blr 

.global "__ct__14CScriptHUDMemoF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC13CHUDMemoParmsQ214CScriptHUDMemo12EDisplayTypeUib"
"__ct__14CScriptHUDMemoF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC13CHUDMemoParmsQ214CScriptHUDMemo12EDisplayTypeUib":
/* 800E8564 000E54C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800E8568 000E54C8  7C 08 02 A6 */	mflr r0
/* 800E856C 000E54CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 800E8570 000E54D0  BF 01 00 50 */	stmw r24, 0x50(r1)
/* 800E8574 000E54D4  7C F9 3B 78 */	mr r25, r7
/* 800E8578 000E54D8  7C 7F 1B 78 */	mr r31, r3
/* 800E857C 000E54DC  7D 1B 43 78 */	mr r27, r8
/* 800E8580 000E54E0  7D 3A 4B 78 */	mr r26, r9
/* 800E8584 000E54E4  A0 04 00 00 */	lhz r0, 0(r4)
/* 800E8588 000E54E8  7C A4 2B 78 */	mr r4, r5
/* 800E858C 000E54EC  7C C5 33 78 */	mr r5, r6
/* 800E8590 000E54F0  7D 46 53 78 */	mr r6, r10
/* 800E8594 000E54F4  B0 01 00 08 */	sth r0, 8(r1)
/* 800E8598 000E54F8  7C 87 23 78 */	mr r7, r4
/* 800E859C 000E54FC  38 81 00 08 */	addi r4, r1, 8
/* 800E85A0 000E5500  4B F6 8D 85 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800E85A4 000E5504  3C 60 80 3E */	lis r3, lbl_803DFBF0@ha
/* 800E85A8 000E5508  3C 1A 00 01 */	addis r0, r26, 1
/* 800E85AC 000E550C  38 63 FB F0 */	addi r3, r3, lbl_803DFBF0@l
/* 800E85B0 000E5510  3B C0 00 00 */	li r30, 0
/* 800E85B4 000E5514  90 7F 00 00 */	stw r3, 0(r31)
/* 800E85B8 000E5518  28 00 FF FF */	cmplwi r0, 0xffff
/* 800E85BC 000E551C  3B A0 00 00 */	li r29, 0
/* 800E85C0 000E5520  3B 80 00 00 */	li r28, 0
/* 800E85C4 000E5524  C0 19 00 00 */	lfs f0, 0(r25)
/* 800E85C8 000E5528  3B 00 00 00 */	li r24, 0
/* 800E85CC 000E552C  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 800E85D0 000E5530  88 19 00 04 */	lbz r0, 4(r25)
/* 800E85D4 000E5534  98 1F 00 38 */	stb r0, 0x38(r31)
/* 800E85D8 000E5538  88 19 00 05 */	lbz r0, 5(r25)
/* 800E85DC 000E553C  98 1F 00 39 */	stb r0, 0x39(r31)
/* 800E85E0 000E5540  88 19 00 06 */	lbz r0, 6(r25)
/* 800E85E4 000E5544  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 800E85E8 000E5548  93 7F 00 3C */	stw r27, 0x3c(r31)
/* 800E85EC 000E554C  93 5F 00 40 */	stw r26, 0x40(r31)
/* 800E85F0 000E5550  40 82 00 18 */	bne lbl_800E8608
/* 800E85F4 000E5554  38 00 00 00 */	li r0, 0
/* 800E85F8 000E5558  3B 61 00 38 */	addi r27, r1, 0x38
/* 800E85FC 000E555C  98 01 00 44 */	stb r0, 0x44(r1)
/* 800E8600 000E5560  3B C0 00 01 */	li r30, 1
/* 800E8604 000E5564  48 00 00 8C */	b lbl_800E8690
lbl_800E8608:
/* 800E8608 000E5568  3C 60 53 54 */	lis r3, 0x53545247@ha
/* 800E860C 000E556C  93 41 00 18 */	stw r26, 0x18(r1)
/* 800E8610 000E5570  38 03 52 47 */	addi r0, r3, 0x53545247@l
/* 800E8614 000E5574  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 800E8618 000E5578  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E861C 000E557C  38 61 00 0C */	addi r3, r1, 0xc
/* 800E8620 000E5580  38 A1 00 14 */	addi r5, r1, 0x14
/* 800E8624 000E5584  81 84 00 00 */	lwz r12, 0(r4)
/* 800E8628 000E5588  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800E862C 000E558C  7D 89 03 A6 */	mtctr r12
/* 800E8630 000E5590  4E 80 04 21 */	bctrl 
/* 800E8634 000E5594  3B 01 00 2C */	addi r24, r1, 0x2c
/* 800E8638 000E5598  38 81 00 0C */	addi r4, r1, 0xc
/* 800E863C 000E559C  7F 03 C3 78 */	mr r3, r24
/* 800E8640 000E55A0  3B A0 00 01 */	li r29, 1
/* 800E8644 000E55A4  48 25 88 65 */	bl __ct__6CTokenFRC6CToken
/* 800E8648 000E55A8  7F 03 C3 78 */	mr r3, r24
/* 800E864C 000E55AC  48 25 87 C1 */	bl GetObj__6CTokenFv
/* 800E8650 000E55B0  80 63 00 04 */	lwz r3, 4(r3)
/* 800E8654 000E55B4  38 00 00 01 */	li r0, 1
/* 800E8658 000E55B8  37 61 00 1C */	addic. r27, r1, 0x1c
/* 800E865C 000E55BC  3B 80 00 01 */	li r28, 1
/* 800E8660 000E55C0  90 61 00 34 */	stw r3, 0x34(r1)
/* 800E8664 000E55C4  98 01 00 28 */	stb r0, 0x28(r1)
/* 800E8668 000E55C8  41 82 00 20 */	beq lbl_800E8688
/* 800E866C 000E55CC  7F 63 DB 78 */	mr r3, r27
/* 800E8670 000E55D0  7F 04 C3 78 */	mr r4, r24
/* 800E8674 000E55D4  48 25 88 35 */	bl __ct__6CTokenFRC6CToken
/* 800E8678 000E55D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E867C 000E55DC  7F 63 DB 78 */	mr r3, r27
/* 800E8680 000E55E0  90 1B 00 08 */	stw r0, 8(r27)
/* 800E8684 000E55E4  48 25 87 01 */	bl Lock__6CTokenFv
lbl_800E8688:
/* 800E8688 000E55E8  3B 00 00 01 */	li r24, 1
/* 800E868C 000E55EC  3B 61 00 1C */	addi r27, r1, 0x1c
lbl_800E8690:
/* 800E8690 000E55F0  88 1B 00 0C */	lbz r0, 0xc(r27)
/* 800E8694 000E55F4  98 1F 00 50 */	stb r0, 0x50(r31)
/* 800E8698 000E55F8  88 1B 00 0C */	lbz r0, 0xc(r27)
/* 800E869C 000E55FC  28 00 00 00 */	cmplwi r0, 0
/* 800E86A0 000E5600  41 82 00 28 */	beq lbl_800E86C8
/* 800E86A4 000E5604  37 5F 00 44 */	addic. r26, r31, 0x44
/* 800E86A8 000E5608  41 82 00 20 */	beq lbl_800E86C8
/* 800E86AC 000E560C  7F 43 D3 78 */	mr r3, r26
/* 800E86B0 000E5610  7F 64 DB 78 */	mr r4, r27
/* 800E86B4 000E5614  48 25 87 F5 */	bl __ct__6CTokenFRC6CToken
/* 800E86B8 000E5618  80 1B 00 08 */	lwz r0, 8(r27)
/* 800E86BC 000E561C  7F 43 D3 78 */	mr r3, r26
/* 800E86C0 000E5620  90 1A 00 08 */	stw r0, 8(r26)
/* 800E86C4 000E5624  48 25 86 C1 */	bl Lock__6CTokenFv
lbl_800E86C8:
/* 800E86C8 000E5628  7F 00 07 75 */	extsb. r0, r24
/* 800E86CC 000E562C  41 82 00 30 */	beq lbl_800E86FC
/* 800E86D0 000E5630  88 01 00 28 */	lbz r0, 0x28(r1)
/* 800E86D4 000E5634  28 00 00 00 */	cmplwi r0, 0
/* 800E86D8 000E5638  41 82 00 1C */	beq lbl_800E86F4
/* 800E86DC 000E563C  34 61 00 1C */	addic. r3, r1, 0x1c
/* 800E86E0 000E5640  41 82 00 14 */	beq lbl_800E86F4
/* 800E86E4 000E5644  28 03 00 00 */	cmplwi r3, 0
/* 800E86E8 000E5648  41 82 00 0C */	beq lbl_800E86F4
/* 800E86EC 000E564C  38 80 00 00 */	li r4, 0
/* 800E86F0 000E5650  48 25 87 51 */	bl __dt__6CTokenFv
lbl_800E86F4:
/* 800E86F4 000E5654  38 00 00 00 */	li r0, 0
/* 800E86F8 000E5658  98 01 00 28 */	stb r0, 0x28(r1)
lbl_800E86FC:
/* 800E86FC 000E565C  7F 80 07 75 */	extsb. r0, r28
/* 800E8700 000E5660  41 82 00 10 */	beq lbl_800E8710
/* 800E8704 000E5664  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E8708 000E5668  38 80 00 00 */	li r4, 0
/* 800E870C 000E566C  48 25 87 35 */	bl __dt__6CTokenFv
lbl_800E8710:
/* 800E8710 000E5670  7F A0 07 75 */	extsb. r0, r29
/* 800E8714 000E5674  41 82 00 10 */	beq lbl_800E8724
/* 800E8718 000E5678  38 61 00 0C */	addi r3, r1, 0xc
/* 800E871C 000E567C  38 80 FF FF */	li r4, -1
/* 800E8720 000E5680  48 25 87 21 */	bl __dt__6CTokenFv
lbl_800E8724:
/* 800E8724 000E5684  7F C0 07 75 */	extsb. r0, r30
/* 800E8728 000E5688  41 82 00 30 */	beq lbl_800E8758
/* 800E872C 000E568C  88 01 00 44 */	lbz r0, 0x44(r1)
/* 800E8730 000E5690  28 00 00 00 */	cmplwi r0, 0
/* 800E8734 000E5694  41 82 00 1C */	beq lbl_800E8750
/* 800E8738 000E5698  34 61 00 38 */	addic. r3, r1, 0x38
/* 800E873C 000E569C  41 82 00 14 */	beq lbl_800E8750
/* 800E8740 000E56A0  28 03 00 00 */	cmplwi r3, 0
/* 800E8744 000E56A4  41 82 00 0C */	beq lbl_800E8750
/* 800E8748 000E56A8  38 80 00 00 */	li r4, 0
/* 800E874C 000E56AC  48 25 86 F5 */	bl __dt__6CTokenFv
lbl_800E8750:
/* 800E8750 000E56B0  38 00 00 00 */	li r0, 0
/* 800E8754 000E56B4  98 01 00 44 */	stb r0, 0x44(r1)
lbl_800E8758:
/* 800E8758 000E56B8  7F E3 FB 78 */	mr r3, r31
/* 800E875C 000E56BC  BB 01 00 50 */	lmw r24, 0x50(r1)
/* 800E8760 000E56C0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800E8764 000E56C4  7C 08 03 A6 */	mtlr r0
/* 800E8768 000E56C8  38 21 00 70 */	addi r1, r1, 0x70
/* 800E876C 000E56CC  4E 80 00 20 */	blr 
