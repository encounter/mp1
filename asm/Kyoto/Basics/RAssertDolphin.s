.include "macros.inc"

.section .bss
.balign 8

.lcomm rs_debugger_buffer, 0x400, 4

.section .sbss, "wa"
.balign 8

.global CallFatal
CallFatal:
	.skip 0x4
.global rs_debugger_buffer_size
rs_debugger_buffer_size:
	.skip 0x4

.section .text, "ax"

.global rs_debugger_printf__FPCce
rs_debugger_printf__FPCce:
/* 802D682C 002D378C  94 21 FC B0 */	stwu r1, -0x350(r1)
/* 802D6830 002D3790  7C 08 02 A6 */	mflr r0
/* 802D6834 002D3794  90 01 03 54 */	stw r0, 0x354(r1)
/* 802D6838 002D3798  93 E1 03 4C */	stw r31, 0x34c(r1)
/* 802D683C 002D379C  93 C1 03 48 */	stw r30, 0x348(r1)
/* 802D6840 002D37A0  93 A1 03 44 */	stw r29, 0x344(r1)
/* 802D6844 002D37A4  40 86 00 24 */	bne cr1, lbl_802D6868
/* 802D6848 002D37A8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 802D684C 002D37AC  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 802D6850 002D37B0  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 802D6854 002D37B4  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 802D6858 002D37B8  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 802D685C 002D37BC  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 802D6860 002D37C0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 802D6864 002D37C4  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_802D6868:
/* 802D6868 002D37C8  3B E1 03 58 */	addi r31, r1, 0x358
/* 802D686C 002D37CC  39 81 00 08 */	addi r12, r1, 8
/* 802D6870 002D37D0  3F C0 01 00 */	lis r30, 0x100
/* 802D6874 002D37D4  3D 60 80 48 */	lis r11, rs_debugger_buffer@ha
/* 802D6878 002D37D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 802D687C 002D37DC  3B A1 00 68 */	addi r29, r1, 0x68
/* 802D6880 002D37E0  38 0B 97 A0 */	addi r0, r11, rs_debugger_buffer@l
/* 802D6884 002D37E4  7C 64 1B 78 */	mr r4, r3
/* 802D6888 002D37E8  90 61 00 08 */	stw r3, 8(r1)
/* 802D688C 002D37EC  7C 03 03 78 */	mr r3, r0
/* 802D6890 002D37F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802D6894 002D37F4  7F A5 EB 78 */	mr r5, r29
/* 802D6898 002D37F8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802D689C 002D37FC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802D68A0 002D3800  91 01 00 1C */	stw r8, 0x1c(r1)
/* 802D68A4 002D3804  91 21 00 20 */	stw r9, 0x20(r1)
/* 802D68A8 002D3808  91 41 00 24 */	stw r10, 0x24(r1)
/* 802D68AC 002D380C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 802D68B0 002D3810  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802D68B4 002D3814  91 81 00 70 */	stw r12, 0x70(r1)
/* 802D68B8 002D3818  48 0B 75 05 */	bl vsprintf
/* 802D68BC 002D381C  90 6D A6 8C */	stw r3, rs_debugger_buffer_size@sda21(r13)
/* 802D68C0 002D3820  38 61 00 78 */	addi r3, r1, 0x78
/* 802D68C4 002D3824  48 0A 8B C1 */	bl OSSaveContext
/* 802D68C8 002D3828  3C 60 D1 DD */	lis r3, 0xD1DD0D1E@ha
/* 802D68CC 002D382C  38 81 00 78 */	addi r4, r1, 0x78
/* 802D68D0 002D3830  38 C3 0D 1E */	addi r6, r3, 0xD1DD0D1E@l
/* 802D68D4 002D3834  38 60 00 FF */	li r3, 0xff
/* 802D68D8 002D3838  38 A0 00 00 */	li r5, 0
/* 802D68DC 002D383C  48 00 00 7D */	bl ErrorHandler__FUsP9OSContextii
/* 802D68E0 002D3840  80 01 03 54 */	lwz r0, 0x354(r1)
/* 802D68E4 002D3844  83 E1 03 4C */	lwz r31, 0x34c(r1)
/* 802D68E8 002D3848  83 C1 03 48 */	lwz r30, 0x348(r1)
/* 802D68EC 002D384C  83 A1 03 44 */	lwz r29, 0x344(r1)
/* 802D68F0 002D3850  7C 08 03 A6 */	mtlr r0
/* 802D68F4 002D3854  38 21 03 50 */	addi r1, r1, 0x350
/* 802D68F8 002D3858  4E 80 00 20 */	blr

.global SetErrorHandlers__Fv
SetErrorHandlers__Fv:
/* 802D68FC 002D385C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6900 002D3860  7C 08 02 A6 */	mflr r0
/* 802D6904 002D3864  3C 80 80 2D */	lis r4, ErrorHandler__FUsP9OSContextii@ha
/* 802D6908 002D3868  38 60 00 02 */	li r3, 2
/* 802D690C 002D386C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6910 002D3870  38 84 69 58 */	addi r4, r4, ErrorHandler__FUsP9OSContextii@l
/* 802D6914 002D3874  48 0A 92 45 */	bl OSSetErrorHandler
/* 802D6918 002D3878  3C 80 80 2D */	lis r4, ErrorHandler__FUsP9OSContextii@ha
/* 802D691C 002D387C  38 60 00 03 */	li r3, 3
/* 802D6920 002D3880  38 84 69 58 */	addi r4, r4, ErrorHandler__FUsP9OSContextii@l
/* 802D6924 002D3884  48 0A 92 35 */	bl OSSetErrorHandler
/* 802D6928 002D3888  3C 80 80 2D */	lis r4, ErrorHandler__FUsP9OSContextii@ha
/* 802D692C 002D388C  38 60 00 05 */	li r3, 5
/* 802D6930 002D3890  38 84 69 58 */	addi r4, r4, ErrorHandler__FUsP9OSContextii@l
/* 802D6934 002D3894  48 0A 92 25 */	bl OSSetErrorHandler
/* 802D6938 002D3898  3C 80 80 2D */	lis r4, ErrorHandler__FUsP9OSContextii@ha
/* 802D693C 002D389C  38 60 00 0F */	li r3, 0xf
/* 802D6940 002D38A0  38 84 69 58 */	addi r4, r4, ErrorHandler__FUsP9OSContextii@l
/* 802D6944 002D38A4  48 0A 92 15 */	bl OSSetErrorHandler
/* 802D6948 002D38A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D694C 002D38AC  7C 08 03 A6 */	mtlr r0
/* 802D6950 002D38B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6954 002D38B4  4E 80 00 20 */	blr

.if version >= 1

