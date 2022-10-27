.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CPowerBomb_cpp

.section .data
.balign 8

.global lbl_803E2808
lbl_803E2808:
	# ROM: 0x3DF808
	.4byte 0
	.4byte 0
	.4byte __dt__10CPowerBombFv
	.4byte Accept__10CPowerBombFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__10CPowerBombFfR13CStateManager
	.4byte AcceptScriptMsg__10CPowerBombF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPowerBombCFRC14CFrustumPlanesRC13CStateManager
	.4byte nullsub_228
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPowerBombCFv
	.4byte Touch__10CPowerBombFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__7CWeaponCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__7CWeaponFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A77D8
lbl_805A77D8:
	# ROM: 0x3F5178
	.4byte 0x00000022

.global lbl_805A77DC
lbl_805A77DC:
	# ROM: 0x3F517C
	.4byte 0x0000002B

.global lbl_805A77E0
lbl_805A77E0:
	# ROM: 0x3F5180
	.4byte 0x00000013

.global lbl_805A77E4
lbl_805A77E4:
	# ROM: 0x3F5184
	.4byte 0x00000023

.global lbl_805A77E8
lbl_805A77E8:
	# ROM: 0x3F5188
	.4byte 0x0000002D

.global lbl_805A77EC
lbl_805A77EC:
	# ROM: 0x3F518C
	.4byte 0x00000023

.global lbl_805A77F0
lbl_805A77F0:
	# ROM: 0x3F5190
	.4byte 0x0000002D
	.4byte 0

.section .sbss
.balign 8

# CPowerBomb
.global lbl_805A8FA8
lbl_805A8FA8:
	.skip 0x8

.section .text, "ax"

