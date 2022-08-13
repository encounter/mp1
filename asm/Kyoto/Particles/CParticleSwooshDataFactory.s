.include "macros.inc"

.section .data
.balign 8

.global lbl_803EDDF8
lbl_803EDDF8:
	# ROM: 0x3EADF8
	.4byte 0
	.4byte 0
	.4byte "__dt__46TObjOwnerDerivedFromIObj<18CSwooshDescription>Fv"
	.4byte 0

.section .text, "ax"

.global CreateWPSM__26CParticleSwooshDataFactoryFP18CSwooshDescriptionR12CInputStreamP11CSimplePool
CreateWPSM__26CParticleSwooshDataFactoryFP18CSwooshDescriptionR12CInputStreamP11CSimplePool:
/* 8032F964 0032C8C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032F968 0032C8C8  7C 08 02 A6 */	mflr r0
/* 8032F96C 0032C8CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032F970 0032C8D0  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8032F974 0032C8D4  7C 7B 1B 78 */	mr r27, r3
/* 8032F978 0032C8D8  7C 9C 23 78 */	mr r28, r4
/* 8032F97C 0032C8DC  7C BD 2B 78 */	mr r29, r5
/* 8032F980 0032C8E0  38 61 00 08 */	addi r3, r1, 8
/* 8032F984 0032C8E4  3B C0 00 00 */	li r30, 0
/* 8032F988 0032C8E8  38 80 00 63 */	li r4, 0x63
/* 8032F98C 0032C8EC  4B FE 2C 61 */	bl __ct__9CRandom16FUi
/* 8032F990 0032C8F0  38 61 00 0C */	addi r3, r1, 0xc
/* 8032F994 0032C8F4  38 81 00 08 */	addi r4, r1, 8
/* 8032F998 0032C8F8  4B FE 2C E9 */	bl __ct__13CGlobalRandomFR9CRandom16
/* 8032F99C 0032C8FC  48 00 04 70 */	b lbl_8032FE0C
lbl_8032F9A0:
/* 8032F9A0 0032C900  7F 83 E3 78 */	mr r3, r28
/* 8032F9A4 0032C904  4B FF 8A B9 */	bl GetClassID__20CParticleDataFactoryFR12CInputStream
/* 8032F9A8 0032C908  7C 03 F8 00 */	cmpw r3, r31
/* 8032F9AC 0032C90C  41 82 02 58 */	beq lbl_8032FC04
/* 8032F9B0 0032C910  40 80 01 18 */	bge lbl_8032FAC8
/* 8032F9B4 0032C914  3C 80 4C 4C */	lis r4, 0x4C4C5244@ha
/* 8032F9B8 0032C918  38 04 52 44 */	addi r0, r4, 0x4C4C5244@l
/* 8032F9BC 0032C91C  7C 03 00 00 */	cmpw r3, r0
/* 8032F9C0 0032C920  41 82 02 54 */	beq lbl_8032FC14
/* 8032F9C4 0032C924  40 80 00 8C */	bge lbl_8032FA50
/* 8032F9C8 0032C928  3C A0 43 52 */	lis r5, 0x43524F53@ha
/* 8032F9CC 0032C92C  38 05 4F 53 */	addi r0, r5, 0x43524F53@l
/* 8032F9D0 0032C930  7C 03 00 00 */	cmpw r3, r0
/* 8032F9D4 0032C934  41 82 02 88 */	beq lbl_8032FC5C
/* 8032F9D8 0032C938  40 80 00 3C */	bge lbl_8032FA14
/* 8032F9DC 0032C93C  3C 80 43 4F */	lis r4, 0x434F4C52@ha
/* 8032F9E0 0032C940  38 04 4C 52 */	addi r0, r4, 0x434F4C52@l
/* 8032F9E4 0032C944  7C 03 00 00 */	cmpw r3, r0
/* 8032F9E8 0032C948  41 82 02 54 */	beq lbl_8032FC3C
/* 8032F9EC 0032C94C  40 80 00 18 */	bge lbl_8032FA04
/* 8032F9F0 0032C950  3C 80 41 41 */	lis r4, 0x41414C50@ha
/* 8032F9F4 0032C954  38 04 4C 50 */	addi r0, r4, 0x41414C50@l
/* 8032F9F8 0032C958  7C 03 00 00 */	cmpw r3, r0
/* 8032F9FC 0032C95C  41 82 03 7C */	beq lbl_8032FD78
/* 8032FA00 0032C960  48 00 03 F8 */	b lbl_8032FDF8
lbl_8032FA04:
/* 8032FA04 0032C964  38 05 4E 44 */	addi r0, r5, 0x4e44
/* 8032FA08 0032C968  7C 03 00 00 */	cmpw r3, r0
/* 8032FA0C 0032C96C  41 82 03 CC */	beq lbl_8032FDD8
/* 8032FA10 0032C970  48 00 03 E8 */	b lbl_8032FDF8
lbl_8032FA14:
/* 8032FA14 0032C974  3C 80 49 56 */	lis r4, 0x4956454C@ha
/* 8032FA18 0032C978  38 04 45 4C */	addi r0, r4, 0x4956454C@l
/* 8032FA1C 0032C97C  7C 03 00 00 */	cmpw r3, r0
/* 8032FA20 0032C980  41 82 02 9C */	beq lbl_8032FCBC
/* 8032FA24 0032C984  40 80 00 18 */	bge lbl_8032FA3C
/* 8032FA28 0032C988  3C 80 49 52 */	lis r4, 0x49524F54@ha
/* 8032FA2C 0032C98C  38 04 4F 54 */	addi r0, r4, 0x49524F54@l
/* 8032FA30 0032C990  7C 03 00 00 */	cmpw r3, r0
/* 8032FA34 0032C994  41 82 02 58 */	beq lbl_8032FC8C
/* 8032FA38 0032C998  48 00 03 C0 */	b lbl_8032FDF8
lbl_8032FA3C:
/* 8032FA3C 0032C99C  3C 80 4C 45 */	lis r4, 0x4C454E47@ha
/* 8032FA40 0032C9A0  38 04 4E 47 */	addi r0, r4, 0x4C454E47@l
/* 8032FA44 0032C9A4  7C 03 00 00 */	cmpw r3, r0
/* 8032FA48 0032C9A8  41 82 01 E4 */	beq lbl_8032FC2C
/* 8032FA4C 0032C9AC  48 00 03 AC */	b lbl_8032FDF8
lbl_8032FA50:
/* 8032FA50 0032C9B0  3C 80 50 4F */	lis r4, 0x504F4653@ha
/* 8032FA54 0032C9B4  38 04 46 53 */	addi r0, r4, 0x504F4653@l
/* 8032FA58 0032C9B8  7C 03 00 00 */	cmpw r3, r0
/* 8032FA5C 0032C9BC  41 82 02 50 */	beq lbl_8032FCAC
/* 8032FA60 0032C9C0  40 80 00 40 */	bge lbl_8032FAA0
/* 8032FA64 0032C9C4  3C 80 4E 50 */	lis r4, 0x4E504F53@ha
/* 8032FA68 0032C9C8  38 04 4F 53 */	addi r0, r4, 0x4E504F53@l
/* 8032FA6C 0032C9CC  7C 03 00 00 */	cmpw r3, r0
/* 8032FA70 0032C9D0  41 82 02 5C */	beq lbl_8032FCCC
/* 8032FA74 0032C9D4  40 80 00 18 */	bge lbl_8032FA8C
/* 8032FA78 0032C9D8  3C 80 4C 52 */	lis r4, 0x4C524144@ha
/* 8032FA7C 0032C9DC  38 04 41 44 */	addi r0, r4, 0x4C524144@l
/* 8032FA80 0032C9E0  7C 03 00 00 */	cmpw r3, r0
/* 8032FA84 0032C9E4  41 82 01 70 */	beq lbl_8032FBF4
/* 8032FA88 0032C9E8  48 00 03 70 */	b lbl_8032FDF8
lbl_8032FA8C:
/* 8032FA8C 0032C9EC  3C 80 4F 52 */	lis r4, 0x4F524E54@ha
/* 8032FA90 0032C9F0  38 04 4E 54 */	addi r0, r4, 0x4F524E54@l
/* 8032FA94 0032C9F4  7C 03 00 00 */	cmpw r3, r0
/* 8032FA98 0032C9F8  41 82 03 10 */	beq lbl_8032FDA8
/* 8032FA9C 0032C9FC  48 00 03 5C */	b lbl_8032FDF8
lbl_8032FAA0:
/* 8032FAA0 0032CA00  3C 80 52 4F */	lis r4, 0x524F544D@ha
/* 8032FAA4 0032CA04  38 04 54 4D */	addi r0, r4, 0x524F544D@l
/* 8032FAA8 0032CA08  7C 03 00 00 */	cmpw r3, r0
/* 8032FAAC 0032CA0C  41 82 01 F0 */	beq lbl_8032FC9C
/* 8032FAB0 0032CA10  40 80 03 48 */	bge lbl_8032FDF8
/* 8032FAB4 0032CA14  3C 80 50 53 */	lis r4, 0x50534C54@ha
/* 8032FAB8 0032CA18  38 04 4C 54 */	addi r0, r4, 0x50534C54@l
/* 8032FABC 0032CA1C  7C 03 00 00 */	cmpw r3, r0
/* 8032FAC0 0032CA20  41 82 01 14 */	beq lbl_8032FBD4
/* 8032FAC4 0032CA24  48 00 03 34 */	b lbl_8032FDF8
lbl_8032FAC8:
/* 8032FAC8 0032CA28  3C 80 54 53 */	lis r4, 0x5453504E@ha
/* 8032FACC 0032CA2C  38 04 50 4E */	addi r0, r4, 0x5453504E@l
/* 8032FAD0 0032CA30  7C 03 00 00 */	cmpw r3, r0
/* 8032FAD4 0032CA34  41 82 02 94 */	beq lbl_8032FD68
/* 8032FAD8 0032CA38  40 80 00 78 */	bge lbl_8032FB50
/* 8032FADC 0032CA3C  3C A0 54 45 */	lis r5, 0x54455852@ha
/* 8032FAE0 0032CA40  38 05 58 52 */	addi r0, r5, 0x54455852@l
/* 8032FAE4 0032CA44  7C 03 00 00 */	cmpw r3, r0
/* 8032FAE8 0032CA48  41 82 02 6C */	beq lbl_8032FD54
/* 8032FAEC 0032CA4C  40 80 00 40 */	bge lbl_8032FB2C
/* 8032FAF0 0032CA50  3C 80 53 50 */	lis r4, 0x53504C4E@ha
/* 8032FAF4 0032CA54  38 04 4C 4E */	addi r0, r4, 0x53504C4E@l
/* 8032FAF8 0032CA58  7C 03 00 00 */	cmpw r3, r0
/* 8032FAFC 0032CA5C  41 82 02 30 */	beq lbl_8032FD2C
/* 8032FB00 0032CA60  40 80 00 18 */	bge lbl_8032FB18
/* 8032FB04 0032CA64  3C 80 53 49 */	lis r4, 0x53494445@ha
/* 8032FB08 0032CA68  38 04 44 45 */	addi r0, r4, 0x53494445@l
/* 8032FB0C 0032CA6C  7C 03 00 00 */	cmpw r3, r0
/* 8032FB10 0032CA70  41 82 01 3C */	beq lbl_8032FC4C
/* 8032FB14 0032CA74  48 00 02 E4 */	b lbl_8032FDF8
lbl_8032FB18:
/* 8032FB18 0032CA78  3C 80 53 52 */	lis r4, 0x53524F54@ha
/* 8032FB1C 0032CA7C  38 04 4F 54 */	addi r0, r4, 0x53524F54@l
/* 8032FB20 0032CA80  7C 03 00 00 */	cmpw r3, r0
/* 8032FB24 0032CA84  41 82 01 50 */	beq lbl_8032FC74
/* 8032FB28 0032CA88  48 00 02 D0 */	b lbl_8032FDF8
lbl_8032FB2C:
/* 8032FB2C 0032CA8C  3C 80 54 49 */	lis r4, 0x54494D45@ha
/* 8032FB30 0032CA90  38 04 4D 45 */	addi r0, r4, 0x54494D45@l
/* 8032FB34 0032CA94  7C 03 00 00 */	cmpw r3, r0
/* 8032FB38 0032CA98  41 82 00 AC */	beq lbl_8032FBE4
/* 8032FB3C 0032CA9C  40 80 02 BC */	bge lbl_8032FDF8
/* 8032FB40 0032CAA0  38 05 58 57 */	addi r0, r5, 0x5857
/* 8032FB44 0032CAA4  7C 03 00 00 */	cmpw r3, r0
/* 8032FB48 0032CAA8  41 82 02 78 */	beq lbl_8032FDC0
/* 8032FB4C 0032CAAC  48 00 02 AC */	b lbl_8032FDF8
lbl_8032FB50:
/* 8032FB50 0032CAB0  3C 80 56 4C */	lis r4, 0x564C5332@ha
/* 8032FB54 0032CAB4  38 04 53 32 */	addi r0, r4, 0x564C5332@l
/* 8032FB58 0032CAB8  7C 03 00 00 */	cmpw r3, r0
/* 8032FB5C 0032CABC  41 82 01 B8 */	beq lbl_8032FD14
/* 8032FB60 0032CAC0  40 80 00 38 */	bge lbl_8032FB98
/* 8032FB64 0032CAC4  38 04 4D 32 */	addi r0, r4, 0x4d32
/* 8032FB68 0032CAC8  7C 03 00 00 */	cmpw r3, r0
/* 8032FB6C 0032CACC  41 82 01 98 */	beq lbl_8032FD04
/* 8032FB70 0032CAD0  40 80 00 18 */	bge lbl_8032FB88
/* 8032FB74 0032CAD4  3C 80 56 45 */	lis r4, 0x56454C4D@ha
/* 8032FB78 0032CAD8  38 04 4C 4D */	addi r0, r4, 0x56454C4D@l
/* 8032FB7C 0032CADC  7C 03 00 00 */	cmpw r3, r0
/* 8032FB80 0032CAE0  41 82 01 5C */	beq lbl_8032FCDC
/* 8032FB84 0032CAE4  48 00 02 74 */	b lbl_8032FDF8
lbl_8032FB88:
/* 8032FB88 0032CAE8  38 04 53 31 */	addi r0, r4, 0x5331
/* 8032FB8C 0032CAEC  7C 03 00 00 */	cmpw r3, r0
/* 8032FB90 0032CAF0  40 80 01 5C */	bge lbl_8032FCEC
/* 8032FB94 0032CAF4  48 00 02 64 */	b lbl_8032FDF8
lbl_8032FB98:
/* 8032FB98 0032CAF8  3C 80 5A 42 */	lis r4, 0x5A425546@ha
/* 8032FB9C 0032CAFC  38 04 55 46 */	addi r0, r4, 0x5A425546@l
/* 8032FBA0 0032CB00  7C 03 00 00 */	cmpw r3, r0
/* 8032FBA4 0032CB04  41 82 01 EC */	beq lbl_8032FD90
/* 8032FBA8 0032CB08  40 80 00 18 */	bge lbl_8032FBC0
/* 8032FBAC 0032CB0C  3C 80 57 49 */	lis r4, 0x57495245@ha
/* 8032FBB0 0032CB10  38 04 52 45 */	addi r0, r4, 0x57495245@l
/* 8032FBB4 0032CB14  7C 03 00 00 */	cmpw r3, r0
/* 8032FBB8 0032CB18  41 82 01 84 */	beq lbl_8032FD3C
/* 8032FBBC 0032CB1C  48 00 02 3C */	b lbl_8032FDF8
lbl_8032FBC0:
/* 8032FBC0 0032CB20  3C 80 5F 45 */	lis r4, 0x5F454E44@ha
/* 8032FBC4 0032CB24  38 04 4E 44 */	addi r0, r4, 0x5F454E44@l
/* 8032FBC8 0032CB28  7C 03 00 00 */	cmpw r3, r0
/* 8032FBCC 0032CB2C  41 82 02 24 */	beq lbl_8032FDF0
/* 8032FBD0 0032CB30  48 00 02 28 */	b lbl_8032FDF8
lbl_8032FBD4:
/* 8032FBD4 0032CB34  7F 83 E3 78 */	mr r3, r28
/* 8032FBD8 0032CB38  4B FF 7F CD */	bl GetIntElement__20CParticleDataFactoryFR12CInputStream
/* 8032FBDC 0032CB3C  90 7B 00 00 */	stw r3, 0(r27)
/* 8032FBE0 0032CB40  48 00 02 34 */	b lbl_8032FE14
lbl_8032FBE4:
/* 8032FBE4 0032CB44  7F 83 E3 78 */	mr r3, r28
/* 8032FBE8 0032CB48  4B FF 70 A9 */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8032FBEC 0032CB4C  90 7B 00 04 */	stw r3, 4(r27)
/* 8032FBF0 0032CB50  48 00 02 24 */	b lbl_8032FE14
lbl_8032FBF4:
/* 8032FBF4 0032CB54  7F 83 E3 78 */	mr r3, r28
/* 8032FBF8 0032CB58  4B FF 70 99 */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8032FBFC 0032CB5C  90 7B 00 08 */	stw r3, 8(r27)
/* 8032FC00 0032CB60  48 00 02 14 */	b lbl_8032FE14
lbl_8032FC04:
/* 8032FC04 0032CB64  7F 83 E3 78 */	mr r3, r28
/* 8032FC08 0032CB68  4B FF 70 89 */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8032FC0C 0032CB6C  90 7B 00 0C */	stw r3, 0xc(r27)
/* 8032FC10 0032CB70  48 00 02 04 */	b lbl_8032FE14
lbl_8032FC14:
/* 8032FC14 0032CB74  7F 83 E3 78 */	mr r3, r28
/* 8032FC18 0032CB78  4B FF 88 11 */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FC1C 0032CB7C  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 8032FC20 0032CB80  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8032FC24 0032CB84  98 1B 00 44 */	stb r0, 0x44(r27)
/* 8032FC28 0032CB88  48 00 01 EC */	b lbl_8032FE14
lbl_8032FC2C:
/* 8032FC2C 0032CB8C  7F 83 E3 78 */	mr r3, r28
/* 8032FC30 0032CB90  4B FF 7F 75 */	bl GetIntElement__20CParticleDataFactoryFR12CInputStream
/* 8032FC34 0032CB94  90 7B 00 10 */	stw r3, 0x10(r27)
/* 8032FC38 0032CB98  48 00 01 DC */	b lbl_8032FE14
lbl_8032FC3C:
/* 8032FC3C 0032CB9C  7F 83 E3 78 */	mr r3, r28
/* 8032FC40 0032CBA0  4B FF 56 1D */	bl GetColorElement__20CParticleDataFactoryFR12CInputStream
/* 8032FC44 0032CBA4  90 7B 00 14 */	stw r3, 0x14(r27)
/* 8032FC48 0032CBA8  48 00 01 CC */	b lbl_8032FE14
lbl_8032FC4C:
/* 8032FC4C 0032CBAC  7F 83 E3 78 */	mr r3, r28
/* 8032FC50 0032CBB0  4B FF 7F 55 */	bl GetIntElement__20CParticleDataFactoryFR12CInputStream
/* 8032FC54 0032CBB4  90 7B 00 18 */	stw r3, 0x18(r27)
/* 8032FC58 0032CBB8  48 00 01 BC */	b lbl_8032FE14
lbl_8032FC5C:
/* 8032FC5C 0032CBBC  7F 83 E3 78 */	mr r3, r28
/* 8032FC60 0032CBC0  4B FF 87 C9 */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FC64 0032CBC4  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 8032FC68 0032CBC8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8032FC6C 0032CBCC  98 1B 00 44 */	stb r0, 0x44(r27)
/* 8032FC70 0032CBD0  48 00 01 A4 */	b lbl_8032FE14
lbl_8032FC74:
/* 8032FC74 0032CBD4  7F 83 E3 78 */	mr r3, r28
/* 8032FC78 0032CBD8  4B FF 87 B1 */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FC7C 0032CBDC  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 8032FC80 0032CBE0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8032FC84 0032CBE4  98 1B 00 44 */	stb r0, 0x44(r27)
/* 8032FC88 0032CBE8  48 00 01 8C */	b lbl_8032FE14
lbl_8032FC8C:
/* 8032FC8C 0032CBEC  7F 83 E3 78 */	mr r3, r28
/* 8032FC90 0032CBF0  4B FF 70 01 */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8032FC94 0032CBF4  90 7B 00 1C */	stw r3, 0x1c(r27)
/* 8032FC98 0032CBF8  48 00 01 7C */	b lbl_8032FE14
lbl_8032FC9C:
/* 8032FC9C 0032CBFC  7F 83 E3 78 */	mr r3, r28
/* 8032FCA0 0032CC00  4B FF 6F F1 */	bl GetRealElement__20CParticleDataFactoryFR12CInputStream
/* 8032FCA4 0032CC04  90 7B 00 20 */	stw r3, 0x20(r27)
/* 8032FCA8 0032CC08  48 00 01 6C */	b lbl_8032FE14
lbl_8032FCAC:
/* 8032FCAC 0032CC0C  7F 83 E3 78 */	mr r3, r28
/* 8032FCB0 0032CC10  4B FF 65 A5 */	bl GetVectorElement__20CParticleDataFactoryFR12CInputStream
/* 8032FCB4 0032CC14  90 7B 00 24 */	stw r3, 0x24(r27)
/* 8032FCB8 0032CC18  48 00 01 5C */	b lbl_8032FE14
lbl_8032FCBC:
/* 8032FCBC 0032CC1C  7F 83 E3 78 */	mr r3, r28
/* 8032FCC0 0032CC20  4B FF 65 95 */	bl GetVectorElement__20CParticleDataFactoryFR12CInputStream
/* 8032FCC4 0032CC24  90 7B 00 28 */	stw r3, 0x28(r27)
/* 8032FCC8 0032CC28  48 00 01 4C */	b lbl_8032FE14
lbl_8032FCCC:
/* 8032FCCC 0032CC2C  7F 83 E3 78 */	mr r3, r28
/* 8032FCD0 0032CC30  4B FF 65 85 */	bl GetVectorElement__20CParticleDataFactoryFR12CInputStream
/* 8032FCD4 0032CC34  90 7B 00 2C */	stw r3, 0x2c(r27)
/* 8032FCD8 0032CC38  48 00 01 3C */	b lbl_8032FE14
lbl_8032FCDC:
/* 8032FCDC 0032CC3C  7F 83 E3 78 */	mr r3, r28
/* 8032FCE0 0032CC40  4B FF 5B 1D */	bl GetModVectorElement__20CParticleDataFactoryFR12CInputStream
/* 8032FCE4 0032CC44  90 7B 00 30 */	stw r3, 0x30(r27)
/* 8032FCE8 0032CC48  48 00 01 2C */	b lbl_8032FE14
lbl_8032FCEC:
/* 8032FCEC 0032CC4C  7F 83 E3 78 */	mr r3, r28
/* 8032FCF0 0032CC50  4B FF 87 39 */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FCF4 0032CC54  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 8032FCF8 0032CC58  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8032FCFC 0032CC5C  98 1B 00 44 */	stb r0, 0x44(r27)
/* 8032FD00 0032CC60  48 00 01 14 */	b lbl_8032FE14
lbl_8032FD04:
/* 8032FD04 0032CC64  7F 83 E3 78 */	mr r3, r28
/* 8032FD08 0032CC68  4B FF 5A F5 */	bl GetModVectorElement__20CParticleDataFactoryFR12CInputStream
/* 8032FD0C 0032CC6C  90 7B 00 34 */	stw r3, 0x34(r27)
/* 8032FD10 0032CC70  48 00 01 04 */	b lbl_8032FE14
lbl_8032FD14:
/* 8032FD14 0032CC74  7F 83 E3 78 */	mr r3, r28
/* 8032FD18 0032CC78  4B FF 87 11 */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FD1C 0032CC7C  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 8032FD20 0032CC80  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8032FD24 0032CC84  98 1B 00 44 */	stb r0, 0x44(r27)
/* 8032FD28 0032CC88  48 00 00 EC */	b lbl_8032FE14
lbl_8032FD2C:
/* 8032FD2C 0032CC8C  7F 83 E3 78 */	mr r3, r28
/* 8032FD30 0032CC90  4B FF 7E 75 */	bl GetIntElement__20CParticleDataFactoryFR12CInputStream
/* 8032FD34 0032CC94  90 7B 00 38 */	stw r3, 0x38(r27)
/* 8032FD38 0032CC98  48 00 00 DC */	b lbl_8032FE14
lbl_8032FD3C:
/* 8032FD3C 0032CC9C  7F 83 E3 78 */	mr r3, r28
/* 8032FD40 0032CCA0  4B FF 86 E9 */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FD44 0032CCA4  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 8032FD48 0032CCA8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8032FD4C 0032CCAC  98 1B 00 44 */	stb r0, 0x44(r27)
/* 8032FD50 0032CCB0  48 00 00 C4 */	b lbl_8032FE14
lbl_8032FD54:
/* 8032FD54 0032CCB4  7F 83 E3 78 */	mr r3, r28
/* 8032FD58 0032CCB8  7F A4 EB 78 */	mr r4, r29
/* 8032FD5C 0032CCBC  4B FF 50 D5 */	bl GetTextureElement__20CParticleDataFactoryFR12CInputStreamP11CSimplePool
/* 8032FD60 0032CCC0  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8032FD64 0032CCC4  48 00 00 B0 */	b lbl_8032FE14
lbl_8032FD68:
/* 8032FD68 0032CCC8  7F 83 E3 78 */	mr r3, r28
/* 8032FD6C 0032CCCC  4B FF 7E 39 */	bl GetIntElement__20CParticleDataFactoryFR12CInputStream
/* 8032FD70 0032CCD0  90 7B 00 40 */	stw r3, 0x40(r27)
/* 8032FD74 0032CCD4  48 00 00 A0 */	b lbl_8032FE14
lbl_8032FD78:
/* 8032FD78 0032CCD8  7F 83 E3 78 */	mr r3, r28
/* 8032FD7C 0032CCDC  4B FF 86 AD */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FD80 0032CCE0  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 8032FD84 0032CCE4  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8032FD88 0032CCE8  98 1B 00 44 */	stb r0, 0x44(r27)
/* 8032FD8C 0032CCEC  48 00 00 88 */	b lbl_8032FE14
lbl_8032FD90:
/* 8032FD90 0032CCF0  7F 83 E3 78 */	mr r3, r28
/* 8032FD94 0032CCF4  4B FF 86 95 */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FD98 0032CCF8  88 1B 00 45 */	lbz r0, 0x45(r27)
/* 8032FD9C 0032CCFC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8032FDA0 0032CD00  98 1B 00 45 */	stb r0, 0x45(r27)
/* 8032FDA4 0032CD04  48 00 00 70 */	b lbl_8032FE14
lbl_8032FDA8:
/* 8032FDA8 0032CD08  7F 83 E3 78 */	mr r3, r28
/* 8032FDAC 0032CD0C  4B FF 86 7D */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FDB0 0032CD10  88 1B 00 45 */	lbz r0, 0x45(r27)
/* 8032FDB4 0032CD14  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8032FDB8 0032CD18  98 1B 00 45 */	stb r0, 0x45(r27)
/* 8032FDBC 0032CD1C  48 00 00 58 */	b lbl_8032FE14
lbl_8032FDC0:
/* 8032FDC0 0032CD20  7F 83 E3 78 */	mr r3, r28
/* 8032FDC4 0032CD24  4B FF 86 65 */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FDC8 0032CD28  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 8032FDCC 0032CD2C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8032FDD0 0032CD30  98 1B 00 44 */	stb r0, 0x44(r27)
/* 8032FDD4 0032CD34  48 00 00 40 */	b lbl_8032FE14
lbl_8032FDD8:
/* 8032FDD8 0032CD38  7F 83 E3 78 */	mr r3, r28
/* 8032FDDC 0032CD3C  4B FF 86 4D */	bl GetBool__20CParticleDataFactoryFR12CInputStream
/* 8032FDE0 0032CD40  88 1B 00 45 */	lbz r0, 0x45(r27)
/* 8032FDE4 0032CD44  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8032FDE8 0032CD48  98 1B 00 45 */	stb r0, 0x45(r27)
/* 8032FDEC 0032CD4C  48 00 00 28 */	b lbl_8032FE14
lbl_8032FDF0:
/* 8032FDF0 0032CD50  3B C0 00 01 */	li r30, 1
/* 8032FDF4 0032CD54  48 00 00 20 */	b lbl_8032FE14
lbl_8032FDF8:
/* 8032FDF8 0032CD58  38 61 00 0C */	addi r3, r1, 0xc
/* 8032FDFC 0032CD5C  38 80 FF FF */	li r4, -1
/* 8032FE00 0032CD60  4B FE 28 05 */	bl __dt__13CGlobalRandomFv
/* 8032FE04 0032CD64  38 60 00 00 */	li r3, 0
/* 8032FE08 0032CD68  48 00 00 24 */	b lbl_8032FE2C
lbl_8032FE0C:
/* 8032FE0C 0032CD6C  3C 60 52 52 */	lis r3, 0x52524144@ha
/* 8032FE10 0032CD70  3B E3 41 44 */	addi r31, r3, 0x52524144@l
lbl_8032FE14:
/* 8032FE14 0032CD74  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8032FE18 0032CD78  41 82 FB 88 */	beq lbl_8032F9A0
/* 8032FE1C 0032CD7C  38 61 00 0C */	addi r3, r1, 0xc
/* 8032FE20 0032CD80  38 80 FF FF */	li r4, -1
/* 8032FE24 0032CD84  4B FE 27 E1 */	bl __dt__13CGlobalRandomFv
/* 8032FE28 0032CD88  38 60 00 01 */	li r3, 1
lbl_8032FE2C:
/* 8032FE2C 0032CD8C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8032FE30 0032CD90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032FE34 0032CD94  7C 08 03 A6 */	mtlr r0
/* 8032FE38 0032CD98  38 21 00 30 */	addi r1, r1, 0x30
/* 8032FE3C 0032CD9C  4E 80 00 20 */	blr

