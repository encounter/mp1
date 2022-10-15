.include "macros.inc"

.section .data
.balign 8

.global lbl_803EF670
lbl_803EF670:
	# ROM: 0x3EC670
	.4byte 0
	.4byte 0
	.4byte sub_8034a1b0
	.4byte 0

.section .text, "ax"

.global FAudioGroupSetLocDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer
FAudioGroupSetLocDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer:
/* 8034A024 00346F84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034A028 00346F88  7C 08 02 A6 */	mflr r0
/* 8034A02C 00346F8C  3C 80 80 3E */	lis r4, lbl_803D8108@ha
/* 8034A030 00346F90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034A034 00346F94  38 84 81 08 */	addi r4, r4, lbl_803D8108@l
/* 8034A038 00346F98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034A03C 00346F9C  7C DF 33 78 */	mr r31, r6
/* 8034A040 00346FA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034A044 00346FA4  7C BE 2B 78 */	mr r30, r5
/* 8034A048 00346FA8  38 A0 00 00 */	li r5, 0
/* 8034A04C 00346FAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034A050 00346FB0  7C 7D 1B 78 */	mr r29, r3
/* 8034A054 00346FB4  38 60 00 44 */	li r3, 0x44
/* 8034A058 00346FB8  4B FC B8 15 */	bl __nw__FUlPCcPCc
/* 8034A05C 00346FBC  7C 64 1B 79 */	or. r4, r3, r3
/* 8034A060 00346FC0  41 82 00 14 */	beq lbl_8034A074
/* 8034A064 00346FC4  7F C4 F3 78 */	mr r4, r30
/* 8034A068 00346FC8  7F E5 FB 78 */	mr r5, r31
/* 8034A06C 00346FCC  48 00 03 89 */	bl __ct__15CAudioGrpSetLocFR12CInputStream
/* 8034A070 00346FD0  7C 64 1B 78 */	mr r4, r3
lbl_8034A074:
/* 8034A074 00346FD4  7F A3 EB 78 */	mr r3, r29
/* 8034A078 00346FD8  48 00 00 21 */	bl sub_8034a098
/* 8034A07C 00346FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034A080 00346FE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034A084 00346FE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034A088 00346FE8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034A08C 00346FEC  7C 08 03 A6 */	mtlr r0
/* 8034A090 00346FF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8034A094 00346FF4  4E 80 00 20 */	blr

.global sub_8034a098
sub_8034a098:
/* 8034A098 00346FF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034A09C 00346FFC  7C 08 02 A6 */	mflr r0
/* 8034A0A0 00347000  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034A0A4 00347004  7C 04 00 D0 */	neg r0, r4
/* 8034A0A8 00347008  7C 00 23 78 */	or r0, r0, r4
/* 8034A0AC 0034700C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034A0B0 00347010  7C 7F 1B 78 */	mr r31, r3
/* 8034A0B4 00347014  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8034A0B8 00347018  38 61 00 08 */	addi r3, r1, 8
/* 8034A0BC 0034701C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034A0C0 00347020  90 81 00 14 */	stw r4, 0x14(r1)
/* 8034A0C4 00347024  38 81 00 10 */	addi r4, r1, 0x10
/* 8034A0C8 00347028  98 01 00 10 */	stb r0, 0x10(r1)
/* 8034A0CC 0034702C  48 00 01 D9 */	bl sub_8034a2a4
/* 8034A0D0 00347030  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8034A0D4 00347034  38 00 00 00 */	li r0, 0
/* 8034A0D8 00347038  98 01 00 08 */	stb r0, 8(r1)
/* 8034A0DC 0034703C  7C 03 00 D0 */	neg r0, r3
/* 8034A0E0 00347040  7C 00 1B 78 */	or r0, r0, r3
/* 8034A0E4 00347044  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8034A0E8 00347048  98 1F 00 00 */	stb r0, 0(r31)
/* 8034A0EC 0034704C  90 7F 00 04 */	stw r3, 4(r31)
/* 8034A0F0 00347050  88 01 00 08 */	lbz r0, 8(r1)
/* 8034A0F4 00347054  28 00 00 00 */	cmplwi r0, 0
/* 8034A0F8 00347058  41 82 00 24 */	beq lbl_8034A11C
/* 8034A0FC 0034705C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8034A100 00347060  28 03 00 00 */	cmplwi r3, 0
/* 8034A104 00347064  41 82 00 18 */	beq lbl_8034A11C
/* 8034A108 00347068  81 83 00 00 */	lwz r12, 0(r3)
/* 8034A10C 0034706C  38 80 00 01 */	li r4, 1
/* 8034A110 00347070  81 8C 00 08 */	lwz r12, 8(r12)
/* 8034A114 00347074  7D 89 03 A6 */	mtctr r12
/* 8034A118 00347078  4E 80 04 21 */	bctrl
lbl_8034A11C:
/* 8034A11C 0034707C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8034A120 00347080  28 00 00 00 */	cmplwi r0, 0
/* 8034A124 00347084  41 82 00 70 */	beq lbl_8034A194
/* 8034A128 00347088  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 8034A12C 0034708C  28 1E 00 00 */	cmplwi r30, 0
/* 8034A130 00347090  41 82 00 64 */	beq lbl_8034A194
/* 8034A134 00347094  34 1E 00 20 */	addic. r0, r30, 0x20
/* 8034A138 00347098  41 82 00 0C */	beq lbl_8034A144
/* 8034A13C 0034709C  38 7E 00 20 */	addi r3, r30, 0x20
/* 8034A140 003470A0  4B FF 39 A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8034A144:
/* 8034A144 003470A4  34 1E 00 10 */	addic. r0, r30, 0x10
/* 8034A148 003470A8  41 82 00 0C */	beq lbl_8034A154
/* 8034A14C 003470AC  38 7E 00 10 */	addi r3, r30, 0x10
/* 8034A150 003470B0  4B FF 39 91 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8034A154:
/* 8034A154 003470B4  34 1E 00 08 */	addic. r0, r30, 8
/* 8034A158 003470B8  41 82 00 18 */	beq lbl_8034A170
/* 8034A15C 003470BC  88 1E 00 08 */	lbz r0, 8(r30)
/* 8034A160 003470C0  28 00 00 00 */	cmplwi r0, 0
/* 8034A164 003470C4  41 82 00 0C */	beq lbl_8034A170
/* 8034A168 003470C8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8034A16C 003470CC  4B FC B7 C5 */	bl Free__7CMemoryFPCv
lbl_8034A170:
/* 8034A170 003470D0  28 1E 00 00 */	cmplwi r30, 0
/* 8034A174 003470D4  41 82 00 18 */	beq lbl_8034A18C
/* 8034A178 003470D8  88 1E 00 00 */	lbz r0, 0(r30)
/* 8034A17C 003470DC  28 00 00 00 */	cmplwi r0, 0
/* 8034A180 003470E0  41 82 00 0C */	beq lbl_8034A18C
/* 8034A184 003470E4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8034A188 003470E8  4B FC B7 A9 */	bl Free__7CMemoryFPCv
lbl_8034A18C:
/* 8034A18C 003470EC  7F C3 F3 78 */	mr r3, r30
/* 8034A190 003470F0  4B FC B7 A1 */	bl Free__7CMemoryFPCv
lbl_8034A194:
/* 8034A194 003470F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034A198 003470F8  7F E3 FB 78 */	mr r3, r31
/* 8034A19C 003470FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034A1A0 00347100  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034A1A4 00347104  7C 08 03 A6 */	mtlr r0
/* 8034A1A8 00347108  38 21 00 20 */	addi r1, r1, 0x20
/* 8034A1AC 0034710C  4E 80 00 20 */	blr