.global AcceptScriptMsg__10CPowerBombF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__10CPowerBombF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8014D948 0014A8A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8014D94C 0014A8AC  7C 08 02 A6 */	mflr r0
/* 8014D950 0014A8B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8014D954 0014A8B4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8014D958 0014A8B8  7C DF 33 78 */	mr r31, r6
/* 8014D95C 0014A8BC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8014D960 0014A8C0  7C BE 2B 78 */	mr r30, r5
/* 8014D964 0014A8C4  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8014D968 0014A8C8  7C 9D 23 78 */	mr r29, r4
/* 8014D96C 0014A8CC  2C 1D 00 22 */	cmpwi r29, 0x22
/* 8014D970 0014A8D0  93 81 00 40 */	stw r28, 0x40(r1)
/* 8014D974 0014A8D4  7C 7C 1B 78 */	mr r28, r3
/* 8014D978 0014A8D8  41 82 00 F4 */	beq lbl_8014DA6C
/* 8014D97C 0014A8DC  40 80 01 2C */	bge lbl_8014DAA8
/* 8014D980 0014A8E0  2C 1D 00 21 */	cmpwi r29, 0x21
/* 8014D984 0014A8E4  40 80 00 08 */	bge lbl_8014D98C
/* 8014D988 0014A8E8  48 00 01 20 */	b lbl_8014DAA8
lbl_8014D98C:
/* 8014D98C 0014A8EC  A0 1C 00 EC */	lhz r0, 0xec(r28)
/* 8014D990 0014A8F0  7F E3 FB 78 */	mr r3, r31
/* 8014D994 0014A8F4  80 BC 00 F0 */	lwz r5, 0xf0(r28)
/* 8014D998 0014A8F8  38 81 00 18 */	addi r4, r1, 0x18
/* 8014D99C 0014A8FC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8014D9A0 0014A900  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8014D9A4 0014A904  4B EF 73 65 */	bl AddWeaponId__13CStateManagerF9TUniqueId11EWeaponType
/* 8014D9A8 0014A908  C0 02 9D 64 */	lfs f0, lbl_805ABA84@sda21(r2)
/* 8014D9AC 0014A90C  D0 1C 01 20 */	stfs f0, 0x120(r28)
/* 8014D9B0 0014A910  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 8014D9B4 0014A914  80 63 00 00 */	lwz r3, 0(r3)
/* 8014D9B8 0014A918  88 03 00 00 */	lbz r0, 0(r3)
/* 8014D9BC 0014A91C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8014D9C0 0014A920  41 82 00 70 */	beq lbl_8014DA30
/* 8014D9C4 0014A924  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 8014D9C8 0014A928  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8014D9CC 0014A92C  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 8014D9D0 0014A930  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 8014D9D4 0014A934  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8014D9D8 0014A938  38 61 00 24 */	addi r3, r1, 0x24
/* 8014D9DC 0014A93C  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 8014D9E0 0014A940  38 A1 00 34 */	addi r5, r1, 0x34
/* 8014D9E4 0014A944  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8014D9E8 0014A948  38 80 07 10 */	li r4, 0x710
/* 8014D9EC 0014A94C  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8014D9F0 0014A950  38 E0 00 01 */	li r7, 1
/* 8014D9F4 0014A954  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8014D9F8 0014A958  39 00 00 00 */	li r8, 0
/* 8014D9FC 0014A95C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8014DA00 0014A960  48 19 C8 B1 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 8014DA04 0014A964  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 8014DA08 0014A968  7F E3 FB 78 */	mr r3, r31
/* 8014DA0C 0014A96C  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 8014DA10 0014A970  38 81 00 28 */	addi r4, r1, 0x28
/* 8014DA14 0014A974  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 8014DA18 0014A978  38 A0 00 01 */	li r5, 1
/* 8014DA1C 0014A97C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8014DA20 0014A980  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8014DA24 0014A984  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8014DA28 0014A988  4B EF AD 5D */	bl InformListeners__13CStateManagerFRC9CVector3f16EListenNoiseType
/* 8014DA2C 0014A98C  48 00 00 7C */	b lbl_8014DAA8
lbl_8014DA30:
/* 8014DA30 0014A990  A9 02 C5 F8 */	lha r8, kMaxPriority__11CSfxManager@sda21(r2)
/* 8014DA34 0014A994  38 61 00 1C */	addi r3, r1, 0x1c
/* 8014DA38 0014A998  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8014DA3C 0014A99C  38 80 07 3F */	li r4, 0x73f
/* 8014DA40 0014A9A0  38 A0 00 7F */	li r5, 0x7f
/* 8014DA44 0014A9A4  38 C0 00 40 */	li r6, 0x40
/* 8014DA48 0014A9A8  38 E0 00 00 */	li r7, 0
/* 8014DA4C 0014A9AC  39 20 00 00 */	li r9, 0
/* 8014DA50 0014A9B0  48 19 C3 25 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 8014DA54 0014A9B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8014DA58 0014A9B8  38 81 00 20 */	addi r4, r1, 0x20
/* 8014DA5C 0014A9BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8014DA60 0014A9C0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8014DA64 0014A9C4  4B EC 37 29 */	bl ApplySubmergedPitchBend__7CPlayerFR10CSfxHandle
/* 8014DA68 0014A9C8  48 00 00 40 */	b lbl_8014DAA8
lbl_8014DA6C:
/* 8014DA6C 0014A9CC  C0 3C 01 5C */	lfs f1, 0x15c(r28)
/* 8014DA70 0014A9D0  C0 02 9D 68 */	lfs f0, lbl_805ABA88@sda21(r2)
/* 8014DA74 0014A9D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014DA78 0014A9D8  4C 40 13 82 */	cror 2, 0, 2
/* 8014DA7C 0014A9DC  40 82 00 10 */	bne lbl_8014DA8C
/* 8014DA80 0014A9E0  C0 22 9D 64 */	lfs f1, lbl_805ABA84@sda21(r2)
/* 8014DA84 0014A9E4  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 8014DA88 0014A9E8  4B F9 F8 E1 */	bl DisableFilter__17CCameraFilterPassFf
lbl_8014DA8C:
/* 8014DA8C 0014A9EC  A0 1C 00 EC */	lhz r0, 0xec(r28)
/* 8014DA90 0014A9F0  7F E3 FB 78 */	mr r3, r31
/* 8014DA94 0014A9F4  80 BC 00 F0 */	lwz r5, 0xf0(r28)
/* 8014DA98 0014A9F8  38 81 00 10 */	addi r4, r1, 0x10
/* 8014DA9C 0014A9FC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8014DAA0 0014AA00  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8014DAA4 0014AA04  4B EF 72 35 */	bl RemoveWeaponId__13CStateManagerF9TUniqueId11EWeaponType
lbl_8014DAA8:
/* 8014DAA8 0014AA08  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8014DAAC 0014AA0C  7F 83 E3 78 */	mr r3, r28
/* 8014DAB0 0014AA10  7F A4 EB 78 */	mr r4, r29
/* 8014DAB4 0014AA14  7F E6 FB 78 */	mr r6, r31
/* 8014DAB8 0014AA18  B0 01 00 08 */	sth r0, 8(r1)
/* 8014DABC 0014AA1C  38 A1 00 08 */	addi r5, r1, 8
/* 8014DAC0 0014AA20  4B F0 5B 55 */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8014DAC4 0014AA24  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8014DAC8 0014AA28  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8014DACC 0014AA2C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8014DAD0 0014AA30  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8014DAD4 0014AA34  83 81 00 40 */	lwz r28, 0x40(r1)
/* 8014DAD8 0014AA38  7C 08 03 A6 */	mtlr r0
/* 8014DADC 0014AA3C  38 21 00 50 */	addi r1, r1, 0x50
/* 8014DAE0 0014AA40  4E 80 00 20 */	blr

.global Accept__10CPowerBombFR8IVisitor
Accept__10CPowerBombFR8IVisitor:
/* 8014DAE4 0014AA44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014DAE8 0014AA48  7C 08 02 A6 */	mflr r0
/* 8014DAEC 0014AA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014DAF0 0014AA50  7C 60 1B 78 */	mr r0, r3
/* 8014DAF4 0014AA54  7C 83 23 78 */	mr r3, r4
/* 8014DAF8 0014AA58  81 84 00 00 */	lwz r12, 0(r4)
/* 8014DAFC 0014AA5C  7C 04 03 78 */	mr r4, r0
/* 8014DB00 0014AA60  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 8014DB04 0014AA64  7D 89 03 A6 */	mtctr r12
/* 8014DB08 0014AA68  4E 80 04 21 */	bctrl
/* 8014DB0C 0014AA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014DB10 0014AA70  7C 08 03 A6 */	mtlr r0
/* 8014DB14 0014AA74  38 21 00 10 */	addi r1, r1, 0x10
/* 8014DB18 0014AA78  4E 80 00 20 */	blr

