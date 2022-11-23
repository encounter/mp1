.include "macros.inc"

.section .data
.balign 8

.global __vt__23CElectricBeamProjectile
__vt__23CElectricBeamProjectile:
	# ROM: 0x3E6118
	.4byte 0
	.4byte 0
	.4byte __dt__23CElectricBeamProjectileFv
	.4byte Accept__23CElectricBeamProjectileFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CWeaponFfR13CStateManager
	.4byte AcceptScriptMsg__23CElectricBeamProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__23CElectricBeamProjectileCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__15CGameProjectileCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__15CBeamProjectileFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__15CBeamProjectileCFv
	.4byte Touch__23CElectricBeamProjectileFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__7CWeaponCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__15CGameProjectileFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte ResolveCollisionWithActor__15CGameProjectileFRC14CRayCastResultR6CActorR13CStateManager
	.4byte UpdateFx__23CElectricBeamProjectileFRC12CTransform4ffR13CStateManager
	.4byte ResetBeam__23CElectricBeamProjectileFR13CStateManagerb
	.4byte Fire__23CElectricBeamProjectileFRC12CTransform4fR13CStateManagerb
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A82E8
lbl_805A82E8:
	# ROM: 0x3F5C88
	.float 1.0
	.4byte 0

.section .text, "ax"

.global __dt__23CElectricBeamProjectileFv
__dt__23CElectricBeamProjectileFv:
/* 80251BB0 0024EB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80251BB4 0024EB14  7C 08 02 A6 */	mflr r0
/* 80251BB8 0024EB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80251BBC 0024EB1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80251BC0 0024EB20  7C 9F 23 78 */	mr r31, r4
/* 80251BC4 0024EB24  93 C1 00 08 */	stw r30, 8(r1)
/* 80251BC8 0024EB28  7C 7E 1B 79 */	or. r30, r3, r3
/* 80251BCC 0024EB2C  41 82 00 98 */	beq lbl_80251C64
/* 80251BD0 0024EB30  3C 60 80 3F */	lis r3, __vt__23CElectricBeamProjectile@ha
/* 80251BD4 0024EB34  34 1E 04 78 */	addic. r0, r30, 0x478
/* 80251BD8 0024EB38  38 03 91 18 */	addi r0, r3, __vt__23CElectricBeamProjectile@l
/* 80251BDC 0024EB3C  90 1E 00 00 */	stw r0, 0(r30)
/* 80251BE0 0024EB40  41 82 00 24 */	beq lbl_80251C04
/* 80251BE4 0024EB44  80 7E 04 78 */	lwz r3, 0x478(r30)
/* 80251BE8 0024EB48  28 03 00 00 */	cmplwi r3, 0
/* 80251BEC 0024EB4C  41 82 00 18 */	beq lbl_80251C04
/* 80251BF0 0024EB50  81 83 00 00 */	lwz r12, 0(r3)
/* 80251BF4 0024EB54  38 80 00 01 */	li r4, 1
/* 80251BF8 0024EB58  81 8C 00 08 */	lwz r12, 8(r12)
/* 80251BFC 0024EB5C  7D 89 03 A6 */	mtctr r12
/* 80251C00 0024EB60  4E 80 04 21 */	bctrl
lbl_80251C04:
/* 80251C04 0024EB64  34 1E 04 6C */	addic. r0, r30, 0x46c
/* 80251C08 0024EB68  41 82 00 18 */	beq lbl_80251C20
/* 80251C0C 0024EB6C  34 1E 04 6C */	addic. r0, r30, 0x46c
/* 80251C10 0024EB70  41 82 00 10 */	beq lbl_80251C20
/* 80251C14 0024EB74  38 7E 04 6C */	addi r3, r30, 0x46c
/* 80251C18 0024EB78  38 80 00 00 */	li r4, 0
/* 80251C1C 0024EB7C  48 0E F2 25 */	bl __dt__6CTokenFv
lbl_80251C20:
/* 80251C20 0024EB80  34 1E 04 68 */	addic. r0, r30, 0x468
/* 80251C24 0024EB84  41 82 00 24 */	beq lbl_80251C48
/* 80251C28 0024EB88  80 7E 04 68 */	lwz r3, 0x468(r30)
/* 80251C2C 0024EB8C  28 03 00 00 */	cmplwi r3, 0
/* 80251C30 0024EB90  41 82 00 18 */	beq lbl_80251C48
/* 80251C34 0024EB94  81 83 00 00 */	lwz r12, 0(r3)
/* 80251C38 0024EB98  38 80 00 01 */	li r4, 1
/* 80251C3C 0024EB9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80251C40 0024EBA0  7D 89 03 A6 */	mtctr r12
/* 80251C44 0024EBA4  4E 80 04 21 */	bctrl
lbl_80251C48:
/* 80251C48 0024EBA8  7F C3 F3 78 */	mr r3, r30
/* 80251C4C 0024EBAC  38 80 00 00 */	li r4, 0
/* 80251C50 0024EBB0  4B F2 50 C9 */	bl __dt__15CBeamProjectileFv
/* 80251C54 0024EBB4  7F E0 07 35 */	extsh. r0, r31
/* 80251C58 0024EBB8  40 81 00 0C */	ble lbl_80251C64
/* 80251C5C 0024EBBC  7F C3 F3 78 */	mr r3, r30
/* 80251C60 0024EBC0  48 0C 3C D1 */	bl Free__7CMemoryFPCv
lbl_80251C64:
/* 80251C64 0024EBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80251C68 0024EBC8  7F C3 F3 78 */	mr r3, r30
/* 80251C6C 0024EBCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80251C70 0024EBD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80251C74 0024EBD4  7C 08 03 A6 */	mtlr r0
/* 80251C78 0024EBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80251C7C 0024EBDC  4E 80 00 20 */	blr