.global sub_8034a1b0
sub_8034a1b0:
/* 8034A1B0 00347110  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034A1B4 00347114  7C 08 02 A6 */	mflr r0
/* 8034A1B8 00347118  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034A1BC 0034711C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034A1C0 00347120  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034A1C4 00347124  7C 9E 23 78 */	mr r30, r4
/* 8034A1C8 00347128  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034A1CC 0034712C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8034A1D0 00347130  41 82 00 B4 */	beq lbl_8034A284
/* 8034A1D4 00347134  3C 60 80 3F */	lis r3, lbl_803EF670@ha
/* 8034A1D8 00347138  38 03 F6 70 */	addi r0, r3, lbl_803EF670@l
/* 8034A1DC 0034713C  90 1D 00 00 */	stw r0, 0(r29)
/* 8034A1E0 00347140  83 FD 00 04 */	lwz r31, 4(r29)
/* 8034A1E4 00347144  28 1F 00 00 */	cmplwi r31, 0
/* 8034A1E8 00347148  41 82 00 68 */	beq lbl_8034A250
/* 8034A1EC 0034714C  41 82 00 64 */	beq lbl_8034A250
/* 8034A1F0 00347150  34 1F 00 20 */	addic. r0, r31, 0x20
/* 8034A1F4 00347154  41 82 00 0C */	beq lbl_8034A200
/* 8034A1F8 00347158  38 7F 00 20 */	addi r3, r31, 0x20
/* 8034A1FC 0034715C  4B FF 38 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8034A200:
/* 8034A200 00347160  34 1F 00 10 */	addic. r0, r31, 0x10
/* 8034A204 00347164  41 82 00 0C */	beq lbl_8034A210
/* 8034A208 00347168  38 7F 00 10 */	addi r3, r31, 0x10
/* 8034A20C 0034716C  4B FF 38 D5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8034A210:
/* 8034A210 00347170  34 1F 00 08 */	addic. r0, r31, 8
/* 8034A214 00347174  41 82 00 18 */	beq lbl_8034A22C
/* 8034A218 00347178  88 1F 00 08 */	lbz r0, 8(r31)
/* 8034A21C 0034717C  28 00 00 00 */	cmplwi r0, 0
/* 8034A220 00347180  41 82 00 0C */	beq lbl_8034A22C
/* 8034A224 00347184  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8034A228 00347188  4B FC B7 09 */	bl Free__7CMemoryFPCv
lbl_8034A22C:
/* 8034A22C 0034718C  28 1F 00 00 */	cmplwi r31, 0
/* 8034A230 00347190  41 82 00 18 */	beq lbl_8034A248
/* 8034A234 00347194  88 1F 00 00 */	lbz r0, 0(r31)
/* 8034A238 00347198  28 00 00 00 */	cmplwi r0, 0
/* 8034A23C 0034719C  41 82 00 0C */	beq lbl_8034A248
/* 8034A240 003471A0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8034A244 003471A4  4B FC B6 ED */	bl Free__7CMemoryFPCv
lbl_8034A248:
/* 8034A248 003471A8  7F E3 FB 78 */	mr r3, r31
/* 8034A24C 003471AC  4B FC B6 E5 */	bl Free__7CMemoryFPCv
lbl_8034A250:
/* 8034A250 003471B0  28 1D 00 00 */	cmplwi r29, 0
/* 8034A254 003471B4  41 82 00 20 */	beq lbl_8034A274
/* 8034A258 003471B8  3C 60 80 3E */	lis r3, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 8034A25C 003471BC  38 03 8D 78 */	addi r0, r3, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 8034A260 003471C0  90 1D 00 00 */	stw r0, 0(r29)
/* 8034A264 003471C4  41 82 00 10 */	beq lbl_8034A274
/* 8034A268 003471C8  3C 60 80 3E */	lis r3, __vt__4IObj@ha
/* 8034A26C 003471CC  38 03 8D 6C */	addi r0, r3, __vt__4IObj@l
/* 8034A270 003471D0  90 1D 00 00 */	stw r0, 0(r29)
lbl_8034A274:
/* 8034A274 003471D4  7F C0 07 35 */	extsh. r0, r30
/* 8034A278 003471D8  40 81 00 0C */	ble lbl_8034A284
/* 8034A27C 003471DC  7F A3 EB 78 */	mr r3, r29
/* 8034A280 003471E0  4B FC B6 B1 */	bl Free__7CMemoryFPCv
lbl_8034A284:
/* 8034A284 003471E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034A288 003471E8  7F A3 EB 78 */	mr r3, r29
/* 8034A28C 003471EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034A290 003471F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034A294 003471F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034A298 003471F8  7C 08 03 A6 */	mtlr r0
/* 8034A29C 003471FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8034A2A0 00347200  4E 80 00 20 */	blr

