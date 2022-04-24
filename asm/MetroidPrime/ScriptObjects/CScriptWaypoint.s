.include "macros.inc"

.section .data

.global lbl_803DA558
lbl_803DA558:
	# ROM: 0x3D7558
	.4byte 0
	.4byte 0
	.4byte __dt__15CScriptWaypointFv
	.4byte Accept__15CScriptWaypointFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__15CScriptWaypointF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__15CScriptWaypointCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__15CScriptWaypointCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__6CActorCFv
	.4byte Touch__6CActorFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte 0

.section .sdata

.global lbl_805A6F98
lbl_805A6F98:
	# ROM: 0x3F4938
	.4byte 0
	.4byte 0

.section .text, "ax"

.global Accept__15CScriptWaypointFR8IVisitor
Accept__15CScriptWaypointFR8IVisitor:
/* 8007706C 00073FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077070 00073FD0  7C 08 02 A6 */	mflr r0
/* 80077074 00073FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077078 00073FD8  7C 60 1B 78 */	mr r0, r3
/* 8007707C 00073FDC  7C 83 23 78 */	mr r3, r4
/* 80077080 00073FE0  81 84 00 00 */	lwz r12, 0(r4)
/* 80077084 00073FE4  7C 04 03 78 */	mr r4, r0
/* 80077088 00073FE8  81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 8007708C 00073FEC  7D 89 03 A6 */	mtctr r12
/* 80077090 00073FF0  4E 80 04 21 */	bctrl 
/* 80077094 00073FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077098 00073FF8  7C 08 03 A6 */	mtlr r0
/* 8007709C 00073FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 800770A0 00074000  4E 80 00 20 */	blr 

.global Render__15CScriptWaypointCFRC13CStateManager
Render__15CScriptWaypointCFRC13CStateManager:
/* 800770A4 00074004  4E 80 00 20 */	blr 

.global AddToRenderer__15CScriptWaypointCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__15CScriptWaypointCFRC14CFrustumPlanesRC13CStateManager:
/* 800770A8 00074008  4E 80 00 20 */	blr 

.global FollowWaypoint__15CScriptWaypointCFR13CStateManager
FollowWaypoint__15CScriptWaypointCFR13CStateManager:
/* 800770AC 0007400C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800770B0 00074010  7C 08 02 A6 */	mflr r0
/* 800770B4 00074014  90 01 00 24 */	stw r0, 0x24(r1)
/* 800770B8 00074018  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800770BC 0007401C  7C 7F 1B 78 */	mr r31, r3
/* 800770C0 00074020  80 C4 00 2C */	lwz r6, 0x2c(r4)
/* 800770C4 00074024  48 00 00 3C */	b lbl_80077100
lbl_800770C8:
/* 800770C8 00074028  80 06 00 00 */	lwz r0, 0(r6)
/* 800770CC 0007402C  2C 00 00 01 */	cmpwi r0, 1
/* 800770D0 00074030  40 82 00 2C */	bne lbl_800770FC
/* 800770D4 00074034  80 06 00 04 */	lwz r0, 4(r6)
/* 800770D8 00074038  2C 00 00 06 */	cmpwi r0, 6
/* 800770DC 0007403C  40 82 00 20 */	bne lbl_800770FC
/* 800770E0 00074040  80 06 00 08 */	lwz r0, 8(r6)
/* 800770E4 00074044  7F E3 FB 78 */	mr r3, r31
/* 800770E8 00074048  7C A4 2B 78 */	mr r4, r5
/* 800770EC 0007404C  38 A1 00 08 */	addi r5, r1, 8
/* 800770F0 00074050  90 01 00 08 */	stw r0, 8(r1)
/* 800770F4 00074054  4B FD 0E 29 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 800770F8 00074058  48 00 00 28 */	b lbl_80077120
lbl_800770FC:
/* 800770FC 0007405C  38 C6 00 0C */	addi r6, r6, 0xc
lbl_80077100:
/* 80077100 00074060  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80077104 00074064  80 64 00 2C */	lwz r3, 0x2c(r4)
/* 80077108 00074068  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007710C 0007406C  7C 03 02 14 */	add r0, r3, r0
/* 80077110 00074070  7C 06 00 40 */	cmplw r6, r0
/* 80077114 00074074  40 82 FF B4 */	bne lbl_800770C8
/* 80077118 00074078  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8007711C 0007407C  B0 1F 00 00 */	sth r0, 0(r31)
lbl_80077120:
/* 80077120 00074080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80077124 00074084  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80077128 00074088  7C 08 03 A6 */	mtlr r0
/* 8007712C 0007408C  38 21 00 20 */	addi r1, r1, 0x20
/* 80077130 00074090  4E 80 00 20 */	blr 

