.include "macros.inc"

.section .data
.balign 8

.global lbl_803ECD50
lbl_803ECD50:
	# ROM: 0x3E9D50
	.4byte 0
	.4byte 0
	.4byte __dt__15CMetaAnimRandomFv
	.4byte GetAnimationTree__9IMetaAnimCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders
	.4byte "GetUniquePrimitives__15CMetaAnimRandomCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>"
	.4byte GetType__15CMetaAnimRandomCFv
	.4byte WriteAnimData__15CMetaAnimRandomCFR13COutputStream
	.4byte VGetAnimationTree__15CMetaAnimRandomCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders

.section .text, "ax"

.global __dt__15CMetaAnimRandomFv
__dt__15CMetaAnimRandomFv:
/* 802E0F30 002DDE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0F34 002DDE94  7C 08 02 A6 */	mflr r0
/* 802E0F38 002DDE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E0F3C 002DDE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E0F40 002DDEA0  7C 9F 23 78 */	mr r31, r4
/* 802E0F44 002DDEA4  93 C1 00 08 */	stw r30, 8(r1)
/* 802E0F48 002DDEA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E0F4C 002DDEAC  41 82 00 40 */	beq lbl_802E0F8C
/* 802E0F50 002DDEB0  3C 80 80 3F */	lis r4, lbl_803ECD50@ha
/* 802E0F54 002DDEB4  38 7E 00 04 */	addi r3, r30, 4
/* 802E0F58 002DDEB8  38 04 CD 50 */	addi r0, r4, lbl_803ECD50@l
/* 802E0F5C 002DDEBC  38 80 FF FF */	li r4, -1
/* 802E0F60 002DDEC0  90 1E 00 00 */	stw r0, 0(r30)
/* 802E0F64 002DDEC4  48 00 00 45 */	bl sub_802e0fa8
/* 802E0F68 002DDEC8  28 1E 00 00 */	cmplwi r30, 0
/* 802E0F6C 002DDECC  41 82 00 10 */	beq lbl_802E0F7C
/* 802E0F70 002DDED0  3C 60 80 3F */	lis r3, lbl_803ECDF0@ha
/* 802E0F74 002DDED4  38 03 CD F0 */	addi r0, r3, lbl_803ECDF0@l
/* 802E0F78 002DDED8  90 1E 00 00 */	stw r0, 0(r30)
lbl_802E0F7C:
/* 802E0F7C 002DDEDC  7F E0 07 35 */	extsh. r0, r31
/* 802E0F80 002DDEE0  40 81 00 0C */	ble lbl_802E0F8C
/* 802E0F84 002DDEE4  7F C3 F3 78 */	mr r3, r30
/* 802E0F88 002DDEE8  48 03 49 A9 */	bl Free__7CMemoryFPCv
lbl_802E0F8C:
/* 802E0F8C 002DDEEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E0F90 002DDEF0  7F C3 F3 78 */	mr r3, r30
/* 802E0F94 002DDEF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E0F98 002DDEF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E0F9C 002DDEFC  7C 08 03 A6 */	mtlr r0
/* 802E0FA0 002DDF00  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0FA4 002DDF04  4E 80 00 20 */	blr

