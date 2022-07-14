.include "macros.inc"

.section .data

.global lbl_803E5258
lbl_803E5258:
	# ROM: 0x3E2258
	.4byte 0
	.4byte 0
	.4byte IsQualified__14CGameLightListFRC7CEntity

.global lbl_803E5264
lbl_803E5264:
	# ROM: 0x3E2264
	.4byte 0
	.4byte 0
	.4byte IsQualified__20CPlatformAndDoorListFRC7CEntity

.global lbl_803E5270
lbl_803E5270:
	# ROM: 0x3E2270
	.4byte 0
	.4byte 0
	.4byte IsQualified__15CAiWaypointListFRC7CEntity

.global lbl_803E527C
lbl_803E527C:
	# ROM: 0x3E227C
	.4byte 0
	.4byte 0
	.4byte IsQualified__16CListeningAiListFRC7CEntity

.global lbl_803E5288
lbl_803E5288:
	# ROM: 0x3E2288
	.4byte 0
	.4byte 0
	.4byte IsQualified__15CGameCameraListFRC7CEntity

.global lbl_803E5294
lbl_803E5294:
	# ROM: 0x3E2294
	.4byte 0
	.4byte 0
	.4byte IsQualified__17CPhysicsActorListFRC7CEntity

.global lbl_803E52A0
lbl_803E52A0:
	# ROM: 0x3E22A0
	.4byte 0
	.4byte 0
	.4byte IsQualified__10CActorListFRC7CEntity
	.4byte 0

.section .text, "ax"

.global IsQualified__14CGameLightListFRC7CEntity
IsQualified__14CGameLightListFRC7CEntity:
/* 801B847C 001B53DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B8480 001B53E0  7C 08 02 A6 */	mflr r0
/* 801B8484 001B53E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8488 001B53E8  38 61 00 08 */	addi r3, r1, 8
/* 801B848C 001B53EC  4B EF 56 65 */	bl "__ct__24TCastToPtr<10CGameLight>FR7CEntity"
/* 801B8490 001B53F0  80 63 00 04 */	lwz r3, 4(r3)
/* 801B8494 001B53F4  7C 03 00 D0 */	neg r0, r3
/* 801B8498 001B53F8  7C 00 1B 78 */	or r0, r0, r3
/* 801B849C 001B53FC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801B84A0 001B5400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B84A4 001B5404  7C 08 03 A6 */	mtlr r0
/* 801B84A8 001B5408  38 21 00 10 */	addi r1, r1, 0x10
/* 801B84AC 001B540C  4E 80 00 20 */	blr 

.global __ct__14CGameLightListFv
__ct__14CGameLightListFv:
/* 801B84B0 001B5410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B84B4 001B5414  7C 08 02 A6 */	mflr r0
/* 801B84B8 001B5418  38 80 00 04 */	li r4, 4
/* 801B84BC 001B541C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B84C0 001B5420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B84C4 001B5424  7C 7F 1B 78 */	mr r31, r3
/* 801B84C8 001B5428  4B E5 7B 71 */	bl __ct__11CObjectListF15EGameObjectList
/* 801B84CC 001B542C  3C 80 80 3E */	lis r4, lbl_803E5258@ha
/* 801B84D0 001B5430  7F E3 FB 78 */	mr r3, r31
/* 801B84D4 001B5434  38 04 52 58 */	addi r0, r4, lbl_803E5258@l
/* 801B84D8 001B5438  90 1F 00 00 */	stw r0, 0(r31)
/* 801B84DC 001B543C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B84E0 001B5440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B84E4 001B5444  7C 08 03 A6 */	mtlr r0
/* 801B84E8 001B5448  38 21 00 10 */	addi r1, r1, 0x10
/* 801B84EC 001B544C  4E 80 00 20 */	blr 