.global ErrorHandler__FUsP9OSContextii
ErrorHandler__FUsP9OSContextii:
/* 802D6A04 002D3964  94 21 FC C0 */	stwu r1, -0x340(r1)
/* 802D6A08 002D3968  7C 08 02 A6 */	mflr r0
/* 802D6A0C 002D396C  90 01 03 44 */	stw r0, 0x344(r1)
/* 802D6A10 002D3970  54 60 04 3E */	clrlwi r0, r3, 16
/* 802D6A14 002D3974  28 00 00 0F */	cmplwi r0, 0xf
/* 802D6A18 002D3978  BE E1 03 1C */	stmw r23, 0x31c(r1)
/* 802D6A1C 002D397C  7C 7A 1B 78 */	mr r26, r3
/* 802D6A20 002D3980  7C 9B 23 78 */	mr r27, r4
/* 802D6A24 002D3984  7C BC 2B 78 */	mr r28, r5
/* 802D6A28 002D3988  7C DD 33 78 */	mr r29, r6
/* 802D6A2C 002D398C  40 82 00 1C */	bne lbl_802D6A48
/* 802D6A30 002D3990  57 80 06 F7 */	rlwinm. r0, r28, 0, 27, 27
/* 802D6A34 002D3994  40 82 04 1C */	bne lbl_802D6E50
/* 802D6A38 002D3998  3C 00 01 80 */	lis r0, 0x180
/* 802D6A3C 002D399C  7C 1D 00 40 */	cmplw r29, r0
/* 802D6A40 002D39A0  40 81 00 08 */	ble lbl_802D6A48
/* 802D6A44 002D39A4  48 00 04 0C */	b lbl_802D6E50
lbl_802D6A48:
/* 802D6A48 002D39A8  38 60 00 03 */	li r3, 0x3
/* 802D6A4C 002D39AC  38 80 00 00 */	li r4, 0x0
/* 802D6A50 002D39B0  38 A0 00 00 */	li r5, 0x0
/* 802D6A54 002D39B4  38 C0 00 03 */	li r6, 0x3
/* 802D6A58 002D39B8  48 0A C2 41 */	bl OSProtectRange
/* 802D6A5C 002D39BC  3A E0 00 00 */	li r23, 0x0
/* 802D6A60 002D39C0  38 60 00 00 */	li r3, 0x0
/* 802D6A64 002D39C4  38 80 00 00 */	li r4, 0x0
/* 802D6A68 002D39C8  48 0B 03 51 */	bl PADControlMotor
/* 802D6A6C 002D39CC  38 60 00 01 */	li r3, 0x1
/* 802D6A70 002D39D0  48 0B 2A 19 */	bl VISetBlack
/* 802D6A74 002D39D4  48 0B 28 79 */	bl VIFlush
/* 802D6A78 002D39D8  38 61 00 48 */	addi r3, r1, 0x48
/* 802D6A7C 002D39DC  48 0A 8D 75 */	bl OSClearContext
/* 802D6A80 002D39E0  38 61 00 48 */	addi r3, r1, 0x48
/* 802D6A84 002D39E4  48 0A 8B 75 */	bl OSSetCurrentContext
/* 802D6A88 002D39E8  48 0A AD C9 */	bl OSEnableInterrupts
/* 802D6A8C 002D39EC  48 00 00 94 */	b lbl_802D6B20
lbl_802D6A90:
/* 802D6A90 002D39F0  38 61 00 14 */	addi r3, r1, 0x14
/* 802D6A94 002D39F4  48 0A FE C1 */	bl PADRead
/* 802D6A98 002D39F8  48 00 00 14 */	b lbl_802D6AAC
lbl_802D6A9C:
/* 802D6A9C 002D39FC  3C 60 40 00 */	lis r3, 0x4000
/* 802D6AA0 002D3A00  48 0A FA 99 */	bl PADReset
/* 802D6AA4 002D3A04  38 61 00 14 */	addi r3, r1, 0x14
/* 802D6AA8 002D3A08  48 0A FE AD */	bl PADRead
lbl_802D6AAC:
/* 802D6AAC 002D3A0C  88 61 00 2A */	lbz r3, 0x2a(r1)
/* 802D6AB0 002D3A10  7C 60 07 74 */	extsb r0, r3
/* 802D6AB4 002D3A14  2C 00 FF FF */	cmpwi r0, -0x1
/* 802D6AB8 002D3A18  41 82 FF E4 */	beq lbl_802D6A9C
/* 802D6ABC 002D3A1C  7C 60 07 75 */	extsb. r0, r3
/* 802D6AC0 002D3A20  40 82 00 60 */	bne lbl_802D6B20
/* 802D6AC4 002D3A24  A0 81 00 20 */	lhz r4, 0x20(r1)
/* 802D6AC8 002D3A28  80 62 C5 88 */	lwz r3, ExitButtons@sda21(r2)
/* 802D6ACC 002D3A2C  70 80 0C 10 */	andi. r0, r4, 0xc10
/* 802D6AD0 002D3A30  90 61 00 10 */	stw r3, 0x10(r1)
/* 802D6AD4 002D3A34  2C 00 0C 10 */	cmpwi r0, 0xc10
/* 802D6AD8 002D3A38  40 82 00 44 */	bne lbl_802D6B1C
/* 802D6ADC 002D3A3C  54 80 07 3F */	clrlwi. r0, r4, 28
/* 802D6AE0 002D3A40  41 82 00 40 */	beq lbl_802D6B20
/* 802D6AE4 002D3A44  38 61 00 10 */	addi r3, r1, 0x10
/* 802D6AE8 002D3A48  7C 63 BA 14 */	add r3, r3, r23
/* 802D6AEC 002D3A4C  88 03 00 00 */	lbz r0, 0x0(r3)
/* 802D6AF0 002D3A50  7C 80 00 39 */	and. r0, r4, r0
/* 802D6AF4 002D3A54  41 82 00 0C */	beq lbl_802D6B00
/* 802D6AF8 002D3A58  3A F7 00 01 */	addi r23, r23, 0x1
/* 802D6AFC 002D3A5C  48 00 00 24 */	b lbl_802D6B20
lbl_802D6B00:
/* 802D6B00 002D3A60  28 17 00 00 */	cmplwi r23, 0x0
/* 802D6B04 002D3A64  41 82 00 1C */	beq lbl_802D6B20
/* 802D6B08 002D3A68  88 03 FF FF */	lbz r0, -0x1(r3)
/* 802D6B0C 002D3A6C  7C 80 00 39 */	and. r0, r4, r0
/* 802D6B10 002D3A70  40 82 00 10 */	bne lbl_802D6B20
/* 802D6B14 002D3A74  3A E0 00 00 */	li r23, 0x0
/* 802D6B18 002D3A78  48 00 00 08 */	b lbl_802D6B20
lbl_802D6B1C:
/* 802D6B1C 002D3A7C  3A E0 00 00 */	li r23, 0x0
lbl_802D6B20:
/* 802D6B20 002D3A80  28 17 00 04 */	cmplwi r23, 0x4
/* 802D6B24 002D3A84  41 80 FF 6C */	blt lbl_802D6A90
/* 802D6B28 002D3A88  38 60 00 00 */	li r3, 0x0
/* 802D6B2C 002D3A8C  48 0B 29 5D */	bl VISetBlack
/* 802D6B30 002D3A90  48 0B 27 BD */	bl VIFlush
/* 802D6B34 002D3A94  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6B38 002D3A98  57 5F 04 3E */	clrlwi r31, r26, 16
/* 802D6B3C 002D3A9C  38 63 6C 98 */	addi r3, r3, "@stringBase0"@l
/* 802D6B40 002D3AA0  7F E4 FB 78 */	mr r4, r31
/* 802D6B44 002D3AA4  4C C6 31 82 */	crclr 6
/* 802D6B48 002D3AA8  48 0A 90 41 */	bl OSReport
/* 802D6B4C 002D3AAC  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6B50 002D3AB0  80 82 82 88 */	lwz r4, BuildTime@sda21(r2)
/* 802D6B54 002D3AB4  38 63 6C 98 */	addi r3, r3, "@stringBase0"@l
/* 802D6B58 002D3AB8  38 63 00 25 */	addi r3, r3, 0x25
/* 802D6B5C 002D3ABC  4C C6 31 82 */	crclr 6
/* 802D6B60 002D3AC0  48 0A 90 29 */	bl OSReport
/* 802D6B64 002D3AC4  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6B68 002D3AC8  7F 64 DB 78 */	mr r4, r27
/* 802D6B6C 002D3ACC  38 63 6C 98 */	addi r3, r3, "@stringBase0"@l
/* 802D6B70 002D3AD0  38 63 00 29 */	addi r3, r3, 0x29
/* 802D6B74 002D3AD4  4C C6 31 82 */	crclr 6
/* 802D6B78 002D3AD8  48 0A 90 11 */	bl OSReport
/* 802D6B7C 002D3ADC  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6B80 002D3AE0  7F 79 DB 78 */	mr r25, r27
/* 802D6B84 002D3AE4  3B 03 6C 98 */	addi r24, r3, "@stringBase0"@l
/* 802D6B88 002D3AE8  3A E0 00 00 */	li r23, 0x0
lbl_802D6B8C:
/* 802D6B8C 002D3AEC  81 19 00 40 */	lwz r8, 0x40(r25)
/* 802D6B90 002D3AF0  7E E4 BB 78 */	mr r4, r23
/* 802D6B94 002D3AF4  80 B9 00 00 */	lwz r5, 0x0(r25)
/* 802D6B98 002D3AF8  38 78 00 6D */	addi r3, r24, 0x6d
/* 802D6B9C 002D3AFC  7D 09 43 78 */	mr r9, r8
/* 802D6BA0 002D3B00  38 F7 00 10 */	addi r7, r23, 0x10
/* 802D6BA4 002D3B04  7C A6 2B 78 */	mr r6, r5
/* 802D6BA8 002D3B08  4C C6 31 82 */	crclr 6
/* 802D6BAC 002D3B0C  48 0A 8F DD */	bl OSReport
/* 802D6BB0 002D3B10  3A F7 00 01 */	addi r23, r23, 0x1
/* 802D6BB4 002D3B14  3B 39 00 04 */	addi r25, r25, 0x4
/* 802D6BB8 002D3B18  28 17 00 10 */	cmplwi r23, 0x10
/* 802D6BBC 002D3B1C  41 80 FF D0 */	blt lbl_802D6B8C
/* 802D6BC0 002D3B20  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6BC4 002D3B24  80 9B 00 84 */	lwz r4, 0x84(r27)
/* 802D6BC8 002D3B28  38 63 6C 98 */	addi r3, r3, "@stringBase0"@l
/* 802D6BCC 002D3B2C  80 BB 00 80 */	lwz r5, 0x80(r27)
/* 802D6BD0 002D3B30  38 63 00 9D */	addi r3, r3, 0x9d
/* 802D6BD4 002D3B34  4C C6 31 82 */	crclr 6
/* 802D6BD8 002D3B38  48 0A 8F B1 */	bl OSReport
/* 802D6BDC 002D3B3C  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6BE0 002D3B40  80 9B 01 98 */	lwz r4, 0x198(r27)
/* 802D6BE4 002D3B44  38 63 6C 98 */	addi r3, r3, "@stringBase0"@l
/* 802D6BE8 002D3B48  80 BB 01 9C */	lwz r5, 0x19c(r27)
/* 802D6BEC 002D3B4C  38 63 00 CC */	addi r3, r3, 0xcc
/* 802D6BF0 002D3B50  4C C6 31 82 */	crclr 6
/* 802D6BF4 002D3B54  48 0A 8F 95 */	bl OSReport
/* 802D6BF8 002D3B58  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6BFC 002D3B5C  7F 84 E3 78 */	mr r4, r28
/* 802D6C00 002D3B60  38 63 6C 98 */	addi r3, r3, "@stringBase0"@l
/* 802D6C04 002D3B64  7F A5 EB 78 */	mr r5, r29
/* 802D6C08 002D3B68  38 63 00 FB */	addi r3, r3, 0xfb
/* 802D6C0C 002D3B6C  4C C6 31 82 */	crclr 6
/* 802D6C10 002D3B70  48 0A 8F 79 */	bl OSReport
/* 802D6C14 002D3B74  83 0D A6 8C */	lwz r24, rs_debugger_buffer_size@sda21(r13)
/* 802D6C18 002D3B78  2C 18 00 00 */	cmpwi r24, 0x0
/* 802D6C1C 002D3B7C  41 82 00 2C */	beq lbl_802D6C48
/* 802D6C20 002D3B80  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6C24 002D3B84  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6C28 002D3B88  38 04 99 80 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6C2C 002D3B8C  38 83 6C 98 */	addi r4, r3, "@stringBase0"@l
/* 802D6C30 002D3B90  7C 60 C2 14 */	add r3, r0, r24
/* 802D6C34 002D3B94  38 84 01 2A */	addi r4, r4, 0x12a
/* 802D6C38 002D3B98  4C C6 31 82 */	crclr 6
/* 802D6C3C 002D3B9C  48 0B 72 7D */	bl sprintf
/* 802D6C40 002D3BA0  7F 18 1A 14 */	add r24, r24, r3
/* 802D6C44 002D3BA4  48 00 00 28 */	b lbl_802D6C6C
lbl_802D6C48:
/* 802D6C48 002D3BA8  3C 80 80 3D */	lis r4, "@stringBase0"@ha
/* 802D6C4C 002D3BAC  3C 60 80 48 */	lis r3, rs_debugger_buffer@ha
/* 802D6C50 002D3BB0  38 84 6C 98 */	addi r4, r4, "@stringBase0"@l
/* 802D6C54 002D3BB4  7F E5 FB 78 */	mr r5, r31
/* 802D6C58 002D3BB8  38 63 99 80 */	addi r3, r3, rs_debugger_buffer@l
/* 802D6C5C 002D3BBC  38 84 01 39 */	addi r4, r4, 0x139
/* 802D6C60 002D3BC0  4C C6 31 82 */	crclr 6
/* 802D6C64 002D3BC4  48 0B 72 55 */	bl sprintf
/* 802D6C68 002D3BC8  7F 18 1A 14 */	add r24, r24, r3
lbl_802D6C6C:
/* 802D6C6C 002D3BCC  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6C70 002D3BD0  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6C74 002D3BD4  38 04 99 80 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6C78 002D3BD8  80 A2 82 88 */	lwz r5, BuildTime@sda21(r2)
/* 802D6C7C 002D3BDC  38 83 6C 98 */	addi r4, r3, "@stringBase0"@l
/* 802D6C80 002D3BE0  7C 60 C2 14 */	add r3, r0, r24
/* 802D6C84 002D3BE4  38 84 00 25 */	addi r4, r4, 0x25
/* 802D6C88 002D3BE8  4C C6 31 82 */	crclr 6
/* 802D6C8C 002D3BEC  48 0B 72 2D */	bl sprintf
/* 802D6C90 002D3BF0  3C A0 80 48 */	lis r5, rs_debugger_buffer@ha
/* 802D6C94 002D3BF4  3C 80 80 3D */	lis r4, "@stringBase0"@ha
/* 802D6C98 002D3BF8  38 84 6C 98 */	addi r4, r4, "@stringBase0"@l
/* 802D6C9C 002D3BFC  7F D8 1A 14 */	add r30, r24, r3
/* 802D6CA0 002D3C00  38 05 99 80 */	addi r0, r5, rs_debugger_buffer@l
/* 802D6CA4 002D3C04  80 BB 01 98 */	lwz r5, 0x198(r27)
/* 802D6CA8 002D3C08  7F A6 EB 78 */	mr r6, r29
/* 802D6CAC 002D3C0C  38 84 01 54 */	addi r4, r4, 0x154
/* 802D6CB0 002D3C10  7C 60 F2 14 */	add r3, r0, r30
/* 802D6CB4 002D3C14  4C C6 31 82 */	crclr 6
/* 802D6CB8 002D3C18  48 0B 72 01 */	bl sprintf
/* 802D6CBC 002D3C1C  57 40 04 3E */	clrlwi r0, r26, 16
/* 802D6CC0 002D3C20  7F DE 1A 14 */	add r30, r30, r3
/* 802D6CC4 002D3C24  28 00 00 0F */	cmplwi r0, 0xf
/* 802D6CC8 002D3C28  40 82 00 2C */	bne lbl_802D6CF4
/* 802D6CCC 002D3C2C  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6CD0 002D3C30  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6CD4 002D3C34  38 04 99 80 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6CD8 002D3C38  7F 85 E3 78 */	mr r5, r28
/* 802D6CDC 002D3C3C  38 83 6C 98 */	addi r4, r3, "@stringBase0"@l
/* 802D6CE0 002D3C40  7C 60 F2 14 */	add r3, r0, r30
/* 802D6CE4 002D3C44  38 84 01 6E */	addi r4, r4, 0x16e
/* 802D6CE8 002D3C48  4C C6 31 82 */	crclr 6
/* 802D6CEC 002D3C4C  48 0B 71 CD */	bl sprintf
/* 802D6CF0 002D3C50  7F DE 1A 14 */	add r30, r30, r3
lbl_802D6CF4:
/* 802D6CF4 002D3C54  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6CF8 002D3C58  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6CFC 002D3C5C  38 04 99 80 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6D00 002D3C60  38 83 6C 98 */	addi r4, r3, "@stringBase0"@l
/* 802D6D04 002D3C64  7C 60 F2 14 */	add r3, r0, r30
/* 802D6D08 002D3C68  38 84 01 74 */	addi r4, r4, 0x174
/* 802D6D0C 002D3C6C  4C C6 31 82 */	crclr 6
/* 802D6D10 002D3C70  48 0B 71 A9 */	bl sprintf
/* 802D6D14 002D3C74  3C 80 80 3D */	lis r4, "@stringBase0"@ha
/* 802D6D18 002D3C78  7F DE 1A 14 */	add r30, r30, r3
/* 802D6D1C 002D3C7C  38 64 6C 98 */	addi r3, r4, "@stringBase0"@l
/* 802D6D20 002D3C80  38 63 01 77 */	addi r3, r3, 0x177
/* 802D6D24 002D3C84  4C C6 31 82 */	crclr 6
/* 802D6D28 002D3C88  48 0A 8E 61 */	bl OSReport
/* 802D6D2C 002D3C8C  3C A0 80 00 */	lis r5, 0x80000400@ha
/* 802D6D30 002D3C90  3C 80 80 3D */	lis r4, "@stringBase0"@ha
/* 802D6D34 002D3C94  3C 60 80 48 */	lis r3, rs_debugger_buffer@ha
/* 802D6D38 002D3C98  83 FB 00 04 */	lwz r31, 0x4(r27)
/* 802D6D3C 002D3C9C  3B 05 04 00 */	addi r24, r5, 0x80000400@l
/* 802D6D40 002D3CA0  3B 84 6C 98 */	addi r28, r4, "@stringBase0"@l
/* 802D6D44 002D3CA4  3B 43 99 80 */	addi r26, r3, rs_debugger_buffer@l
/* 802D6D48 002D3CA8  3A E0 00 00 */	li r23, 0x0
/* 802D6D4C 002D3CAC  3F 20 81 80 */	lis r25, 0x8180
/* 802D6D50 002D3CB0  48 00 00 94 */	b lbl_802D6DE4
lbl_802D6D54:
/* 802D6D54 002D3CB4  7C 1F C0 40 */	cmplw r31, r24
/* 802D6D58 002D3CB8  40 81 00 48 */	ble lbl_802D6DA0
/* 802D6D5C 002D3CBC  7C 1F C8 40 */	cmplw r31, r25
/* 802D6D60 002D3CC0  40 80 00 40 */	bge lbl_802D6DA0
/* 802D6D64 002D3CC4  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 802D6D68 002D3CC8  7F E4 FB 78 */	mr r4, r31
/* 802D6D6C 002D3CCC  80 DF 00 04 */	lwz r6, 0x4(r31)
/* 802D6D70 002D3CD0  38 7C 01 9D */	addi r3, r28, 0x19d
/* 802D6D74 002D3CD4  4C C6 31 82 */	crclr 6
/* 802D6D78 002D3CD8  48 0A 8E 11 */	bl OSReport
/* 802D6D7C 002D3CDC  80 DF 00 00 */	lwz r6, 0x0(r31)
/* 802D6D80 002D3CE0  7F E5 FB 78 */	mr r5, r31
/* 802D6D84 002D3CE4  80 FF 00 04 */	lwz r7, 0x4(r31)
/* 802D6D88 002D3CE8  7C 7A F2 14 */	add r3, r26, r30
/* 802D6D8C 002D3CEC  38 9C 01 B9 */	addi r4, r28, 0x1b9
/* 802D6D90 002D3CF0  4C C6 31 82 */	crclr 6
/* 802D6D94 002D3CF4  48 0B 71 25 */	bl sprintf
/* 802D6D98 002D3CF8  7F DE 1A 14 */	add r30, r30, r3
/* 802D6D9C 002D3CFC  48 00 00 44 */	b lbl_802D6DE0
lbl_802D6DA0:
/* 802D6DA0 002D3D00  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6DA4 002D3D04  7F E4 FB 78 */	mr r4, r31
/* 802D6DA8 002D3D08  38 63 6C 98 */	addi r3, r3, "@stringBase0"@l
/* 802D6DAC 002D3D0C  38 63 01 D0 */	addi r3, r3, 0x1d0
/* 802D6DB0 002D3D10  4C C6 31 82 */	crclr 6
/* 802D6DB4 002D3D14  48 0A 8D D5 */	bl OSReport
/* 802D6DB8 002D3D18  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6DBC 002D3D1C  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6DC0 002D3D20  38 04 99 80 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6DC4 002D3D24  7F E5 FB 78 */	mr r5, r31
/* 802D6DC8 002D3D28  38 83 6C 98 */	addi r4, r3, "@stringBase0"@l
/* 802D6DCC 002D3D2C  7C 60 F2 14 */	add r3, r0, r30
/* 802D6DD0 002D3D30  38 84 01 E3 */	addi r4, r4, 0x1e3
/* 802D6DD4 002D3D34  4C C6 31 82 */	crclr 6
/* 802D6DD8 002D3D38  48 0B 70 E1 */	bl sprintf
/* 802D6DDC 002D3D3C  48 00 00 28 */	b lbl_802D6E04
lbl_802D6DE0:
/* 802D6DE0 002D3D40  83 FF 00 00 */	lwz r31, 0x0(r31)
lbl_802D6DE4:
/* 802D6DE4 002D3D44  28 1F 00 00 */	cmplwi r31, 0x0
/* 802D6DE8 002D3D48  41 82 00 1C */	beq lbl_802D6E04
/* 802D6DEC 002D3D4C  3C 1F 00 01 */	addis r0, r31, 0x1
/* 802D6DF0 002D3D50  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D6DF4 002D3D54  41 82 00 10 */	beq lbl_802D6E04
/* 802D6DF8 002D3D58  28 17 00 10 */	cmplwi r23, 0x10
/* 802D6DFC 002D3D5C  3A F7 00 01 */	addi r23, r23, 0x1
/* 802D6E00 002D3D60  41 80 FF 54 */	blt lbl_802D6D54
lbl_802D6E04:
/* 802D6E04 002D3D64  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6E08 002D3D68  80 9B 01 98 */	lwz r4, 0x198(r27)
/* 802D6E0C 002D3D6C  38 63 6C 98 */	addi r3, r3, "@stringBase0"@l
/* 802D6E10 002D3D70  7F A5 EB 78 */	mr r5, r29
/* 802D6E14 002D3D74  38 63 01 F4 */	addi r3, r3, 0x1f4
/* 802D6E18 002D3D78  4C C6 31 82 */	crclr 6
/* 802D6E1C 002D3D7C  48 0A 8D 6D */	bl OSReport
/* 802D6E20 002D3D80  88 0D A6 88 */	lbz r0, CallFatal@sda21(r13)
/* 802D6E24 002D3D84  28 00 00 00 */	cmplwi r0, 0x0
/* 802D6E28 002D3D88  40 82 00 28 */	bne lbl_802D6E50
/* 802D6E2C 002D3D8C  80 82 C5 80 */	lwz r4, bg@sda21(r2)
/* 802D6E30 002D3D90  3C 60 80 48 */	lis r3, rs_debugger_buffer@ha
/* 802D6E34 002D3D94  80 02 C5 84 */	lwz r0, fg@sda21(r2)
/* 802D6E38 002D3D98  38 A3 99 80 */	addi r5, r3, rs_debugger_buffer@l
/* 802D6E3C 002D3D9C  90 81 00 08 */	stw r4, 0x8(r1)
/* 802D6E40 002D3DA0  38 61 00 0C */	addi r3, r1, 0xc
/* 802D6E44 002D3DA4  38 81 00 08 */	addi r4, r1, 0x8
/* 802D6E48 002D3DA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D6E4C 002D3DAC  48 0A 98 C1 */	bl OSFatal
lbl_802D6E50:
/* 802D6E50 002D3DB0  BA E1 03 1C */	lmw r23, 0x31c(r1)
/* 802D6E54 002D3DB4  80 01 03 44 */	lwz r0, 0x344(r1)
/* 802D6E58 002D3DB8  7C 08 03 A6 */	mtlr r0
/* 802D6E5C 002D3DBC  38 21 03 40 */	addi r1, r1, 0x340
/* 802D6E60 002D3DC0  4E 80 00 20 */	blr 