.global CreateGeneratorDescription__26CParticleSwooshDataFactoryFR12CInputStreamP11CSimplePool
CreateGeneratorDescription__26CParticleSwooshDataFactoryFR12CInputStreamP11CSimplePool:
/* 8032FE40 0032CDA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032FE44 0032CDA4  7C 08 02 A6 */	mflr r0
/* 8032FE48 0032CDA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032FE4C 0032CDAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8032FE50 0032CDB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8032FE54 0032CDB4  7C 9E 23 78 */	mr r30, r4
/* 8032FE58 0032CDB8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8032FE5C 0032CDBC  7C 7D 1B 78 */	mr r29, r3
/* 8032FE60 0032CDC0  4B FF 85 FD */	bl GetClassID__20CParticleDataFactoryFR12CInputStream
/* 8032FE64 0032CDC4  3C 03 AC A9 */	addis r0, r3, 0xaca9
/* 8032FE68 0032CDC8  28 00 53 48 */	cmplwi r0, 0x5348
/* 8032FE6C 0032CDCC  41 82 00 0C */	beq lbl_8032FE78
/* 8032FE70 0032CDD0  38 60 00 00 */	li r3, 0
/* 8032FE74 0032CDD4  48 00 00 3C */	b lbl_8032FEB0
lbl_8032FE78:
/* 8032FE78 0032CDD8  3C 80 80 3D */	lis r4, lbl_803D7970@ha
/* 8032FE7C 0032CDDC  38 60 00 48 */	li r3, 0x48
/* 8032FE80 0032CDE0  38 84 79 70 */	addi r4, r4, lbl_803D7970@l
/* 8032FE84 0032CDE4  38 A0 00 00 */	li r5, 0
/* 8032FE88 0032CDE8  4B FE 59 E5 */	bl __nw__FUlPCcPCc
/* 8032FE8C 0032CDEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032FE90 0032CDF0  41 82 00 0C */	beq lbl_8032FE9C
/* 8032FE94 0032CDF4  48 03 6E D1 */	bl __ct__18CSwooshDescriptionFv
/* 8032FE98 0032CDF8  7C 7F 1B 78 */	mr r31, r3
lbl_8032FE9C:
/* 8032FE9C 0032CDFC  7F E3 FB 78 */	mr r3, r31
/* 8032FEA0 0032CE00  7F A4 EB 78 */	mr r4, r29
/* 8032FEA4 0032CE04  7F C5 F3 78 */	mr r5, r30
/* 8032FEA8 0032CE08  4B FF FA BD */	bl CreateWPSM__26CParticleSwooshDataFactoryFP18CSwooshDescriptionR12CInputStreamP11CSimplePool
/* 8032FEAC 0032CE0C  7F E3 FB 78 */	mr r3, r31
lbl_8032FEB0:
/* 8032FEB0 0032CE10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032FEB4 0032CE14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8032FEB8 0032CE18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8032FEBC 0032CE1C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8032FEC0 0032CE20  7C 08 03 A6 */	mtlr r0
/* 8032FEC4 0032CE24  38 21 00 20 */	addi r1, r1, 0x20
/* 8032FEC8 0032CE28  4E 80 00 20 */	blr