.global IsQualified__20CPlatformAndDoorListFRC7CEntity
IsQualified__20CPlatformAndDoorListFRC7CEntity:
/* 801B84F0 001B5450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B84F4 001B5454  7C 08 02 A6 */	mflr r0
/* 801B84F8 001B5458  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B84FC 001B545C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B8500 001B5460  3B E0 00 00 */	li r31, 0
/* 801B8504 001B5464  93 C1 00 08 */	stw r30, 8(r1)
/* 801B8508 001B5468  7C 9E 23 78 */	mr r30, r4
/* 801B850C 001B546C  7F C3 F3 78 */	mr r3, r30
/* 801B8510 001B5470  48 00 00 75 */	bl IsPlatform__20CPlatformAndDoorListFPC7CEntity
/* 801B8514 001B5474  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B8518 001B5478  40 82 00 14 */	bne lbl_801B852C
/* 801B851C 001B547C  7F C3 F3 78 */	mr r3, r30
/* 801B8520 001B5480  48 00 00 2D */	bl IsDoor__20CPlatformAndDoorListFPC7CEntity
/* 801B8524 001B5484  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B8528 001B5488  41 82 00 08 */	beq lbl_801B8530
lbl_801B852C:
/* 801B852C 001B548C  3B E0 00 01 */	li r31, 1
lbl_801B8530:
/* 801B8530 001B5490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B8534 001B5494  7F E3 FB 78 */	mr r3, r31
/* 801B8538 001B5498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B853C 001B549C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B8540 001B54A0  7C 08 03 A6 */	mtlr r0
/* 801B8544 001B54A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B8548 001B54A8  4E 80 00 20 */	blr 

.global IsDoor__20CPlatformAndDoorListFPC7CEntity
IsDoor__20CPlatformAndDoorListFPC7CEntity:
/* 801B854C 001B54AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B8550 001B54B0  7C 08 02 A6 */	mflr r0
/* 801B8554 001B54B4  7C 64 1B 78 */	mr r4, r3
/* 801B8558 001B54B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B855C 001B54BC  38 61 00 08 */	addi r3, r1, 8
/* 801B8560 001B54C0  4B EF 1B 91 */	bl "__ct__25TCastToPtr<11CScriptDoor>FP7CEntity"
/* 801B8564 001B54C4  80 63 00 04 */	lwz r3, 4(r3)
/* 801B8568 001B54C8  7C 03 00 D0 */	neg r0, r3
/* 801B856C 001B54CC  7C 00 1B 78 */	or r0, r0, r3
/* 801B8570 001B54D0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801B8574 001B54D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B8578 001B54D8  7C 08 03 A6 */	mtlr r0
/* 801B857C 001B54DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B8580 001B54E0  4E 80 00 20 */	blr 

.global IsPlatform__20CPlatformAndDoorListFPC7CEntity
IsPlatform__20CPlatformAndDoorListFPC7CEntity:
/* 801B8584 001B54E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B8588 001B54E8  7C 08 02 A6 */	mflr r0
/* 801B858C 001B54EC  7C 64 1B 78 */	mr r4, r3
/* 801B8590 001B54F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8594 001B54F4  38 61 00 08 */	addi r3, r1, 8
/* 801B8598 001B54F8  4B EF 08 7D */	bl "__ct__29TCastToPtr<15CScriptPlatform>FP7CEntity"
/* 801B859C 001B54FC  80 63 00 04 */	lwz r3, 4(r3)
/* 801B85A0 001B5500  7C 03 00 D0 */	neg r0, r3
/* 801B85A4 001B5504  7C 00 1B 78 */	or r0, r0, r3
/* 801B85A8 001B5508  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801B85AC 001B550C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B85B0 001B5510  7C 08 03 A6 */	mtlr r0
/* 801B85B4 001B5514  38 21 00 10 */	addi r1, r1, 0x10
/* 801B85B8 001B5518  4E 80 00 20 */	blr 

.global __ct__20CPlatformAndDoorListFv
__ct__20CPlatformAndDoorListFv:
/* 801B85BC 001B551C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B85C0 001B5520  7C 08 02 A6 */	mflr r0
/* 801B85C4 001B5524  38 80 00 07 */	li r4, 7
/* 801B85C8 001B5528  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B85CC 001B552C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B85D0 001B5530  7C 7F 1B 78 */	mr r31, r3
/* 801B85D4 001B5534  4B E5 7A 65 */	bl __ct__11CObjectListF15EGameObjectList
/* 801B85D8 001B5538  3C 80 80 3E */	lis r4, lbl_803E5264@ha
/* 801B85DC 001B553C  7F E3 FB 78 */	mr r3, r31
/* 801B85E0 001B5540  38 04 52 64 */	addi r0, r4, lbl_803E5264@l
/* 801B85E4 001B5544  90 1F 00 00 */	stw r0, 0(r31)
/* 801B85E8 001B5548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B85EC 001B554C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B85F0 001B5550  7C 08 03 A6 */	mtlr r0
/* 801B85F4 001B5554  38 21 00 10 */	addi r1, r1, 0x10
/* 801B85F8 001B5558  4E 80 00 20 */	blr 

