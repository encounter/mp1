.include "macros.inc"

.section .text, "ax"

.global HasCorrectParameterCount__14CPatternedInfoFR12CInputStream
HasCorrectParameterCount__14CPatternedInfoFR12CInputStream:
/* 80105828 00102788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010582C 0010278C  7C 08 02 A6 */	mflr r0
/* 80105830 00102790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80105834 00102794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80105838 00102798  7C 7F 1B 78 */	mr r31, r3
/* 8010583C 0010279C  7C 83 23 78 */	mr r3, r4
/* 80105840 001027A0  48 23 94 45 */	bl ReadLong__12CInputStreamFv
/* 80105844 001027A4  28 03 00 23 */	cmplwi r3, 0x23
/* 80105848 001027A8  38 00 00 00 */	li r0, 0
/* 8010584C 001027AC  41 80 00 10 */	blt lbl_8010585C
/* 80105850 001027B0  28 03 00 26 */	cmplwi r3, 0x26
/* 80105854 001027B4  41 81 00 08 */	bgt lbl_8010585C
/* 80105858 001027B8  38 00 00 01 */	li r0, 1
lbl_8010585C:
/* 8010585C 001027BC  98 1F 00 00 */	stb r0, 0(r31)
/* 80105860 001027C0  90 7F 00 04 */	stw r3, 4(r31)
/* 80105864 001027C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80105868 001027C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010586C 001027CC  7C 08 03 A6 */	mtlr r0
/* 80105870 001027D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80105874 001027D4  4E 80 00 20 */	blr 