.global sub_8034a2a4
sub_8034a2a4:
/* 8034A2A4 00347204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034A2A8 00347208  7C 08 02 A6 */	mflr r0
/* 8034A2AC 0034720C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034A2B0 00347210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034A2B4 00347214  7C 7F 1B 78 */	mr r31, r3
/* 8034A2B8 00347218  48 00 00 19 */	bl sub_8034a2d0
/* 8034A2BC 0034721C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034A2C0 00347220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034A2C4 00347224  7C 08 03 A6 */	mtlr r0
/* 8034A2C8 00347228  38 21 00 10 */	addi r1, r1, 0x10
/* 8034A2CC 0034722C  4E 80 00 20 */	blr

.global sub_8034a2d0
sub_8034a2d0:
/* 8034A2D0 00347230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034A2D4 00347234  7C 08 02 A6 */	mflr r0
/* 8034A2D8 00347238  3C A0 80 3E */	lis r5, lbl_803D8108@ha
/* 8034A2DC 0034723C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034A2E0 00347240  38 05 81 08 */	addi r0, r5, lbl_803D8108@l
/* 8034A2E4 00347244  38 A0 00 00 */	li r5, 0
/* 8034A2E8 00347248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034A2EC 0034724C  7C 9F 23 78 */	mr r31, r4
/* 8034A2F0 00347250  7C 04 03 78 */	mr r4, r0
/* 8034A2F4 00347254  93 C1 00 08 */	stw r30, 8(r1)
/* 8034A2F8 00347258  7C 7E 1B 78 */	mr r30, r3
/* 8034A2FC 0034725C  38 60 00 08 */	li r3, 8
/* 8034A300 00347260  4B FC B5 6D */	bl __nw__FUlPCcPCc
/* 8034A304 00347264  28 03 00 00 */	cmplwi r3, 0
/* 8034A308 00347268  41 82 00 38 */	beq lbl_8034A340
/* 8034A30C 0034726C  3C 80 80 3E */	lis r4, __vt__4IObj@ha
/* 8034A310 00347270  3C A0 80 3E */	lis r5, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 8034A314 00347274  38 04 8D 6C */	addi r0, r4, __vt__4IObj@l
/* 8034A318 00347278  3C 80 80 3F */	lis r4, lbl_803EF670@ha
/* 8034A31C 0034727C  90 03 00 00 */	stw r0, 0(r3)
/* 8034A320 00347280  38 C5 8D 78 */	addi r6, r5, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 8034A324 00347284  38 A0 00 00 */	li r5, 0
/* 8034A328 00347288  38 04 F6 70 */	addi r0, r4, lbl_803EF670@l
/* 8034A32C 0034728C  90 C3 00 00 */	stw r6, 0(r3)
/* 8034A330 00347290  98 BF 00 00 */	stb r5, 0(r31)
/* 8034A334 00347294  80 9F 00 04 */	lwz r4, 4(r31)
/* 8034A338 00347298  90 83 00 04 */	stw r4, 4(r3)
/* 8034A33C 0034729C  90 03 00 00 */	stw r0, 0(r3)
lbl_8034A340:
/* 8034A340 003472A0  7C 03 00 D0 */	neg r0, r3
/* 8034A344 003472A4  7C 00 1B 78 */	or r0, r0, r3
/* 8034A348 003472A8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8034A34C 003472AC  98 1E 00 00 */	stb r0, 0(r30)
/* 8034A350 003472B0  90 7E 00 04 */	stw r3, 4(r30)
/* 8034A354 003472B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034A358 003472B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034A35C 003472BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034A360 003472C0  7C 08 03 A6 */	mtlr r0
/* 8034A364 003472C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8034A368 003472C8  4E 80 00 20 */	blr