.global GetGeneratorDesc__26CParticleSwooshDataFactoryFR12CInputStreamP11CSimplePool
GetGeneratorDesc__26CParticleSwooshDataFactoryFR12CInputStreamP11CSimplePool:
/* 8032FECC 0032CE2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032FED0 0032CE30  7C 08 02 A6 */	mflr r0
/* 8032FED4 0032CE34  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032FED8 0032CE38  38 00 00 00 */	li r0, 0
/* 8032FEDC 0032CE3C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8032FEE0 0032CE40  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8032FEE4 0032CE44  90 01 00 20 */	stw r0, 0x20(r1)
/* 8032FEE8 0032CE48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032FEEC 0032CE4C  4B FF FF 55 */	bl CreateGeneratorDescription__26CParticleSwooshDataFactoryFR12CInputStreamP11CSimplePool
/* 8032FEF0 0032CE50  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8032FEF4 0032CE54  7C 7F 1B 78 */	mr r31, r3
/* 8032FEF8 0032CE58  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8032FEFC 0032CE5C  54 00 10 3A */	slwi r0, r0, 2
/* 8032FF00 0032CE60  7C 04 02 14 */	add r0, r4, r0
/* 8032FF04 0032CE64  90 81 00 0C */	stw r4, 0xc(r1)
/* 8032FF08 0032CE68  7C 83 23 78 */	mr r3, r4
/* 8032FF0C 0032CE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032FF10 0032CE70  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032FF14 0032CE74  90 81 00 08 */	stw r4, 8(r1)
/* 8032FF18 0032CE78  48 00 00 08 */	b lbl_8032FF20
lbl_8032FF1C:
/* 8032FF1C 0032CE7C  38 63 00 04 */	addi r3, r3, 4
lbl_8032FF20:
/* 8032FF20 0032CE80  7C 03 00 40 */	cmplw r3, r0
/* 8032FF24 0032CE84  40 82 FF F8 */	bne lbl_8032FF1C
/* 8032FF28 0032CE88  28 04 00 00 */	cmplwi r4, 0
/* 8032FF2C 0032CE8C  41 82 00 0C */	beq lbl_8032FF38
/* 8032FF30 0032CE90  7C 83 23 78 */	mr r3, r4
/* 8032FF34 0032CE94  4B FE 59 FD */	bl Free__7CMemoryFPCv
lbl_8032FF38:
/* 8032FF38 0032CE98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032FF3C 0032CE9C  7F E3 FB 78 */	mr r3, r31
/* 8032FF40 0032CEA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8032FF44 0032CEA4  7C 08 03 A6 */	mtlr r0
/* 8032FF48 0032CEA8  38 21 00 30 */	addi r1, r1, 0x30
/* 8032FF4C 0032CEAC  4E 80 00 20 */	blr