.else

.global ErrorHandler__FUsP9OSContextii
ErrorHandler__FUsP9OSContextii:
/* 802D6958 002D38B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802D695C 002D38BC  7C 08 02 A6 */	mflr r0
/* 802D6960 002D38C0  90 01 00 74 */	stw r0, 0x74(r1)
/* 802D6964 002D38C4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802D6968 002D38C8  28 00 00 0F */	cmplwi r0, 0xf
/* 802D696C 002D38CC  BE E1 00 4C */	stmw r23, 0x4c(r1)
/* 802D6970 002D38D0  7C 7A 1B 78 */	mr r26, r3
/* 802D6974 002D38D4  7C 9B 23 78 */	mr r27, r4
/* 802D6978 002D38D8  7C BC 2B 78 */	mr r28, r5
/* 802D697C 002D38DC  7C DD 33 78 */	mr r29, r6
/* 802D6980 002D38E0  40 82 00 1C */	bne lbl_802D699C
/* 802D6984 002D38E4  57 80 06 F7 */	rlwinm. r0, r28, 0, 0x1b, 0x1b
/* 802D6988 002D38E8  40 82 03 E8 */	bne lbl_802D6D70
/* 802D698C 002D38EC  3C 00 01 80 */	lis r0, 0x180
/* 802D6990 002D38F0  7C 1D 00 40 */	cmplw r29, r0
/* 802D6994 002D38F4  40 81 00 08 */	ble lbl_802D699C
/* 802D6998 002D38F8  48 00 03 D8 */	b lbl_802D6D70
lbl_802D699C:
/* 802D699C 002D38FC  38 60 00 03 */	li r3, 3
/* 802D69A0 002D3900  38 80 00 00 */	li r4, 0
/* 802D69A4 002D3904  38 A0 00 00 */	li r5, 0
/* 802D69A8 002D3908  38 C0 00 03 */	li r6, 3
/* 802D69AC 002D390C  48 0A C1 11 */	bl OSProtectRange
/* 802D69B0 002D3910  3A E0 00 00 */	li r23, 0
/* 802D69B4 002D3914  38 60 00 00 */	li r3, 0
/* 802D69B8 002D3918  38 80 00 00 */	li r4, 0
/* 802D69BC 002D391C  48 0B 02 21 */	bl PADControlMotor
/* 802D69C0 002D3920  38 60 00 01 */	li r3, 1
/* 802D69C4 002D3924  48 0B 28 E9 */	bl VISetBlack
/* 802D69C8 002D3928  48 0B 27 49 */	bl VIFlush
/* 802D69CC 002D392C  48 00 00 74 */	b lbl_802D6A40
lbl_802D69D0:
/* 802D69D0 002D3930  38 61 00 14 */	addi r3, r1, 0x14
/* 802D69D4 002D3934  48 0A FD A5 */	bl PADRead
/* 802D69D8 002D3938  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 802D69DC 002D393C  7C 00 07 75 */	extsb. r0, r0
/* 802D69E0 002D3940  40 82 00 60 */	bne lbl_802D6A40
/* 802D69E4 002D3944  A0 81 00 20 */	lhz r4, 0x20(r1)
/* 802D69E8 002D3948  80 62 C5 88 */	lwz r3, ExitButtons@sda21(r2)
/* 802D69EC 002D394C  70 80 0C 10 */	andi. r0, r4, 0xc10
/* 802D69F0 002D3950  90 61 00 10 */	stw r3, 0x10(r1)
/* 802D69F4 002D3954  2C 00 0C 10 */	cmpwi r0, 0xc10
/* 802D69F8 002D3958  40 82 00 44 */	bne lbl_802D6A3C
/* 802D69FC 002D395C  54 80 07 3F */	clrlwi. r0, r4, 0x1c
/* 802D6A00 002D3960  41 82 00 40 */	beq lbl_802D6A40
/* 802D6A04 002D3964  38 61 00 10 */	addi r3, r1, 0x10
/* 802D6A08 002D3968  7C 63 BA 14 */	add r3, r3, r23
/* 802D6A0C 002D396C  88 03 00 00 */	lbz r0, 0(r3)
/* 802D6A10 002D3970  7C 80 00 39 */	and. r0, r4, r0
/* 802D6A14 002D3974  41 82 00 0C */	beq lbl_802D6A20
/* 802D6A18 002D3978  3A F7 00 01 */	addi r23, r23, 1
/* 802D6A1C 002D397C  48 00 00 24 */	b lbl_802D6A40
lbl_802D6A20:
/* 802D6A20 002D3980  28 17 00 00 */	cmplwi r23, 0
/* 802D6A24 002D3984  41 82 00 1C */	beq lbl_802D6A40
/* 802D6A28 002D3988  88 03 FF FF */	lbz r0, -1(r3)
/* 802D6A2C 002D398C  7C 80 00 39 */	and. r0, r4, r0
/* 802D6A30 002D3990  40 82 00 10 */	bne lbl_802D6A40
/* 802D6A34 002D3994  3A E0 00 00 */	li r23, 0
/* 802D6A38 002D3998  48 00 00 08 */	b lbl_802D6A40
lbl_802D6A3C:
/* 802D6A3C 002D399C  3A E0 00 00 */	li r23, 0
lbl_802D6A40:
/* 802D6A40 002D39A0  28 17 00 04 */	cmplwi r23, 4
/* 802D6A44 002D39A4  41 80 FF 8C */	blt lbl_802D69D0
/* 802D6A48 002D39A8  38 60 00 00 */	li r3, 0
/* 802D6A4C 002D39AC  48 0B 28 61 */	bl VISetBlack
/* 802D6A50 002D39B0  48 0B 26 C1 */	bl VIFlush
/* 802D6A54 002D39B4  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6A58 002D39B8  57 5F 04 3E */	clrlwi r31, r26, 0x10
/* 802D6A5C 002D39BC  38 63 6A B8 */	addi r3, r3, "@stringBase0"@l
/* 802D6A60 002D39C0  7F E4 FB 78 */	mr r4, r31
/* 802D6A64 002D39C4  4C C6 31 82 */	crclr 6
/* 802D6A68 002D39C8  48 0A 8F 45 */	bl OSReport
/* 802D6A6C 002D39CC  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6A70 002D39D0  80 82 82 88 */	lwz r4, BuildTime@sda21(r2)
/* 802D6A74 002D39D4  38 63 6A B8 */	addi r3, r3, "@stringBase0"@l
/* 802D6A78 002D39D8  38 63 00 25 */	addi r3, r3, 0x25
/* 802D6A7C 002D39DC  4C C6 31 82 */	crclr 6
/* 802D6A80 002D39E0  48 0A 8F 2D */	bl OSReport
/* 802D6A84 002D39E4  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6A88 002D39E8  7F 64 DB 78 */	mr r4, r27
/* 802D6A8C 002D39EC  38 63 6A B8 */	addi r3, r3, "@stringBase0"@l
/* 802D6A90 002D39F0  38 63 00 29 */	addi r3, r3, 0x29
/* 802D6A94 002D39F4  4C C6 31 82 */	crclr 6
/* 802D6A98 002D39F8  48 0A 8F 15 */	bl OSReport
/* 802D6A9C 002D39FC  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6AA0 002D3A00  7F 79 DB 78 */	mr r25, r27
/* 802D6AA4 002D3A04  3B 03 6A B8 */	addi r24, r3, "@stringBase0"@l
/* 802D6AA8 002D3A08  3A E0 00 00 */	li r23, 0
lbl_802D6AAC:
/* 802D6AAC 002D3A0C  81 19 00 40 */	lwz r8, 0x40(r25)
/* 802D6AB0 002D3A10  7E E4 BB 78 */	mr r4, r23
/* 802D6AB4 002D3A14  80 B9 00 00 */	lwz r5, 0(r25)
/* 802D6AB8 002D3A18  38 78 00 6D */	addi r3, r24, 0x6d
/* 802D6ABC 002D3A1C  7D 09 43 78 */	mr r9, r8
/* 802D6AC0 002D3A20  38 F7 00 10 */	addi r7, r23, 0x10
/* 802D6AC4 002D3A24  7C A6 2B 78 */	mr r6, r5
/* 802D6AC8 002D3A28  4C C6 31 82 */	crclr 6
/* 802D6ACC 002D3A2C  48 0A 8E E1 */	bl OSReport
/* 802D6AD0 002D3A30  3A F7 00 01 */	addi r23, r23, 1
/* 802D6AD4 002D3A34  3B 39 00 04 */	addi r25, r25, 4
/* 802D6AD8 002D3A38  28 17 00 10 */	cmplwi r23, 0x10
/* 802D6ADC 002D3A3C  41 80 FF D0 */	blt lbl_802D6AAC
/* 802D6AE0 002D3A40  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6AE4 002D3A44  80 9B 00 84 */	lwz r4, 0x84(r27)
/* 802D6AE8 002D3A48  38 63 6A B8 */	addi r3, r3, "@stringBase0"@l
/* 802D6AEC 002D3A4C  80 BB 00 80 */	lwz r5, 0x80(r27)
/* 802D6AF0 002D3A50  38 63 00 9D */	addi r3, r3, 0x9d
/* 802D6AF4 002D3A54  4C C6 31 82 */	crclr 6
/* 802D6AF8 002D3A58  48 0A 8E B5 */	bl OSReport
/* 802D6AFC 002D3A5C  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6B00 002D3A60  80 9B 01 98 */	lwz r4, 0x198(r27)
/* 802D6B04 002D3A64  38 63 6A B8 */	addi r3, r3, "@stringBase0"@l
/* 802D6B08 002D3A68  80 BB 01 9C */	lwz r5, 0x19c(r27)
/* 802D6B0C 002D3A6C  38 63 00 CC */	addi r3, r3, 0xcc
/* 802D6B10 002D3A70  4C C6 31 82 */	crclr 6
/* 802D6B14 002D3A74  48 0A 8E 99 */	bl OSReport
/* 802D6B18 002D3A78  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6B1C 002D3A7C  7F 84 E3 78 */	mr r4, r28
/* 802D6B20 002D3A80  38 63 6A B8 */	addi r3, r3, "@stringBase0"@l
/* 802D6B24 002D3A84  7F A5 EB 78 */	mr r5, r29
/* 802D6B28 002D3A88  38 63 00 FB */	addi r3, r3, 0xfb
/* 802D6B2C 002D3A8C  4C C6 31 82 */	crclr 6
/* 802D6B30 002D3A90  48 0A 8E 7D */	bl OSReport
/* 802D6B34 002D3A94  83 0D A6 8C */	lwz r24, rs_debugger_buffer_size@sda21(r13)
/* 802D6B38 002D3A98  2C 18 00 00 */	cmpwi r24, 0
/* 802D6B3C 002D3A9C  41 82 00 2C */	beq lbl_802D6B68
/* 802D6B40 002D3AA0  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6B44 002D3AA4  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6B48 002D3AA8  38 04 97 A0 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6B4C 002D3AAC  38 83 6A B8 */	addi r4, r3, "@stringBase0"@l
/* 802D6B50 002D3AB0  7C 60 C2 14 */	add r3, r0, r24
/* 802D6B54 002D3AB4  38 84 01 2A */	addi r4, r4, 0x12a
/* 802D6B58 002D3AB8  4C C6 31 82 */	crclr 6
/* 802D6B5C 002D3ABC  48 0B 71 81 */	bl sprintf
/* 802D6B60 002D3AC0  7F 18 1A 14 */	add r24, r24, r3
/* 802D6B64 002D3AC4  48 00 00 28 */	b lbl_802D6B8C
lbl_802D6B68:
/* 802D6B68 002D3AC8  3C 80 80 3D */	lis r4, "@stringBase0"@ha
/* 802D6B6C 002D3ACC  3C 60 80 48 */	lis r3, rs_debugger_buffer@ha
/* 802D6B70 002D3AD0  38 84 6A B8 */	addi r4, r4, "@stringBase0"@l
/* 802D6B74 002D3AD4  7F E5 FB 78 */	mr r5, r31
/* 802D6B78 002D3AD8  38 63 97 A0 */	addi r3, r3, rs_debugger_buffer@l
/* 802D6B7C 002D3ADC  38 84 01 39 */	addi r4, r4, 0x139
/* 802D6B80 002D3AE0  4C C6 31 82 */	crclr 6
/* 802D6B84 002D3AE4  48 0B 71 59 */	bl sprintf
/* 802D6B88 002D3AE8  7F 18 1A 14 */	add r24, r24, r3
lbl_802D6B8C:
/* 802D6B8C 002D3AEC  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6B90 002D3AF0  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6B94 002D3AF4  38 04 97 A0 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6B98 002D3AF8  80 A2 82 88 */	lwz r5, BuildTime@sda21(r2)
/* 802D6B9C 002D3AFC  38 83 6A B8 */	addi r4, r3, "@stringBase0"@l
/* 802D6BA0 002D3B00  7C 60 C2 14 */	add r3, r0, r24
/* 802D6BA4 002D3B04  38 84 00 25 */	addi r4, r4, 0x25
/* 802D6BA8 002D3B08  4C C6 31 82 */	crclr 6
/* 802D6BAC 002D3B0C  48 0B 71 31 */	bl sprintf
/* 802D6BB0 002D3B10  3C A0 80 48 */	lis r5, rs_debugger_buffer@ha
/* 802D6BB4 002D3B14  3C 80 80 3D */	lis r4, "@stringBase0"@ha
/* 802D6BB8 002D3B18  38 84 6A B8 */	addi r4, r4, "@stringBase0"@l
/* 802D6BBC 002D3B1C  7F D8 1A 14 */	add r30, r24, r3
/* 802D6BC0 002D3B20  38 05 97 A0 */	addi r0, r5, rs_debugger_buffer@l
/* 802D6BC4 002D3B24  80 BB 01 98 */	lwz r5, 0x198(r27)
/* 802D6BC8 002D3B28  7F A6 EB 78 */	mr r6, r29
/* 802D6BCC 002D3B2C  38 84 01 54 */	addi r4, r4, 0x154
/* 802D6BD0 002D3B30  7C 60 F2 14 */	add r3, r0, r30
/* 802D6BD4 002D3B34  4C C6 31 82 */	crclr 6
/* 802D6BD8 002D3B38  48 0B 71 05 */	bl sprintf
/* 802D6BDC 002D3B3C  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 802D6BE0 002D3B40  7F DE 1A 14 */	add r30, r30, r3
/* 802D6BE4 002D3B44  28 00 00 0F */	cmplwi r0, 0xf
/* 802D6BE8 002D3B48  40 82 00 2C */	bne lbl_802D6C14
/* 802D6BEC 002D3B4C  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6BF0 002D3B50  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6BF4 002D3B54  38 04 97 A0 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6BF8 002D3B58  7F 85 E3 78 */	mr r5, r28
/* 802D6BFC 002D3B5C  38 83 6A B8 */	addi r4, r3, "@stringBase0"@l
/* 802D6C00 002D3B60  7C 60 F2 14 */	add r3, r0, r30
/* 802D6C04 002D3B64  38 84 01 6E */	addi r4, r4, 0x16e
/* 802D6C08 002D3B68  4C C6 31 82 */	crclr 6
/* 802D6C0C 002D3B6C  48 0B 70 D1 */	bl sprintf
/* 802D6C10 002D3B70  7F DE 1A 14 */	add r30, r30, r3
lbl_802D6C14:
/* 802D6C14 002D3B74  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6C18 002D3B78  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6C1C 002D3B7C  38 04 97 A0 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6C20 002D3B80  38 83 6A B8 */	addi r4, r3, "@stringBase0"@l
/* 802D6C24 002D3B84  7C 60 F2 14 */	add r3, r0, r30
/* 802D6C28 002D3B88  38 84 01 74 */	addi r4, r4, 0x174
/* 802D6C2C 002D3B8C  4C C6 31 82 */	crclr 6
/* 802D6C30 002D3B90  48 0B 70 AD */	bl sprintf
/* 802D6C34 002D3B94  3C 80 80 3D */	lis r4, "@stringBase0"@ha
/* 802D6C38 002D3B98  7F DE 1A 14 */	add r30, r30, r3
/* 802D6C3C 002D3B9C  38 64 6A B8 */	addi r3, r4, "@stringBase0"@l
/* 802D6C40 002D3BA0  38 63 01 77 */	addi r3, r3, 0x177
/* 802D6C44 002D3BA4  4C C6 31 82 */	crclr 6
/* 802D6C48 002D3BA8  48 0A 8D 65 */	bl OSReport
/* 802D6C4C 002D3BAC  3C A0 80 00 */	lis r5, 0x80000400@ha
/* 802D6C50 002D3BB0  3C 80 80 3D */	lis r4, "@stringBase0"@ha
/* 802D6C54 002D3BB4  3C 60 80 48 */	lis r3, rs_debugger_buffer@ha
/* 802D6C58 002D3BB8  83 FB 00 04 */	lwz r31, 4(r27)
/* 802D6C5C 002D3BBC  3B 05 04 00 */	addi r24, r5, 0x80000400@l
/* 802D6C60 002D3BC0  3B 84 6A B8 */	addi r28, r4, "@stringBase0"@l
/* 802D6C64 002D3BC4  3B 43 97 A0 */	addi r26, r3, rs_debugger_buffer@l
/* 802D6C68 002D3BC8  3A E0 00 00 */	li r23, 0
/* 802D6C6C 002D3BCC  3F 20 81 80 */	lis r25, 0x8180
/* 802D6C70 002D3BD0  48 00 00 94 */	b lbl_802D6D04
lbl_802D6C74:
/* 802D6C74 002D3BD4  7C 1F C0 40 */	cmplw r31, r24
/* 802D6C78 002D3BD8  40 81 00 48 */	ble lbl_802D6CC0
/* 802D6C7C 002D3BDC  7C 1F C8 40 */	cmplw r31, r25
/* 802D6C80 002D3BE0  40 80 00 40 */	bge lbl_802D6CC0
/* 802D6C84 002D3BE4  80 BF 00 00 */	lwz r5, 0(r31)
/* 802D6C88 002D3BE8  7F E4 FB 78 */	mr r4, r31
/* 802D6C8C 002D3BEC  80 DF 00 04 */	lwz r6, 4(r31)
/* 802D6C90 002D3BF0  38 7C 01 9D */	addi r3, r28, 0x19d
/* 802D6C94 002D3BF4  4C C6 31 82 */	crclr 6
/* 802D6C98 002D3BF8  48 0A 8D 15 */	bl OSReport
/* 802D6C9C 002D3BFC  80 DF 00 00 */	lwz r6, 0(r31)
/* 802D6CA0 002D3C00  7F E5 FB 78 */	mr r5, r31
/* 802D6CA4 002D3C04  80 FF 00 04 */	lwz r7, 4(r31)
/* 802D6CA8 002D3C08  7C 7A F2 14 */	add r3, r26, r30
/* 802D6CAC 002D3C0C  38 9C 01 B9 */	addi r4, r28, 0x1b9
/* 802D6CB0 002D3C10  4C C6 31 82 */	crclr 6
/* 802D6CB4 002D3C14  48 0B 70 29 */	bl sprintf
/* 802D6CB8 002D3C18  7F DE 1A 14 */	add r30, r30, r3
/* 802D6CBC 002D3C1C  48 00 00 44 */	b lbl_802D6D00
lbl_802D6CC0:
/* 802D6CC0 002D3C20  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6CC4 002D3C24  7F E4 FB 78 */	mr r4, r31
/* 802D6CC8 002D3C28  38 63 6A B8 */	addi r3, r3, "@stringBase0"@l
/* 802D6CCC 002D3C2C  38 63 01 D0 */	addi r3, r3, 0x1d0
/* 802D6CD0 002D3C30  4C C6 31 82 */	crclr 6
/* 802D6CD4 002D3C34  48 0A 8C D9 */	bl OSReport
/* 802D6CD8 002D3C38  3C 80 80 48 */	lis r4, rs_debugger_buffer@ha
/* 802D6CDC 002D3C3C  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6CE0 002D3C40  38 04 97 A0 */	addi r0, r4, rs_debugger_buffer@l
/* 802D6CE4 002D3C44  7F E5 FB 78 */	mr r5, r31
/* 802D6CE8 002D3C48  38 83 6A B8 */	addi r4, r3, "@stringBase0"@l
/* 802D6CEC 002D3C4C  7C 60 F2 14 */	add r3, r0, r30
/* 802D6CF0 002D3C50  38 84 01 E3 */	addi r4, r4, 0x1e3
/* 802D6CF4 002D3C54  4C C6 31 82 */	crclr 6
/* 802D6CF8 002D3C58  48 0B 6F E5 */	bl sprintf
/* 802D6CFC 002D3C5C  48 00 00 28 */	b lbl_802D6D24
lbl_802D6D00:
/* 802D6D00 002D3C60  83 FF 00 00 */	lwz r31, 0(r31)
lbl_802D6D04:
/* 802D6D04 002D3C64  28 1F 00 00 */	cmplwi r31, 0
/* 802D6D08 002D3C68  41 82 00 1C */	beq lbl_802D6D24
/* 802D6D0C 002D3C6C  3C 1F 00 01 */	addis r0, r31, 1
/* 802D6D10 002D3C70  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D6D14 002D3C74  41 82 00 10 */	beq lbl_802D6D24
/* 802D6D18 002D3C78  28 17 00 10 */	cmplwi r23, 0x10
/* 802D6D1C 002D3C7C  3A F7 00 01 */	addi r23, r23, 1
/* 802D6D20 002D3C80  41 80 FF 54 */	blt lbl_802D6C74
lbl_802D6D24:
/* 802D6D24 002D3C84  3C 60 80 3D */	lis r3, "@stringBase0"@ha
/* 802D6D28 002D3C88  80 9B 01 98 */	lwz r4, 0x198(r27)
/* 802D6D2C 002D3C8C  38 63 6A B8 */	addi r3, r3, "@stringBase0"@l
/* 802D6D30 002D3C90  7F A5 EB 78 */	mr r5, r29
/* 802D6D34 002D3C94  38 63 01 F4 */	addi r3, r3, 0x1f4
/* 802D6D38 002D3C98  4C C6 31 82 */	crclr 6
/* 802D6D3C 002D3C9C  48 0A 8C 71 */	bl OSReport
/* 802D6D40 002D3CA0  88 0D A6 88 */	lbz r0, CallFatal@sda21(r13)
/* 802D6D44 002D3CA4  28 00 00 00 */	cmplwi r0, 0
/* 802D6D48 002D3CA8  40 82 00 28 */	bne lbl_802D6D70
/* 802D6D4C 002D3CAC  80 82 C5 80 */	lwz r4, bg@sda21(r2)
/* 802D6D50 002D3CB0  3C 60 80 48 */	lis r3, rs_debugger_buffer@ha
/* 802D6D54 002D3CB4  80 02 C5 84 */	lwz r0, fg@sda21(r2)
/* 802D6D58 002D3CB8  38 A3 97 A0 */	addi r5, r3, rs_debugger_buffer@l
/* 802D6D5C 002D3CBC  90 81 00 08 */	stw r4, 8(r1)
/* 802D6D60 002D3CC0  38 61 00 0C */	addi r3, r1, 0xc
/* 802D6D64 002D3CC4  38 81 00 08 */	addi r4, r1, 8
/* 802D6D68 002D3CC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D6D6C 002D3CCC  48 0A 97 C5 */	bl OSFatal
lbl_802D6D70:
/* 802D6D70 002D3CD0  BA E1 00 4C */	lmw r23, 0x4c(r1)
/* 802D6D74 002D3CD4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802D6D78 002D3CD8  7C 08 03 A6 */	mtlr r0
/* 802D6D7C 002D3CDC  38 21 00 70 */	addi r1, r1, 0x70
/* 802D6D80 002D3CE0  4E 80 00 20 */	blr