.global sub_802e0fa8
sub_802e0fa8:
/* 802E0FA8 002DDF08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E0FAC 002DDF0C  7C 08 02 A6 */	mflr r0
/* 802E0FB0 002DDF10  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E0FB4 002DDF14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E0FB8 002DDF18  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E0FBC 002DDF1C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802E0FC0 002DDF20  7C 9D 23 78 */	mr r29, r4
/* 802E0FC4 002DDF24  93 81 00 20 */	stw r28, 0x20(r1)
/* 802E0FC8 002DDF28  7C 7C 1B 79 */	or. r28, r3, r3
/* 802E0FCC 002DDF2C  41 82 00 68 */	beq lbl_802E1034
/* 802E0FD0 002DDF30  80 1C 00 04 */	lwz r0, 4(r28)
/* 802E0FD4 002DDF34  83 DC 00 0C */	lwz r30, 0xc(r28)
/* 802E0FD8 002DDF38  54 00 18 38 */	slwi r0, r0, 3
/* 802E0FDC 002DDF3C  7F FE 02 14 */	add r31, r30, r0
/* 802E0FE0 002DDF40  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802E0FE4 002DDF44  93 E1 00 08 */	stw r31, 8(r1)
/* 802E0FE8 002DDF48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E0FEC 002DDF4C  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802E0FF0 002DDF50  48 00 00 1C */	b lbl_802E100C
lbl_802E0FF4:
/* 802E0FF4 002DDF54  28 1E 00 00 */	cmplwi r30, 0
/* 802E0FF8 002DDF58  41 82 00 10 */	beq lbl_802E1008
/* 802E0FFC 002DDF5C  41 82 00 0C */	beq lbl_802E1008
/* 802E1000 002DDF60  7F C3 F3 78 */	mr r3, r30
/* 802E1004 002DDF64  4B D4 FF 2D */	bl sub_80030f30
lbl_802E1008:
/* 802E1008 002DDF68  3B DE 00 08 */	addi r30, r30, 8
lbl_802E100C:
/* 802E100C 002DDF6C  7C 1E F8 40 */	cmplw r30, r31
/* 802E1010 002DDF70  40 82 FF E4 */	bne lbl_802E0FF4
/* 802E1014 002DDF74  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802E1018 002DDF78  28 03 00 00 */	cmplwi r3, 0
/* 802E101C 002DDF7C  41 82 00 08 */	beq lbl_802E1024
/* 802E1020 002DDF80  48 03 49 11 */	bl Free__7CMemoryFPCv
lbl_802E1024:
/* 802E1024 002DDF84  7F A0 07 35 */	extsh. r0, r29
/* 802E1028 002DDF88  40 81 00 0C */	ble lbl_802E1034
/* 802E102C 002DDF8C  7F 83 E3 78 */	mr r3, r28
/* 802E1030 002DDF90  48 03 49 01 */	bl Free__7CMemoryFPCv
lbl_802E1034:
/* 802E1034 002DDF94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E1038 002DDF98  7F 83 E3 78 */	mr r3, r28
/* 802E103C 002DDF9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E1040 002DDFA0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E1044 002DDFA4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802E1048 002DDFA8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802E104C 002DDFAC  7C 08 03 A6 */	mtlr r0
/* 802E1050 002DDFB0  38 21 00 30 */	addi r1, r1, 0x30
/* 802E1054 002DDFB4  4E 80 00 20 */	blr

.global GetType__15CMetaAnimRandomCFv
GetType__15CMetaAnimRandomCFv:
/* 802E1058 002DDFB8  38 60 00 03 */	li r3, 3
/* 802E105C 002DDFBC  4E 80 00 20 */	blr