.global "__dt__46TObjOwnerDerivedFromIObj<18CSwooshDescription>Fv"
"__dt__46TObjOwnerDerivedFromIObj<18CSwooshDescription>Fv":
/* 8032FF50 0032CEB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032FF54 0032CEB4  7C 08 02 A6 */	mflr r0
/* 8032FF58 0032CEB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032FF5C 0032CEBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032FF60 0032CEC0  7C 9F 23 78 */	mr r31, r4
/* 8032FF64 0032CEC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8032FF68 0032CEC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8032FF6C 0032CECC  41 82 00 58 */	beq lbl_8032FFC4
/* 8032FF70 0032CED0  3C 60 80 3F */	lis r3, lbl_803EDDF8@ha
/* 8032FF74 0032CED4  38 03 DD F8 */	addi r0, r3, lbl_803EDDF8@l
/* 8032FF78 0032CED8  90 1E 00 00 */	stw r0, 0(r30)
/* 8032FF7C 0032CEDC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8032FF80 0032CEE0  28 03 00 00 */	cmplwi r3, 0
/* 8032FF84 0032CEE4  41 82 00 0C */	beq lbl_8032FF90
/* 8032FF88 0032CEE8  38 80 00 01 */	li r4, 1
/* 8032FF8C 0032CEEC  48 03 6B 6D */	bl __dt__18CSwooshDescriptionFv
lbl_8032FF90:
/* 8032FF90 0032CEF0  28 1E 00 00 */	cmplwi r30, 0
/* 8032FF94 0032CEF4  41 82 00 20 */	beq lbl_8032FFB4
/* 8032FF98 0032CEF8  3C 60 80 3E */	lis r3, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 8032FF9C 0032CEFC  38 03 8D 78 */	addi r0, r3, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 8032FFA0 0032CF00  90 1E 00 00 */	stw r0, 0(r30)
/* 8032FFA4 0032CF04  41 82 00 10 */	beq lbl_8032FFB4
/* 8032FFA8 0032CF08  3C 60 80 3E */	lis r3, __vt__4IObj@ha
/* 8032FFAC 0032CF0C  38 03 8D 6C */	addi r0, r3, __vt__4IObj@l
/* 8032FFB0 0032CF10  90 1E 00 00 */	stw r0, 0(r30)
lbl_8032FFB4:
/* 8032FFB4 0032CF14  7F E0 07 35 */	extsh. r0, r31
/* 8032FFB8 0032CF18  40 81 00 0C */	ble lbl_8032FFC4
/* 8032FFBC 0032CF1C  7F C3 F3 78 */	mr r3, r30
/* 8032FFC0 0032CF20  4B FE 59 71 */	bl Free__7CMemoryFPCv
lbl_8032FFC4:
/* 8032FFC4 0032CF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032FFC8 0032CF28  7F C3 F3 78 */	mr r3, r30
/* 8032FFCC 0032CF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032FFD0 0032CF30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8032FFD4 0032CF34  7C 08 03 A6 */	mtlr r0
/* 8032FFD8 0032CF38  38 21 00 10 */	addi r1, r1, 0x10
/* 8032FFDC 0032CF3C  4E 80 00 20 */	blr