.global IsQualified__15CAiWaypointListFRC7CEntity
IsQualified__15CAiWaypointListFRC7CEntity:
/* 801B85FC 001B555C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B8600 001B5560  7C 08 02 A6 */	mflr r0
/* 801B8604 001B5564  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B8608 001B5568  38 61 00 10 */	addi r3, r1, 0x10
/* 801B860C 001B556C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B8610 001B5570  3B E0 00 00 */	li r31, 0
/* 801B8614 001B5574  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B8618 001B5578  7C 9E 23 78 */	mr r30, r4
/* 801B861C 001B557C  4B EF 24 7D */	bl "__ct__31TCastToPtr<17CScriptCoverPoint>FR7CEntity"
/* 801B8620 001B5580  80 03 00 04 */	lwz r0, 4(r3)
/* 801B8624 001B5584  28 00 00 00 */	cmplwi r0, 0
/* 801B8628 001B5588  41 82 00 0C */	beq lbl_801B8634
/* 801B862C 001B558C  3B E0 00 01 */	li r31, 1
/* 801B8630 001B5590  48 00 00 20 */	b lbl_801B8650
lbl_801B8634:
/* 801B8634 001B5594  7F C4 F3 78 */	mr r4, r30
/* 801B8638 001B5598  38 61 00 08 */	addi r3, r1, 8
/* 801B863C 001B559C  4B EF 31 11 */	bl "__ct__32TCastToPtr<18CScriptAiJumpPoint>FR7CEntity"
/* 801B8640 001B55A0  80 03 00 04 */	lwz r0, 4(r3)
/* 801B8644 001B55A4  28 00 00 00 */	cmplwi r0, 0
/* 801B8648 001B55A8  41 82 00 08 */	beq lbl_801B8650
/* 801B864C 001B55AC  3B E0 00 01 */	li r31, 1
lbl_801B8650:
/* 801B8650 001B55B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B8654 001B55B4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 801B8658 001B55B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B865C 001B55BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B8660 001B55C0  7C 08 03 A6 */	mtlr r0
/* 801B8664 001B55C4  38 21 00 20 */	addi r1, r1, 0x20
/* 801B8668 001B55C8  4E 80 00 20 */	blr 

.global __ct__15CAiWaypointListFv
__ct__15CAiWaypointListFv:
/* 801B866C 001B55CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B8670 001B55D0  7C 08 02 A6 */	mflr r0
/* 801B8674 001B55D4  38 80 00 06 */	li r4, 6
/* 801B8678 001B55D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B867C 001B55DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B8680 001B55E0  7C 7F 1B 78 */	mr r31, r3
/* 801B8684 001B55E4  4B E5 79 B5 */	bl __ct__11CObjectListF15EGameObjectList
/* 801B8688 001B55E8  3C 80 80 3E */	lis r4, lbl_803E5270@ha
/* 801B868C 001B55EC  7F E3 FB 78 */	mr r3, r31
/* 801B8690 001B55F0  38 04 52 70 */	addi r0, r4, lbl_803E5270@l
/* 801B8694 001B55F4  90 1F 00 00 */	stw r0, 0(r31)
/* 801B8698 001B55F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B869C 001B55FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B86A0 001B5600  7C 08 03 A6 */	mtlr r0
/* 801B86A4 001B5604  38 21 00 10 */	addi r1, r1, 0x10
/* 801B86A8 001B5608  4E 80 00 20 */	blr 