.global NextWaypoint__15CScriptWaypointCFR13CStateManager
NextWaypoint__15CScriptWaypointCFR13CStateManager:
/* 80077134 00074094  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80077138 00074098  7C 08 02 A6 */	mflr r0
/* 8007713C 0007409C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80077140 000740A0  38 00 00 00 */	li r0, 0
/* 80077144 000740A4  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 80077148 000740A8  7C 9C 23 78 */	mr r28, r4
/* 8007714C 000740AC  7C 7B 1B 78 */	mr r27, r3
/* 80077150 000740B0  7C BD 2B 78 */	mr r29, r5
/* 80077154 000740B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80077158 000740B8  3B C1 00 24 */	addi r30, r1, 0x24
/* 8007715C 000740BC  83 E4 00 2C */	lwz r31, 0x2c(r4)
/* 80077160 000740C0  48 00 00 A4 */	b lbl_80077204
lbl_80077164:
/* 80077164 000740C4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80077168 000740C8  2C 00 00 01 */	cmpwi r0, 1
/* 8007716C 000740CC  40 82 00 94 */	bne lbl_80077200
/* 80077170 000740D0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80077174 000740D4  2C 00 00 08 */	cmpwi r0, 8
/* 80077178 000740D8  40 82 00 88 */	bne lbl_80077200
/* 8007717C 000740DC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80077180 000740E0  7F A4 EB 78 */	mr r4, r29
/* 80077184 000740E4  38 61 00 0C */	addi r3, r1, 0xc
/* 80077188 000740E8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8007718C 000740EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077190 000740F0  4B FD 0D 8D */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 80077194 000740F4  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 80077198 000740F8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8007719C 000740FC  B0 61 00 10 */	sth r3, 0x10(r1)
/* 800771A0 00074100  7C 03 00 40 */	cmplw r3, r0
/* 800771A4 00074104  41 82 00 5C */	beq lbl_80077200
/* 800771A8 00074108  B0 61 00 08 */	sth r3, 8(r1)
/* 800771AC 0007410C  7F A3 EB 78 */	mr r3, r29
/* 800771B0 00074110  38 81 00 08 */	addi r4, r1, 8
/* 800771B4 00074114  4B FD 53 F1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 800771B8 00074118  7C 64 1B 78 */	mr r4, r3
/* 800771BC 0007411C  38 61 00 18 */	addi r3, r1, 0x18
/* 800771C0 00074120  48 02 F3 8D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 800771C4 00074124  80 63 00 04 */	lwz r3, 4(r3)
/* 800771C8 00074128  28 03 00 00 */	cmplwi r3, 0
/* 800771CC 0007412C  41 82 00 34 */	beq lbl_80077200
/* 800771D0 00074130  88 03 00 30 */	lbz r0, 0x30(r3)
/* 800771D4 00074134  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800771D8 00074138  41 82 00 28 */	beq lbl_80077200
/* 800771DC 0007413C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 800771E0 00074140  54 00 08 3C */	slwi r0, r0, 1
/* 800771E4 00074144  7C 7E 02 15 */	add. r3, r30, r0
/* 800771E8 00074148  41 82 00 0C */	beq lbl_800771F4
/* 800771EC 0007414C  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 800771F0 00074150  B0 03 00 00 */	sth r0, 0(r3)
lbl_800771F4:
/* 800771F4 00074154  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800771F8 00074158  38 03 00 01 */	addi r0, r3, 1
/* 800771FC 0007415C  90 01 00 20 */	stw r0, 0x20(r1)
lbl_80077200:
/* 80077200 00074160  3B FF 00 0C */	addi r31, r31, 0xc
lbl_80077204:
/* 80077204 00074164  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 80077208 00074168  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8007720C 0007416C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80077210 00074170  7C 03 02 14 */	add r0, r3, r0
/* 80077214 00074174  7C 1F 00 40 */	cmplw r31, r0
/* 80077218 00074178  40 82 FF 4C */	bne lbl_80077164
/* 8007721C 0007417C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80077220 00074180  2C 1C 00 00 */	cmpwi r28, 0
/* 80077224 00074184  40 82 00 64 */	bne lbl_80077288
/* 80077228 00074188  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8007722C 0007418C  38 60 00 00 */	li r3, 0
/* 80077230 00074190  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80077234 00074194  2C 05 00 00 */	cmpwi r5, 0
/* 80077238 00074198  B0 1B 00 00 */	sth r0, 0(r27)
/* 8007723C 0007419C  40 81 00 40 */	ble lbl_8007727C
/* 80077240 000741A0  2C 05 00 08 */	cmpwi r5, 8
/* 80077244 000741A4  38 85 FF F8 */	addi r4, r5, -8
/* 80077248 000741A8  40 81 00 20 */	ble lbl_80077268
/* 8007724C 000741AC  38 04 00 07 */	addi r0, r4, 7
/* 80077250 000741B0  54 00 E8 FE */	srwi r0, r0, 3
/* 80077254 000741B4  7C 09 03 A6 */	mtctr r0
/* 80077258 000741B8  2C 04 00 00 */	cmpwi r4, 0
/* 8007725C 000741BC  40 81 00 0C */	ble lbl_80077268
lbl_80077260:
/* 80077260 000741C0  38 63 00 08 */	addi r3, r3, 8
/* 80077264 000741C4  42 00 FF FC */	bdnz lbl_80077260
lbl_80077268:
/* 80077268 000741C8  7C 03 28 50 */	subf r0, r3, r5
/* 8007726C 000741CC  7C 09 03 A6 */	mtctr r0
/* 80077270 000741D0  7C 03 28 00 */	cmpw r3, r5
/* 80077274 000741D4  40 80 00 08 */	bge lbl_8007727C
lbl_80077278:
/* 80077278 000741D8  42 00 00 00 */	bdnz lbl_80077278
lbl_8007727C:
/* 8007727C 000741DC  38 00 00 00 */	li r0, 0
/* 80077280 000741E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80077284 000741E4  48 00 00 A0 */	b lbl_80077324
lbl_80077288:
/* 80077288 000741E8  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8007728C 000741EC  48 29 B2 51 */	bl Float__9CRandom16Fv
/* 80077290 000741F0  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 80077294 000741F4  3C 00 43 30 */	lis r0, 0x4330
/* 80077298 000741F8  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8007729C 000741FC  38 60 00 00 */	li r3, 0
/* 800772A0 00074200  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 800772A4 00074204  90 01 00 38 */	stw r0, 0x38(r1)
/* 800772A8 00074208  C8 62 88 E8 */	lfd f3, lbl_805AA608@sda21(r2)
/* 800772AC 0007420C  2C 05 00 00 */	cmpwi r5, 0
/* 800772B0 00074210  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 800772B4 00074214  C0 02 88 E0 */	lfs f0, lbl_805AA600@sda21(r2)
/* 800772B8 00074218  EC 42 18 28 */	fsubs f2, f2, f3
/* 800772BC 0007421C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 800772C0 00074220  EC 00 00 72 */	fmuls f0, f0, f1
/* 800772C4 00074224  FC 00 00 1E */	fctiwz f0, f0
/* 800772C8 00074228  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 800772CC 0007422C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800772D0 00074230  54 00 08 3C */	slwi r0, r0, 1
/* 800772D4 00074234  7C 1E 02 2E */	lhzx r0, r30, r0
/* 800772D8 00074238  B0 1B 00 00 */	sth r0, 0(r27)
/* 800772DC 0007423C  40 81 00 40 */	ble lbl_8007731C
/* 800772E0 00074240  2C 05 00 08 */	cmpwi r5, 8
/* 800772E4 00074244  38 85 FF F8 */	addi r4, r5, -8
/* 800772E8 00074248  40 81 00 20 */	ble lbl_80077308
/* 800772EC 0007424C  38 04 00 07 */	addi r0, r4, 7
/* 800772F0 00074250  54 00 E8 FE */	srwi r0, r0, 3
/* 800772F4 00074254  7C 09 03 A6 */	mtctr r0
/* 800772F8 00074258  2C 04 00 00 */	cmpwi r4, 0
/* 800772FC 0007425C  40 81 00 0C */	ble lbl_80077308
lbl_80077300:
/* 80077300 00074260  38 63 00 08 */	addi r3, r3, 8
/* 80077304 00074264  42 00 FF FC */	bdnz lbl_80077300
lbl_80077308:
/* 80077308 00074268  7C 03 28 50 */	subf r0, r3, r5
/* 8007730C 0007426C  7C 09 03 A6 */	mtctr r0
/* 80077310 00074270  7C 03 28 00 */	cmpw r3, r5
/* 80077314 00074274  40 80 00 08 */	bge lbl_8007731C
lbl_80077318:
/* 80077318 00074278  42 00 00 00 */	bdnz lbl_80077318
lbl_8007731C:
/* 8007731C 0007427C  38 00 00 00 */	li r0, 0
/* 80077320 00074280  90 01 00 20 */	stw r0, 0x20(r1)
lbl_80077324:
/* 80077324 00074284  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 80077328 00074288  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8007732C 0007428C  7C 08 03 A6 */	mtlr r0
/* 80077330 00074290  38 21 00 60 */	addi r1, r1, 0x60
/* 80077334 00074294  4E 80 00 20 */	blr 