.global CreateRandomData__15CMetaAnimRandomFR12CInputStream
CreateRandomData__15CMetaAnimRandomFR12CInputStream:
/* 802E1060 002DDFC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E1064 002DDFC4  7C 08 02 A6 */	mflr r0
/* 802E1068 002DDFC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E106C 002DDFCC  38 00 00 00 */	li r0, 0
/* 802E1070 002DDFD0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802E1074 002DDFD4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802E1078 002DDFD8  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802E107C 002DDFDC  7C 9D 23 78 */	mr r29, r4
/* 802E1080 002DDFE0  93 81 00 30 */	stw r28, 0x30(r1)
/* 802E1084 002DDFE4  7C 7C 1B 78 */	mr r28, r3
/* 802E1088 002DDFE8  7F A3 EB 78 */	mr r3, r29
/* 802E108C 002DDFEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E1090 002DDFF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 802E1094 002DDFF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E1098 002DDFF8  48 05 DB ED */	bl ReadLong__12CInputStreamFv
/* 802E109C 002DDFFC  7C 7F 1B 78 */	mr r31, r3
/* 802E10A0 002DE000  38 61 00 18 */	addi r3, r1, 0x18
/* 802E10A4 002DE004  7F E4 FB 78 */	mr r4, r31
/* 802E10A8 002DE008  48 00 04 C1 */	bl "reserve__Q24rstl79vector<Q24rstl35pair<Q24rstl18rc_ptr<9IMetaAnim>,i>,Q24rstl17rmemory_allocator>Fi"
/* 802E10AC 002DE00C  3B C0 00 00 */	li r30, 0
/* 802E10B0 002DE010  48 00 00 C8 */	b lbl_802E1178
lbl_802E10B4:
/* 802E10B4 002DE014  7F A4 EB 78 */	mr r4, r29
/* 802E10B8 002DE018  38 61 00 08 */	addi r3, r1, 8
/* 802E10BC 002DE01C  4B FF EF 21 */	bl CreateMetaAnim__16CMetaAnimFactoryFR12CInputStream
/* 802E10C0 002DE020  80 A1 00 08 */	lwz r5, 8(r1)
/* 802E10C4 002DE024  38 61 00 08 */	addi r3, r1, 8
/* 802E10C8 002DE028  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802E10CC 002DE02C  80 85 00 04 */	lwz r4, 4(r5)
/* 802E10D0 002DE030  38 04 00 01 */	addi r0, r4, 1
/* 802E10D4 002DE034  90 05 00 04 */	stw r0, 4(r5)
/* 802E10D8 002DE038  4B D4 FE 59 */	bl sub_80030f30
/* 802E10DC 002DE03C  7F A3 EB 78 */	mr r3, r29
/* 802E10E0 002DE040  48 05 DB A5 */	bl ReadLong__12CInputStreamFv
/* 802E10E4 002DE044  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802E10E8 002DE048  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802E10EC 002DE04C  80 85 00 04 */	lwz r4, 4(r5)
/* 802E10F0 002DE050  38 04 00 01 */	addi r0, r4, 1
/* 802E10F4 002DE054  90 05 00 04 */	stw r0, 4(r5)
/* 802E10F8 002DE058  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E10FC 002DE05C  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 802E1100 002DE060  90 61 00 14 */	stw r3, 0x14(r1)
/* 802E1104 002DE064  7C 00 28 00 */	cmpw r0, r5
/* 802E1108 002DE068  41 80 00 1C */	blt lbl_802E1124
/* 802E110C 002DE06C  2C 05 00 00 */	cmpwi r5, 0
/* 802E1110 002DE070  38 61 00 18 */	addi r3, r1, 0x18
/* 802E1114 002DE074  38 80 00 04 */	li r4, 4
/* 802E1118 002DE078  41 82 00 08 */	beq lbl_802E1120
/* 802E111C 002DE07C  54 A4 08 3C */	slwi r4, r5, 1
lbl_802E1120:
/* 802E1120 002DE080  48 00 04 49 */	bl "reserve__Q24rstl79vector<Q24rstl35pair<Q24rstl18rc_ptr<9IMetaAnim>,i>,Q24rstl17rmemory_allocator>Fi"
lbl_802E1124:
/* 802E1124 002DE084  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E1128 002DE088  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802E112C 002DE08C  54 00 18 38 */	slwi r0, r0, 3
/* 802E1130 002DE090  7C A3 02 15 */	add. r5, r3, r0
/* 802E1134 002DE094  41 82 00 24 */	beq lbl_802E1158
/* 802E1138 002DE098  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802E113C 002DE09C  90 05 00 00 */	stw r0, 0(r5)
/* 802E1140 002DE0A0  80 85 00 00 */	lwz r4, 0(r5)
/* 802E1144 002DE0A4  80 64 00 04 */	lwz r3, 4(r4)
/* 802E1148 002DE0A8  38 03 00 01 */	addi r0, r3, 1
/* 802E114C 002DE0AC  90 04 00 04 */	stw r0, 4(r4)
/* 802E1150 002DE0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1154 002DE0B4  90 05 00 04 */	stw r0, 4(r5)
lbl_802E1158:
/* 802E1158 002DE0B8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 802E115C 002DE0BC  38 61 00 10 */	addi r3, r1, 0x10
/* 802E1160 002DE0C0  38 04 00 01 */	addi r0, r4, 1
/* 802E1164 002DE0C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E1168 002DE0C8  4B D4 FD C9 */	bl sub_80030f30
/* 802E116C 002DE0CC  38 61 00 0C */	addi r3, r1, 0xc
/* 802E1170 002DE0D0  4B D4 FD C1 */	bl sub_80030f30
/* 802E1174 002DE0D4  3B DE 00 01 */	addi r30, r30, 1
lbl_802E1178:
/* 802E1178 002DE0D8  7C 1E F8 00 */	cmpw r30, r31
/* 802E117C 002DE0DC  41 80 FF 38 */	blt lbl_802E10B4
/* 802E1180 002DE0E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E1184 002DE0E4  90 1C 00 04 */	stw r0, 4(r28)
/* 802E1188 002DE0E8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802E118C 002DE0EC  90 1C 00 08 */	stw r0, 8(r28)
/* 802E1190 002DE0F0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E1194 002DE0F4  2C 00 00 00 */	cmpwi r0, 0
/* 802E1198 002DE0F8  40 82 00 1C */	bne lbl_802E11B4
/* 802E119C 002DE0FC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802E11A0 002DE100  2C 00 00 00 */	cmpwi r0, 0
/* 802E11A4 002DE104  40 82 00 10 */	bne lbl_802E11B4
/* 802E11A8 002DE108  38 00 00 00 */	li r0, 0
/* 802E11AC 002DE10C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 802E11B0 002DE110  48 00 00 7C */	b lbl_802E122C
lbl_802E11B4:
/* 802E11B4 002DE114  80 1C 00 08 */	lwz r0, 8(r28)
/* 802E11B8 002DE118  54 03 18 39 */	rlwinm. r3, r0, 3, 0, 0x1c
/* 802E11BC 002DE11C  40 82 00 10 */	bne lbl_802E11CC
/* 802E11C0 002DE120  38 00 00 00 */	li r0, 0
/* 802E11C4 002DE124  90 1C 00 0C */	stw r0, 0xc(r28)
/* 802E11C8 002DE128  48 00 00 18 */	b lbl_802E11E0
lbl_802E11CC:
/* 802E11CC 002DE12C  3C 80 80 3D */	lis r4, lbl_803D6D78@ha
/* 802E11D0 002DE130  38 A0 00 00 */	li r5, 0
/* 802E11D4 002DE134  38 84 6D 78 */	addi r4, r4, lbl_803D6D78@l
/* 802E11D8 002DE138  48 03 46 41 */	bl __nwa__FUlPCcPCc
/* 802E11DC 002DE13C  90 7C 00 0C */	stw r3, 0xc(r28)
lbl_802E11E0:
/* 802E11E0 002DE140  80 1C 00 04 */	lwz r0, 4(r28)
/* 802E11E4 002DE144  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 802E11E8 002DE148  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 802E11EC 002DE14C  7C 09 03 A6 */	mtctr r0
/* 802E11F0 002DE150  2C 00 00 00 */	cmpwi r0, 0
/* 802E11F4 002DE154  40 81 00 38 */	ble lbl_802E122C
lbl_802E11F8:
/* 802E11F8 002DE158  28 05 00 00 */	cmplwi r5, 0
/* 802E11FC 002DE15C  41 82 00 24 */	beq lbl_802E1220
/* 802E1200 002DE160  80 06 00 00 */	lwz r0, 0(r6)
/* 802E1204 002DE164  90 05 00 00 */	stw r0, 0(r5)
/* 802E1208 002DE168  80 85 00 00 */	lwz r4, 0(r5)
/* 802E120C 002DE16C  80 64 00 04 */	lwz r3, 4(r4)
/* 802E1210 002DE170  38 03 00 01 */	addi r0, r3, 1
/* 802E1214 002DE174  90 04 00 04 */	stw r0, 4(r4)
/* 802E1218 002DE178  80 06 00 04 */	lwz r0, 4(r6)
/* 802E121C 002DE17C  90 05 00 04 */	stw r0, 4(r5)
lbl_802E1220:
/* 802E1220 002DE180  38 A5 00 08 */	addi r5, r5, 8
/* 802E1224 002DE184  38 C6 00 08 */	addi r6, r6, 8
/* 802E1228 002DE188  42 00 FF D0 */	bdnz lbl_802E11F8
lbl_802E122C:
/* 802E122C 002DE18C  38 61 00 18 */	addi r3, r1, 0x18
/* 802E1230 002DE190  38 80 FF FF */	li r4, -1
/* 802E1234 002DE194  4B FF FD 75 */	bl sub_802e0fa8
/* 802E1238 002DE198  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E123C 002DE19C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802E1240 002DE1A0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802E1244 002DE1A4  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802E1248 002DE1A8  83 81 00 30 */	lwz r28, 0x30(r1)
/* 802E124C 002DE1AC  7C 08 03 A6 */	mtlr r0
/* 802E1250 002DE1B0  38 21 00 40 */	addi r1, r1, 0x40
/* 802E1254 002DE1B4  4E 80 00 20 */	blr