.global sub_8034a36c
sub_8034a36c:
/* 8034A36C 003472CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034A370 003472D0  7C 08 02 A6 */	mflr r0
/* 8034A374 003472D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034A378 003472D8  38 01 00 08 */	addi r0, r1, 8
/* 8034A37C 003472DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034A380 003472E0  7C 7F 1B 78 */	mr r31, r3
/* 8034A384 003472E4  38 60 00 00 */	li r3, 0
/* 8034A388 003472E8  7C 00 F8 40 */	cmplw r0, r31
/* 8034A38C 003472EC  98 61 00 08 */	stb r3, 8(r1)
/* 8034A390 003472F0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8034A394 003472F4  41 82 00 30 */	beq lbl_8034A3C4
/* 8034A398 003472F8  88 1F 00 00 */	lbz r0, 0(r31)
/* 8034A39C 003472FC  28 00 00 00 */	cmplwi r0, 0
/* 8034A3A0 00347300  41 82 00 0C */	beq lbl_8034A3AC
/* 8034A3A4 00347304  80 7F 00 04 */	lwz r3, 4(r31)
/* 8034A3A8 00347308  4B FC B5 89 */	bl Free__7CMemoryFPCv
lbl_8034A3AC:
/* 8034A3AC 0034730C  88 81 00 08 */	lbz r4, 8(r1)
/* 8034A3B0 00347310  38 00 00 00 */	li r0, 0
/* 8034A3B4 00347314  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8034A3B8 00347318  98 9F 00 00 */	stb r4, 0(r31)
/* 8034A3BC 0034731C  90 7F 00 04 */	stw r3, 4(r31)
/* 8034A3C0 00347320  98 01 00 08 */	stb r0, 8(r1)
lbl_8034A3C4:
/* 8034A3C4 00347324  88 01 00 08 */	lbz r0, 8(r1)
/* 8034A3C8 00347328  28 00 00 00 */	cmplwi r0, 0
/* 8034A3CC 0034732C  41 82 00 0C */	beq lbl_8034A3D8
/* 8034A3D0 00347330  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8034A3D4 00347334  4B FC B5 5D */	bl Free__7CMemoryFPCv
lbl_8034A3D8:
/* 8034A3D8 00347338  38 00 00 00 */	li r0, 0
/* 8034A3DC 0034733C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8034A3E0 00347340  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034A3E4 00347344  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034A3E8 00347348  7C 08 03 A6 */	mtlr r0
/* 8034A3EC 0034734C  38 21 00 20 */	addi r1, r1, 0x20
/* 8034A3F0 00347350  4E 80 00 20 */	blr