.global AcceptScriptMsg__15CScriptWaypointF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__15CScriptWaypointF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80077338 00074298  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007733C 0007429C  7C 08 02 A6 */	mflr r0
/* 80077340 000742A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80077344 000742A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80077348 000742A8  7C DF 33 78 */	mr r31, r6
/* 8007734C 000742AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80077350 000742B0  7C 9E 23 78 */	mr r30, r4
/* 80077354 000742B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80077358 000742B8  7C 7D 1B 78 */	mr r29, r3
/* 8007735C 000742BC  A0 05 00 00 */	lhz r0, 0(r5)
/* 80077360 000742C0  38 A1 00 08 */	addi r5, r1, 8
/* 80077364 000742C4  B0 01 00 08 */	sth r0, 8(r1)
/* 80077368 000742C8  4B FD C2 AD */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8007736C 000742CC  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 80077370 000742D0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80077374 000742D4  41 82 00 24 */	beq lbl_80077398
/* 80077378 000742D8  2C 1E 00 02 */	cmpwi r30, 2
/* 8007737C 000742DC  41 82 00 08 */	beq lbl_80077384
/* 80077380 000742E0  48 00 00 18 */	b lbl_80077398
lbl_80077384:
/* 80077384 000742E4  7F A3 EB 78 */	mr r3, r29
/* 80077388 000742E8  7F E5 FB 78 */	mr r5, r31
/* 8007738C 000742EC  38 80 00 01 */	li r4, 1
/* 80077390 000742F0  38 C0 FF FF */	li r6, -1
/* 80077394 000742F4  4B FD 9D 2D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_80077398:
/* 80077398 000742F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007739C 000742FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800773A0 00074300  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800773A4 00074304  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800773A8 00074308  7C 08 03 A6 */	mtlr r0
/* 800773AC 0007430C  38 21 00 20 */	addi r1, r1, 0x20
/* 800773B0 00074310  4E 80 00 20 */	blr 