.global Think__10CPowerBombFfR13CStateManager
Think__10CPowerBombFfR13CStateManager:
/* 8014DB1C 0014AA7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014DB20 0014AA80  7C 08 02 A6 */	mflr r0
/* 8014DB24 0014AA84  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014DB28 0014AA88  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8014DB2C 0014AA8C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8014DB30 0014AA90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8014DB34 0014AA94  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8014DB38 0014AA98  FF E0 08 90 */	fmr f31, f1
/* 8014DB3C 0014AA9C  7C 7E 1B 78 */	mr r30, r3
/* 8014DB40 0014AAA0  7C 9F 23 78 */	mr r31, r4
/* 8014DB44 0014AAA4  4B FB 45 95 */	bl Think__7CWeaponFfR13CStateManager
/* 8014DB48 0014AAA8  88 7E 01 58 */	lbz r3, 0x158(r30)
/* 8014DB4C 0014AAAC  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8014DB50 0014AAB0  41 82 00 70 */	beq lbl_8014DBC0
/* 8014DB54 0014AAB4  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8014DB58 0014AAB8  C0 02 9D 6C */	lfs f0, lbl_805ABA8C@sda21(r2)
/* 8014DB5C 0014AABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014DB60 0014AAC0  40 81 00 3C */	ble lbl_8014DB9C
/* 8014DB64 0014AAC4  54 60 D7 FE */	rlwinm r0, r3, 0x1a, 0x1f, 0x1f
/* 8014DB68 0014AAC8  28 00 00 01 */	cmplwi r0, 1
/* 8014DB6C 0014AACC  41 82 00 30 */	beq lbl_8014DB9C
/* 8014DB70 0014AAD0  C0 22 9D 70 */	lfs f1, lbl_805ABA90@sda21(r2)
/* 8014DB74 0014AAD4  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 8014DB78 0014AAD8  38 80 00 03 */	li r4, 3
/* 8014DB7C 0014AADC  38 A0 00 00 */	li r5, 0
/* 8014DB80 0014AAE0  38 CD A3 E8 */	addi r6, r13, lbl_805A8FA8@sda21
/* 8014DB84 0014AAE4  38 E0 FF FF */	li r7, -1
/* 8014DB88 0014AAE8  4B F9 F8 19 */	bl SetFilter__17CCameraFilterPassFQ217CCameraFilterPass11EFilterTypeQ217CCameraFilterPass12EFilterShapefRC6CColorUi
/* 8014DB8C 0014AAEC  88 1E 01 58 */	lbz r0, 0x158(r30)
/* 8014DB90 0014AAF0  38 60 00 01 */	li r3, 1
/* 8014DB94 0014AAF4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8014DB98 0014AAF8  98 1E 01 58 */	stb r0, 0x158(r30)
lbl_8014DB9C:
/* 8014DB9C 0014AAFC  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8014DBA0 0014AB00  C0 02 9D 74 */	lfs f0, lbl_805ABA94@sda21(r2)
/* 8014DBA4 0014AB04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014DBA8 0014AB08  40 81 00 BC */	ble lbl_8014DC64
/* 8014DBAC 0014AB0C  88 1E 01 58 */	lbz r0, 0x158(r30)
/* 8014DBB0 0014AB10  38 60 00 00 */	li r3, 0
/* 8014DBB4 0014AB14  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8014DBB8 0014AB18  98 1E 01 58 */	stb r0, 0x158(r30)
/* 8014DBBC 0014AB1C  48 00 00 A8 */	b lbl_8014DC64
lbl_8014DBC0:
/* 8014DBC0 0014AB20  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8014DBC4 0014AB24  C0 02 9D 78 */	lfs f0, lbl_805ABA98@sda21(r2)
/* 8014DBC8 0014AB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014DBCC 0014AB2C  40 81 00 28 */	ble lbl_8014DBF4
/* 8014DBD0 0014AB30  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8014DBD4 0014AB34  41 82 00 20 */	beq lbl_8014DBF4
/* 8014DBD8 0014AB38  C0 22 9D 7C */	lfs f1, lbl_805ABA9C@sda21(r2)
/* 8014DBDC 0014AB3C  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 8014DBE0 0014AB40  4B F9 F7 89 */	bl DisableFilter__17CCameraFilterPassFf
/* 8014DBE4 0014AB44  88 1E 01 58 */	lbz r0, 0x158(r30)
/* 8014DBE8 0014AB48  38 60 00 00 */	li r3, 0
/* 8014DBEC 0014AB4C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8014DBF0 0014AB50  98 1E 01 58 */	stb r0, 0x158(r30)
lbl_8014DBF4:
/* 8014DBF4 0014AB54  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8014DBF8 0014AB58  C0 02 9D 68 */	lfs f0, lbl_805ABA88@sda21(r2)
/* 8014DBFC 0014AB5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014DC00 0014AB60  40 81 00 38 */	ble lbl_8014DC38
/* 8014DC04 0014AB64  80 7E 01 68 */	lwz r3, 0x168(r30)
/* 8014DC08 0014AB68  81 83 00 00 */	lwz r12, 0(r3)
/* 8014DC0C 0014AB6C  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8014DC10 0014AB70  7D 89 03 A6 */	mtctr r12
/* 8014DC14 0014AB74  4E 80 04 21 */	bctrl
/* 8014DC18 0014AB78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014DC1C 0014AB7C  41 82 00 1C */	beq lbl_8014DC38
/* 8014DC20 0014AB80  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8014DC24 0014AB84  7F E3 FB 78 */	mr r3, r31
/* 8014DC28 0014AB88  38 81 00 14 */	addi r4, r1, 0x14
/* 8014DC2C 0014AB8C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8014DC30 0014AB90  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8014DC34 0014AB94  4B EF E6 39 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
lbl_8014DC38:
/* 8014DC38 0014AB98  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8014DC3C 0014AB9C  C0 02 9D 80 */	lfs f0, lbl_805ABAA0@sda21(r2)
/* 8014DC40 0014ABA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014DC44 0014ABA4  40 81 00 20 */	ble lbl_8014DC64
/* 8014DC48 0014ABA8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8014DC4C 0014ABAC  7F E3 FB 78 */	mr r3, r31
/* 8014DC50 0014ABB0  38 81 00 0C */	addi r4, r1, 0xc
/* 8014DC54 0014ABB4  B0 01 00 08 */	sth r0, 8(r1)
/* 8014DC58 0014ABB8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8014DC5C 0014ABBC  4B EF E6 11 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8014DC60 0014ABC0  48 00 00 84 */	b lbl_8014DCE4
lbl_8014DC64:
/* 8014DC64 0014ABC4  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8014DC68 0014ABC8  C0 02 9D 6C */	lfs f0, lbl_805ABA8C@sda21(r2)
/* 8014DC6C 0014ABCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014DC70 0014ABD0  40 81 00 50 */	ble lbl_8014DCC0
/* 8014DC74 0014ABD4  C0 02 9D 84 */	lfs f0, lbl_805ABAA4@sda21(r2)
/* 8014DC78 0014ABD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014DC7C 0014ABDC  40 80 00 44 */	bge lbl_8014DCC0
/* 8014DC80 0014ABE0  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 8014DC84 0014ABE4  7F C3 F3 78 */	mr r3, r30
/* 8014DC88 0014ABE8  7F E5 FB 78 */	mr r5, r31
/* 8014DC8C 0014ABEC  38 81 00 18 */	addi r4, r1, 0x18
/* 8014DC90 0014ABF0  D0 1E 01 20 */	stfs f0, 0x120(r30)
/* 8014DC94 0014ABF4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8014DC98 0014ABF8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8014DC9C 0014ABFC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8014DCA0 0014AC00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8014DCA4 0014AC04  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8014DCA8 0014AC08  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8014DCAC 0014AC0C  48 00 00 AD */	bl sub_8014dd58
/* 8014DCB0 0014AC10  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 8014DCB4 0014AC14  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 8014DCB8 0014AC18  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 8014DCBC 0014AC1C  D0 1E 01 60 */	stfs f0, 0x160(r30)
lbl_8014DCC0:
/* 8014DCC0 0014AC20  80 7E 01 68 */	lwz r3, 0x168(r30)
/* 8014DCC4 0014AC24  FC 20 F8 90 */	fmr f1, f31
/* 8014DCC8 0014AC28  81 83 00 00 */	lwz r12, 0(r3)
/* 8014DCCC 0014AC2C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8014DCD0 0014AC30  7D 89 03 A6 */	mtctr r12
/* 8014DCD4 0014AC34  4E 80 04 21 */	bctrl
/* 8014DCD8 0014AC38  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 8014DCDC 0014AC3C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8014DCE0 0014AC40  D0 1E 01 5C */	stfs f0, 0x15c(r30)
lbl_8014DCE4:
/* 8014DCE4 0014AC44  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8014DCE8 0014AC48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8014DCEC 0014AC4C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8014DCF0 0014AC50  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8014DCF4 0014AC54  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8014DCF8 0014AC58  7C 08 03 A6 */	mtlr r0
/* 8014DCFC 0014AC5C  38 21 00 40 */	addi r1, r1, 0x40
/* 8014DD00 0014AC60  4E 80 00 20 */	blr