.global WriteAnimData__15CMetaAnimRandomCFR13COutputStream
WriteAnimData__15CMetaAnimRandomCFR13COutputStream:
/* 802E1258 002DE1B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E125C 002DE1BC  7C 08 02 A6 */	mflr r0
/* 802E1260 002DE1C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E1264 002DE1C4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E1268 002DE1C8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E126C 002DE1CC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802E1270 002DE1D0  93 81 00 20 */	stw r28, 0x20(r1)
/* 802E1274 002DE1D4  7C 9C 23 78 */	mr r28, r4
/* 802E1278 002DE1D8  80 A3 00 08 */	lwz r5, 8(r3)
/* 802E127C 002DE1DC  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 802E1280 002DE1E0  7F 83 E3 78 */	mr r3, r28
/* 802E1284 002DE1E4  54 A0 18 38 */	slwi r0, r5, 3
/* 802E1288 002DE1E8  90 A1 00 08 */	stw r5, 8(r1)
/* 802E128C 002DE1EC  7F FE 02 14 */	add r31, r30, r0
/* 802E1290 002DE1F0  48 05 E2 29 */	bl FlushShiftRegister__13COutputStreamFv
/* 802E1294 002DE1F4  7F 83 E3 78 */	mr r3, r28
/* 802E1298 002DE1F8  38 81 00 08 */	addi r4, r1, 8
/* 802E129C 002DE1FC  38 A0 00 04 */	li r5, 4
/* 802E12A0 002DE200  48 05 E3 09 */	bl DoPut__13COutputStreamFPCvUl
/* 802E12A4 002DE204  48 00 00 54 */	b lbl_802E12F8
lbl_802E12A8:
/* 802E12A8 002DE208  80 BE 00 00 */	lwz r5, 0(r30)
/* 802E12AC 002DE20C  7F 84 E3 78 */	mr r4, r28
/* 802E12B0 002DE210  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802E12B4 002DE214  80 65 00 04 */	lwz r3, 4(r5)
/* 802E12B8 002DE218  38 03 00 01 */	addi r0, r3, 1
/* 802E12BC 002DE21C  90 05 00 04 */	stw r0, 4(r5)
/* 802E12C0 002DE220  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802E12C4 002DE224  83 BE 00 04 */	lwz r29, 4(r30)
/* 802E12C8 002DE228  80 63 00 00 */	lwz r3, 0(r3)
/* 802E12CC 002DE22C  48 00 60 55 */	bl PutTo__9IMetaAnimCFR13COutputStream
/* 802E12D0 002DE230  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802E12D4 002DE234  7F 83 E3 78 */	mr r3, r28
/* 802E12D8 002DE238  48 05 E1 E1 */	bl FlushShiftRegister__13COutputStreamFv
/* 802E12DC 002DE23C  7F 83 E3 78 */	mr r3, r28
/* 802E12E0 002DE240  38 81 00 0C */	addi r4, r1, 0xc
/* 802E12E4 002DE244  38 A0 00 04 */	li r5, 4
/* 802E12E8 002DE248  48 05 E2 C1 */	bl DoPut__13COutputStreamFPCvUl
/* 802E12EC 002DE24C  3B DE 00 08 */	addi r30, r30, 8
/* 802E12F0 002DE250  38 61 00 10 */	addi r3, r1, 0x10
/* 802E12F4 002DE254  4B D4 FC 3D */	bl sub_80030f30
lbl_802E12F8:
/* 802E12F8 002DE258  7C 1E F8 40 */	cmplw r30, r31
/* 802E12FC 002DE25C  40 82 FF AC */	bne lbl_802E12A8
/* 802E1300 002DE260  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E1304 002DE264  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E1308 002DE268  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E130C 002DE26C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802E1310 002DE270  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802E1314 002DE274  7C 08 03 A6 */	mtlr r0
/* 802E1318 002DE278  38 21 00 30 */	addi r1, r1, 0x30
/* 802E131C 002DE27C  4E 80 00 20 */	blr