.global __ct__15CAudioGrpSetLocFR12CInputStream
__ct__15CAudioGrpSetLocFR12CInputStream:
/* 8034A3F4 00347354  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8034A3F8 00347358  7C 08 02 A6 */	mflr r0
/* 8034A3FC 0034735C  38 C0 00 00 */	li r6, 0
/* 8034A400 00347360  90 01 00 94 */	stw r0, 0x94(r1)
/* 8034A404 00347364  38 0D A9 18 */	addi r0, r13, "mNull__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 8034A408 00347368  BE E1 00 6C */	stmw r23, 0x6c(r1)
/* 8034A40C 0034736C  7C 78 1B 78 */	mr r24, r3
/* 8034A410 00347370  7C 9A 23 78 */	mr r26, r4
/* 8034A414 00347374  38 61 00 40 */	addi r3, r1, 0x40
/* 8034A418 00347378  98 C4 00 00 */	stb r6, 0(r4)
/* 8034A41C 0034737C  80 E4 00 04 */	lwz r7, 4(r4)
/* 8034A420 00347380  7C 87 00 D0 */	neg r4, r7
/* 8034A424 00347384  7C 84 3B 78 */	or r4, r4, r7
/* 8034A428 00347388  54 84 0F FE */	srwi r4, r4, 0x1f
/* 8034A42C 0034738C  98 98 00 00 */	stb r4, 0(r24)
/* 8034A430 00347390  90 F8 00 04 */	stw r7, 4(r24)
/* 8034A434 00347394  98 D8 00 08 */	stb r6, 8(r24)
/* 8034A438 00347398  90 D8 00 0C */	stw r6, 0xc(r24)
/* 8034A43C 0034739C  90 18 00 10 */	stw r0, 0x10(r24)
/* 8034A440 003473A0  90 D8 00 14 */	stw r6, 0x14(r24)
/* 8034A444 003473A4  90 D8 00 18 */	stw r6, 0x18(r24)
/* 8034A448 003473A8  90 18 00 20 */	stw r0, 0x20(r24)
/* 8034A44C 003473AC  90 D8 00 24 */	stw r6, 0x24(r24)
/* 8034A450 003473B0  90 D8 00 28 */	stw r6, 0x28(r24)
/* 8034A454 003473B4  90 D8 00 30 */	stw r6, 0x30(r24)
/* 8034A458 003473B8  90 D8 00 34 */	stw r6, 0x34(r24)
/* 8034A45C 003473BC  90 D8 00 38 */	stw r6, 0x38(r24)
/* 8034A460 003473C0  90 D8 00 3C */	stw r6, 0x3c(r24)
/* 8034A464 003473C4  90 D8 00 40 */	stw r6, 0x40(r24)
/* 8034A468 003473C8  80 9A 00 04 */	lwz r4, 4(r26)
/* 8034A46C 003473CC  4B FF 4D 61 */	bl __ct__15CMemoryInStreamFPCvUl
/* 8034A470 003473D0  38 61 00 30 */	addi r3, r1, 0x30
/* 8034A474 003473D4  38 81 00 40 */	addi r4, r1, 0x40
/* 8034A478 003473D8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8034A47C 003473DC  4B FF 3E 7D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 8034A480 003473E0  38 78 00 10 */	addi r3, r24, 0x10
/* 8034A484 003473E4  38 81 00 30 */	addi r4, r1, 0x30
/* 8034A488 003473E8  4B FF 38 D5 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8034A48C 003473EC  38 61 00 30 */	addi r3, r1, 0x30
/* 8034A490 003473F0  4B FF 36 51 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8034A494 003473F4  38 61 00 20 */	addi r3, r1, 0x20
/* 8034A498 003473F8  38 81 00 40 */	addi r4, r1, 0x40
/* 8034A49C 003473FC  38 A1 00 08 */	addi r5, r1, 8
/* 8034A4A0 00347400  4B FF 3E 59 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 8034A4A4 00347404  38 78 00 20 */	addi r3, r24, 0x20
/* 8034A4A8 00347408  38 81 00 20 */	addi r4, r1, 0x20
/* 8034A4AC 0034740C  4B FF 38 B1 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8034A4B0 00347410  38 61 00 20 */	addi r3, r1, 0x20
/* 8034A4B4 00347414  4B FF 36 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8034A4B8 00347418  38 61 00 40 */	addi r3, r1, 0x40
/* 8034A4BC 0034741C  4B FF 47 C9 */	bl ReadLong__12CInputStreamFv
/* 8034A4C0 00347420  3C 80 80 3F */	lis r4, __vt__15CMemoryInStream@ha
/* 8034A4C4 00347424  7C 7F 1B 78 */	mr r31, r3
/* 8034A4C8 00347428  38 04 E3 98 */	addi r0, r4, __vt__15CMemoryInStream@l
/* 8034A4CC 0034742C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8034A4D0 00347430  90 01 00 40 */	stw r0, 0x40(r1)
/* 8034A4D4 00347434  38 61 00 40 */	addi r3, r1, 0x40
/* 8034A4D8 00347438  38 80 00 00 */	li r4, 0
/* 8034A4DC 0034743C  4B FF 4B D1 */	bl __dt__12CInputStreamFv
/* 8034A4E0 00347440  48 00 03 35 */	bl sub_8034a814
/* 8034A4E4 00347444  80 7A 00 04 */	lwz r3, 4(r26)
/* 8034A4E8 00347448  7F 9E FA 14 */	add r28, r30, r31
/* 8034A4EC 0034744C  7F A3 E0 2E */	lwzx r29, r3, r28
/* 8034A4F0 00347450  48 00 03 25 */	bl sub_8034a814
/* 8034A4F4 00347454  7F 7C EA 14 */	add r27, r28, r29
/* 8034A4F8 00347458  80 7A 00 04 */	lwz r3, 4(r26)
/* 8034A4FC 0034745C  3B 7B 00 04 */	addi r27, r27, 4
/* 8034A500 00347460  7E E3 D8 2E */	lwzx r23, r3, r27
/* 8034A504 00347464  48 00 03 11 */	bl sub_8034a814
/* 8034A508 00347468  92 F8 00 30 */	stw r23, 0x30(r24)
/* 8034A50C 0034746C  7F 3B BA 14 */	add r25, r27, r23
/* 8034A510 00347470  3B 39 00 04 */	addi r25, r25, 4
/* 8034A514 00347474  80 7A 00 04 */	lwz r3, 4(r26)
/* 8034A518 00347478  7F 43 C8 2E */	lwzx r26, r3, r25
/* 8034A51C 0034747C  48 00 02 F9 */	bl sub_8034a814
/* 8034A520 00347480  3C 60 80 3E */	lis r3, lbl_803D8108@ha
/* 8034A524 00347484  3C 80 80 3D */	lis r4, kUnknownType__10CCallStack@ha
/* 8034A528 00347488  38 A3 81 08 */	addi r5, r3, lbl_803D8108@l
/* 8034A52C 0034748C  38 C4 6A A8 */	addi r6, r4, kUnknownType__10CCallStack@l
/* 8034A530 00347490  38 61 00 18 */	addi r3, r1, 0x18
/* 8034A534 00347494  38 80 FF FF */	li r4, -1
/* 8034A538 00347498  4B F8 BE 9D */	bl __ct__10CCallStackFUiPCcPCc
/* 8034A53C 0034749C  7C 9D D2 14 */	add r4, r29, r26
/* 8034A540 003474A0  7C 67 1B 78 */	mr r7, r3
/* 8034A544 003474A4  38 64 00 08 */	addi r3, r4, 8
/* 8034A548 003474A8  38 A0 00 01 */	li r5, 1
/* 8034A54C 003474AC  38 80 00 02 */	li r4, 2
/* 8034A550 003474B0  38 C0 00 00 */	li r6, 0
/* 8034A554 003474B4  7C 7F 1A 14 */	add r3, r31, r3
/* 8034A558 003474B8  4B FC B4 3D */	bl Alloc__7CMemoryFUlQ210IAllocator5EHintQ210IAllocator6EScopeQ210IAllocator5ETypeRC10CCallStack
/* 8034A55C 003474BC  7C 83 00 D0 */	neg r4, r3
/* 8034A560 003474C0  38 01 00 10 */	addi r0, r1, 0x10
/* 8034A564 003474C4  7C 84 1B 78 */	or r4, r4, r3
/* 8034A568 003474C8  38 B8 00 08 */	addi r5, r24, 8
/* 8034A56C 003474CC  54 84 0F FE */	srwi r4, r4, 0x1f
/* 8034A570 003474D0  90 61 00 14 */	stw r3, 0x14(r1)
/* 8034A574 003474D4  7C 00 28 40 */	cmplw r0, r5
/* 8034A578 003474D8  98 81 00 10 */	stb r4, 0x10(r1)
/* 8034A57C 003474DC  41 82 00 30 */	beq lbl_8034A5AC
/* 8034A580 003474E0  88 05 00 00 */	lbz r0, 0(r5)
/* 8034A584 003474E4  28 00 00 00 */	cmplwi r0, 0
/* 8034A588 003474E8  41 82 00 0C */	beq lbl_8034A594
/* 8034A58C 003474EC  80 78 00 0C */	lwz r3, 0xc(r24)
/* 8034A590 003474F0  4B FC B3 A1 */	bl Free__7CMemoryFPCv
lbl_8034A594:
/* 8034A594 003474F4  88 61 00 10 */	lbz r3, 0x10(r1)
/* 8034A598 003474F8  38 00 00 00 */	li r0, 0
/* 8034A59C 003474FC  98 78 00 08 */	stb r3, 8(r24)
/* 8034A5A0 00347500  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8034A5A4 00347504  90 78 00 0C */	stw r3, 0xc(r24)
/* 8034A5A8 00347508  98 01 00 10 */	stb r0, 0x10(r1)
lbl_8034A5AC:
/* 8034A5AC 0034750C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8034A5B0 00347510  28 00 00 00 */	cmplwi r0, 0
/* 8034A5B4 00347514  41 82 00 0C */	beq lbl_8034A5C0
/* 8034A5B8 00347518  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8034A5BC 0034751C  4B FC B3 75 */	bl Free__7CMemoryFPCv
lbl_8034A5C0:
/* 8034A5C0 00347520  82 F8 00 04 */	lwz r23, 4(r24)
/* 8034A5C4 00347524  7F E5 FB 78 */	mr r5, r31
/* 8034A5C8 00347528  80 18 00 0C */	lwz r0, 0xc(r24)
/* 8034A5CC 0034752C  7C 97 F2 14 */	add r4, r23, r30
/* 8034A5D0 00347530  90 18 00 34 */	stw r0, 0x34(r24)
/* 8034A5D4 00347534  80 78 00 34 */	lwz r3, 0x34(r24)
/* 8034A5D8 00347538  4B CB 8E B9 */	bl memcpy
/* 8034A5DC 0034753C  38 7F 00 03 */	addi r3, r31, 3
/* 8034A5E0 00347540  80 18 00 0C */	lwz r0, 0xc(r24)
/* 8034A5E4 00347544  54 7E 00 3A */	rlwinm r30, r3, 0, 0, 0x1d
/* 8034A5E8 00347548  7C 9C BA 14 */	add r4, r28, r23
/* 8034A5EC 0034754C  7C 00 F2 14 */	add r0, r0, r30
/* 8034A5F0 00347550  7F A5 EB 78 */	mr r5, r29
/* 8034A5F4 00347554  90 18 00 38 */	stw r0, 0x38(r24)
/* 8034A5F8 00347558  38 84 00 04 */	addi r4, r4, 4
/* 8034A5FC 0034755C  80 78 00 38 */	lwz r3, 0x38(r24)
/* 8034A600 00347560  4B CB 8E 91 */	bl memcpy
/* 8034A604 00347564  38 1D 00 03 */	addi r0, r29, 3
/* 8034A608 00347568  7C 99 BA 14 */	add r4, r25, r23
/* 8034A60C 0034756C  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 8034A610 00347570  80 18 00 0C */	lwz r0, 0xc(r24)
/* 8034A614 00347574  7C 7E 1A 14 */	add r3, r30, r3
/* 8034A618 00347578  7F 45 D3 78 */	mr r5, r26
/* 8034A61C 0034757C  7C 00 1A 14 */	add r0, r0, r3
/* 8034A620 00347580  38 84 00 04 */	addi r4, r4, 4
/* 8034A624 00347584  90 18 00 3C */	stw r0, 0x3c(r24)
/* 8034A628 00347588  80 78 00 3C */	lwz r3, 0x3c(r24)
/* 8034A62C 0034758C  4B CB 8E 65 */	bl memcpy
/* 8034A630 00347590  7C 9B BA 14 */	add r4, r27, r23
/* 8034A634 00347594  7F 03 C3 78 */	mr r3, r24
/* 8034A638 00347598  38 04 00 04 */	addi r0, r4, 4
/* 8034A63C 0034759C  90 18 00 40 */	stw r0, 0x40(r24)
/* 8034A640 003475A0  BA E1 00 6C */	lmw r23, 0x6c(r1)
/* 8034A644 003475A4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8034A648 003475A8  7C 08 03 A6 */	mtlr r0
/* 8034A64C 003475AC  38 21 00 90 */	addi r1, r1, 0x90
/* 8034A650 003475B0  4E 80 00 20 */	blr