.global nullsub_228
nullsub_228:
/* 8014DD04 0014AC64  4E 80 00 20 */	blr

.global AddToRenderer__10CPowerBombCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__10CPowerBombCFRC14CFrustumPlanesRC13CStateManager:
/* 8014DD08 0014AC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014DD0C 0014AC6C  7C 08 02 A6 */	mflr r0
/* 8014DD10 0014AC70  7C 64 1B 78 */	mr r4, r3
/* 8014DD14 0014AC74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014DD18 0014AC78  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8014DD1C 0014AC7C  80 84 01 68 */	lwz r4, 0x168(r4)
/* 8014DD20 0014AC80  81 83 00 00 */	lwz r12, 0(r3)
/* 8014DD24 0014AC84  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8014DD28 0014AC88  7D 89 03 A6 */	mtctr r12
/* 8014DD2C 0014AC8C  4E 80 04 21 */	bctrl
/* 8014DD30 0014AC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014DD34 0014AC94  7C 08 03 A6 */	mtlr r0
/* 8014DD38 0014AC98  38 21 00 10 */	addi r1, r1, 0x10
/* 8014DD3C 0014AC9C  4E 80 00 20 */	blr

.global GetTouchBounds__10CPowerBombCFv
GetTouchBounds__10CPowerBombCFv:
/* 8014DD40 0014ACA0  38 00 00 00 */	li r0, 0
/* 8014DD44 0014ACA4  98 03 00 18 */	stb r0, 0x18(r3)
/* 8014DD48 0014ACA8  4E 80 00 20 */	blr

.global Touch__10CPowerBombFR6CActorR13CStateManager
Touch__10CPowerBombFR6CActorR13CStateManager:
/* 8014DD4C 0014ACAC  88 03 01 58 */	lbz r0, 0x158(r3)
/* 8014DD50 0014ACB0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8014DD54 0014ACB4  4E 80 00 20 */	blr