.global AcceptScriptMsg__23CElectricBeamProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__23CElectricBeamProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80251C80 0024EBE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80251C84 0024EBE4  7C 08 02 A6 */	mflr r0
/* 80251C88 0024EBE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80251C8C 0024EBEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80251C90 0024EBF0  7C DF 33 78 */	mr r31, r6
/* 80251C94 0024EBF4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80251C98 0024EBF8  7C BE 2B 78 */	mr r30, r5
/* 80251C9C 0024EBFC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80251CA0 0024EC00  7C 9D 23 78 */	mr r29, r4
/* 80251CA4 0024EC04  2C 1D 00 22 */	cmpwi r29, 0x22
/* 80251CA8 0024EC08  93 81 00 20 */	stw r28, 0x20(r1)
/* 80251CAC 0024EC0C  7C 7C 1B 78 */	mr r28, r3
/* 80251CB0 0024EC10  41 82 00 44 */	beq lbl_80251CF4
/* 80251CB4 0024EC14  40 80 00 48 */	bge lbl_80251CFC
/* 80251CB8 0024EC18  2C 1D 00 21 */	cmpwi r29, 0x21
/* 80251CBC 0024EC1C  40 80 00 08 */	bge lbl_80251CC4
/* 80251CC0 0024EC20  48 00 00 3C */	b lbl_80251CFC
lbl_80251CC4:
/* 80251CC4 0024EC24  A0 1C 00 EC */	lhz r0, 0xec(r28)
/* 80251CC8 0024EC28  7F E3 FB 78 */	mr r3, r31
/* 80251CCC 0024EC2C  80 BC 00 F0 */	lwz r5, 0xf0(r28)
/* 80251CD0 0024EC30  38 81 00 10 */	addi r4, r1, 0x10
/* 80251CD4 0024EC34  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80251CD8 0024EC38  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80251CDC 0024EC3C  4B DF 30 2D */	bl AddWeaponId__13CStateManagerF9TUniqueId11EWeaponType
/* 80251CE0 0024EC40  88 1C 04 64 */	lbz r0, 0x464(r28)
/* 80251CE4 0024EC44  38 60 00 01 */	li r3, 1
/* 80251CE8 0024EC48  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80251CEC 0024EC4C  98 1C 04 64 */	stb r0, 0x464(r28)
/* 80251CF0 0024EC50  48 00 00 0C */	b lbl_80251CFC
lbl_80251CF4:
/* 80251CF4 0024EC54  7F E4 FB 78 */	mr r4, r31
/* 80251CF8 0024EC58  4B DE 5B B1 */	bl DeleteProjectileLight__15CGameProjectileFR13CStateManager
lbl_80251CFC:
/* 80251CFC 0024EC5C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80251D00 0024EC60  7F 83 E3 78 */	mr r3, r28
/* 80251D04 0024EC64  7F A4 EB 78 */	mr r4, r29
/* 80251D08 0024EC68  7F E6 FB 78 */	mr r6, r31
/* 80251D0C 0024EC6C  B0 01 00 08 */	sth r0, 8(r1)
/* 80251D10 0024EC70  38 A1 00 08 */	addi r5, r1, 8
/* 80251D14 0024EC74  4B DE 68 B9 */	bl AcceptScriptMsg__15CGameProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80251D18 0024EC78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80251D1C 0024EC7C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80251D20 0024EC80  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80251D24 0024EC84  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80251D28 0024EC88  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80251D2C 0024EC8C  7C 08 03 A6 */	mtlr r0
/* 80251D30 0024EC90  38 21 00 30 */	addi r1, r1, 0x30
/* 80251D34 0024EC94  4E 80 00 20 */	blr

.global ResetBeam__23CElectricBeamProjectileFR13CStateManagerb
ResetBeam__23CElectricBeamProjectileFR13CStateManagerb:
/* 80251D38 0024EC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80251D3C 0024EC9C  7C 08 02 A6 */	mflr r0
/* 80251D40 0024ECA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80251D44 0024ECA4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80251D48 0024ECA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80251D4C 0024ECAC  7C 9F 23 78 */	mr r31, r4
/* 80251D50 0024ECB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80251D54 0024ECB4  7C 7E 1B 78 */	mr r30, r3
/* 80251D58 0024ECB8  41 82 00 5C */	beq lbl_80251DB4
/* 80251D5C 0024ECBC  81 83 00 00 */	lwz r12, 0(r3)
/* 80251D60 0024ECC0  38 80 00 00 */	li r4, 0
/* 80251D64 0024ECC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80251D68 0024ECC8  7D 89 03 A6 */	mtctr r12
/* 80251D6C 0024ECCC  4E 80 04 21 */	bctrl
/* 80251D70 0024ECD0  80 7E 04 78 */	lwz r3, 0x478(r30)
/* 80251D74 0024ECD4  38 80 00 00 */	li r4, 0
/* 80251D78 0024ECD8  81 83 00 00 */	lwz r12, 0(r3)
/* 80251D7C 0024ECDC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80251D80 0024ECE0  7D 89 03 A6 */	mtctr r12
/* 80251D84 0024ECE4  4E 80 04 21 */	bctrl
/* 80251D88 0024ECE8  80 7E 04 68 */	lwz r3, 0x468(r30)
/* 80251D8C 0024ECEC  38 80 00 00 */	li r4, 0
/* 80251D90 0024ECF0  81 83 00 00 */	lwz r12, 0(r3)
/* 80251D94 0024ECF4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80251D98 0024ECF8  7D 89 03 A6 */	mtctr r12
/* 80251D9C 0024ECFC  4E 80 04 21 */	bctrl
/* 80251DA0 0024ED00  7F C3 F3 78 */	mr r3, r30
/* 80251DA4 0024ED04  7F E4 FB 78 */	mr r4, r31
/* 80251DA8 0024ED08  38 A0 00 01 */	li r5, 1
/* 80251DAC 0024ED0C  4B F4 75 8D */	bl ResetBeam__15CBeamProjectileFR13CStateManagerb
/* 80251DB0 0024ED10  48 00 00 0C */	b lbl_80251DBC
lbl_80251DB4:
/* 80251DB4 0024ED14  38 00 00 00 */	li r0, 0
/* 80251DB8 0024ED18  98 1E 04 8C */	stb r0, 0x48c(r30)
lbl_80251DBC:
/* 80251DBC 0024ED1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80251DC0 0024ED20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80251DC4 0024ED24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80251DC8 0024ED28  7C 08 03 A6 */	mtlr r0
/* 80251DCC 0024ED2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80251DD0 0024ED30  4E 80 00 20 */	blr

.global Fire__23CElectricBeamProjectileFRC12CTransform4fR13CStateManagerb
Fire__23CElectricBeamProjectileFRC12CTransform4fR13CStateManagerb:
/* 80251DD4 0024ED34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80251DD8 0024ED38  7C 08 02 A6 */	mflr r0
/* 80251DDC 0024ED3C  38 80 00 01 */	li r4, 1
/* 80251DE0 0024ED40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80251DE4 0024ED44  38 00 00 01 */	li r0, 1
/* 80251DE8 0024ED48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80251DEC 0024ED4C  7C 7F 1B 78 */	mr r31, r3
/* 80251DF0 0024ED50  98 03 04 8C */	stb r0, 0x48c(r3)
/* 80251DF4 0024ED54  81 83 00 00 */	lwz r12, 0(r3)
/* 80251DF8 0024ED58  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80251DFC 0024ED5C  7D 89 03 A6 */	mtctr r12
/* 80251E00 0024ED60  4E 80 04 21 */	bctrl
/* 80251E04 0024ED64  C0 02 B8 F0 */	lfs f0, lbl_805AD610@sda21(r2)
/* 80251E08 0024ED68  D0 1F 04 80 */	stfs f0, 0x480(r31)
/* 80251E0C 0024ED6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80251E10 0024ED70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80251E14 0024ED74  7C 08 03 A6 */	mtlr r0
/* 80251E18 0024ED78  38 21 00 10 */	addi r1, r1, 0x10
/* 80251E1C 0024ED7C  4E 80 00 20 */	blr