.global FreeSampleBuffer__14CAudioGroupSetFv
FreeSampleBuffer__14CAudioGroupSetFv:
/* 8034A654 003475B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034A658 003475B8  7C 08 02 A6 */	mflr r0
/* 8034A65C 003475BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034A660 003475C0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8034A664 003475C4  4B FF FD 09 */	bl sub_8034a36c
/* 8034A668 003475C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034A66C 003475CC  7C 08 03 A6 */	mtlr r0
/* 8034A670 003475D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8034A674 003475D4  4E 80 00 20 */	blr

.global Reload__14CAudioGroupSetFv
Reload__14CAudioGroupSetFv:
/* 8034A678 003475D8  4E 80 00 20 */	blr

.global __dt__14CAudioGroupSetFv
__dt__14CAudioGroupSetFv:
/* 8034A67C 003475DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034A680 003475E0  7C 08 02 A6 */	mflr r0
/* 8034A684 003475E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034A688 003475E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034A68C 003475EC  7C 9F 23 78 */	mr r31, r4
/* 8034A690 003475F0  93 C1 00 08 */	stw r30, 8(r1)
/* 8034A694 003475F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8034A698 003475F8  41 82 00 68 */	beq lbl_8034A700
/* 8034A69C 003475FC  34 1E 00 20 */	addic. r0, r30, 0x20
/* 8034A6A0 00347600  41 82 00 30 */	beq lbl_8034A6D0
/* 8034A6A4 00347604  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 8034A6A8 00347608  28 00 00 00 */	cmplwi r0, 0
/* 8034A6AC 0034760C  41 82 00 1C */	beq lbl_8034A6C8
/* 8034A6B0 00347610  34 7E 00 20 */	addic. r3, r30, 0x20
/* 8034A6B4 00347614  41 82 00 14 */	beq lbl_8034A6C8
/* 8034A6B8 00347618  28 03 00 00 */	cmplwi r3, 0
/* 8034A6BC 0034761C  41 82 00 0C */	beq lbl_8034A6C8
/* 8034A6C0 00347620  38 80 00 00 */	li r4, 0
/* 8034A6C4 00347624  4B FF 67 7D */	bl __dt__6CTokenFv
lbl_8034A6C8:
/* 8034A6C8 00347628  38 00 00 00 */	li r0, 0
/* 8034A6CC 0034762C  98 1E 00 2C */	stb r0, 0x2c(r30)
lbl_8034A6D0:
/* 8034A6D0 00347630  34 1E 00 10 */	addic. r0, r30, 0x10
/* 8034A6D4 00347634  41 82 00 0C */	beq lbl_8034A6E0
/* 8034A6D8 00347638  38 7E 00 10 */	addi r3, r30, 0x10
/* 8034A6DC 0034763C  4B FF 34 05 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8034A6E0:
/* 8034A6E0 00347640  28 1E 00 00 */	cmplwi r30, 0
/* 8034A6E4 00347644  41 82 00 0C */	beq lbl_8034A6F0
/* 8034A6E8 00347648  7F C3 F3 78 */	mr r3, r30
/* 8034A6EC 0034764C  4B FF 33 F5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8034A6F0:
/* 8034A6F0 00347650  7F E0 07 35 */	extsh. r0, r31
/* 8034A6F4 00347654  40 81 00 0C */	ble lbl_8034A700
/* 8034A6F8 00347658  7F C3 F3 78 */	mr r3, r30
/* 8034A6FC 0034765C  4B FC B2 35 */	bl Free__7CMemoryFPCv
lbl_8034A700:
/* 8034A700 00347660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034A704 00347664  7F C3 F3 78 */	mr r3, r30
/* 8034A708 00347668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034A70C 0034766C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034A710 00347670  7C 08 03 A6 */	mtlr r0
/* 8034A714 00347674  38 21 00 10 */	addi r1, r1, 0x10
/* 8034A718 00347678  4E 80 00 20 */	blr