.global FParticleSwooshDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer
FParticleSwooshDataFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer:
/* 8032FFE0 0032CF40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032FFE4 0032CF44  7C 08 02 A6 */	mflr r0
/* 8032FFE8 0032CF48  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032FFEC 0032CF4C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8032FFF0 0032CF50  7C 7F 1B 78 */	mr r31, r3
/* 8032FFF4 0032CF54  7C A3 2B 78 */	mr r3, r5
/* 8032FFF8 0032CF58  80 C6 00 00 */	lwz r6, 0(r6)
/* 8032FFFC 0032CF5C  90 C1 00 08 */	stw r6, 8(r1)
/* 80330000 0032CF60  80 86 00 04 */	lwz r4, 4(r6)
/* 80330004 0032CF64  38 04 00 01 */	addi r0, r4, 1
/* 80330008 0032CF68  90 06 00 04 */	stw r0, 4(r6)
/* 8033000C 0032CF6C  80 81 00 08 */	lwz r4, 8(r1)
/* 80330010 0032CF70  80 84 00 00 */	lwz r4, 0(r4)
/* 80330014 0032CF74  80 84 00 04 */	lwz r4, 4(r4)
/* 80330018 0032CF78  4B FF FE B5 */	bl GetGeneratorDesc__26CParticleSwooshDataFactoryFR12CInputStreamP11CSimplePool
/* 8033001C 0032CF7C  7C 03 00 D0 */	neg r0, r3
/* 80330020 0032CF80  90 61 00 10 */	stw r3, 0x10(r1)
/* 80330024 0032CF84  7C 00 1B 78 */	or r0, r0, r3
/* 80330028 0032CF88  38 61 00 14 */	addi r3, r1, 0x14
/* 8033002C 0032CF8C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80330030 0032CF90  38 81 00 0C */	addi r4, r1, 0xc
/* 80330034 0032CF94  98 01 00 0C */	stb r0, 0xc(r1)
/* 80330038 0032CF98  48 00 00 85 */	bl "GetIObjObjectFor__28TToken<18CSwooshDescription>FRCQ24rstl30auto_ptr<18CSwooshDescription>"
/* 8033003C 0032CF9C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80330040 0032CFA0  38 00 00 00 */	li r0, 0
/* 80330044 0032CFA4  98 01 00 14 */	stb r0, 0x14(r1)
/* 80330048 0032CFA8  7C 03 00 D0 */	neg r0, r3
/* 8033004C 0032CFAC  7C 00 1B 78 */	or r0, r0, r3
/* 80330050 0032CFB0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80330054 0032CFB4  98 1F 00 00 */	stb r0, 0(r31)
/* 80330058 0032CFB8  90 7F 00 04 */	stw r3, 4(r31)
/* 8033005C 0032CFBC  88 01 00 14 */	lbz r0, 0x14(r1)
/* 80330060 0032CFC0  28 00 00 00 */	cmplwi r0, 0
/* 80330064 0032CFC4  41 82 00 24 */	beq lbl_80330088
/* 80330068 0032CFC8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8033006C 0032CFCC  28 03 00 00 */	cmplwi r3, 0
/* 80330070 0032CFD0  41 82 00 18 */	beq lbl_80330088
/* 80330074 0032CFD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80330078 0032CFD8  38 80 00 01 */	li r4, 1
/* 8033007C 0032CFDC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80330080 0032CFE0  7D 89 03 A6 */	mtctr r12
/* 80330084 0032CFE4  4E 80 04 21 */	bctrl
lbl_80330088:
/* 80330088 0032CFE8  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8033008C 0032CFEC  28 00 00 00 */	cmplwi r0, 0
/* 80330090 0032CFF0  41 82 00 10 */	beq lbl_803300A0
/* 80330094 0032CFF4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80330098 0032CFF8  38 80 00 01 */	li r4, 1
/* 8033009C 0032CFFC  48 03 6A 5D */	bl __dt__18CSwooshDescriptionFv
lbl_803300A0:
/* 803300A0 0032D000  38 61 00 08 */	addi r3, r1, 8
/* 803300A4 0032D004  4B D0 42 61 */	bl sub_80034304
/* 803300A8 0032D008  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803300AC 0032D00C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803300B0 0032D010  7C 08 03 A6 */	mtlr r0
/* 803300B4 0032D014  38 21 00 30 */	addi r1, r1, 0x30
/* 803300B8 0032D018  4E 80 00 20 */	blr

