.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __ct__11CHealthInfoFR12CInputStream
__ct__11CHealthInfoFR12CInputStream:
/* 801D3844 001D07A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D3848 001D07A8  7C 08 02 A6 */	mflr r0
/* 801D384C 001D07AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D3850 001D07B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D3854 001D07B4  7C 9F 23 78 */	mr r31, r4
/* 801D3858 001D07B8  93 C1 00 08 */	stw r30, 8(r1)
/* 801D385C 001D07BC  7C 7E 1B 78 */	mr r30, r3
/* 801D3860 001D07C0  7F E3 FB 78 */	mr r3, r31
/* 801D3864 001D07C4  48 16 B4 21 */	bl ReadLong__12CInputStreamFv
/* 801D3868 001D07C8  7F E3 FB 78 */	mr r3, r31
/* 801D386C 001D07CC  48 16 B3 BD */	bl ReadFloat__12CInputStreamFv
/* 801D3870 001D07D0  D0 3E 00 00 */	stfs f1, 0(r30)
/* 801D3874 001D07D4  7F E3 FB 78 */	mr r3, r31
/* 801D3878 001D07D8  48 16 B3 B1 */	bl ReadFloat__12CInputStreamFv
/* 801D387C 001D07DC  D0 3E 00 04 */	stfs f1, 4(r30)
/* 801D3880 001D07E0  7F C3 F3 78 */	mr r3, r30
/* 801D3884 001D07E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D3888 001D07E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D388C 001D07EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D3890 001D07F0  7C 08 03 A6 */	mtlr r0
/* 801D3894 001D07F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801D3898 001D07F8  4E 80 00 20 */	blr