.global AddToRenderer__23CElectricBeamProjectileCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__23CElectricBeamProjectileCFRC14CFrustumPlanesRC13CStateManager:
/* 80251E20 0024ED80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80251E24 0024ED84  7C 08 02 A6 */	mflr r0
/* 80251E28 0024ED88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80251E2C 0024ED8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80251E30 0024ED90  7C 7F 1B 78 */	mr r31, r3
/* 80251E34 0024ED94  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80251E38 0024ED98  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80251E3C 0024ED9C  41 82 00 34 */	beq lbl_80251E70
/* 80251E40 0024EDA0  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80251E44 0024EDA4  80 9F 04 78 */	lwz r4, 0x478(r31)
/* 80251E48 0024EDA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80251E4C 0024EDAC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80251E50 0024EDB0  7D 89 03 A6 */	mtctr r12
/* 80251E54 0024EDB4  4E 80 04 21 */	bctrl
/* 80251E58 0024EDB8  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80251E5C 0024EDBC  80 9F 04 68 */	lwz r4, 0x468(r31)
/* 80251E60 0024EDC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80251E64 0024EDC4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80251E68 0024EDC8  7D 89 03 A6 */	mtctr r12
/* 80251E6C 0024EDCC  4E 80 04 21 */	bctrl
lbl_80251E70:
/* 80251E70 0024EDD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80251E74 0024EDD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80251E78 0024EDD8  7C 08 03 A6 */	mtlr r0
/* 80251E7C 0024EDDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80251E80 0024EDE0  4E 80 00 20 */	blr