.global __dt__15CScriptWaypointFv
__dt__15CScriptWaypointFv:
/* 800773B4 00074314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800773B8 00074318  7C 08 02 A6 */	mflr r0
/* 800773BC 0007431C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800773C0 00074320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800773C4 00074324  7C 9F 23 78 */	mr r31, r4
/* 800773C8 00074328  93 C1 00 08 */	stw r30, 8(r1)
/* 800773CC 0007432C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800773D0 00074330  41 82 00 28 */	beq lbl_800773F8
/* 800773D4 00074334  3C A0 80 3E */	lis r5, lbl_803DA558@ha
/* 800773D8 00074338  38 80 00 00 */	li r4, 0
/* 800773DC 0007433C  38 05 A5 58 */	addi r0, r5, lbl_803DA558@l
/* 800773E0 00074340  90 1E 00 00 */	stw r0, 0(r30)
/* 800773E4 00074344  4B FD E3 0D */	bl __dt__6CActorFv
/* 800773E8 00074348  7F E0 07 35 */	extsh. r0, r31
/* 800773EC 0007434C  40 81 00 0C */	ble lbl_800773F8
/* 800773F0 00074350  7F C3 F3 78 */	mr r3, r30
/* 800773F4 00074354  48 29 E5 3D */	bl Free__7CMemoryFPCv
lbl_800773F8:
/* 800773F8 00074358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800773FC 0007435C  7F C3 F3 78 */	mr r3, r30
/* 80077400 00074360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077404 00074364  83 C1 00 08 */	lwz r30, 8(r1)
/* 80077408 00074368  7C 08 03 A6 */	mtlr r0
/* 8007740C 0007436C  38 21 00 10 */	addi r1, r1, 0x10
/* 80077410 00074370  4E 80 00 20 */	blr 