.global "__ct__14CAudioGroupSetFRC31TLockedToken<15CAudioGrpSetLoc>"
"__ct__14CAudioGroupSetFRC31TLockedToken<15CAudioGrpSetLoc>":
/* 8034A71C 0034767C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034A720 00347680  7C 08 02 A6 */	mflr r0
/* 8034A724 00347684  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034A728 00347688  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034A72C 0034768C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034A730 00347690  7C 9E 23 78 */	mr r30, r4
/* 8034A734 00347694  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034A738 00347698  7C 7D 1B 78 */	mr r29, r3
/* 8034A73C 0034769C  80 84 00 08 */	lwz r4, 8(r4)
/* 8034A740 003476A0  38 84 00 10 */	addi r4, r4, 0x10
/* 8034A744 003476A4  4B FF 3A 1D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8034A748 003476A8  80 9E 00 08 */	lwz r4, 8(r30)
/* 8034A74C 003476AC  38 7D 00 10 */	addi r3, r29, 0x10
/* 8034A750 003476B0  38 84 00 20 */	addi r4, r4, 0x20
/* 8034A754 003476B4  4B FF 3A 0D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8034A758 003476B8  38 00 00 01 */	li r0, 1
/* 8034A75C 003476BC  37 FD 00 20 */	addic. r31, r29, 0x20
/* 8034A760 003476C0  98 1D 00 2C */	stb r0, 0x2c(r29)
/* 8034A764 003476C4  41 82 00 20 */	beq lbl_8034A784
/* 8034A768 003476C8  7F E3 FB 78 */	mr r3, r31
/* 8034A76C 003476CC  7F C4 F3 78 */	mr r4, r30
/* 8034A770 003476D0  4B FF 67 39 */	bl __ct__6CTokenFRC6CToken
/* 8034A774 003476D4  80 1E 00 08 */	lwz r0, 8(r30)
/* 8034A778 003476D8  7F E3 FB 78 */	mr r3, r31
/* 8034A77C 003476DC  90 1F 00 08 */	stw r0, 8(r31)
/* 8034A780 003476E0  4B FF 66 05 */	bl Lock__6CTokenFv
lbl_8034A784:
/* 8034A784 003476E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034A788 003476E8  7F A3 EB 78 */	mr r3, r29
/* 8034A78C 003476EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034A790 003476F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034A794 003476F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034A798 003476F8  7C 08 03 A6 */	mtlr r0
/* 8034A79C 003476FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8034A7A0 00347700  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D8108
lbl_803D8108:
	# ROM: 0x3D5108
	.asciz "??(??)"
	.balign 4

.global lbl_803D8110
lbl_803D8110:
	# ROM: 0x3D5110
	.4byte 0x00000002
	.4byte 0x00080012
	.4byte 0x00200032
	.4byte 0x00490063
	.4byte 0x008200A4
	.4byte 0x00CB00F5
	.4byte 0x01240157
	.4byte 0x018E01C9
	.4byte 0x0208024B
	.4byte 0x029202DD
	.4byte 0x032C037F
	.4byte 0x03D70432
	.4byte 0x049204F5
	.4byte 0x055D05C9
	.4byte 0x063806AC
	.4byte 0x072407A0
	.4byte 0x082008A4
	.4byte 0x092C09B8
	.4byte 0x0A480ADD
	.4byte 0x0B750C12
	.4byte 0x0CB20D57
	.4byte 0x0DFF0EAC
	.4byte 0x0F5D1012
	.4byte 0x10CA1187
	.4byte 0x1248130D
	.4byte 0x13D714A4
	.4byte 0x1575164A
	.4byte 0x17241801
	.4byte 0x18E319C8
	.4byte 0x1AB21BA0
	.4byte 0x1C911D87
	.4byte 0x1E811F7F
	.4byte 0x20812187
	.4byte 0x2291239F
	.4byte 0x24B225C8
	.4byte 0x26E22801
	.4byte 0x29232A4A
	.4byte 0x2B752CA3
	.4byte 0x2DD62F0D
	.4byte 0x30483187
	.4byte 0x32CA3411
	.4byte 0x355C36AB
	.4byte 0x37FF3956
	.4byte 0x3AB13C11
	.4byte 0x3D743EDC
	.4byte 0x404841B7
	.4byte 0x432B44A3
	.4byte 0x461F479F
	.4byte 0x49234AAB
	.4byte 0x4C374DC7
	.4byte 0x4F5C50F4
	.4byte 0x52905431
	.4byte 0x55D6577E
	.4byte 0x592B5ADC
	.4byte 0x5C905E49
	.4byte 0x600661C7
	.4byte 0x638C6555
	.4byte 0x672268F4
	.4byte 0x6AC96CA2
	.4byte 0x6E807061
	.4byte 0x72477430
	.4byte 0x761E7810
	.4byte 0x7A067C00
	.4byte 0x7DFE8000