.endif

.section .sdata2, "a"
.balign 8
.global bg
bg:
	# ROM: 0x3FAB40
	.4byte 0x80000000

.global fg
fg:
	# ROM: 0x3FAB44
	.4byte 0xFFFFFF00

.global ExitButtons
ExitButtons:
	# ROM: 0x3FAB48
	.4byte 0x02010408
	.4byte 0


.section .rodata
.balign 8
.global "@stringBase0"
"@stringBase0":
	# ROM: 0x3D3AB8
	.asciz "Unhandled exception %d - Production\n"
	.byte 0x25, 0x73, 0x0A
	.4byte 0x002D2D2D
	.asciz "---------------------- Context 0x%08x -------------------------\n"
	.byte 0x72, 0x25, 0x2D
	.asciz "2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.byte 0x4C, 0x52, 0x20
	.asciz "  = 0x%08x                   CR   = 0x%08x\n"
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.byte 0x44
	.asciz "SISR= 0x%08x                   DAR  = 0x%08x\n"
	.byte 0x20, 0x2D
	.asciz " Production\n"
	.byte 0x45, 0x78, 0x63
	.asciz "eption %d - Production\n"
	.asciz "IP: 0x%8.8x  Mem: 0x%8.8x"
	.byte 0x20, 0x2D
	.4byte 0x20256400
	.4byte 0x0A0A000A
	.asciz "Address:      Back Chain    LR Save\n"
	.byte 0x30, 0x78, 0x25
	.asciz "08x:   0x%08x    0x%08x\n"
	.byte 0x30, 0x78, 0x25
	.asciz "08x: 0x%08x 0x%08x\n"
	.asciz "0x%08x:   BAD PTR\n"
	.byte 0x30
	.asciz "x%08x: BAD PTR\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
	.4byte 0x2573000A
	.4byte 0x00307825
	.asciz "08x: 0x%08x 0x%08x"
	.balign 4