.global UpdateFx__23CElectricBeamProjectileFRC12CTransform4ffR13CStateManager
UpdateFx__23CElectricBeamProjectileFRC12CTransform4ffR13CStateManager:
/* 80251E84 0024EDE4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80251E88 0024EDE8  7C 08 02 A6 */	mflr r0
/* 80251E8C 0024EDEC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80251E90 0024EDF0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80251E94 0024EDF4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 80251E98 0024EDF8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80251E9C 0024EDFC  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80251EA0 0024EE00  93 A1 00 74 */	stw r29, 0x74(r1)
/* 80251EA4 0024EE04  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80251EA8 0024EE08  FF E0 08 90 */	fmr f31, f1
/* 80251EAC 0024EE0C  7C 7F 1B 78 */	mr r31, r3
/* 80251EB0 0024EE10  7C 9E 23 78 */	mr r30, r4
/* 80251EB4 0024EE14  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80251EB8 0024EE18  7C BD 2B 78 */	mr r29, r5
/* 80251EBC 0024EE1C  41 82 04 20 */	beq lbl_802522DC
/* 80251EC0 0024EE20  C0 3F 04 84 */	lfs f1, 0x484(r31)
/* 80251EC4 0024EE24  C0 02 B8 F0 */	lfs f0, lbl_805AD610@sda21(r2)
/* 80251EC8 0024EE28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80251ECC 0024EE2C  4C 40 13 82 */	cror 2, 0, 2
/* 80251ED0 0024EE30  40 82 00 14 */	bne lbl_80251EE4
/* 80251ED4 0024EE34  88 1F 04 64 */	lbz r0, 0x464(r31)
/* 80251ED8 0024EE38  38 60 00 01 */	li r3, 1
/* 80251EDC 0024EE3C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80251EE0 0024EE40  98 1F 04 64 */	stb r0, 0x464(r31)
lbl_80251EE4:
/* 80251EE4 0024EE44  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 80251EE8 0024EE48  2C 00 00 01 */	cmpwi r0, 1
/* 80251EEC 0024EE4C  40 82 00 1C */	bne lbl_80251F08
/* 80251EF0 0024EE50  C0 1F 04 88 */	lfs f0, 0x488(r31)
/* 80251EF4 0024EE54  38 60 00 00 */	li r3, 0
/* 80251EF8 0024EE58  D0 1F 04 84 */	stfs f0, 0x484(r31)
/* 80251EFC 0024EE5C  88 1F 04 64 */	lbz r0, 0x464(r31)
/* 80251F00 0024EE60  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80251F04 0024EE64  98 1F 04 64 */	stb r0, 0x464(r31)
lbl_80251F08:
/* 80251F08 0024EE68  C0 1F 04 84 */	lfs f0, 0x484(r31)
/* 80251F0C 0024EE6C  C0 22 B8 F0 */	lfs f1, lbl_805AD610@sda21(r2)
/* 80251F10 0024EE70  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80251F14 0024EE74  C0 02 B8 F4 */	lfs f0, lbl_805AD614@sda21(r2)
/* 80251F18 0024EE78  D0 5F 04 84 */	stfs f2, 0x484(r31)
/* 80251F1C 0024EE7C  C0 5F 04 7C */	lfs f2, 0x47c(r31)
/* 80251F20 0024EE80  EC 22 08 28 */	fsubs f1, f2, f1
/* 80251F24 0024EE84  FC 20 0A 10 */	fabs f1, f1
/* 80251F28 0024EE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80251F2C 0024EE8C  41 80 00 80 */	blt lbl_80251FAC
/* 80251F30 0024EE90  88 1F 04 8C */	lbz r0, 0x48c(r31)
/* 80251F34 0024EE94  28 00 00 00 */	cmplwi r0, 0
/* 80251F38 0024EE98  41 82 00 0C */	beq lbl_80251F44
/* 80251F3C 0024EE9C  C0 42 B8 F8 */	lfs f2, lbl_805AD618@sda21(r2)
/* 80251F40 0024EEA0  48 00 00 08 */	b lbl_80251F48
lbl_80251F44:
/* 80251F44 0024EEA4  C0 42 B8 FC */	lfs f2, lbl_805AD61C@sda21(r2)
lbl_80251F48:
/* 80251F48 0024EEA8  C0 1F 04 7C */	lfs f0, 0x47c(r31)
/* 80251F4C 0024EEAC  C0 3F 04 80 */	lfs f1, 0x480(r31)
/* 80251F50 0024EEB0  EC 42 00 24 */	fdivs f2, f2, f0
/* 80251F54 0024EEB4  C0 0D 97 28 */	lfs f0, lbl_805A82E8@sda21(r13)
/* 80251F58 0024EEB8  EC 3F 08 BA */	fmadds f1, f31, f2, f1
/* 80251F5C 0024EEBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80251F60 0024EEC0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80251F64 0024EEC4  40 80 00 0C */	bge lbl_80251F70
/* 80251F68 0024EEC8  38 61 00 10 */	addi r3, r1, 0x10
/* 80251F6C 0024EECC  48 00 00 08 */	b lbl_80251F74
lbl_80251F70:
/* 80251F70 0024EED0  38 6D 97 28 */	addi r3, r13, lbl_805A82E8@sda21
lbl_80251F74:
/* 80251F74 0024EED4  C0 23 00 00 */	lfs f1, 0(r3)
/* 80251F78 0024EED8  C0 02 B8 F0 */	lfs f0, lbl_805AD610@sda21(r2)
/* 80251F7C 0024EEDC  D0 3F 04 80 */	stfs f1, 0x480(r31)
/* 80251F80 0024EEE0  C0 3F 04 80 */	lfs f1, 0x480(r31)
/* 80251F84 0024EEE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80251F88 0024EEE8  40 80 00 2C */	bge lbl_80251FB4
/* 80251F8C 0024EEEC  7F E3 FB 78 */	mr r3, r31
/* 80251F90 0024EEF0  7F A4 EB 78 */	mr r4, r29
/* 80251F94 0024EEF4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80251F98 0024EEF8  38 A0 00 01 */	li r5, 1
/* 80251F9C 0024EEFC  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80251FA0 0024EF00  7D 89 03 A6 */	mtctr r12
/* 80251FA4 0024EF04  4E 80 04 21 */	bctrl
/* 80251FA8 0024EF08  48 00 00 0C */	b lbl_80251FB4
lbl_80251FAC:
/* 80251FAC 0024EF0C  C0 02 B8 F8 */	lfs f0, lbl_805AD618@sda21(r2)
/* 80251FB0 0024EF10  D0 1F 04 80 */	stfs f0, 0x480(r31)
lbl_80251FB4:
/* 80251FB4 0024EF14  FC 20 F8 90 */	fmr f1, f31
/* 80251FB8 0024EF18  7F E3 FB 78 */	mr r3, r31
/* 80251FBC 0024EF1C  7F C4 F3 78 */	mr r4, r30
/* 80251FC0 0024EF20  7F A5 EB 78 */	mr r5, r29
/* 80251FC4 0024EF24  4B F4 6E 1D */	bl UpdateFx__15CBeamProjectileFRC12CTransform4ffR13CStateManager
/* 80251FC8 0024EF28  83 BF 04 78 */	lwz r29, 0x478(r31)
/* 80251FCC 0024EF2C  48 0F 7F E1 */	bl White__6CColorFv
/* 80251FD0 0024EF30  7C 7E 1B 78 */	mr r30, r3
/* 80251FD4 0024EF34  48 0F 7F E1 */	bl Black__6CColorFv
/* 80251FD8 0024EF38  C0 3F 04 80 */	lfs f1, 0x480(r31)
/* 80251FDC 0024EF3C  7C 64 1B 78 */	mr r4, r3
/* 80251FE0 0024EF40  7F C5 F3 78 */	mr r5, r30
/* 80251FE4 0024EF44  38 61 00 0C */	addi r3, r1, 0xc
/* 80251FE8 0024EF48  48 11 12 C5 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80251FEC 0024EF4C  7F A3 EB 78 */	mr r3, r29
/* 80251FF0 0024EF50  38 81 00 0C */	addi r4, r1, 0xc
/* 80251FF4 0024EF54  81 9D 00 00 */	lwz r12, 0(r29)
/* 80251FF8 0024EF58  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80251FFC 0024EF5C  7D 89 03 A6 */	mtctr r12
/* 80252000 0024EF60  4E 80 04 21 */	bctrl
/* 80252004 0024EF64  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80252008 0024EF68  7C 03 00 D0 */	neg r0, r3
/* 8025200C 0024EF6C  7C 00 1B 78 */	or r0, r0, r3
/* 80252010 0024EF70  54 1E 0F FF */	rlwinm. r30, r0, 1, 0x1f, 0x1f
/* 80252014 0024EF74  41 82 00 A0 */	beq lbl_802520B4
/* 80252018 0024EF78  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8025201C 0024EF7C  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 80252020 0024EF80  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 80252024 0024EF84  83 BF 04 78 */	lwz r29, 0x478(r31)
/* 80252028 0024EF88  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 8025202C 0024EF8C  38 61 00 38 */	addi r3, r1, 0x38
/* 80252030 0024EF90  38 BF 03 0C */	addi r5, r31, 0x30c
/* 80252034 0024EF94  48 0C 1A DD */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80252038 0024EF98  7F A3 EB 78 */	mr r3, r29
/* 8025203C 0024EF9C  38 81 00 38 */	addi r4, r1, 0x38
/* 80252040 0024EFA0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80252044 0024EFA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80252048 0024EFA8  7D 89 03 A6 */	mtctr r12
/* 8025204C 0024EFAC  4E 80 04 21 */	bctrl
/* 80252050 0024EFB0  C0 62 B9 00 */	lfs f3, lbl_805AD620@sda21(r2)
/* 80252054 0024EFB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80252058 0024EFB8  C0 5F 03 10 */	lfs f2, 0x310(r31)
/* 8025205C 0024EFBC  C0 3F 03 14 */	lfs f1, 0x314(r31)
/* 80252060 0024EFC0  C0 1F 03 0C */	lfs f0, 0x30c(r31)
/* 80252064 0024EFC4  EC A3 00 B2 */	fmuls f5, f3, f2
/* 80252068 0024EFC8  EC 83 00 72 */	fmuls f4, f3, f1
/* 8025206C 0024EFCC  C0 5F 03 1C */	lfs f2, 0x31c(r31)
/* 80252070 0024EFD0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80252074 0024EFD4  C0 3F 03 20 */	lfs f1, 0x320(r31)
/* 80252078 0024EFD8  C0 1F 03 18 */	lfs f0, 0x318(r31)
/* 8025207C 0024EFDC  EC 42 28 2A */	fadds f2, f2, f5
/* 80252080 0024EFE0  EC 21 20 2A */	fadds f1, f1, f4
/* 80252084 0024EFE4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80252088 0024EFE8  EC 00 18 2A */	fadds f0, f0, f3
/* 8025208C 0024EFEC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80252090 0024EFF0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80252094 0024EFF4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80252098 0024EFF8  80 7F 04 78 */	lwz r3, 0x478(r31)
/* 8025209C 0024EFFC  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 802520A0 0024F000  81 83 00 00 */	lwz r12, 0(r3)
/* 802520A4 0024F004  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 802520A8 0024F008  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802520AC 0024F00C  7D 89 03 A6 */	mtctr r12
/* 802520B0 0024F010  4E 80 04 21 */	bctrl
lbl_802520B4:
/* 802520B4 0024F014  80 7F 04 78 */	lwz r3, 0x478(r31)
/* 802520B8 0024F018  7F C4 F3 78 */	mr r4, r30
/* 802520BC 0024F01C  81 83 00 00 */	lwz r12, 0(r3)
/* 802520C0 0024F020  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802520C4 0024F024  7D 89 03 A6 */	mtctr r12
/* 802520C8 0024F028  4E 80 04 21 */	bctrl
/* 802520CC 0024F02C  80 7F 04 78 */	lwz r3, 0x478(r31)
/* 802520D0 0024F030  FC 20 F8 90 */	fmr f1, f31
/* 802520D4 0024F034  81 83 00 00 */	lwz r12, 0(r3)
/* 802520D8 0024F038  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802520DC 0024F03C  7D 89 03 A6 */	mtctr r12
/* 802520E0 0024F040  4E 80 04 21 */	bctrl
/* 802520E4 0024F044  83 BF 04 68 */	lwz r29, 0x468(r31)
/* 802520E8 0024F048  48 0F 7E C5 */	bl White__6CColorFv
/* 802520EC 0024F04C  7C 7E 1B 78 */	mr r30, r3
/* 802520F0 0024F050  48 0F 7E C5 */	bl Black__6CColorFv
/* 802520F4 0024F054  C0 3F 04 80 */	lfs f1, 0x480(r31)
/* 802520F8 0024F058  7C 64 1B 78 */	mr r4, r3
/* 802520FC 0024F05C  7F C5 F3 78 */	mr r5, r30
/* 80252100 0024F060  38 61 00 08 */	addi r3, r1, 8
/* 80252104 0024F064  48 11 11 A9 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80252108 0024F068  7F A3 EB 78 */	mr r3, r29
/* 8025210C 0024F06C  38 81 00 08 */	addi r4, r1, 8
/* 80252110 0024F070  81 9D 00 00 */	lwz r12, 0(r29)
/* 80252114 0024F074  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80252118 0024F078  7D 89 03 A6 */	mtctr r12
/* 8025211C 0024F07C  4E 80 04 21 */	bctrl
/* 80252120 0024F080  80 7F 04 68 */	lwz r3, 0x468(r31)
/* 80252124 0024F084  38 80 00 01 */	li r4, 1
/* 80252128 0024F088  81 83 00 00 */	lwz r12, 0(r3)
/* 8025212C 0024F08C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80252130 0024F090  7D 89 03 A6 */	mtctr r12
/* 80252134 0024F094  4E 80 04 21 */	bctrl
/* 80252138 0024F098  C0 3F 03 1C */	lfs f1, 0x31c(r31)
/* 8025213C 0024F09C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80252140 0024F0A0  C0 1F 03 40 */	lfs f0, 0x340(r31)
/* 80252144 0024F0A4  C0 7F 03 20 */	lfs f3, 0x320(r31)
/* 80252148 0024F0A8  C0 5F 03 50 */	lfs f2, 0x350(r31)
/* 8025214C 0024F0AC  EC 81 00 28 */	fsubs f4, f1, f0
/* 80252150 0024F0B0  C0 3F 03 18 */	lfs f1, 0x318(r31)
/* 80252154 0024F0B4  C0 1F 03 30 */	lfs f0, 0x330(r31)
/* 80252158 0024F0B8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8025215C 0024F0BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80252160 0024F0C0  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80252164 0024F0C4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80252168 0024F0C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8025216C 0024F0CC  48 0C 25 8D */	bl CanBeNormalized__9CVector3fCFv
/* 80252170 0024F0D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80252174 0024F0D4  41 82 00 0C */	beq lbl_80252180
/* 80252178 0024F0D8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025217C 0024F0DC  48 0C 27 7D */	bl Normalize__9CVector3fFv
lbl_80252180:
/* 80252180 0024F0E0  80 7F 04 68 */	lwz r3, 0x468(r31)
/* 80252184 0024F0E4  C0 5F 03 50 */	lfs f2, 0x350(r31)
/* 80252188 0024F0E8  88 03 01 84 */	lbz r0, 0x184(r3)
/* 8025218C 0024F0EC  C0 3F 03 40 */	lfs f1, 0x340(r31)
/* 80252190 0024F0F0  28 00 00 00 */	cmplwi r0, 0
/* 80252194 0024F0F4  C0 1F 03 30 */	lfs f0, 0x330(r31)
/* 80252198 0024F0F8  40 82 00 24 */	bne lbl_802521BC
/* 8025219C 0024F0FC  34 83 01 78 */	addic. r4, r3, 0x178
/* 802521A0 0024F100  41 82 00 10 */	beq lbl_802521B0
/* 802521A4 0024F104  D0 04 00 00 */	stfs f0, 0(r4)
/* 802521A8 0024F108  D0 24 00 04 */	stfs f1, 4(r4)
/* 802521AC 0024F10C  D0 44 00 08 */	stfs f2, 8(r4)
lbl_802521B0:
/* 802521B0 0024F110  38 00 00 01 */	li r0, 1
/* 802521B4 0024F114  98 03 01 84 */	stb r0, 0x184(r3)
/* 802521B8 0024F118  48 00 00 10 */	b lbl_802521C8
lbl_802521BC:
/* 802521BC 0024F11C  D0 03 01 78 */	stfs f0, 0x178(r3)
/* 802521C0 0024F120  D0 23 01 7C */	stfs f1, 0x17c(r3)
/* 802521C4 0024F124  D0 43 01 80 */	stfs f2, 0x180(r3)
lbl_802521C8:
/* 802521C8 0024F128  80 7F 04 68 */	lwz r3, 0x468(r31)
/* 802521CC 0024F12C  88 03 01 94 */	lbz r0, 0x194(r3)
/* 802521D0 0024F130  28 00 00 00 */	cmplwi r0, 0
/* 802521D4 0024F134  40 82 00 30 */	bne lbl_80252204
/* 802521D8 0024F138  34 83 01 88 */	addic. r4, r3, 0x188
/* 802521DC 0024F13C  41 82 00 1C */	beq lbl_802521F8
/* 802521E0 0024F140  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802521E4 0024F144  D0 04 00 00 */	stfs f0, 0(r4)
/* 802521E8 0024F148  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802521EC 0024F14C  D0 04 00 04 */	stfs f0, 4(r4)
/* 802521F0 0024F150  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 802521F4 0024F154  D0 04 00 08 */	stfs f0, 8(r4)
lbl_802521F8:
/* 802521F8 0024F158  38 00 00 01 */	li r0, 1
/* 802521FC 0024F15C  98 03 01 94 */	stb r0, 0x194(r3)
/* 80252200 0024F160  48 00 00 1C */	b lbl_8025221C
lbl_80252204:
/* 80252204 0024F164  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80252208 0024F168  D0 03 01 88 */	stfs f0, 0x188(r3)
/* 8025220C 0024F16C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80252210 0024F170  D0 03 01 8C */	stfs f0, 0x18c(r3)
/* 80252214 0024F174  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80252218 0024F178  D0 03 01 90 */	stfs f0, 0x190(r3)
lbl_8025221C:
/* 8025221C 0024F17C  80 7F 04 68 */	lwz r3, 0x468(r31)
/* 80252220 0024F180  88 03 01 A4 */	lbz r0, 0x1a4(r3)
/* 80252224 0024F184  28 00 00 00 */	cmplwi r0, 0
/* 80252228 0024F188  40 82 00 30 */	bne lbl_80252258
/* 8025222C 0024F18C  34 83 01 98 */	addic. r4, r3, 0x198
/* 80252230 0024F190  41 82 00 1C */	beq lbl_8025224C
/* 80252234 0024F194  C0 1F 03 18 */	lfs f0, 0x318(r31)
/* 80252238 0024F198  D0 04 00 00 */	stfs f0, 0(r4)
/* 8025223C 0024F19C  C0 1F 03 1C */	lfs f0, 0x31c(r31)
/* 80252240 0024F1A0  D0 04 00 04 */	stfs f0, 4(r4)
/* 80252244 0024F1A4  C0 1F 03 20 */	lfs f0, 0x320(r31)
/* 80252248 0024F1A8  D0 04 00 08 */	stfs f0, 8(r4)
lbl_8025224C:
/* 8025224C 0024F1AC  38 00 00 01 */	li r0, 1
/* 80252250 0024F1B0  98 03 01 A4 */	stb r0, 0x1a4(r3)
/* 80252254 0024F1B4  48 00 00 1C */	b lbl_80252270
lbl_80252258:
/* 80252258 0024F1B8  C0 1F 03 18 */	lfs f0, 0x318(r31)
/* 8025225C 0024F1BC  D0 03 01 98 */	stfs f0, 0x198(r3)
/* 80252260 0024F1C0  C0 1F 03 1C */	lfs f0, 0x31c(r31)
/* 80252264 0024F1C4  D0 03 01 9C */	stfs f0, 0x19c(r3)
/* 80252268 0024F1C8  C0 1F 03 20 */	lfs f0, 0x320(r31)
/* 8025226C 0024F1CC  D0 03 01 A0 */	stfs f0, 0x1a0(r3)
lbl_80252270:
/* 80252270 0024F1D0  80 7F 04 68 */	lwz r3, 0x468(r31)
/* 80252274 0024F1D4  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80252278 0024F1D8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8025227C 0024F1DC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80252280 0024F1E0  FC 40 10 50 */	fneg f2, f2
/* 80252284 0024F1E4  88 03 01 B4 */	lbz r0, 0x1b4(r3)
/* 80252288 0024F1E8  FC 20 08 50 */	fneg f1, f1
/* 8025228C 0024F1EC  FC 00 00 50 */	fneg f0, f0
/* 80252290 0024F1F0  28 00 00 00 */	cmplwi r0, 0
/* 80252294 0024F1F4  40 82 00 24 */	bne lbl_802522B8
/* 80252298 0024F1F8  34 83 01 A8 */	addic. r4, r3, 0x1a8
/* 8025229C 0024F1FC  41 82 00 10 */	beq lbl_802522AC
/* 802522A0 0024F200  D0 04 00 00 */	stfs f0, 0(r4)
/* 802522A4 0024F204  D0 24 00 04 */	stfs f1, 4(r4)
/* 802522A8 0024F208  D0 44 00 08 */	stfs f2, 8(r4)
lbl_802522AC:
/* 802522AC 0024F20C  38 00 00 01 */	li r0, 1
/* 802522B0 0024F210  98 03 01 B4 */	stb r0, 0x1b4(r3)
/* 802522B4 0024F214  48 00 00 10 */	b lbl_802522C4
lbl_802522B8:
/* 802522B8 0024F218  D0 03 01 A8 */	stfs f0, 0x1a8(r3)
/* 802522BC 0024F21C  D0 23 01 AC */	stfs f1, 0x1ac(r3)
/* 802522C0 0024F220  D0 43 01 B0 */	stfs f2, 0x1b0(r3)
lbl_802522C4:
/* 802522C4 0024F224  80 7F 04 68 */	lwz r3, 0x468(r31)
/* 802522C8 0024F228  FC 20 F8 90 */	fmr f1, f31
/* 802522CC 0024F22C  81 83 00 00 */	lwz r12, 0(r3)
/* 802522D0 0024F230  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802522D4 0024F234  7D 89 03 A6 */	mtctr r12
/* 802522D8 0024F238  4E 80 04 21 */	bctrl
lbl_802522DC:
/* 802522DC 0024F23C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 802522E0 0024F240  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802522E4 0024F244  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802522E8 0024F248  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 802522EC 0024F24C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 802522F0 0024F250  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 802522F4 0024F254  7C 08 03 A6 */	mtlr r0
/* 802522F8 0024F258  38 21 00 90 */	addi r1, r1, 0x90
/* 802522FC 0024F25C  4E 80 00 20 */	blr