.global "GetUniquePrimitives__15CMetaAnimRandomCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>"
"GetUniquePrimitives__15CMetaAnimRandomCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>":
/* 802E1320 002DE280  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E1324 002DE284  7C 08 02 A6 */	mflr r0
/* 802E1328 002DE288  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E132C 002DE28C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E1330 002DE290  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E1334 002DE294  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E1338 002DE298  7C 9D 23 78 */	mr r29, r4
/* 802E133C 002DE29C  80 03 00 08 */	lwz r0, 8(r3)
/* 802E1340 002DE2A0  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 802E1344 002DE2A4  54 00 18 38 */	slwi r0, r0, 3
/* 802E1348 002DE2A8  7F FE 02 14 */	add r31, r30, r0
/* 802E134C 002DE2AC  48 00 00 24 */	b lbl_802E1370
lbl_802E1350:
/* 802E1350 002DE2B0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E1354 002DE2B4  7F A4 EB 78 */	mr r4, r29
/* 802E1358 002DE2B8  80 63 00 00 */	lwz r3, 0(r3)
/* 802E135C 002DE2BC  81 83 00 00 */	lwz r12, 0(r3)
/* 802E1360 002DE2C0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802E1364 002DE2C4  7D 89 03 A6 */	mtctr r12
/* 802E1368 002DE2C8  4E 80 04 21 */	bctrl
/* 802E136C 002DE2CC  3B DE 00 08 */	addi r30, r30, 8
lbl_802E1370:
/* 802E1370 002DE2D0  7C 1E F8 40 */	cmplw r30, r31
/* 802E1374 002DE2D4  40 82 FF DC */	bne lbl_802E1350
/* 802E1378 002DE2D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E137C 002DE2DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E1380 002DE2E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E1384 002DE2E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E1388 002DE2E8  7C 08 03 A6 */	mtlr r0
/* 802E138C 002DE2EC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E1390 002DE2F0  4E 80 00 20 */	blr