.global sub_8014dd58
sub_8014dd58:
/* 8014DD58 0014ACB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014DD5C 0014ACBC  7C 08 02 A6 */	mflr r0
/* 8014DD60 0014ACC0  7C 86 23 78 */	mr r6, r4
/* 8014DD64 0014ACC4  7C 6A 1B 78 */	mr r10, r3
/* 8014DD68 0014ACC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8014DD6C 0014ACCC  38 81 00 0C */	addi r4, r1, 0xc
/* 8014DD70 0014ACD0  39 01 00 10 */	addi r8, r1, 0x10
/* 8014DD74 0014ACD4  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 8014DD78 0014ACD8  80 E3 00 FC */	lwz r7, 0xfc(r3)
/* 8014DD7C 0014ACDC  7C A3 2B 78 */	mr r3, r5
/* 8014DD80 0014ACE0  7D 45 53 78 */	mr r5, r10
/* 8014DD84 0014ACE4  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8014DD88 0014ACE8  38 EA 01 2C */	addi r7, r10, 0x12c
/* 8014DD8C 0014ACEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8014DD90 0014ACF0  80 0A 01 00 */	lwz r0, 0x100(r10)
/* 8014DD94 0014ACF4  81 2A 01 04 */	lwz r9, 0x104(r10)
/* 8014DD98 0014ACF8  91 21 00 1C */	stw r9, 0x1c(r1)
/* 8014DD9C 0014ACFC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8014DDA0 0014AD00  80 0A 01 08 */	lwz r0, 0x108(r10)
/* 8014DDA4 0014AD04  90 01 00 20 */	stw r0, 0x20(r1)
/* 8014DDA8 0014AD08  A0 0A 00 EC */	lhz r0, 0xec(r10)
/* 8014DDAC 0014AD0C  B0 01 00 08 */	sth r0, 8(r1)
/* 8014DDB0 0014AD10  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8014DDB4 0014AD14  4B EF AE F9 */	bl ApplyDamageToWorld__13CStateManagerF9TUniqueIdRC6CActorRC9CVector3fRC11CDamageInfoRC15CMaterialFilter
/* 8014DDB8 0014AD18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014DDBC 0014AD1C  7C 08 03 A6 */	mtlr r0
/* 8014DDC0 0014AD20  38 21 00 30 */	addi r1, r1, 0x30
/* 8014DDC4 0014AD24  4E 80 00 20 */	blr

.global __dt__10CPowerBombFv
__dt__10CPowerBombFv:
/* 8014DDC8 0014AD28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014DDCC 0014AD2C  7C 08 02 A6 */	mflr r0
/* 8014DDD0 0014AD30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014DDD4 0014AD34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014DDD8 0014AD38  7C 9F 23 78 */	mr r31, r4
/* 8014DDDC 0014AD3C  93 C1 00 08 */	stw r30, 8(r1)
/* 8014DDE0 0014AD40  7C 7E 1B 79 */	or. r30, r3, r3
/* 8014DDE4 0014AD44  41 82 00 54 */	beq lbl_8014DE38
/* 8014DDE8 0014AD48  3C 60 80 3E */	lis r3, lbl_803E2808@ha
/* 8014DDEC 0014AD4C  34 1E 01 68 */	addic. r0, r30, 0x168
/* 8014DDF0 0014AD50  38 03 28 08 */	addi r0, r3, lbl_803E2808@l
/* 8014DDF4 0014AD54  90 1E 00 00 */	stw r0, 0(r30)
/* 8014DDF8 0014AD58  41 82 00 24 */	beq lbl_8014DE1C
/* 8014DDFC 0014AD5C  80 7E 01 68 */	lwz r3, 0x168(r30)
/* 8014DE00 0014AD60  28 03 00 00 */	cmplwi r3, 0
/* 8014DE04 0014AD64  41 82 00 18 */	beq lbl_8014DE1C
/* 8014DE08 0014AD68  81 83 00 00 */	lwz r12, 0(r3)
/* 8014DE0C 0014AD6C  38 80 00 01 */	li r4, 1
/* 8014DE10 0014AD70  81 8C 00 08 */	lwz r12, 8(r12)
/* 8014DE14 0014AD74  7D 89 03 A6 */	mtctr r12
/* 8014DE18 0014AD78  4E 80 04 21 */	bctrl
lbl_8014DE1C:
/* 8014DE1C 0014AD7C  7F C3 F3 78 */	mr r3, r30
/* 8014DE20 0014AD80  38 80 00 00 */	li r4, 0
/* 8014DE24 0014AD84  4B FB 44 11 */	bl __dt__7CWeaponFv
/* 8014DE28 0014AD88  7F E0 07 35 */	extsh. r0, r31
/* 8014DE2C 0014AD8C  40 81 00 0C */	ble lbl_8014DE38
/* 8014DE30 0014AD90  7F C3 F3 78 */	mr r3, r30
/* 8014DE34 0014AD94  48 1C 7A FD */	bl Free__7CMemoryFPCv
lbl_8014DE38:
/* 8014DE38 0014AD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014DE3C 0014AD9C  7F C3 F3 78 */	mr r3, r30
/* 8014DE40 0014ADA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014DE44 0014ADA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014DE48 0014ADA8  7C 08 03 A6 */	mtlr r0
/* 8014DE4C 0014ADAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014DE50 0014ADB0  4E 80 00 20 */	blr