.global __ct__14CPatternedInfoFR12CInputStreamUi
__ct__14CPatternedInfoFR12CInputStreamUi:
/* 80105878 001027D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010587C 001027DC  7C 08 02 A6 */	mflr r0
/* 80105880 001027E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80105884 001027E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80105888 001027E8  7C BF 2B 78 */	mr r31, r5
/* 8010588C 001027EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80105890 001027F0  7C 9E 23 78 */	mr r30, r4
/* 80105894 001027F4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80105898 001027F8  7C 7D 1B 78 */	mr r29, r3
/* 8010589C 001027FC  7F C3 F3 78 */	mr r3, r30
/* 801058A0 00102800  48 23 93 89 */	bl ReadFloat__12CInputStreamFv
/* 801058A4 00102804  D0 3D 00 00 */	stfs f1, 0(r29)
/* 801058A8 00102808  7F C3 F3 78 */	mr r3, r30
/* 801058AC 0010280C  48 23 93 7D */	bl ReadFloat__12CInputStreamFv
/* 801058B0 00102810  D0 3D 00 04 */	stfs f1, 4(r29)
/* 801058B4 00102814  7F C3 F3 78 */	mr r3, r30
/* 801058B8 00102818  48 23 93 71 */	bl ReadFloat__12CInputStreamFv
/* 801058BC 0010281C  D0 3D 00 08 */	stfs f1, 8(r29)
/* 801058C0 00102820  7F C3 F3 78 */	mr r3, r30
/* 801058C4 00102824  48 23 93 65 */	bl ReadFloat__12CInputStreamFv
/* 801058C8 00102828  D0 3D 00 0C */	stfs f1, 0xc(r29)
/* 801058CC 0010282C  7F C3 F3 78 */	mr r3, r30
/* 801058D0 00102830  48 23 93 59 */	bl ReadFloat__12CInputStreamFv
/* 801058D4 00102834  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 801058D8 00102838  7F C3 F3 78 */	mr r3, r30
/* 801058DC 0010283C  48 23 93 4D */	bl ReadFloat__12CInputStreamFv
/* 801058E0 00102840  D0 3D 00 14 */	stfs f1, 0x14(r29)
/* 801058E4 00102844  7F C3 F3 78 */	mr r3, r30
/* 801058E8 00102848  48 23 93 41 */	bl ReadFloat__12CInputStreamFv
/* 801058EC 0010284C  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 801058F0 00102850  7F C3 F3 78 */	mr r3, r30
/* 801058F4 00102854  48 23 93 35 */	bl ReadFloat__12CInputStreamFv
/* 801058F8 00102858  D0 3D 00 1C */	stfs f1, 0x1c(r29)
/* 801058FC 0010285C  7F C3 F3 78 */	mr r3, r30
/* 80105900 00102860  48 23 93 29 */	bl ReadFloat__12CInputStreamFv
/* 80105904 00102864  D0 3D 00 20 */	stfs f1, 0x20(r29)
/* 80105908 00102868  7F C3 F3 78 */	mr r3, r30
/* 8010590C 0010286C  48 23 93 1D */	bl ReadFloat__12CInputStreamFv
/* 80105910 00102870  D0 3D 00 24 */	stfs f1, 0x24(r29)
/* 80105914 00102874  7F C3 F3 78 */	mr r3, r30
/* 80105918 00102878  48 23 93 11 */	bl ReadFloat__12CInputStreamFv
/* 8010591C 0010287C  D0 3D 00 28 */	stfs f1, 0x28(r29)
/* 80105920 00102880  7F C3 F3 78 */	mr r3, r30
/* 80105924 00102884  48 23 93 05 */	bl ReadFloat__12CInputStreamFv
/* 80105928 00102888  D0 3D 00 2C */	stfs f1, 0x2c(r29)
/* 8010592C 0010288C  7F C3 F3 78 */	mr r3, r30
/* 80105930 00102890  48 23 92 F9 */	bl ReadFloat__12CInputStreamFv
/* 80105934 00102894  D0 3D 00 30 */	stfs f1, 0x30(r29)
/* 80105938 00102898  7F C4 F3 78 */	mr r4, r30
/* 8010593C 0010289C  38 7D 00 34 */	addi r3, r29, 0x34
/* 80105940 001028A0  4B FB DC 21 */	bl __ct__11CDamageInfoFR12CInputStream
/* 80105944 001028A4  7F C3 F3 78 */	mr r3, r30
/* 80105948 001028A8  48 23 92 E1 */	bl ReadFloat__12CInputStreamFv
/* 8010594C 001028AC  D0 3D 00 50 */	stfs f1, 0x50(r29)
/* 80105950 001028B0  7F C4 F3 78 */	mr r4, r30
/* 80105954 001028B4  38 7D 00 54 */	addi r3, r29, 0x54
/* 80105958 001028B8  48 0C DE ED */	bl __ct__11CHealthInfoFR12CInputStream
/* 8010595C 001028BC  7F C4 F3 78 */	mr r4, r30
/* 80105960 001028C0  38 7D 00 5C */	addi r3, r29, 0x5c
/* 80105964 001028C4  4B FF D1 F5 */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 80105968 001028C8  7F C3 F3 78 */	mr r3, r30
/* 8010596C 001028CC  48 23 92 BD */	bl ReadFloat__12CInputStreamFv
/* 80105970 001028D0  D0 3D 00 C4 */	stfs f1, 0xc4(r29)
/* 80105974 001028D4  7F C3 F3 78 */	mr r3, r30
/* 80105978 001028D8  48 23 92 B1 */	bl ReadFloat__12CInputStreamFv
/* 8010597C 001028DC  D0 3D 00 C8 */	stfs f1, 0xc8(r29)
/* 80105980 001028E0  7F C4 F3 78 */	mr r4, r30
/* 80105984 001028E4  38 7D 00 CC */	addi r3, r29, 0xcc
/* 80105988 001028E8  48 20 F2 05 */	bl __ct__9CVector3fFR12CInputStream
/* 8010598C 001028EC  7F C3 F3 78 */	mr r3, r30
/* 80105990 001028F0  48 23 92 99 */	bl ReadFloat__12CInputStreamFv
/* 80105994 001028F4  D0 3D 00 D8 */	stfs f1, 0xd8(r29)
/* 80105998 001028F8  7F C3 F3 78 */	mr r3, r30
/* 8010599C 001028FC  48 23 92 8D */	bl ReadFloat__12CInputStreamFv
/* 801059A0 00102900  D0 3D 00 DC */	stfs f1, 0xdc(r29)
/* 801059A4 00102904  7F C3 F3 78 */	mr r3, r30
/* 801059A8 00102908  48 23 92 81 */	bl ReadFloat__12CInputStreamFv
/* 801059AC 0010290C  D0 3D 00 E0 */	stfs f1, 0xe0(r29)
/* 801059B0 00102910  7F C3 F3 78 */	mr r3, r30
/* 801059B4 00102914  48 23 92 75 */	bl ReadFloat__12CInputStreamFv
/* 801059B8 00102918  D0 3D 00 E4 */	stfs f1, 0xe4(r29)
/* 801059BC 0010291C  7F C3 F3 78 */	mr r3, r30
/* 801059C0 00102920  48 23 92 C5 */	bl ReadLong__12CInputStreamFv
/* 801059C4 00102924  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 801059C8 00102928  48 1E 2F E9 */	bl TranslateSFXID__11CSfxManagerFUs
/* 801059CC 0010292C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801059D0 00102930  7F C3 F3 78 */	mr r3, r30
/* 801059D4 00102934  90 1D 00 E8 */	stw r0, 0xe8(r29)
/* 801059D8 00102938  48 23 92 AD */	bl ReadLong__12CInputStreamFv
/* 801059DC 0010293C  90 7D 00 EC */	stw r3, 0xec(r29)
/* 801059E0 00102940  7F C3 F3 78 */	mr r3, r30
/* 801059E4 00102944  48 23 92 A1 */	bl ReadLong__12CInputStreamFv
/* 801059E8 00102948  90 7D 00 F0 */	stw r3, 0xf0(r29)
/* 801059EC 0010294C  7F C3 F3 78 */	mr r3, r30
/* 801059F0 00102950  48 23 92 95 */	bl ReadLong__12CInputStreamFv
/* 801059F4 00102954  90 7D 00 F4 */	stw r3, 0xf4(r29)
/* 801059F8 00102958  7F C3 F3 78 */	mr r3, r30
/* 801059FC 0010295C  48 23 92 E1 */	bl ReadBool__12CInputStreamFv
/* 80105A00 00102960  98 7D 00 F8 */	stb r3, 0xf8(r29)
/* 80105A04 00102964  7F C3 F3 78 */	mr r3, r30
/* 80105A08 00102968  48 23 92 7D */	bl ReadLong__12CInputStreamFv
/* 80105A0C 0010296C  90 7D 00 FC */	stw r3, 0xfc(r29)
/* 80105A10 00102970  7F C3 F3 78 */	mr r3, r30
/* 80105A14 00102974  48 23 92 15 */	bl ReadFloat__12CInputStreamFv
/* 80105A18 00102978  D0 3D 01 00 */	stfs f1, 0x100(r29)
/* 80105A1C 0010297C  7F C3 F3 78 */	mr r3, r30
/* 80105A20 00102980  48 23 92 09 */	bl ReadFloat__12CInputStreamFv
/* 80105A24 00102984  D0 3D 01 04 */	stfs f1, 0x104(r29)
/* 80105A28 00102988  7F C3 F3 78 */	mr r3, r30
/* 80105A2C 0010298C  48 23 91 FD */	bl ReadFloat__12CInputStreamFv
/* 80105A30 00102990  D0 3D 01 08 */	stfs f1, 0x108(r29)
/* 80105A34 00102994  7F C3 F3 78 */	mr r3, r30
/* 80105A38 00102998  48 23 92 4D */	bl ReadLong__12CInputStreamFv
/* 80105A3C 0010299C  90 7D 01 0C */	stw r3, 0x10c(r29)
/* 80105A40 001029A0  7F C4 F3 78 */	mr r4, r30
/* 80105A44 001029A4  38 7D 01 10 */	addi r3, r29, 0x110
/* 80105A48 001029A8  48 20 F1 45 */	bl __ct__9CVector3fFR12CInputStream
/* 80105A4C 001029AC  7F C3 F3 78 */	mr r3, r30
/* 80105A50 001029B0  48 23 92 35 */	bl ReadLong__12CInputStreamFv
/* 80105A54 001029B4  90 7D 01 1C */	stw r3, 0x11c(r29)
/* 80105A58 001029B8  7F C3 F3 78 */	mr r3, r30
/* 80105A5C 001029BC  48 23 92 29 */	bl ReadLong__12CInputStreamFv
/* 80105A60 001029C0  28 1F 00 24 */	cmplwi r31, 0x24
/* 80105A64 001029C4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80105A68 001029C8  41 80 00 14 */	blt lbl_80105A7C
/* 80105A6C 001029CC  7F C4 F3 78 */	mr r4, r30
/* 80105A70 001029D0  38 61 00 08 */	addi r3, r1, 8
/* 80105A74 001029D4  48 20 F1 19 */	bl __ct__9CVector3fFR12CInputStream
/* 80105A78 001029D8  48 00 00 0C */	b lbl_80105A84
lbl_80105A7C:
/* 80105A7C 001029DC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80105A80 001029E0  38 63 66 A0 */	addi r3, r3, skZero3f@l
lbl_80105A84:
/* 80105A84 001029E4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80105A88 001029E8  28 1F 00 25 */	cmplwi r31, 0x25
/* 80105A8C 001029EC  D0 1D 01 24 */	stfs f0, 0x124(r29)
/* 80105A90 001029F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80105A94 001029F4  D0 1D 01 28 */	stfs f0, 0x128(r29)
/* 80105A98 001029F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80105A9C 001029FC  D0 1D 01 2C */	stfs f0, 0x12c(r29)
/* 80105AA0 00102A00  41 80 00 10 */	blt lbl_80105AB0
/* 80105AA4 00102A04  7F C3 F3 78 */	mr r3, r30
/* 80105AA8 00102A08  48 23 91 DD */	bl ReadLong__12CInputStreamFv
/* 80105AAC 00102A0C  48 00 00 08 */	b lbl_80105AB4
lbl_80105AB0:
/* 80105AB0 00102A10  38 60 FF FF */	li r3, -1
lbl_80105AB4:
/* 80105AB4 00102A14  28 1F 00 26 */	cmplwi r31, 0x26
/* 80105AB8 00102A18  90 7D 01 30 */	stw r3, 0x130(r29)
/* 80105ABC 00102A1C  41 80 00 18 */	blt lbl_80105AD4
/* 80105AC0 00102A20  7F C3 F3 78 */	mr r3, r30
/* 80105AC4 00102A24  48 23 91 C1 */	bl ReadLong__12CInputStreamFv
/* 80105AC8 00102A28  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80105ACC 00102A2C  48 1E 2E E5 */	bl TranslateSFXID__11CSfxManagerFUs
/* 80105AD0 00102A30  48 00 00 08 */	b lbl_80105AD8
lbl_80105AD4:
/* 80105AD4 00102A34  A0 62 C5 FC */	lhz r3, lbl_805AE31C@sda21(r2)
lbl_80105AD8:
/* 80105AD8 00102A38  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80105ADC 00102A3C  7F A3 EB 78 */	mr r3, r29
/* 80105AE0 00102A40  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80105AE4 00102A44  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80105AE8 00102A48  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80105AEC 00102A4C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80105AF0 00102A50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80105AF4 00102A54  7C 08 03 A6 */	mtlr r0
/* 80105AF8 00102A58  38 21 00 30 */	addi r1, r1, 0x30
/* 80105AFC 00102A5C  4E 80 00 20 */	blr