.global VGetAnimationTree__15CMetaAnimRandomCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders
VGetAnimationTree__15CMetaAnimRandomCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders:
/* 802E1394 002DE2F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E1398 002DE2F8  7C 08 02 A6 */	mflr r0
/* 802E139C 002DE2FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E13A0 002DE300  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E13A4 002DE304  7C DF 33 78 */	mr r31, r6
/* 802E13A8 002DE308  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E13AC 002DE30C  7C BE 2B 78 */	mr r30, r5
/* 802E13B0 002DE310  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E13B4 002DE314  7C 9D 23 78 */	mr r29, r4
/* 802E13B8 002DE318  38 80 00 01 */	li r4, 1
/* 802E13BC 002DE31C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802E13C0 002DE320  7C 7C 1B 78 */	mr r28, r3
/* 802E13C4 002DE324  80 A5 00 08 */	lwz r5, 8(r5)
/* 802E13C8 002DE328  80 65 00 00 */	lwz r3, 0(r5)
/* 802E13CC 002DE32C  38 A0 00 64 */	li r5, 0x64
/* 802E13D0 002DE330  48 03 11 C5 */	bl Range__9CRandom16Fii
/* 802E13D4 002DE334  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 802E13D8 002DE338  38 A0 00 00 */	li r5, 0
/* 802E13DC 002DE33C  48 00 00 1C */	b lbl_802E13F8
lbl_802E13E0:
/* 802E13E0 002DE340  80 04 00 04 */	lwz r0, 4(r4)
/* 802E13E4 002DE344  7C 03 00 00 */	cmpw r3, r0
/* 802E13E8 002DE348  41 81 00 0C */	bgt lbl_802E13F4
/* 802E13EC 002DE34C  38 A0 00 01 */	li r5, 1
/* 802E13F0 002DE350  48 00 00 08 */	b lbl_802E13F8
lbl_802E13F4:
/* 802E13F4 002DE354  38 84 00 08 */	addi r4, r4, 8
lbl_802E13F8:
/* 802E13F8 002DE358  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802E13FC 002DE35C  41 82 FF E4 */	beq lbl_802E13E0
/* 802E1400 002DE360  80 84 00 00 */	lwz r4, 0(r4)
/* 802E1404 002DE364  7F C5 F3 78 */	mr r5, r30
/* 802E1408 002DE368  7F E6 FB 78 */	mr r6, r31
/* 802E140C 002DE36C  38 61 00 08 */	addi r3, r1, 8
/* 802E1410 002DE370  80 84 00 00 */	lwz r4, 0(r4)
/* 802E1414 002DE374  81 84 00 00 */	lwz r12, 0(r4)
/* 802E1418 002DE378  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E141C 002DE37C  7D 89 03 A6 */	mtctr r12
/* 802E1420 002DE380  4E 80 04 21 */	bctrl
/* 802E1424 002DE384  80 01 00 08 */	lwz r0, 8(r1)
/* 802E1428 002DE388  38 61 00 08 */	addi r3, r1, 8
/* 802E142C 002DE38C  90 1C 00 00 */	stw r0, 0(r28)
/* 802E1430 002DE390  80 BC 00 00 */	lwz r5, 0(r28)
/* 802E1434 002DE394  80 85 00 04 */	lwz r4, 4(r5)
/* 802E1438 002DE398  38 04 00 01 */	addi r0, r4, 1
/* 802E143C 002DE39C  90 05 00 04 */	stw r0, 4(r5)
/* 802E1440 002DE3A0  4B D4 FB 61 */	bl sub_80030fa0
/* 802E1444 002DE3A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E1448 002DE3A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E144C 002DE3AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E1450 002DE3B0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E1454 002DE3B4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802E1458 002DE3B8  7C 08 03 A6 */	mtlr r0
/* 802E145C 002DE3BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E1460 002DE3C0  4E 80 00 20 */	blr