.global "__ct__10CPowerBombF25TToken<15CGenDescription>9TUniqueId7TAreaId9TUniqueIdRC12CTransform4fRC11CDamageInfo"
"__ct__10CPowerBombF25TToken<15CGenDescription>9TUniqueId7TAreaId9TUniqueIdRC12CTransform4fRC11CDamageInfo":
/* 8014DE54 0014ADB4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8014DE58 0014ADB8  7C 08 02 A6 */	mflr r0
/* 8014DE5C 0014ADBC  3D 40 80 3D */	lis r10, lbl_803D01A0@ha
/* 8014DE60 0014ADC0  90 01 01 04 */	stw r0, 0x104(r1)
/* 8014DE64 0014ADC4  38 0A 01 A0 */	addi r0, r10, lbl_803D01A0@l
/* 8014DE68 0014ADC8  BE 61 00 CC */	stmw r19, 0xcc(r1)
/* 8014DE6C 0014ADCC  7C 7E 1B 78 */	mr r30, r3
/* 8014DE70 0014ADD0  7C 9F 23 78 */	mr r31, r4
/* 8014DE74 0014ADD4  7C B6 2B 78 */	mr r22, r5
/* 8014DE78 0014ADD8  7C D7 33 78 */	mr r23, r6
/* 8014DE7C 0014ADDC  7C F8 3B 78 */	mr r24, r7
/* 8014DE80 0014ADE0  7D 19 43 78 */	mr r25, r8
/* 8014DE84 0014ADE4  7D 3A 4B 78 */	mr r26, r9
/* 8014DE88 0014ADE8  7C 04 03 78 */	mr r4, r0
/* 8014DE8C 0014ADEC  38 61 00 4C */	addi r3, r1, 0x4c
/* 8014DE90 0014ADF0  4B EB 6E 29 */	bl string_l__4rstlFPCc
/* 8014DE94 0014ADF4  38 61 00 78 */	addi r3, r1, 0x78
/* 8014DE98 0014ADF8  4B EE C9 0D */	bl CModelDataNull__10CModelDataFv
/* 8014DE9C 0014ADFC  38 00 00 00 */	li r0, 0
/* 8014DEA0 0014AE00  80 AD 8C 2C */	lwz r5, lbl_805A77EC@sda21(r13)
/* 8014DEA4 0014AE04  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8014DEA8 0014AE08  38 60 00 00 */	li r3, 0
/* 8014DEAC 0014AE0C  38 80 00 01 */	li r4, 1
/* 8014DEB0 0014AE10  90 01 00 38 */	stw r0, 0x38(r1)
/* 8014DEB4 0014AE14  48 23 C0 41 */	bl __shl2i
/* 8014DEB8 0014AE18  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8014DEBC 0014AE1C  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 8014DEC0 0014AE20  7C 00 1B 78 */	or r0, r0, r3
/* 8014DEC4 0014AE24  80 AD 8C 30 */	lwz r5, lbl_805A77F0@sda21(r13)
/* 8014DEC8 0014AE28  7C C4 23 78 */	or r4, r6, r4
/* 8014DECC 0014AE2C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8014DED0 0014AE30  38 60 00 00 */	li r3, 0
/* 8014DED4 0014AE34  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8014DED8 0014AE38  38 80 00 01 */	li r4, 1
/* 8014DEDC 0014AE3C  48 23 C0 19 */	bl __shl2i
/* 8014DEE0 0014AE40  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8014DEE4 0014AE44  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 8014DEE8 0014AE48  7C 00 1B 78 */	or r0, r0, r3
/* 8014DEEC 0014AE4C  80 AD 8C 24 */	lwz r5, lbl_805A77E4@sda21(r13)
/* 8014DEF0 0014AE50  7C C4 23 78 */	or r4, r6, r4
/* 8014DEF4 0014AE54  90 01 00 38 */	stw r0, 0x38(r1)
/* 8014DEF8 0014AE58  38 60 00 00 */	li r3, 0
/* 8014DEFC 0014AE5C  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8014DF00 0014AE60  38 80 00 01 */	li r4, 1
/* 8014DF04 0014AE64  48 23 BF F1 */	bl __shl2i
/* 8014DF08 0014AE68  80 AD 8C 28 */	lwz r5, lbl_805A77E8@sda21(r13)
/* 8014DF0C 0014AE6C  7C 9C 23 78 */	mr r28, r4
/* 8014DF10 0014AE70  7C 7D 1B 78 */	mr r29, r3
/* 8014DF14 0014AE74  38 60 00 00 */	li r3, 0
/* 8014DF18 0014AE78  38 80 00 01 */	li r4, 1
/* 8014DF1C 0014AE7C  48 23 BF D9 */	bl __shl2i
/* 8014DF20 0014AE80  80 AD 8C 18 */	lwz r5, lbl_805A77D8@sda21(r13)
/* 8014DF24 0014AE84  7F 9C 23 78 */	or r28, r28, r4
/* 8014DF28 0014AE88  7F BD 1B 78 */	or r29, r29, r3
/* 8014DF2C 0014AE8C  38 60 00 00 */	li r3, 0
/* 8014DF30 0014AE90  38 80 00 01 */	li r4, 1
/* 8014DF34 0014AE94  48 23 BF C1 */	bl __shl2i
/* 8014DF38 0014AE98  80 AD 8C 1C */	lwz r5, lbl_805A77DC@sda21(r13)
/* 8014DF3C 0014AE9C  7C 93 23 78 */	mr r19, r4
/* 8014DF40 0014AEA0  7C 7B 1B 78 */	mr r27, r3
/* 8014DF44 0014AEA4  38 60 00 00 */	li r3, 0
/* 8014DF48 0014AEA8  38 80 00 01 */	li r4, 1
/* 8014DF4C 0014AEAC  48 23 BF A9 */	bl __shl2i
/* 8014DF50 0014AEB0  80 AD 8C 20 */	lwz r5, lbl_805A77E0@sda21(r13)
/* 8014DF54 0014AEB4  7E 73 23 78 */	or r19, r19, r4
/* 8014DF58 0014AEB8  7F 7B 1B 78 */	or r27, r27, r3
/* 8014DF5C 0014AEBC  38 60 00 00 */	li r3, 0
/* 8014DF60 0014AEC0  38 80 00 01 */	li r4, 1
/* 8014DF64 0014AEC4  48 23 BF 91 */	bl __shl2i
/* 8014DF68 0014AEC8  A2 B8 00 00 */	lhz r21, 0(r24)
/* 8014DF6C 0014AECC  7E 73 23 78 */	or r19, r19, r4
/* 8014DF70 0014AED0  7F 7B 1B 78 */	or r27, r27, r3
/* 8014DF74 0014AED4  83 17 00 00 */	lwz r24, 0(r23)
/* 8014DF78 0014AED8  A2 F6 00 00 */	lhz r23, 0(r22)
/* 8014DF7C 0014AEDC  3A 80 00 03 */	li r20, 3
/* 8014DF80 0014AEE0  92 61 00 64 */	stw r19, 0x64(r1)
/* 8014DF84 0014AEE4  3A C1 00 60 */	addi r22, r1, 0x60
/* 8014DF88 0014AEE8  39 81 00 38 */	addi r12, r1, 0x38
/* 8014DF8C 0014AEEC  39 60 02 00 */	li r11, 0x200
/* 8014DF90 0014AEF0  93 61 00 60 */	stw r27, 0x60(r1)
/* 8014DF94 0014AEF4  38 01 00 78 */	addi r0, r1, 0x78
/* 8014DF98 0014AEF8  7F C3 F3 78 */	mr r3, r30
/* 8014DF9C 0014AEFC  7F 2A CB 78 */	mr r10, r25
/* 8014DFA0 0014AF00  93 81 00 6C */	stw r28, 0x6c(r1)
/* 8014DFA4 0014AF04  38 81 00 24 */	addi r4, r1, 0x24
/* 8014DFA8 0014AF08  38 A1 00 28 */	addi r5, r1, 0x28
/* 8014DFAC 0014AF0C  38 E1 00 20 */	addi r7, r1, 0x20
/* 8014DFB0 0014AF10  93 A1 00 68 */	stw r29, 0x68(r1)
/* 8014DFB4 0014AF14  39 21 00 4C */	addi r9, r1, 0x4c
/* 8014DFB8 0014AF18  38 C0 00 01 */	li r6, 1
/* 8014DFBC 0014AF1C  39 00 00 05 */	li r8, 5
/* 8014DFC0 0014AF20  92 81 00 70 */	stw r20, 0x70(r1)
/* 8014DFC4 0014AF24  B2 A1 00 20 */	sth r21, 0x20(r1)
/* 8014DFC8 0014AF28  93 01 00 28 */	stw r24, 0x28(r1)
/* 8014DFCC 0014AF2C  B2 E1 00 24 */	sth r23, 0x24(r1)
/* 8014DFD0 0014AF30  92 C1 00 08 */	stw r22, 8(r1)
/* 8014DFD4 0014AF34  91 81 00 0C */	stw r12, 0xc(r1)
/* 8014DFD8 0014AF38  93 41 00 10 */	stw r26, 0x10(r1)
/* 8014DFDC 0014AF3C  91 61 00 14 */	stw r11, 0x14(r1)
/* 8014DFE0 0014AF40  90 01 00 18 */	stw r0, 0x18(r1)
/* 8014DFE4 0014AF44  4B FB 42 B1 */	bl "__ct__7CWeaponF9TUniqueId7TAreaIdb9TUniqueId11EWeaponTypeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>R12CTransform4fRC15CMaterialFilterRC13CMaterialListRC11CDamageInfo17EProjectileAttribRC10CModelData"
/* 8014DFE8 0014AF48  38 61 00 78 */	addi r3, r1, 0x78
/* 8014DFEC 0014AF4C  38 80 FF FF */	li r4, -1
/* 8014DFF0 0014AF50  4B FC 8A 5D */	bl __dt__10CModelDataFv
/* 8014DFF4 0014AF54  38 61 00 4C */	addi r3, r1, 0x4c
/* 8014DFF8 0014AF58  48 1E FA E9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8014DFFC 0014AF5C  3C 80 80 3E */	lis r4, lbl_803E2808@ha
/* 8014E000 0014AF60  3C 60 80 3D */	lis r3, lbl_803D01A0@ha
/* 8014E004 0014AF64  38 04 28 08 */	addi r0, r4, lbl_803E2808@l
/* 8014E008 0014AF68  38 80 00 01 */	li r4, 1
/* 8014E00C 0014AF6C  90 1E 00 00 */	stw r0, 0(r30)
/* 8014E010 0014AF70  38 63 01 A0 */	addi r3, r3, lbl_803D01A0@l
/* 8014E014 0014AF74  38 C0 00 00 */	li r6, 0
/* 8014E018 0014AF78  C0 22 9D 64 */	lfs f1, lbl_805ABA84@sda21(r2)
/* 8014E01C 0014AF7C  88 1E 01 58 */	lbz r0, 0x158(r30)
/* 8014E020 0014AF80  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8014E024 0014AF84  C0 02 9D 74 */	lfs f0, lbl_805ABA94@sda21(r2)
/* 8014E028 0014AF88  38 83 00 0A */	addi r4, r3, 0xa
/* 8014E02C 0014AF8C  98 1E 01 58 */	stb r0, 0x158(r30)
/* 8014E030 0014AF90  3A 60 00 00 */	li r19, 0
/* 8014E034 0014AF94  38 60 03 40 */	li r3, 0x340
/* 8014E038 0014AF98  38 A0 00 00 */	li r5, 0
/* 8014E03C 0014AF9C  88 1E 01 58 */	lbz r0, 0x158(r30)
/* 8014E040 0014AFA0  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 8014E044 0014AFA4  98 1E 01 58 */	stb r0, 0x158(r30)
/* 8014E048 0014AFA8  D0 3E 01 5C */	stfs f1, 0x15c(r30)
/* 8014E04C 0014AFAC  D0 3E 01 60 */	stfs f1, 0x160(r30)
/* 8014E050 0014AFB0  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 8014E054 0014AFB4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8014E058 0014AFB8  D0 1E 01 64 */	stfs f0, 0x164(r30)
/* 8014E05C 0014AFBC  48 1C 78 11 */	bl __nw__FUlPCcPCc
/* 8014E060 0014AFC0  7C 74 1B 79 */	or. r20, r3, r3
/* 8014E064 0014AFC4  41 82 00 2C */	beq lbl_8014E090
/* 8014E068 0014AFC8  7F E4 FB 78 */	mr r4, r31
/* 8014E06C 0014AFCC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8014E070 0014AFD0  48 1F 2E 39 */	bl __ct__6CTokenFRC6CToken
/* 8014E074 0014AFD4  7E 83 A3 78 */	mr r3, r20
/* 8014E078 0014AFD8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8014E07C 0014AFDC  3A 60 00 01 */	li r19, 1
/* 8014E080 0014AFE0  38 A0 00 00 */	li r5, 0
/* 8014E084 0014AFE4  38 C0 00 01 */	li r6, 1
/* 8014E088 0014AFE8  48 1D 13 59 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 8014E08C 0014AFEC  7C 74 1B 78 */	mr r20, r3
lbl_8014E090:
/* 8014E090 0014AFF0  7E 60 07 75 */	extsb. r0, r19
/* 8014E094 0014AFF4  92 9E 01 68 */	stw r20, 0x168(r30)
/* 8014E098 0014AFF8  41 82 00 10 */	beq lbl_8014E0A8
/* 8014E09C 0014AFFC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8014E0A0 0014B000  38 80 00 00 */	li r4, 0
/* 8014E0A4 0014B004  48 1F 2D 9D */	bl __dt__6CTokenFv
lbl_8014E0A8:
/* 8014E0A8 0014B008  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8014E0AC 0014B00C  38 81 00 40 */	addi r4, r1, 0x40
/* 8014E0B0 0014B010  D0 1E 01 6C */	stfs f0, 0x16c(r30)
/* 8014E0B4 0014B014  C0 59 00 2C */	lfs f2, 0x2c(r25)
/* 8014E0B8 0014B018  C0 39 00 1C */	lfs f1, 0x1c(r25)
/* 8014E0BC 0014B01C  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 8014E0C0 0014B020  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8014E0C4 0014B024  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8014E0C8 0014B028  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8014E0CC 0014B02C  80 7E 01 68 */	lwz r3, 0x168(r30)
/* 8014E0D0 0014B030  81 83 00 00 */	lwz r12, 0(r3)
/* 8014E0D4 0014B034  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8014E0D8 0014B038  7D 89 03 A6 */	mtctr r12
/* 8014E0DC 0014B03C  4E 80 04 21 */	bctrl
/* 8014E0E0 0014B040  7F C3 F3 78 */	mr r3, r30
/* 8014E0E4 0014B044  BA 61 00 CC */	lmw r19, 0xcc(r1)
/* 8014E0E8 0014B048  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8014E0EC 0014B04C  7C 08 03 A6 */	mtlr r0
/* 8014E0F0 0014B050  38 21 01 00 */	addi r1, r1, 0x100
/* 8014E0F4 0014B054  4E 80 00 20 */	blr