.global IsQualified__16CListeningAiListFRC7CEntity
IsQualified__16CListeningAiListFRC7CEntity:
/* 801B86AC 001B560C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B86B0 001B5610  7C 08 02 A6 */	mflr r0
/* 801B86B4 001B5614  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B86B8 001B5618  38 61 00 08 */	addi r3, r1, 8
/* 801B86BC 001B561C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B86C0 001B5620  3B E0 00 00 */	li r31, 0
/* 801B86C4 001B5624  4B EF 44 05 */	bl "__ct__16TCastToPtr<10CPatterned>FR7CEntity"
/* 801B86C8 001B5628  80 63 00 04 */	lwz r3, 4(r3)
/* 801B86CC 001B562C  28 03 00 00 */	cmplwi r3, 0
/* 801B86D0 001B5630  41 82 00 20 */	beq lbl_801B86F0
/* 801B86D4 001B5634  81 83 00 00 */	lwz r12, 0(r3)
/* 801B86D8 001B5638  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 801B86DC 001B563C  7D 89 03 A6 */	mtctr r12
/* 801B86E0 001B5640  4E 80 04 21 */	bctrl 
/* 801B86E4 001B5644  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B86E8 001B5648  41 82 00 08 */	beq lbl_801B86F0
/* 801B86EC 001B564C  3B E0 00 01 */	li r31, 1
lbl_801B86F0:
/* 801B86F0 001B5650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B86F4 001B5654  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 801B86F8 001B5658  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B86FC 001B565C  7C 08 03 A6 */	mtlr r0
/* 801B8700 001B5660  38 21 00 20 */	addi r1, r1, 0x20
/* 801B8704 001B5664  4E 80 00 20 */	blr 

.global __ct__16CListeningAiListFv
__ct__16CListeningAiListFv:
/* 801B8708 001B5668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B870C 001B566C  7C 08 02 A6 */	mflr r0
/* 801B8710 001B5670  38 80 00 05 */	li r4, 5
/* 801B8714 001B5674  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8718 001B5678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B871C 001B567C  7C 7F 1B 78 */	mr r31, r3
/* 801B8720 001B5680  4B E5 79 19 */	bl __ct__11CObjectListF15EGameObjectList
/* 801B8724 001B5684  3C 80 80 3E */	lis r4, lbl_803E527C@ha
/* 801B8728 001B5688  7F E3 FB 78 */	mr r3, r31
/* 801B872C 001B568C  38 04 52 7C */	addi r0, r4, lbl_803E527C@l
/* 801B8730 001B5690  90 1F 00 00 */	stw r0, 0(r31)
/* 801B8734 001B5694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B8738 001B5698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B873C 001B569C  7C 08 03 A6 */	mtlr r0
/* 801B8740 001B56A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B8744 001B56A4  4E 80 00 20 */	blr 

.global IsQualified__15CGameCameraListFRC7CEntity
IsQualified__15CGameCameraListFRC7CEntity:
/* 801B8748 001B56A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B874C 001B56AC  7C 08 02 A6 */	mflr r0
/* 801B8750 001B56B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8754 001B56B4  38 61 00 08 */	addi r3, r1, 8
/* 801B8758 001B56B8  4B EF 56 FD */	bl "__ct__25TCastToPtr<11CGameCamera>FR7CEntity"
/* 801B875C 001B56BC  80 63 00 04 */	lwz r3, 4(r3)
/* 801B8760 001B56C0  7C 03 00 D0 */	neg r0, r3
/* 801B8764 001B56C4  7C 00 1B 78 */	or r0, r0, r3
/* 801B8768 001B56C8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801B876C 001B56CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B8770 001B56D0  7C 08 03 A6 */	mtlr r0
/* 801B8774 001B56D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B8778 001B56D8  4E 80 00 20 */	blr 

.global __ct__15CGameCameraListFv
__ct__15CGameCameraListFv:
/* 801B877C 001B56DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B8780 001B56E0  7C 08 02 A6 */	mflr r0
/* 801B8784 001B56E4  38 80 00 03 */	li r4, 3
/* 801B8788 001B56E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B878C 001B56EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B8790 001B56F0  7C 7F 1B 78 */	mr r31, r3
/* 801B8794 001B56F4  4B E5 78 A5 */	bl __ct__11CObjectListF15EGameObjectList
/* 801B8798 001B56F8  3C 80 80 3E */	lis r4, lbl_803E5288@ha
/* 801B879C 001B56FC  7F E3 FB 78 */	mr r3, r31
/* 801B87A0 001B5700  38 04 52 88 */	addi r0, r4, lbl_803E5288@l
/* 801B87A4 001B5704  90 1F 00 00 */	stw r0, 0(r31)
/* 801B87A8 001B5708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B87AC 001B570C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B87B0 001B5710  7C 08 03 A6 */	mtlr r0
/* 801B87B4 001B5714  38 21 00 10 */	addi r1, r1, 0x10
/* 801B87B8 001B5718  4E 80 00 20 */	blr 