.global __ct__15CMetaAnimRandomFR12CInputStream
__ct__15CMetaAnimRandomFR12CInputStream:
/* 802E1464 002DE3C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E1468 002DE3C8  7C 08 02 A6 */	mflr r0
/* 802E146C 002DE3CC  3C A0 80 3F */	lis r5, lbl_803ECDF0@ha
/* 802E1470 002DE3D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E1474 002DE3D4  38 05 CD F0 */	addi r0, r5, lbl_803ECDF0@l
/* 802E1478 002DE3D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E147C 002DE3DC  7C 7F 1B 78 */	mr r31, r3
/* 802E1480 002DE3E0  3C 60 80 3F */	lis r3, lbl_803ECD50@ha
/* 802E1484 002DE3E4  90 1F 00 00 */	stw r0, 0(r31)
/* 802E1488 002DE3E8  38 03 CD 50 */	addi r0, r3, lbl_803ECD50@l
/* 802E148C 002DE3EC  38 61 00 08 */	addi r3, r1, 8
/* 802E1490 002DE3F0  90 1F 00 00 */	stw r0, 0(r31)
/* 802E1494 002DE3F4  4B FF FB CD */	bl CreateRandomData__15CMetaAnimRandomFR12CInputStream
/* 802E1498 002DE3F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E149C 002DE3FC  90 1F 00 08 */	stw r0, 8(r31)
/* 802E14A0 002DE400  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802E14A4 002DE404  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802E14A8 002DE408  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E14AC 002DE40C  2C 00 00 00 */	cmpwi r0, 0
/* 802E14B0 002DE410  40 82 00 1C */	bne lbl_802E14CC
/* 802E14B4 002DE414  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802E14B8 002DE418  2C 00 00 00 */	cmpwi r0, 0
/* 802E14BC 002DE41C  40 82 00 10 */	bne lbl_802E14CC
/* 802E14C0 002DE420  38 00 00 00 */	li r0, 0
/* 802E14C4 002DE424  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802E14C8 002DE428  48 00 00 7C */	b lbl_802E1544
lbl_802E14CC:
/* 802E14CC 002DE42C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802E14D0 002DE430  54 03 18 39 */	rlwinm. r3, r0, 3, 0, 0x1c
/* 802E14D4 002DE434  40 82 00 10 */	bne lbl_802E14E4
/* 802E14D8 002DE438  38 00 00 00 */	li r0, 0
/* 802E14DC 002DE43C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802E14E0 002DE440  48 00 00 18 */	b lbl_802E14F8
lbl_802E14E4:
/* 802E14E4 002DE444  3C 80 80 3D */	lis r4, lbl_803D6D78@ha
/* 802E14E8 002DE448  38 A0 00 00 */	li r5, 0
/* 802E14EC 002DE44C  38 84 6D 78 */	addi r4, r4, lbl_803D6D78@l
/* 802E14F0 002DE450  48 03 43 29 */	bl __nwa__FUlPCcPCc
/* 802E14F4 002DE454  90 7F 00 10 */	stw r3, 0x10(r31)
lbl_802E14F8:
/* 802E14F8 002DE458  80 1F 00 08 */	lwz r0, 8(r31)
/* 802E14FC 002DE45C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 802E1500 002DE460  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 802E1504 002DE464  7C 09 03 A6 */	mtctr r0
/* 802E1508 002DE468  2C 00 00 00 */	cmpwi r0, 0
/* 802E150C 002DE46C  40 81 00 38 */	ble lbl_802E1544
lbl_802E1510:
/* 802E1510 002DE470  28 05 00 00 */	cmplwi r5, 0
/* 802E1514 002DE474  41 82 00 24 */	beq lbl_802E1538
/* 802E1518 002DE478  80 06 00 00 */	lwz r0, 0(r6)
/* 802E151C 002DE47C  90 05 00 00 */	stw r0, 0(r5)
/* 802E1520 002DE480  80 85 00 00 */	lwz r4, 0(r5)
/* 802E1524 002DE484  80 64 00 04 */	lwz r3, 4(r4)
/* 802E1528 002DE488  38 03 00 01 */	addi r0, r3, 1
/* 802E152C 002DE48C  90 04 00 04 */	stw r0, 4(r4)
/* 802E1530 002DE490  80 06 00 04 */	lwz r0, 4(r6)
/* 802E1534 002DE494  90 05 00 04 */	stw r0, 4(r5)
lbl_802E1538:
/* 802E1538 002DE498  38 A5 00 08 */	addi r5, r5, 8
/* 802E153C 002DE49C  38 C6 00 08 */	addi r6, r6, 8
/* 802E1540 002DE4A0  42 00 FF D0 */	bdnz lbl_802E1510
lbl_802E1544:
/* 802E1544 002DE4A4  38 61 00 08 */	addi r3, r1, 8
/* 802E1548 002DE4A8  38 80 FF FF */	li r4, -1
/* 802E154C 002DE4AC  4B FF FA 5D */	bl sub_802e0fa8
/* 802E1550 002DE4B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E1554 002DE4B4  7F E3 FB 78 */	mr r3, r31
/* 802E1558 002DE4B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E155C 002DE4BC  7C 08 03 A6 */	mtlr r0
/* 802E1560 002DE4C0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E1564 002DE4C4  4E 80 00 20 */	blr