.global "GetIObjObjectFor__28TToken<18CSwooshDescription>FRCQ24rstl30auto_ptr<18CSwooshDescription>"
"GetIObjObjectFor__28TToken<18CSwooshDescription>FRCQ24rstl30auto_ptr<18CSwooshDescription>":
/* 803300BC 0032D01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803300C0 0032D020  7C 08 02 A6 */	mflr r0
/* 803300C4 0032D024  90 01 00 14 */	stw r0, 0x14(r1)
/* 803300C8 0032D028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803300CC 0032D02C  7C 7F 1B 78 */	mr r31, r3
/* 803300D0 0032D030  48 00 00 19 */	bl sub_803300e8
/* 803300D4 0032D034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803300D8 0032D038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803300DC 0032D03C  7C 08 03 A6 */	mtlr r0
/* 803300E0 0032D040  38 21 00 10 */	addi r1, r1, 0x10
/* 803300E4 0032D044  4E 80 00 20 */	blr

.global sub_803300e8
sub_803300e8:
/* 803300E8 0032D048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803300EC 0032D04C  7C 08 02 A6 */	mflr r0
/* 803300F0 0032D050  3C A0 80 3D */	lis r5, lbl_803D7970@ha
/* 803300F4 0032D054  90 01 00 14 */	stw r0, 0x14(r1)
/* 803300F8 0032D058  38 05 79 70 */	addi r0, r5, lbl_803D7970@l
/* 803300FC 0032D05C  38 A0 00 00 */	li r5, 0
/* 80330100 0032D060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80330104 0032D064  7C 9F 23 78 */	mr r31, r4
/* 80330108 0032D068  7C 04 03 78 */	mr r4, r0
/* 8033010C 0032D06C  93 C1 00 08 */	stw r30, 8(r1)
/* 80330110 0032D070  7C 7E 1B 78 */	mr r30, r3
/* 80330114 0032D074  38 60 00 08 */	li r3, 8
/* 80330118 0032D078  4B FE 57 55 */	bl __nw__FUlPCcPCc
/* 8033011C 0032D07C  28 03 00 00 */	cmplwi r3, 0
/* 80330120 0032D080  41 82 00 38 */	beq lbl_80330158
/* 80330124 0032D084  3C 80 80 3E */	lis r4, __vt__4IObj@ha
/* 80330128 0032D088  3C A0 80 3E */	lis r5, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 8033012C 0032D08C  38 04 8D 6C */	addi r0, r4, __vt__4IObj@l
/* 80330130 0032D090  3C 80 80 3F */	lis r4, lbl_803EDDF8@ha
/* 80330134 0032D094  90 03 00 00 */	stw r0, 0(r3)
/* 80330138 0032D098  38 C5 8D 78 */	addi r6, r5, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 8033013C 0032D09C  38 A0 00 00 */	li r5, 0
/* 80330140 0032D0A0  38 04 DD F8 */	addi r0, r4, lbl_803EDDF8@l
/* 80330144 0032D0A4  90 C3 00 00 */	stw r6, 0(r3)
/* 80330148 0032D0A8  98 BF 00 00 */	stb r5, 0(r31)
/* 8033014C 0032D0AC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80330150 0032D0B0  90 83 00 04 */	stw r4, 4(r3)
/* 80330154 0032D0B4  90 03 00 00 */	stw r0, 0(r3)
lbl_80330158:
/* 80330158 0032D0B8  7C 03 00 D0 */	neg r0, r3
/* 8033015C 0032D0BC  7C 00 1B 78 */	or r0, r0, r3
/* 80330160 0032D0C0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80330164 0032D0C4  98 1E 00 00 */	stb r0, 0(r30)
/* 80330168 0032D0C8  90 7E 00 04 */	stw r3, 4(r30)
/* 8033016C 0032D0CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80330170 0032D0D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80330174 0032D0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80330178 0032D0D8  7C 08 03 A6 */	mtlr r0
/* 8033017C 0032D0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80330180 0032D0E0  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D7970
lbl_803D7970:
	# ROM: 0x3D4970
	.asciz "??(??)"
	.balign 4