.global Touch__23CElectricBeamProjectileFR6CActorR13CStateManager
Touch__23CElectricBeamProjectileFR6CActorR13CStateManager:
/* 80252300 0024F260  4E 80 00 20 */	blr

.global Accept__23CElectricBeamProjectileFR8IVisitor
Accept__23CElectricBeamProjectileFR8IVisitor:
/* 80252304 0024F264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252308 0024F268  7C 08 02 A6 */	mflr r0
/* 8025230C 0024F26C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252310 0024F270  7C 60 1B 78 */	mr r0, r3
/* 80252314 0024F274  7C 83 23 78 */	mr r3, r4
/* 80252318 0024F278  81 84 00 00 */	lwz r12, 0(r4)
/* 8025231C 0024F27C  7C 04 03 78 */	mr r4, r0
/* 80252320 0024F280  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80252324 0024F284  7D 89 03 A6 */	mtctr r12
/* 80252328 0024F288  4E 80 04 21 */	bctrl
/* 8025232C 0024F28C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252330 0024F290  7C 08 03 A6 */	mtlr r0
/* 80252334 0024F294  38 21 00 10 */	addi r1, r1, 0x10
/* 80252338 0024F298  4E 80 00 20 */	blr

.global "__ct__23CElectricBeamProjectileFRC28TToken<18CWeaponDescription>11EWeaponTypeRC17SElectricBeamInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId17EProjectileAttrib"
"__ct__23CElectricBeamProjectileFRC28TToken<18CWeaponDescription>11EWeaponTypeRC17SElectricBeamInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId17EProjectileAttrib":
/* 8025233C 0024F29C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80252340 0024F2A0  7C 08 02 A6 */	mflr r0
/* 80252344 0024F2A4  3D 60 80 3D */	lis r11, lbl_803D4B78@ha
/* 80252348 0024F2A8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8025234C 0024F2AC  38 0B 4B 78 */	addi r0, r11, lbl_803D4B78@l
/* 80252350 0024F2B0  BE A1 00 74 */	stmw r21, 0x74(r1)
/* 80252354 0024F2B4  7C 78 1B 78 */	mr r24, r3
/* 80252358 0024F2B8  7C 99 23 78 */	mr r25, r4
/* 8025235C 0024F2BC  83 E1 00 A8 */	lwz r31, 0xa8(r1)
/* 80252360 0024F2C0  82 E1 00 AC */	lwz r23, 0xac(r1)
/* 80252364 0024F2C4  7C BA 2B 78 */	mr r26, r5
/* 80252368 0024F2C8  82 C1 00 B0 */	lwz r22, 0xb0(r1)
/* 8025236C 0024F2CC  7C DB 33 78 */	mr r27, r6
/* 80252370 0024F2D0  7C FC 3B 78 */	mr r28, r7
/* 80252374 0024F2D4  7D 1D 43 78 */	mr r29, r8
/* 80252378 0024F2D8  7D 3E 4B 78 */	mr r30, r9
/* 8025237C 0024F2DC  7D 55 53 78 */	mr r21, r10
/* 80252380 0024F2E0  7C 04 03 78 */	mr r4, r0
/* 80252384 0024F2E4  38 61 00 4C */	addi r3, r1, 0x4c
/* 80252388 0024F2E8  4B DB 29 31 */	bl string_l__4rstlFPCc
/* 8025238C 0024F2EC  A0 17 00 00 */	lhz r0, 0(r23)
/* 80252390 0024F2F0  39 81 00 24 */	addi r12, r1, 0x24
/* 80252394 0024F2F4  A2 F5 00 00 */	lhz r23, 0(r21)
/* 80252398 0024F2F8  39 61 00 28 */	addi r11, r1, 0x28
/* 8025239C 0024F2FC  B0 01 00 20 */	sth r0, 0x20(r1)
/* 802523A0 0024F300  39 01 00 20 */	addi r8, r1, 0x20
/* 802523A4 0024F304  38 00 00 00 */	li r0, 0
/* 802523A8 0024F308  7F 03 C3 78 */	mr r3, r24
/* 802523AC 0024F30C  80 BF 00 00 */	lwz r5, 0(r31)
/* 802523B0 0024F310  7F 24 CB 78 */	mr r4, r25
/* 802523B4 0024F314  7F 46 D3 78 */	mr r6, r26
/* 802523B8 0024F318  7F 87 E3 78 */	mr r7, r28
/* 802523BC 0024F31C  90 A1 00 28 */	stw r5, 0x28(r1)
/* 802523C0 0024F320  7F A9 EB 78 */	mr r9, r29
/* 802523C4 0024F324  7F CA F3 78 */	mr r10, r30
/* 802523C8 0024F328  38 A1 00 4C */	addi r5, r1, 0x4c
/* 802523CC 0024F32C  B2 E1 00 24 */	sth r23, 0x24(r1)
/* 802523D0 0024F330  91 81 00 08 */	stw r12, 8(r1)
/* 802523D4 0024F334  91 61 00 0C */	stw r11, 0xc(r1)
/* 802523D8 0024F338  91 01 00 10 */	stw r8, 0x10(r1)
/* 802523DC 0024F33C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 802523E0 0024F340  90 01 00 18 */	stw r0, 0x18(r1)
/* 802523E4 0024F344  C0 1B 00 08 */	lfs f0, 8(r27)
/* 802523E8 0024F348  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 802523EC 0024F34C  FC 00 00 1E */	fctiwz f0, f0
/* 802523F0 0024F350  C0 5B 00 10 */	lfs f2, 0x10(r27)
/* 802523F4 0024F354  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 802523F8 0024F358  81 01 00 64 */	lwz r8, 0x64(r1)
/* 802523FC 0024F35C  4B F4 70 91 */	bl "__ct__15CBeamProjectileFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC12CTransform4fiff14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId17EProjectileAttribb"
/* 80252400 0024F360  38 61 00 4C */	addi r3, r1, 0x4c
/* 80252404 0024F364  48 0E B6 DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80252408 0024F368  3C 80 80 3F */	lis r4, __vt__23CElectricBeamProjectile@ha
/* 8025240C 0024F36C  3C 60 80 3D */	lis r3, lbl_803D4B78@ha
/* 80252410 0024F370  38 04 91 18 */	addi r0, r4, __vt__23CElectricBeamProjectile@l
/* 80252414 0024F374  3A A0 00 00 */	li r21, 0
/* 80252418 0024F378  38 63 4B 78 */	addi r3, r3, lbl_803D4B78@l
/* 8025241C 0024F37C  90 18 00 00 */	stw r0, 0(r24)
/* 80252420 0024F380  38 83 00 17 */	addi r4, r3, 0x17
/* 80252424 0024F384  38 60 04 58 */	li r3, 0x458
/* 80252428 0024F388  38 A0 00 00 */	li r5, 0
/* 8025242C 0024F38C  48 0C 34 41 */	bl __nw__FUlPCcPCc
/* 80252430 0024F390  7C 77 1B 79 */	or. r23, r3, r3
/* 80252434 0024F394  41 82 00 24 */	beq lbl_80252458
/* 80252438 0024F398  7F 64 DB 78 */	mr r4, r27
/* 8025243C 0024F39C  38 61 00 44 */	addi r3, r1, 0x44
/* 80252440 0024F3A0  48 0E EA 69 */	bl __ct__6CTokenFRC6CToken
/* 80252444 0024F3A4  7E E3 BB 78 */	mr r3, r23
/* 80252448 0024F3A8  38 81 00 44 */	addi r4, r1, 0x44
/* 8025244C 0024F3AC  3A A0 00 01 */	li r21, 1
/* 80252450 0024F3B0  48 10 FD 21 */	bl "__ct__17CParticleElectricF30TToken<20CElectricDescription>"
/* 80252454 0024F3B4  7C 77 1B 78 */	mr r23, r3
lbl_80252458:
/* 80252458 0024F3B8  7E A0 07 75 */	extsb. r0, r21
/* 8025245C 0024F3BC  92 F8 04 68 */	stw r23, 0x468(r24)
/* 80252460 0024F3C0  41 82 00 10 */	beq lbl_80252470
/* 80252464 0024F3C4  38 61 00 44 */	addi r3, r1, 0x44
/* 80252468 0024F3C8  38 80 00 00 */	li r4, 0
/* 8025246C 0024F3CC  48 0E E9 D5 */	bl __dt__6CTokenFv
lbl_80252470:
/* 80252470 0024F3D0  80 DB 00 14 */	lwz r6, 0x14(r27)
/* 80252474 0024F3D4  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80252478 0024F3D8  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 8025247C 0024F3DC  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80252480 0024F3E0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80252484 0024F3E4  38 61 00 34 */	addi r3, r1, 0x34
/* 80252488 0024F3E8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8025248C 0024F3EC  90 C1 00 40 */	stw r6, 0x40(r1)
/* 80252490 0024F3F0  81 84 00 00 */	lwz r12, 0(r4)
/* 80252494 0024F3F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80252498 0024F3F8  7D 89 03 A6 */	mtctr r12
/* 8025249C 0024F3FC  4E 80 04 21 */	bctrl
/* 802524A0 0024F400  3A B8 04 6C */	addi r21, r24, 0x46c
/* 802524A4 0024F404  38 81 00 34 */	addi r4, r1, 0x34
/* 802524A8 0024F408  7E A3 AB 78 */	mr r3, r21
/* 802524AC 0024F40C  48 0E E9 FD */	bl __ct__6CTokenFRC6CToken
/* 802524B0 0024F410  7E A3 AB 78 */	mr r3, r21
/* 802524B4 0024F414  48 0E E9 59 */	bl GetObj__6CTokenFv
/* 802524B8 0024F418  80 03 00 04 */	lwz r0, 4(r3)
/* 802524BC 0024F41C  38 61 00 34 */	addi r3, r1, 0x34
/* 802524C0 0024F420  38 80 FF FF */	li r4, -1
/* 802524C4 0024F424  90 15 00 08 */	stw r0, 8(r21)
/* 802524C8 0024F428  48 0E E9 79 */	bl __dt__6CTokenFv
/* 802524CC 0024F42C  3C 60 80 3D */	lis r3, lbl_803D4B78@ha
/* 802524D0 0024F430  3A A0 00 00 */	li r21, 0
/* 802524D4 0024F434  38 83 4B 78 */	addi r4, r3, lbl_803D4B78@l
/* 802524D8 0024F438  38 60 03 40 */	li r3, 0x340
/* 802524DC 0024F43C  38 84 00 17 */	addi r4, r4, 0x17
/* 802524E0 0024F440  38 A0 00 00 */	li r5, 0
/* 802524E4 0024F444  48 0C 33 89 */	bl __nw__FUlPCcPCc
/* 802524E8 0024F448  7C 77 1B 79 */	or. r23, r3, r3
/* 802524EC 0024F44C  41 82 00 2C */	beq lbl_80252518
/* 802524F0 0024F450  38 61 00 2C */	addi r3, r1, 0x2c
/* 802524F4 0024F454  38 98 04 6C */	addi r4, r24, 0x46c
/* 802524F8 0024F458  48 0E E9 B1 */	bl __ct__6CTokenFRC6CToken
/* 802524FC 0024F45C  7E E3 BB 78 */	mr r3, r23
/* 80252500 0024F460  38 81 00 2C */	addi r4, r1, 0x2c
/* 80252504 0024F464  3A A0 00 01 */	li r21, 1
/* 80252508 0024F468  38 A0 00 00 */	li r5, 0
/* 8025250C 0024F46C  38 C0 00 01 */	li r6, 1
/* 80252510 0024F470  48 0C CE D1 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 80252514 0024F474  7C 77 1B 78 */	mr r23, r3
lbl_80252518:
/* 80252518 0024F478  7E A0 07 75 */	extsb. r0, r21
/* 8025251C 0024F47C  92 F8 04 78 */	stw r23, 0x478(r24)
/* 80252520 0024F480  41 82 00 10 */	beq lbl_80252530
/* 80252524 0024F484  38 61 00 2C */	addi r3, r1, 0x2c
/* 80252528 0024F488  38 80 00 00 */	li r4, 0
/* 8025252C 0024F48C  48 0E E9 15 */	bl __dt__6CTokenFv
lbl_80252530:
/* 80252530 0024F490  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 80252534 0024F494  38 00 00 00 */	li r0, 0
/* 80252538 0024F498  C0 02 B8 F0 */	lfs f0, lbl_805AD610@sda21(r2)
/* 8025253C 0024F49C  38 80 00 00 */	li r4, 0
/* 80252540 0024F4A0  D0 38 04 7C */	stfs f1, 0x47c(r24)
/* 80252544 0024F4A4  D0 18 04 84 */	stfs f0, 0x484(r24)
/* 80252548 0024F4A8  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 8025254C 0024F4AC  D0 18 04 88 */	stfs f0, 0x488(r24)
/* 80252550 0024F4B0  98 18 04 8C */	stb r0, 0x48c(r24)
/* 80252554 0024F4B4  80 78 04 78 */	lwz r3, 0x478(r24)
/* 80252558 0024F4B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8025255C 0024F4BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80252560 0024F4C0  7D 89 03 A6 */	mtctr r12
/* 80252564 0024F4C4  4E 80 04 21 */	bctrl
/* 80252568 0024F4C8  80 78 04 68 */	lwz r3, 0x468(r24)
/* 8025256C 0024F4CC  38 80 00 00 */	li r4, 0
/* 80252570 0024F4D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80252574 0024F4D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80252578 0024F4D8  7D 89 03 A6 */	mtctr r12
/* 8025257C 0024F4DC  4E 80 04 21 */	bctrl
/* 80252580 0024F4E0  7F 03 C3 78 */	mr r3, r24
/* 80252584 0024F4E4  BA A1 00 74 */	lmw r21, 0x74(r1)
/* 80252588 0024F4E8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8025258C 0024F4EC  7C 08 03 A6 */	mtlr r0
/* 80252590 0024F4F0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80252594 0024F4F4  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD610
lbl_805AD610:
	# ROM: 0x3F9EB0
	.4byte 0

.global lbl_805AD614
lbl_805AD614:
	# ROM: 0x3F9EB4
	.4byte 0x3727C5AC

.global lbl_805AD618
lbl_805AD618:
	# ROM: 0x3F9EB8
	.float 1.0

.global lbl_805AD61C
lbl_805AD61C:
	# ROM: 0x3F9EBC
	.float -1.0

.global lbl_805AD620
lbl_805AD620:
	# ROM: 0x3F9EC0
	.float 0.001
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D4B78
lbl_803D4B78:
	# ROM: 0x3D1B78
	.asciz "ElectricBeamProjectile"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4
