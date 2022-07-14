.include "macros.inc"

.section .text, "ax"

.global inflate_fast
inflate_fast:
/* 80342DC4 0033FD24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80342DC8 0033FD28  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 80342DCC 0033FD2C  81 87 00 34 */	lwz r12, 0x34(r7)
/* 80342DD0 0033FD30  83 27 00 30 */	lwz r25, 0x30(r7)
/* 80342DD4 0033FD34  81 48 00 00 */	lwz r10, 0(r8)
/* 80342DD8 0033FD38  7C 0C C8 40 */	cmplw r12, r25
/* 80342DDC 0033FD3C  81 68 00 04 */	lwz r11, 4(r8)
/* 80342DE0 0033FD40  80 07 00 20 */	lwz r0, 0x20(r7)
/* 80342DE4 0033FD44  81 27 00 1C */	lwz r9, 0x1c(r7)
/* 80342DE8 0033FD48  40 80 00 10 */	bge lbl_80342DF8
/* 80342DEC 0033FD4C  7F 2C C8 50 */	subf r25, r12, r25
/* 80342DF0 0033FD50  3B 79 FF FF */	addi r27, r25, -1
/* 80342DF4 0033FD54  48 00 00 0C */	b lbl_80342E00
lbl_80342DF8:
/* 80342DF8 0033FD58  83 27 00 2C */	lwz r25, 0x2c(r7)
/* 80342DFC 0033FD5C  7F 6C C8 50 */	subf r27, r12, r25
lbl_80342E00:
/* 80342E00 0033FD60  3F 20 80 3F */	lis r25, lbl_803EF5C8@ha
/* 80342E04 0033FD64  54 7A 10 3A */	slwi r26, r3, 2
/* 80342E08 0033FD68  3B 39 F5 C8 */	addi r25, r25, lbl_803EF5C8@l
/* 80342E0C 0033FD6C  54 83 10 3A */	slwi r3, r4, 2
/* 80342E10 0033FD70  7F F9 D0 2E */	lwzx r31, r25, r26
/* 80342E14 0033FD74  7F 64 DB 78 */	mr r4, r27
/* 80342E18 0033FD78  7F D9 18 2E */	lwzx r30, r25, r3
/* 80342E1C 0033FD7C  48 00 00 1C */	b lbl_80342E38
lbl_80342E20:
/* 80342E20 0033FD80  88 6A 00 00 */	lbz r3, 0(r10)
/* 80342E24 0033FD84  39 6B FF FF */	addi r11, r11, -1
/* 80342E28 0033FD88  39 4A 00 01 */	addi r10, r10, 1
/* 80342E2C 0033FD8C  7C 63 48 30 */	slw r3, r3, r9
/* 80342E30 0033FD90  39 29 00 08 */	addi r9, r9, 8
/* 80342E34 0033FD94  7C 00 1B 78 */	or r0, r0, r3
lbl_80342E38:
/* 80342E38 0033FD98  28 09 00 14 */	cmplwi r9, 0x14
/* 80342E3C 0033FD9C  41 80 FF E4 */	blt lbl_80342E20
/* 80342E40 0033FDA0  7C 03 F8 38 */	and r3, r0, r31
/* 80342E44 0033FDA4  54 63 18 38 */	slwi r3, r3, 3
/* 80342E48 0033FDA8  7C 65 1A 14 */	add r3, r5, r3
/* 80342E4C 0033FDAC  8B 03 00 00 */	lbz r24, 0(r3)
/* 80342E50 0033FDB0  28 18 00 00 */	cmplwi r24, 0
/* 80342E54 0033FDB4  40 82 00 24 */	bne lbl_80342E78
/* 80342E58 0033FDB8  8B 23 00 01 */	lbz r25, 1(r3)
/* 80342E5C 0033FDBC  38 84 FF FF */	addi r4, r4, -1
/* 80342E60 0033FDC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80342E64 0033FDC4  7C 00 CC 30 */	srw r0, r0, r25
/* 80342E68 0033FDC8  7D 39 48 50 */	subf r9, r25, r9
/* 80342E6C 0033FDCC  98 6C 00 00 */	stb r3, 0(r12)
/* 80342E70 0033FDD0  39 8C 00 01 */	addi r12, r12, 1
/* 80342E74 0033FDD4  48 00 04 78 */	b lbl_803432EC
lbl_80342E78:
/* 80342E78 0033FDD8  3F 60 80 3F */	lis r27, lbl_803EF5C8@ha
/* 80342E7C 0033FDDC  3B 9B F5 C8 */	addi r28, r27, lbl_803EF5C8@l
lbl_80342E80:
/* 80342E80 0033FDE0  8B 43 00 01 */	lbz r26, 1(r3)
/* 80342E84 0033FDE4  57 19 06 F7 */	rlwinm. r25, r24, 0, 0x1b, 0x1b
/* 80342E88 0033FDE8  7C 00 D4 30 */	srw r0, r0, r26
/* 80342E8C 0033FDEC  7D 3A 48 50 */	subf r9, r26, r9
/* 80342E90 0033FDF0  41 82 03 40 */	beq lbl_803431D0
/* 80342E94 0033FDF4  3F 20 80 3F */	lis r25, lbl_803EF5C8@ha
/* 80342E98 0033FDF8  57 1D 07 3E */	clrlwi r29, r24, 0x1c
/* 80342E9C 0033FDFC  57 1A 16 BA */	rlwinm r26, r24, 2, 0x1a, 0x1d
/* 80342EA0 0033FE00  83 63 00 04 */	lwz r27, 4(r3)
/* 80342EA4 0033FE04  7D 3D 48 50 */	subf r9, r29, r9
/* 80342EA8 0033FE08  38 79 F5 C8 */	addi r3, r25, lbl_803EF5C8@l
/* 80342EAC 0033FE0C  7C 63 D0 2E */	lwzx r3, r3, r26
/* 80342EB0 0033FE10  28 09 00 0F */	cmplwi r9, 0xf
/* 80342EB4 0033FE14  23 89 00 16 */	subfic r28, r9, 0x16
/* 80342EB8 0033FE18  7C 03 18 38 */	and r3, r0, r3
/* 80342EBC 0033FE1C  7C 00 EC 30 */	srw r0, r0, r29
/* 80342EC0 0033FE20  7F BB 1A 14 */	add r29, r27, r3
/* 80342EC4 0033FE24  57 9C E8 FE */	srwi r28, r28, 3
/* 80342EC8 0033FE28  40 80 00 C4 */	bge lbl_80342F8C
/* 80342ECC 0033FE2C  57 83 E8 FF */	rlwinm. r3, r28, 0x1d, 3, 0x1f
/* 80342ED0 0033FE30  7C 69 03 A6 */	mtctr r3
/* 80342ED4 0033FE34  41 82 00 98 */	beq lbl_80342F6C
lbl_80342ED8:
/* 80342ED8 0033FE38  8B 2A 00 00 */	lbz r25, 0(r10)
/* 80342EDC 0033FE3C  39 6B FF F8 */	addi r11, r11, -8
/* 80342EE0 0033FE40  7F 23 48 30 */	slw r3, r25, r9
/* 80342EE4 0033FE44  8B 2A 00 01 */	lbz r25, 1(r10)
/* 80342EE8 0033FE48  39 29 00 08 */	addi r9, r9, 8
/* 80342EEC 0033FE4C  7C 00 1B 78 */	or r0, r0, r3
/* 80342EF0 0033FE50  7F 23 48 30 */	slw r3, r25, r9
/* 80342EF4 0033FE54  8B 2A 00 02 */	lbz r25, 2(r10)
/* 80342EF8 0033FE58  39 29 00 08 */	addi r9, r9, 8
/* 80342EFC 0033FE5C  7C 00 1B 78 */	or r0, r0, r3
/* 80342F00 0033FE60  7F 23 48 30 */	slw r3, r25, r9
/* 80342F04 0033FE64  8B 2A 00 03 */	lbz r25, 3(r10)
/* 80342F08 0033FE68  39 29 00 08 */	addi r9, r9, 8
/* 80342F0C 0033FE6C  7C 00 1B 78 */	or r0, r0, r3
/* 80342F10 0033FE70  7F 23 48 30 */	slw r3, r25, r9
/* 80342F14 0033FE74  8B 2A 00 04 */	lbz r25, 4(r10)
/* 80342F18 0033FE78  39 29 00 08 */	addi r9, r9, 8
/* 80342F1C 0033FE7C  7C 00 1B 78 */	or r0, r0, r3
/* 80342F20 0033FE80  7F 23 48 30 */	slw r3, r25, r9
/* 80342F24 0033FE84  8B 2A 00 05 */	lbz r25, 5(r10)
/* 80342F28 0033FE88  39 29 00 08 */	addi r9, r9, 8
/* 80342F2C 0033FE8C  7C 00 1B 78 */	or r0, r0, r3
/* 80342F30 0033FE90  7F 23 48 30 */	slw r3, r25, r9
/* 80342F34 0033FE94  8B 2A 00 06 */	lbz r25, 6(r10)
/* 80342F38 0033FE98  39 29 00 08 */	addi r9, r9, 8
/* 80342F3C 0033FE9C  7C 00 1B 78 */	or r0, r0, r3
/* 80342F40 0033FEA0  7F 23 48 30 */	slw r3, r25, r9
/* 80342F44 0033FEA4  8B 2A 00 07 */	lbz r25, 7(r10)
/* 80342F48 0033FEA8  39 29 00 08 */	addi r9, r9, 8
/* 80342F4C 0033FEAC  39 4A 00 08 */	addi r10, r10, 8
/* 80342F50 0033FEB0  7C 00 1B 78 */	or r0, r0, r3
/* 80342F54 0033FEB4  7F 23 48 30 */	slw r3, r25, r9
/* 80342F58 0033FEB8  39 29 00 08 */	addi r9, r9, 8
/* 80342F5C 0033FEBC  7C 00 1B 78 */	or r0, r0, r3
/* 80342F60 0033FEC0  42 00 FF 78 */	bdnz lbl_80342ED8
/* 80342F64 0033FEC4  73 9C 00 07 */	andi. r28, r28, 7
/* 80342F68 0033FEC8  41 82 00 24 */	beq lbl_80342F8C
lbl_80342F6C:
/* 80342F6C 0033FECC  7F 89 03 A6 */	mtctr r28
lbl_80342F70:
/* 80342F70 0033FED0  8B 2A 00 00 */	lbz r25, 0(r10)
/* 80342F74 0033FED4  39 6B FF FF */	addi r11, r11, -1
/* 80342F78 0033FED8  39 4A 00 01 */	addi r10, r10, 1
/* 80342F7C 0033FEDC  7F 23 48 30 */	slw r3, r25, r9
/* 80342F80 0033FEE0  39 29 00 08 */	addi r9, r9, 8
/* 80342F84 0033FEE4  7C 00 1B 78 */	or r0, r0, r3
/* 80342F88 0033FEE8  42 00 FF E8 */	bdnz lbl_80342F70
lbl_80342F8C:
/* 80342F8C 0033FEEC  7C 03 F0 38 */	and r3, r0, r30
/* 80342F90 0033FEF0  3F 60 80 3F */	lis r27, lbl_803EF5C8@ha
/* 80342F94 0033FEF4  54 63 18 38 */	slwi r3, r3, 3
/* 80342F98 0033FEF8  7C 66 1A 14 */	add r3, r6, r3
/* 80342F9C 0033FEFC  3B 9B F5 C8 */	addi r28, r27, lbl_803EF5C8@l
/* 80342FA0 0033FF00  8B 03 00 00 */	lbz r24, 0(r3)
lbl_80342FA4:
/* 80342FA4 0033FF04  8B 43 00 01 */	lbz r26, 1(r3)
/* 80342FA8 0033FF08  57 19 06 F7 */	rlwinm. r25, r24, 0, 0x1b, 0x1b
/* 80342FAC 0033FF0C  7C 00 D4 30 */	srw r0, r0, r26
/* 80342FB0 0033FF10  7D 3A 48 50 */	subf r9, r26, r9
/* 80342FB4 0033FF14  41 82 01 88 */	beq lbl_8034313C
/* 80342FB8 0033FF18  57 18 07 3E */	clrlwi r24, r24, 0x1c
/* 80342FBC 0033FF1C  3B 78 00 07 */	addi r27, r24, 7
/* 80342FC0 0033FF20  7F 69 D8 50 */	subf r27, r9, r27
/* 80342FC4 0033FF24  7C 09 C0 40 */	cmplw r9, r24
/* 80342FC8 0033FF28  57 7B E8 FE */	srwi r27, r27, 3
/* 80342FCC 0033FF2C  40 80 00 C4 */	bge lbl_80343090
/* 80342FD0 0033FF30  57 7C E8 FF */	rlwinm. r28, r27, 0x1d, 3, 0x1f
/* 80342FD4 0033FF34  7F 89 03 A6 */	mtctr r28
/* 80342FD8 0033FF38  41 82 00 98 */	beq lbl_80343070
lbl_80342FDC:
/* 80342FDC 0033FF3C  8B 4A 00 00 */	lbz r26, 0(r10)
/* 80342FE0 0033FF40  39 6B FF F8 */	addi r11, r11, -8
/* 80342FE4 0033FF44  7F 59 48 30 */	slw r25, r26, r9
/* 80342FE8 0033FF48  8B 4A 00 01 */	lbz r26, 1(r10)
/* 80342FEC 0033FF4C  39 29 00 08 */	addi r9, r9, 8
/* 80342FF0 0033FF50  7C 00 CB 78 */	or r0, r0, r25
/* 80342FF4 0033FF54  7F 59 48 30 */	slw r25, r26, r9
/* 80342FF8 0033FF58  8B 4A 00 02 */	lbz r26, 2(r10)
/* 80342FFC 0033FF5C  39 29 00 08 */	addi r9, r9, 8
/* 80343000 0033FF60  7C 00 CB 78 */	or r0, r0, r25
/* 80343004 0033FF64  7F 59 48 30 */	slw r25, r26, r9
/* 80343008 0033FF68  8B 4A 00 03 */	lbz r26, 3(r10)
/* 8034300C 0033FF6C  39 29 00 08 */	addi r9, r9, 8
/* 80343010 0033FF70  7C 00 CB 78 */	or r0, r0, r25
/* 80343014 0033FF74  7F 59 48 30 */	slw r25, r26, r9
/* 80343018 0033FF78  8B 4A 00 04 */	lbz r26, 4(r10)
/* 8034301C 0033FF7C  39 29 00 08 */	addi r9, r9, 8
/* 80343020 0033FF80  7C 00 CB 78 */	or r0, r0, r25
/* 80343024 0033FF84  7F 59 48 30 */	slw r25, r26, r9
/* 80343028 0033FF88  8B 4A 00 05 */	lbz r26, 5(r10)
/* 8034302C 0033FF8C  39 29 00 08 */	addi r9, r9, 8
/* 80343030 0033FF90  7C 00 CB 78 */	or r0, r0, r25
/* 80343034 0033FF94  7F 59 48 30 */	slw r25, r26, r9
/* 80343038 0033FF98  8B 4A 00 06 */	lbz r26, 6(r10)
/* 8034303C 0033FF9C  39 29 00 08 */	addi r9, r9, 8
/* 80343040 0033FFA0  7C 00 CB 78 */	or r0, r0, r25
/* 80343044 0033FFA4  7F 59 48 30 */	slw r25, r26, r9
/* 80343048 0033FFA8  8B 4A 00 07 */	lbz r26, 7(r10)
/* 8034304C 0033FFAC  39 29 00 08 */	addi r9, r9, 8
/* 80343050 0033FFB0  39 4A 00 08 */	addi r10, r10, 8
/* 80343054 0033FFB4  7C 00 CB 78 */	or r0, r0, r25
/* 80343058 0033FFB8  7F 59 48 30 */	slw r25, r26, r9
/* 8034305C 0033FFBC  39 29 00 08 */	addi r9, r9, 8
/* 80343060 0033FFC0  7C 00 CB 78 */	or r0, r0, r25
/* 80343064 0033FFC4  42 00 FF 78 */	bdnz lbl_80342FDC
/* 80343068 0033FFC8  73 7B 00 07 */	andi. r27, r27, 7
/* 8034306C 0033FFCC  41 82 00 24 */	beq lbl_80343090
lbl_80343070:
/* 80343070 0033FFD0  7F 69 03 A6 */	mtctr r27
lbl_80343074:
/* 80343074 0033FFD4  8B 4A 00 00 */	lbz r26, 0(r10)
/* 80343078 0033FFD8  39 6B FF FF */	addi r11, r11, -1
/* 8034307C 0033FFDC  39 4A 00 01 */	addi r10, r10, 1
/* 80343080 0033FFE0  7F 59 48 30 */	slw r25, r26, r9
/* 80343084 0033FFE4  39 29 00 08 */	addi r9, r9, 8
/* 80343088 0033FFE8  7C 00 CB 78 */	or r0, r0, r25
/* 8034308C 0033FFEC  42 00 FF E8 */	bdnz lbl_80343074
lbl_80343090:
/* 80343090 0033FFF0  3F 60 80 3F */	lis r27, lbl_803EF5C8@ha
/* 80343094 0033FFF4  83 47 00 28 */	lwz r26, 0x28(r7)
/* 80343098 0033FFF8  57 1C 10 3A */	slwi r28, r24, 2
/* 8034309C 0033FFFC  83 23 00 04 */	lwz r25, 4(r3)
/* 803430A0 00340000  38 7B F5 C8 */	addi r3, r27, lbl_803EF5C8@l
/* 803430A4 00340004  7F 5A 60 50 */	subf r26, r26, r12
/* 803430A8 00340008  7C 63 E0 2E */	lwzx r3, r3, r28
/* 803430AC 0034000C  7D 38 48 50 */	subf r9, r24, r9
/* 803430B0 00340010  7C 9D 20 50 */	subf r4, r29, r4
/* 803430B4 00340014  7C 03 18 38 */	and r3, r0, r3
/* 803430B8 00340018  7C 00 C4 30 */	srw r0, r0, r24
/* 803430BC 0034001C  7C 79 1A 14 */	add r3, r25, r3
/* 803430C0 00340020  7C 1A 18 40 */	cmplw r26, r3
/* 803430C4 00340024  41 80 00 28 */	blt lbl_803430EC
/* 803430C8 00340028  7F 23 60 50 */	subf r25, r3, r12
/* 803430CC 0034002C  3B BD FF FE */	addi r29, r29, -2
/* 803430D0 00340030  88 79 00 00 */	lbz r3, 0(r25)
/* 803430D4 00340034  98 6C 00 00 */	stb r3, 0(r12)
/* 803430D8 00340038  88 79 00 01 */	lbz r3, 1(r25)
/* 803430DC 0034003C  3B 39 00 02 */	addi r25, r25, 2
/* 803430E0 00340040  98 6C 00 01 */	stb r3, 1(r12)
/* 803430E4 00340044  39 8C 00 02 */	addi r12, r12, 2
/* 803430E8 00340048  48 00 00 38 */	b lbl_80343120
lbl_803430EC:
/* 803430EC 0034004C  7F 1A 18 50 */	subf r24, r26, r3
/* 803430F0 00340050  80 67 00 2C */	lwz r3, 0x2c(r7)
/* 803430F4 00340054  7C 1D C0 40 */	cmplw r29, r24
/* 803430F8 00340058  7F 38 18 50 */	subf r25, r24, r3
/* 803430FC 0034005C  40 81 00 24 */	ble lbl_80343120
/* 80343100 00340060  7F B8 E8 50 */	subf r29, r24, r29
lbl_80343104:
/* 80343104 00340064  88 79 00 00 */	lbz r3, 0(r25)
/* 80343108 00340068  37 18 FF FF */	addic. r24, r24, -1
/* 8034310C 0034006C  3B 39 00 01 */	addi r25, r25, 1
/* 80343110 00340070  98 6C 00 00 */	stb r3, 0(r12)
/* 80343114 00340074  39 8C 00 01 */	addi r12, r12, 1
/* 80343118 00340078  40 82 FF EC */	bne lbl_80343104
/* 8034311C 0034007C  83 27 00 28 */	lwz r25, 0x28(r7)
lbl_80343120:
/* 80343120 00340080  88 79 00 00 */	lbz r3, 0(r25)
/* 80343124 00340084  37 BD FF FF */	addic. r29, r29, -1
/* 80343128 00340088  3B 39 00 01 */	addi r25, r25, 1
/* 8034312C 0034008C  98 6C 00 00 */	stb r3, 0(r12)
/* 80343130 00340090  39 8C 00 01 */	addi r12, r12, 1
/* 80343134 00340094  40 82 FF EC */	bne lbl_80343120
/* 80343138 00340098  48 00 01 B4 */	b lbl_803432EC
lbl_8034313C:
/* 8034313C 0034009C  57 1A 06 73 */	rlwinm. r26, r24, 0, 0x19, 0x19
/* 80343140 003400A0  40 82 00 2C */	bne lbl_8034316C
/* 80343144 003400A4  57 1B 10 3A */	slwi r27, r24, 2
/* 80343148 003400A8  83 43 00 04 */	lwz r26, 4(r3)
/* 8034314C 003400AC  7F 7C D8 2E */	lwzx r27, r28, r27
/* 80343150 003400B0  57 5A 18 38 */	slwi r26, r26, 3
/* 80343154 003400B4  7C 1B D8 38 */	and r27, r0, r27
/* 80343158 003400B8  7C 63 D2 14 */	add r3, r3, r26
/* 8034315C 003400BC  57 7B 18 38 */	slwi r27, r27, 3
/* 80343160 003400C0  7C 63 DA 14 */	add r3, r3, r27
/* 80343164 003400C4  8B 03 00 00 */	lbz r24, 0(r3)
/* 80343168 003400C8  4B FF FE 3C */	b lbl_80342FA4
lbl_8034316C:
/* 8034316C 003400CC  3C 60 80 3D */	lis r3, lbl_803D7BA0@ha
/* 80343170 003400D0  55 24 E8 FE */	srwi r4, r9, 3
/* 80343174 003400D4  38 63 7B A0 */	addi r3, r3, lbl_803D7BA0@l
/* 80343178 003400D8  90 68 00 18 */	stw r3, 0x18(r8)
/* 8034317C 003400DC  80 68 00 04 */	lwz r3, 4(r8)
/* 80343180 003400E0  7C AB 18 50 */	subf r5, r11, r3
/* 80343184 003400E4  7C 04 28 40 */	cmplw r4, r5
/* 80343188 003400E8  40 80 00 08 */	bge lbl_80343190
/* 8034318C 003400EC  7C 85 23 78 */	mr r5, r4
lbl_80343190:
/* 80343190 003400F0  54 A3 18 38 */	slwi r3, r5, 3
/* 80343194 003400F4  90 07 00 20 */	stw r0, 0x20(r7)
/* 80343198 003400F8  7D 23 48 50 */	subf r9, r3, r9
/* 8034319C 003400FC  7D 6B 2A 14 */	add r11, r11, r5
/* 803431A0 00340100  91 27 00 1C */	stw r9, 0x1c(r7)
/* 803431A4 00340104  7D 45 50 50 */	subf r10, r5, r10
/* 803431A8 00340108  38 60 FF FD */	li r3, -3
/* 803431AC 0034010C  91 68 00 04 */	stw r11, 4(r8)
/* 803431B0 00340110  80 08 00 00 */	lwz r0, 0(r8)
/* 803431B4 00340114  80 88 00 08 */	lwz r4, 8(r8)
/* 803431B8 00340118  7C 00 50 50 */	subf r0, r0, r10
/* 803431BC 0034011C  7C 04 02 14 */	add r0, r4, r0
/* 803431C0 00340120  90 08 00 08 */	stw r0, 8(r8)
/* 803431C4 00340124  91 48 00 00 */	stw r10, 0(r8)
/* 803431C8 00340128  91 87 00 34 */	stw r12, 0x34(r7)
/* 803431CC 0034012C  48 00 01 84 */	b lbl_80343350
lbl_803431D0:
/* 803431D0 00340130  57 1B 06 73 */	rlwinm. r27, r24, 0, 0x19, 0x19
/* 803431D4 00340134  40 82 00 50 */	bne lbl_80343224
/* 803431D8 00340138  57 1B 10 3A */	slwi r27, r24, 2
/* 803431DC 0034013C  83 A3 00 04 */	lwz r29, 4(r3)
/* 803431E0 00340140  7F 7C D8 2E */	lwzx r27, r28, r27
/* 803431E4 00340144  57 BD 18 38 */	slwi r29, r29, 3
/* 803431E8 00340148  7C 1B D8 38 */	and r27, r0, r27
/* 803431EC 0034014C  7C 63 EA 14 */	add r3, r3, r29
/* 803431F0 00340150  57 7B 18 38 */	slwi r27, r27, 3
/* 803431F4 00340154  7C 63 DA 14 */	add r3, r3, r27
/* 803431F8 00340158  8B 03 00 00 */	lbz r24, 0(r3)
/* 803431FC 0034015C  28 18 00 00 */	cmplwi r24, 0
/* 80343200 00340160  40 82 FC 80 */	bne lbl_80342E80
/* 80343204 00340164  8B 03 00 01 */	lbz r24, 1(r3)
/* 80343208 00340168  38 84 FF FF */	addi r4, r4, -1
/* 8034320C 0034016C  80 63 00 04 */	lwz r3, 4(r3)
/* 80343210 00340170  7C 00 C4 30 */	srw r0, r0, r24
/* 80343214 00340174  7D 38 48 50 */	subf r9, r24, r9
/* 80343218 00340178  98 6C 00 00 */	stb r3, 0(r12)
/* 8034321C 0034017C  39 8C 00 01 */	addi r12, r12, 1
/* 80343220 00340180  48 00 00 CC */	b lbl_803432EC
lbl_80343224:
/* 80343224 00340184  57 03 06 B5 */	rlwinm. r3, r24, 0, 0x1a, 0x1a
/* 80343228 00340188  41 82 00 5C */	beq lbl_80343284
/* 8034322C 0034018C  80 68 00 04 */	lwz r3, 4(r8)
/* 80343230 00340190  55 24 E8 FE */	srwi r4, r9, 3
/* 80343234 00340194  7C AB 18 50 */	subf r5, r11, r3
/* 80343238 00340198  7C 04 28 40 */	cmplw r4, r5
/* 8034323C 0034019C  40 80 00 08 */	bge lbl_80343244
/* 80343240 003401A0  7C 85 23 78 */	mr r5, r4
lbl_80343244:
/* 80343244 003401A4  54 A3 18 38 */	slwi r3, r5, 3
/* 80343248 003401A8  90 07 00 20 */	stw r0, 0x20(r7)
/* 8034324C 003401AC  7D 23 48 50 */	subf r9, r3, r9
/* 80343250 003401B0  7D 6B 2A 14 */	add r11, r11, r5
/* 80343254 003401B4  91 27 00 1C */	stw r9, 0x1c(r7)
/* 80343258 003401B8  7D 45 50 50 */	subf r10, r5, r10
/* 8034325C 003401BC  38 60 00 01 */	li r3, 1
/* 80343260 003401C0  91 68 00 04 */	stw r11, 4(r8)
/* 80343264 003401C4  80 08 00 00 */	lwz r0, 0(r8)
/* 80343268 003401C8  80 88 00 08 */	lwz r4, 8(r8)
/* 8034326C 003401CC  7C 00 50 50 */	subf r0, r0, r10
/* 80343270 003401D0  7C 04 02 14 */	add r0, r4, r0
/* 80343274 003401D4  90 08 00 08 */	stw r0, 8(r8)
/* 80343278 003401D8  91 48 00 00 */	stw r10, 0(r8)
/* 8034327C 003401DC  91 87 00 34 */	stw r12, 0x34(r7)
/* 80343280 003401E0  48 00 00 D0 */	b lbl_80343350
lbl_80343284:
/* 80343284 003401E4  3C 60 80 3D */	lis r3, lbl_803D7BA0@ha
/* 80343288 003401E8  55 24 E8 FE */	srwi r4, r9, 3
/* 8034328C 003401EC  38 63 7B A0 */	addi r3, r3, lbl_803D7BA0@l
/* 80343290 003401F0  38 63 00 16 */	addi r3, r3, 0x16
/* 80343294 003401F4  90 68 00 18 */	stw r3, 0x18(r8)
/* 80343298 003401F8  80 68 00 04 */	lwz r3, 4(r8)
/* 8034329C 003401FC  7C AB 18 50 */	subf r5, r11, r3
/* 803432A0 00340200  7C 04 28 40 */	cmplw r4, r5
/* 803432A4 00340204  40 80 00 08 */	bge lbl_803432AC
/* 803432A8 00340208  7C 85 23 78 */	mr r5, r4
lbl_803432AC:
/* 803432AC 0034020C  54 A3 18 38 */	slwi r3, r5, 3
/* 803432B0 00340210  90 07 00 20 */	stw r0, 0x20(r7)
/* 803432B4 00340214  7D 23 48 50 */	subf r9, r3, r9
/* 803432B8 00340218  7D 6B 2A 14 */	add r11, r11, r5
/* 803432BC 0034021C  91 27 00 1C */	stw r9, 0x1c(r7)
/* 803432C0 00340220  7D 45 50 50 */	subf r10, r5, r10
/* 803432C4 00340224  38 60 FF FD */	li r3, -3
/* 803432C8 00340228  91 68 00 04 */	stw r11, 4(r8)
/* 803432CC 0034022C  80 08 00 00 */	lwz r0, 0(r8)
/* 803432D0 00340230  80 88 00 08 */	lwz r4, 8(r8)
/* 803432D4 00340234  7C 00 50 50 */	subf r0, r0, r10
/* 803432D8 00340238  7C 04 02 14 */	add r0, r4, r0
/* 803432DC 0034023C  90 08 00 08 */	stw r0, 8(r8)
/* 803432E0 00340240  91 48 00 00 */	stw r10, 0(r8)
/* 803432E4 00340244  91 87 00 34 */	stw r12, 0x34(r7)
/* 803432E8 00340248  48 00 00 68 */	b lbl_80343350
lbl_803432EC:
/* 803432EC 0034024C  28 04 01 02 */	cmplwi r4, 0x102
/* 803432F0 00340250  41 80 00 0C */	blt lbl_803432FC
/* 803432F4 00340254  28 0B 00 0A */	cmplwi r11, 0xa
/* 803432F8 00340258  40 80 FB 40 */	bge lbl_80342E38
lbl_803432FC:
/* 803432FC 0034025C  80 68 00 04 */	lwz r3, 4(r8)
/* 80343300 00340260  55 24 E8 FE */	srwi r4, r9, 3
/* 80343304 00340264  7C AB 18 50 */	subf r5, r11, r3
/* 80343308 00340268  7C 04 28 40 */	cmplw r4, r5
/* 8034330C 0034026C  40 80 00 08 */	bge lbl_80343314
/* 80343310 00340270  7C 85 23 78 */	mr r5, r4
lbl_80343314:
/* 80343314 00340274  54 A3 18 38 */	slwi r3, r5, 3
/* 80343318 00340278  90 07 00 20 */	stw r0, 0x20(r7)
/* 8034331C 0034027C  7D 23 48 50 */	subf r9, r3, r9
/* 80343320 00340280  7D 6B 2A 14 */	add r11, r11, r5
/* 80343324 00340284  91 27 00 1C */	stw r9, 0x1c(r7)
/* 80343328 00340288  7D 45 50 50 */	subf r10, r5, r10
/* 8034332C 0034028C  38 60 00 00 */	li r3, 0
/* 80343330 00340290  91 68 00 04 */	stw r11, 4(r8)
/* 80343334 00340294  80 08 00 00 */	lwz r0, 0(r8)
/* 80343338 00340298  80 88 00 08 */	lwz r4, 8(r8)
/* 8034333C 0034029C  7C 00 50 50 */	subf r0, r0, r10
/* 80343340 003402A0  7C 04 02 14 */	add r0, r4, r0
/* 80343344 003402A4  90 08 00 08 */	stw r0, 8(r8)
/* 80343348 003402A8  91 48 00 00 */	stw r10, 0(r8)
/* 8034334C 003402AC  91 87 00 34 */	stw r12, 0x34(r7)
lbl_80343350:
/* 80343350 003402B0  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80343354 003402B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80343358 003402B8  4E 80 00 20 */	blr 