.global __sinit_CPowerBomb_cpp
__sinit_CPowerBomb_cpp:
/* 8014E0F8 0014B058  38 00 FF 7F */	li r0, -129
/* 8014E0FC 0014B05C  90 0D A3 E8 */	stw r0, lbl_805A8FA8@sda21(r13)
/* 8014E100 0014B060  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABA80
lbl_805ABA80:
	# ROM: 0x3F8320
	.4byte 0x40880000

.global lbl_805ABA84
lbl_805ABA84:
	# ROM: 0x3F8324
	.4byte 0

.global lbl_805ABA88
lbl_805ABA88:
	# ROM: 0x3F8328
	.4byte 0x40E00000

.global lbl_805ABA8C
lbl_805ABA8C:
	# ROM: 0x3F832C
	.float 1.0

.global lbl_805ABA90
lbl_805ABA90:
	# ROM: 0x3F8330
	.float 1.5

.global lbl_805ABA94
lbl_805ABA94:
	# ROM: 0x3F8334
	.float 2.5

.global lbl_805ABA98
lbl_805ABA98:
	# ROM: 0x3F8338
	.4byte 0x40700000

.global lbl_805ABA9C
lbl_805ABA9C:
	# ROM: 0x3F833C
	.float 0.5

.global lbl_805ABAA0
lbl_805ABAA0:
	# ROM: 0x3F8340
	.4byte 0x41F00000

.global lbl_805ABAA4
lbl_805ABAA4:
	# ROM: 0x3F8344
	.float 4.0


.section .rodata
.balign 8
.global lbl_803D01A0
lbl_803D01A0:
	# ROM: 0x3CD1A0
	.asciz "PowerBomb"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4
	.4byte 0