.global IsQualified__17CPhysicsActorListFRC7CEntity
IsQualified__17CPhysicsActorListFRC7CEntity:
/* 801B87BC 001B571C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B87C0 001B5720  7C 08 02 A6 */	mflr r0
/* 801B87C4 001B5724  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B87C8 001B5728  38 61 00 08 */	addi r3, r1, 8
/* 801B87CC 001B572C  4B EF 3F 85 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FR7CEntity"
/* 801B87D0 001B5730  80 63 00 04 */	lwz r3, 4(r3)
/* 801B87D4 001B5734  7C 03 00 D0 */	neg r0, r3
/* 801B87D8 001B5738  7C 00 1B 78 */	or r0, r0, r3
/* 801B87DC 001B573C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801B87E0 001B5740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B87E4 001B5744  7C 08 03 A6 */	mtlr r0
/* 801B87E8 001B5748  38 21 00 10 */	addi r1, r1, 0x10
/* 801B87EC 001B574C  4E 80 00 20 */	blr 

.global __ct__17CPhysicsActorListFv
__ct__17CPhysicsActorListFv:
/* 801B87F0 001B5750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B87F4 001B5754  7C 08 02 A6 */	mflr r0
/* 801B87F8 001B5758  38 80 00 02 */	li r4, 2
/* 801B87FC 001B575C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8800 001B5760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B8804 001B5764  7C 7F 1B 78 */	mr r31, r3
/* 801B8808 001B5768  4B E5 78 31 */	bl __ct__11CObjectListF15EGameObjectList
/* 801B880C 001B576C  3C 80 80 3E */	lis r4, lbl_803E5294@ha
/* 801B8810 001B5770  7F E3 FB 78 */	mr r3, r31
/* 801B8814 001B5774  38 04 52 94 */	addi r0, r4, lbl_803E5294@l
/* 801B8818 001B5778  90 1F 00 00 */	stw r0, 0(r31)
/* 801B881C 001B577C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B8820 001B5780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B8824 001B5784  7C 08 03 A6 */	mtlr r0
/* 801B8828 001B5788  38 21 00 10 */	addi r1, r1, 0x10
/* 801B882C 001B578C  4E 80 00 20 */	blr 

.global IsQualified__10CActorListFRC7CEntity
IsQualified__10CActorListFRC7CEntity:
/* 801B8830 001B5790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B8834 001B5794  7C 08 02 A6 */	mflr r0
/* 801B8838 001B5798  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B883C 001B579C  38 61 00 08 */	addi r3, r1, 8
/* 801B8840 001B57A0  4B EF 74 BD */	bl "__ct__19TCastToPtr<6CActor>FR7CEntity"
/* 801B8844 001B57A4  80 63 00 04 */	lwz r3, 4(r3)
/* 801B8848 001B57A8  7C 03 00 D0 */	neg r0, r3
/* 801B884C 001B57AC  7C 00 1B 78 */	or r0, r0, r3
/* 801B8850 001B57B0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801B8854 001B57B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B8858 001B57B8  7C 08 03 A6 */	mtlr r0
/* 801B885C 001B57BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B8860 001B57C0  4E 80 00 20 */	blr 

.global __ct__10CActorListFv
__ct__10CActorListFv:
/* 801B8864 001B57C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B8868 001B57C8  7C 08 02 A6 */	mflr r0
/* 801B886C 001B57CC  38 80 00 01 */	li r4, 1
/* 801B8870 001B57D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8874 001B57D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B8878 001B57D8  7C 7F 1B 78 */	mr r31, r3
/* 801B887C 001B57DC  4B E5 77 BD */	bl __ct__11CObjectListF15EGameObjectList
/* 801B8880 001B57E0  3C 80 80 3E */	lis r4, lbl_803E52A0@ha
/* 801B8884 001B57E4  7F E3 FB 78 */	mr r3, r31
/* 801B8888 001B57E8  38 04 52 A0 */	addi r0, r4, lbl_803E52A0@l
/* 801B888C 001B57EC  90 1F 00 00 */	stw r0, 0(r31)
/* 801B8890 001B57F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B8894 001B57F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B8898 001B57F8  7C 08 03 A6 */	mtlr r0
/* 801B889C 001B57FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B88A0 001B5800  4E 80 00 20 */	blr