.global "reserve__Q24rstl79vector<Q24rstl35pair<Q24rstl18rc_ptr<9IMetaAnim>,i>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl79vector<Q24rstl35pair<Q24rstl18rc_ptr<9IMetaAnim>,i>,Q24rstl17rmemory_allocator>Fi":
/* 802E1568 002DE4C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E156C 002DE4CC  7C 08 02 A6 */	mflr r0
/* 802E1570 002DE4D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E1574 002DE4D4  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802E1578 002DE4D8  7C 9F 23 78 */	mr r31, r4
/* 802E157C 002DE4DC  7C 7E 1B 78 */	mr r30, r3
/* 802E1580 002DE4E0  80 03 00 08 */	lwz r0, 8(r3)
/* 802E1584 002DE4E4  7C 1F 00 00 */	cmpw r31, r0
/* 802E1588 002DE4E8  40 81 00 D4 */	ble lbl_802E165C
/* 802E158C 002DE4EC  57 E3 18 39 */	rlwinm. r3, r31, 3, 0, 0x1c
/* 802E1590 002DE4F0  40 82 00 0C */	bne lbl_802E159C
/* 802E1594 002DE4F4  3B A0 00 00 */	li r29, 0
/* 802E1598 002DE4F8  48 00 00 18 */	b lbl_802E15B0
lbl_802E159C:
/* 802E159C 002DE4FC  3C 80 80 3D */	lis r4, lbl_803D6D78@ha
/* 802E15A0 002DE500  38 A0 00 00 */	li r5, 0
/* 802E15A4 002DE504  38 84 6D 78 */	addi r4, r4, lbl_803D6D78@l
/* 802E15A8 002DE508  48 03 42 71 */	bl __nwa__FUlPCcPCc
/* 802E15AC 002DE50C  7C 7D 1B 78 */	mr r29, r3
lbl_802E15B0:
/* 802E15B0 002DE510  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E15B4 002DE514  7F A6 EB 78 */	mr r6, r29
/* 802E15B8 002DE518  80 FE 00 0C */	lwz r7, 0xc(r30)
/* 802E15BC 002DE51C  54 00 18 38 */	slwi r0, r0, 3
/* 802E15C0 002DE520  7C A7 02 14 */	add r5, r7, r0
/* 802E15C4 002DE524  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802E15C8 002DE528  90 A1 00 08 */	stw r5, 8(r1)
/* 802E15CC 002DE52C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802E15D0 002DE530  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802E15D4 002DE534  48 00 00 34 */	b lbl_802E1608
lbl_802E15D8:
/* 802E15D8 002DE538  28 06 00 00 */	cmplwi r6, 0
/* 802E15DC 002DE53C  41 82 00 24 */	beq lbl_802E1600
/* 802E15E0 002DE540  80 07 00 00 */	lwz r0, 0(r7)
/* 802E15E4 002DE544  90 06 00 00 */	stw r0, 0(r6)
/* 802E15E8 002DE548  80 86 00 00 */	lwz r4, 0(r6)
/* 802E15EC 002DE54C  80 64 00 04 */	lwz r3, 4(r4)
/* 802E15F0 002DE550  38 03 00 01 */	addi r0, r3, 1
/* 802E15F4 002DE554  90 04 00 04 */	stw r0, 4(r4)
/* 802E15F8 002DE558  80 07 00 04 */	lwz r0, 4(r7)
/* 802E15FC 002DE55C  90 06 00 04 */	stw r0, 4(r6)
lbl_802E1600:
/* 802E1600 002DE560  38 C6 00 08 */	addi r6, r6, 8
/* 802E1604 002DE564  38 E7 00 08 */	addi r7, r7, 8
lbl_802E1608:
/* 802E1608 002DE568  7C 07 28 40 */	cmplw r7, r5
/* 802E160C 002DE56C  40 82 FF CC */	bne lbl_802E15D8
/* 802E1610 002DE570  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E1614 002DE574  83 7E 00 0C */	lwz r27, 0xc(r30)
/* 802E1618 002DE578  54 00 18 38 */	slwi r0, r0, 3
/* 802E161C 002DE57C  7F 9B 02 14 */	add r28, r27, r0
/* 802E1620 002DE580  48 00 00 1C */	b lbl_802E163C
lbl_802E1624:
/* 802E1624 002DE584  28 1B 00 00 */	cmplwi r27, 0
/* 802E1628 002DE588  41 82 00 10 */	beq lbl_802E1638
/* 802E162C 002DE58C  41 82 00 0C */	beq lbl_802E1638
/* 802E1630 002DE590  7F 63 DB 78 */	mr r3, r27
/* 802E1634 002DE594  4B D4 F8 FD */	bl sub_80030f30
lbl_802E1638:
/* 802E1638 002DE598  3B 7B 00 08 */	addi r27, r27, 8
lbl_802E163C:
/* 802E163C 002DE59C  7C 1B E0 40 */	cmplw r27, r28
/* 802E1640 002DE5A0  40 82 FF E4 */	bne lbl_802E1624
/* 802E1644 002DE5A4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802E1648 002DE5A8  28 03 00 00 */	cmplwi r3, 0
/* 802E164C 002DE5AC  41 82 00 08 */	beq lbl_802E1654
/* 802E1650 002DE5B0  48 03 42 E1 */	bl Free__7CMemoryFPCv
lbl_802E1654:
/* 802E1654 002DE5B4  93 BE 00 0C */	stw r29, 0xc(r30)
/* 802E1658 002DE5B8  93 FE 00 08 */	stw r31, 8(r30)
lbl_802E165C:
/* 802E165C 002DE5BC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802E1660 002DE5C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E1664 002DE5C4  7C 08 03 A6 */	mtlr r0
/* 802E1668 002DE5C8  38 21 00 30 */	addi r1, r1, 0x30
/* 802E166C 002DE5CC  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D6D78
lbl_803D6D78:
	# ROM: 0x3D3D78
	.asciz "??(??)"
	.balign 4