.global "__ct__15CScriptWaypointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbffiiiiiiUi"
"__ct__15CScriptWaypointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbffiiiiiiUi":
/* 80077414 00074374  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80077418 00074378  7C 08 02 A6 */	mflr r0
/* 8007741C 0007437C  90 01 01 24 */	stw r0, 0x124(r1)
/* 80077420 00074380  DB E1 01 18 */	stfd f31, 0x118(r1)
/* 80077424 00074384  FF E0 10 90 */	fmr f31, f2
/* 80077428 00074388  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 8007742C 0007438C  FF C0 08 90 */	fmr f30, f1
/* 80077430 00074390  BE 61 00 DC */	stmw r19, 0xdc(r1)
/* 80077434 00074394  7C 73 1B 78 */	mr r19, r3
/* 80077438 00074398  83 61 01 28 */	lwz r27, 0x128(r1)
/* 8007743C 0007439C  7C 94 23 78 */	mr r20, r4
/* 80077440 000743A0  83 81 01 2C */	lwz r28, 0x12c(r1)
/* 80077444 000743A4  7C B5 2B 78 */	mr r21, r5
/* 80077448 000743A8  83 A1 01 30 */	lwz r29, 0x130(r1)
/* 8007744C 000743AC  7C D6 33 78 */	mr r22, r6
/* 80077450 000743B0  83 C1 01 34 */	lwz r30, 0x134(r1)
/* 80077454 000743B4  7C F7 3B 78 */	mr r23, r7
/* 80077458 000743B8  83 E1 01 38 */	lwz r31, 0x138(r1)
/* 8007745C 000743BC  7D 18 43 78 */	mr r24, r8
/* 80077460 000743C0  7D 39 4B 78 */	mr r25, r9
/* 80077464 000743C4  7D 5A 53 78 */	mr r26, r10
/* 80077468 000743C8  38 61 00 88 */	addi r3, r1, 0x88
/* 8007746C 000743CC  4B FC 33 39 */	bl CModelDataNull__10CModelDataFv
/* 80077470 000743D0  38 61 00 20 */	addi r3, r1, 0x20
/* 80077474 000743D4  4B FA 39 C5 */	bl None__16CActorParametersFv
/* 80077478 000743D8  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8007747C 000743DC  38 00 00 00 */	li r0, 0
/* 80077480 000743E0  80 AD 83 D8 */	lwz r5, lbl_805A6F98@sda21(r13)
/* 80077484 000743E4  38 60 00 00 */	li r3, 0
/* 80077488 000743E8  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8007748C 000743EC  38 80 00 01 */	li r4, 1
/* 80077490 000743F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80077494 000743F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80077498 000743F8  48 31 2A 5D */	bl __shl2i
/* 8007749C 000743FC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 800774A0 00074400  39 61 00 20 */	addi r11, r1, 0x20
/* 800774A4 00074404  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 800774A8 00074408  38 01 00 10 */	addi r0, r1, 0x10
/* 800774AC 0007440C  7C A3 1B 78 */	or r3, r5, r3
/* 800774B0 00074410  A1 34 00 00 */	lhz r9, 0(r20)
/* 800774B4 00074414  7C C4 23 78 */	or r4, r6, r4
/* 800774B8 00074418  90 61 00 18 */	stw r3, 0x18(r1)
/* 800774BC 0007441C  7E 63 9B 78 */	mr r3, r19
/* 800774C0 00074420  7F 05 C3 78 */	mr r5, r24
/* 800774C4 00074424  90 81 00 1C */	stw r4, 0x1c(r1)
/* 800774C8 00074428  7E A6 AB 78 */	mr r6, r21
/* 800774CC 0007442C  7E C7 B3 78 */	mr r7, r22
/* 800774D0 00074430  7E E8 BB 78 */	mr r8, r23
/* 800774D4 00074434  B1 21 00 14 */	sth r9, 0x14(r1)
/* 800774D8 00074438  38 81 00 14 */	addi r4, r1, 0x14
/* 800774DC 0007443C  39 21 00 88 */	addi r9, r1, 0x88
/* 800774E0 00074440  39 41 00 18 */	addi r10, r1, 0x18
/* 800774E4 00074444  91 61 00 08 */	stw r11, 8(r1)
/* 800774E8 00074448  90 01 00 0C */	stw r0, 0xc(r1)
/* 800774EC 0007444C  4B FD E3 35 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 800774F0 00074450  38 61 00 20 */	addi r3, r1, 0x20
/* 800774F4 00074454  38 80 FF FF */	li r4, -1
/* 800774F8 00074458  48 08 F1 11 */	bl __dt__16CActorParametersFv
/* 800774FC 0007445C  38 61 00 88 */	addi r3, r1, 0x88
/* 80077500 00074460  38 80 FF FF */	li r4, -1
/* 80077504 00074464  48 09 F5 49 */	bl __dt__10CModelDataFv
/* 80077508 00074468  3C 80 80 3E */	lis r4, lbl_803DA558@ha
/* 8007750C 0007446C  7E 63 9B 78 */	mr r3, r19
/* 80077510 00074470  38 04 A5 58 */	addi r0, r4, lbl_803DA558@l
/* 80077514 00074474  90 13 00 00 */	stw r0, 0(r19)
/* 80077518 00074478  38 80 00 00 */	li r4, 0
/* 8007751C 0007447C  D3 D3 00 E8 */	stfs f30, 0xe8(r19)
/* 80077520 00074480  93 F3 00 EC */	stw r31, 0xec(r19)
/* 80077524 00074484  D3 F3 00 F0 */	stfs f31, 0xf0(r19)
/* 80077528 00074488  9B 33 00 F4 */	stb r25, 0xf4(r19)
/* 8007752C 0007448C  9B 53 00 F5 */	stb r26, 0xf5(r19)
/* 80077530 00074490  9B 73 00 F6 */	stb r27, 0xf6(r19)
/* 80077534 00074494  9B 93 00 F7 */	stb r28, 0xf7(r19)
/* 80077538 00074498  9B B3 00 F8 */	stb r29, 0xf8(r19)
/* 8007753C 0007449C  B3 D3 00 FA */	sth r30, 0xfa(r19)
/* 80077540 000744A0  4B FD CE A1 */	bl SetUseInSortedLists__6CActorFb
/* 80077544 000744A4  7E 63 9B 78 */	mr r3, r19
/* 80077548 000744A8  38 80 00 00 */	li r4, 0
/* 8007754C 000744AC  4B FD CE 6D */	bl SetCallTouch__6CActorFb
/* 80077550 000744B0  CB E1 01 18 */	lfd f31, 0x118(r1)
/* 80077554 000744B4  7E 63 9B 78 */	mr r3, r19
/* 80077558 000744B8  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 8007755C 000744BC  BA 61 00 DC */	lmw r19, 0xdc(r1)
/* 80077560 000744C0  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80077564 000744C4  7C 08 03 A6 */	mtlr r0
/* 80077568 000744C8  38 21 01 20 */	addi r1, r1, 0x120
/* 8007756C 000744CC  4E 80 00 20 */	blr 
