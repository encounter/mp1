.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global THPAudioDecode
THPAudioDecode:
/* 803C90C8 003C6028  7C 08 02 A6 */	mflr r0
/* 803C90CC 003C602C  28 03 00 00 */	cmplwi r3, 0
/* 803C90D0 003C6030  90 01 00 04 */	stw r0, 4(r1)
/* 803C90D4 003C6034  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 803C90D8 003C6038  BE 81 00 28 */	stmw r20, 0x28(r1)
/* 803C90DC 003C603C  3B E4 00 00 */	addi r31, r4, 0
/* 803C90E0 003C6040  41 82 00 0C */	beq lbl_803C90EC
/* 803C90E4 003C6044  28 1F 00 00 */	cmplwi r31, 0
/* 803C90E8 003C6048  40 82 00 0C */	bne lbl_803C90F4
lbl_803C90EC:
/* 803C90EC 003C604C  38 60 00 00 */	li r3, 0
/* 803C90F0 003C6050  48 00 04 28 */	b lbl_803C9518
lbl_803C90F4:
/* 803C90F4 003C6054  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C90F8 003C6058  2C 05 00 01 */	cmpwi r5, 1
/* 803C90FC 003C605C  38 9F 00 50 */	addi r4, r31, 0x50
/* 803C9100 003C6060  7F 7F 02 14 */	add r27, r31, r0
/* 803C9104 003C6064  3B 7B 00 50 */	addi r27, r27, 0x50
/* 803C9108 003C6068  40 82 00 1C */	bne lbl_803C9124
/* 803C910C 003C606C  80 1F 00 04 */	lwz r0, 4(r31)
/* 803C9110 003C6070  3B C3 00 00 */	addi r30, r3, 0
/* 803C9114 003C6074  3B 40 00 01 */	li r26, 1
/* 803C9118 003C6078  54 00 08 3C */	slwi r0, r0, 1
/* 803C911C 003C607C  7F A3 02 14 */	add r29, r3, r0
/* 803C9120 003C6080  48 00 00 10 */	b lbl_803C9130
lbl_803C9124:
/* 803C9124 003C6084  3B C3 00 00 */	addi r30, r3, 0
/* 803C9128 003C6088  3B A3 00 02 */	addi r29, r3, 2
/* 803C912C 003C608C  3B 40 00 02 */	li r26, 2
lbl_803C9130:
/* 803C9130 003C6090  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C9134 003C6094  28 00 00 00 */	cmplwi r0, 0
/* 803C9138 003C6098  40 82 01 54 */	bne lbl_803C928C
/* 803C913C 003C609C  38 61 00 14 */	addi r3, r1, 0x14
/* 803C9140 003C60A0  48 00 04 7D */	bl __THPAudioInitialize
/* 803C9144 003C60A4  3F 20 00 01 */	lis r25, 0x0000FFFF@ha
/* 803C9148 003C60A8  AA BF 00 48 */	lha r21, 0x48(r31)
/* 803C914C 003C60AC  3E E0 80 00 */	lis r23, 0x7FFFFFFF@ha
/* 803C9150 003C60B0  AA 9F 00 4A */	lha r20, 0x4a(r31)
/* 803C9154 003C60B4  57 5B 08 3C */	slwi r27, r26, 1
/* 803C9158 003C60B8  3B 59 FF FF */	addi r26, r25, 0x0000FFFF@l
/* 803C915C 003C60BC  3B 17 FF FF */	addi r24, r23, 0x7FFFFFFF@l
/* 803C9160 003C60C0  3A C0 00 00 */	li r22, 0
/* 803C9164 003C60C4  48 00 01 18 */	b lbl_803C927C
lbl_803C9168:
/* 803C9168 003C60C8  38 61 00 14 */	addi r3, r1, 0x14
/* 803C916C 003C60CC  48 00 03 C1 */	bl __THPAudioGetNewSample
/* 803C9170 003C60D0  88 A1 00 1C */	lbz r5, 0x1c(r1)
/* 803C9174 003C60D4  7E 86 07 34 */	extsh r6, r20
/* 803C9178 003C60D8  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 803C917C 003C60DC  7E A4 07 34 */	extsh r4, r21
/* 803C9180 003C60E0  54 A5 10 3A */	slwi r5, r5, 2
/* 803C9184 003C60E4  7C BF 2A 14 */	add r5, r31, r5
/* 803C9188 003C60E8  A8 E5 00 0A */	lha r7, 0xa(r5)
/* 803C918C 003C60EC  7C 60 00 30 */	slw r0, r3, r0
/* 803C9190 003C60F0  A8 65 00 08 */	lha r3, 8(r5)
/* 803C9194 003C60F4  54 05 58 28 */	slwi r5, r0, 0xb
/* 803C9198 003C60F8  7C C7 31 D6 */	mullw r6, r7, r6
/* 803C919C 003C60FC  7C 83 21 D6 */	mullw r4, r3, r4
/* 803C91A0 003C6100  7C C3 FE 70 */	srawi r3, r6, 0x1f
/* 803C91A4 003C6104  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 803C91A8 003C6108  7C 86 20 14 */	addc r4, r6, r4
/* 803C91AC 003C610C  7C 63 01 14 */	adde r3, r3, r0
/* 803C91B0 003C6110  7C A0 FE 70 */	srawi r0, r5, 0x1f
/* 803C91B4 003C6114  7C 84 28 14 */	addc r4, r4, r5
/* 803C91B8 003C6118  7C 63 01 14 */	adde r3, r3, r0
/* 803C91BC 003C611C  38 A0 00 05 */	li r5, 5
/* 803C91C0 003C6120  4B FC 0D 35 */	bl __shl2i
/* 803C91C4 003C6124  7C 80 D0 38 */	and r0, r4, r26
/* 803C91C8 003C6128  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C91CC 003C612C  28 00 80 00 */	cmplwi r0, 0x8000
/* 803C91D0 003C6130  38 C0 00 00 */	li r6, 0
/* 803C91D4 003C6134  7C 67 30 38 */	and r7, r3, r6
/* 803C91D8 003C6138  40 81 00 10 */	ble lbl_803C91E8
/* 803C91DC 003C613C  7C 84 C8 14 */	addc r4, r4, r25
/* 803C91E0 003C6140  7C 63 31 14 */	adde r3, r3, r6
/* 803C91E4 003C6144  48 00 00 24 */	b lbl_803C9208
lbl_803C91E8:
/* 803C91E8 003C6148  40 82 00 20 */	bne lbl_803C9208
/* 803C91EC 003C614C  7C 80 C8 38 */	and r0, r4, r25
/* 803C91F0 003C6150  7C 05 32 78 */	xor r5, r0, r6
/* 803C91F4 003C6154  7C E0 32 78 */	xor r0, r7, r6
/* 803C91F8 003C6158  7C A0 03 79 */	or. r0, r5, r0
/* 803C91FC 003C615C  41 82 00 0C */	beq lbl_803C9208
/* 803C9200 003C6160  7C 84 C8 14 */	addc r4, r4, r25
/* 803C9204 003C6164  7C 63 31 14 */	adde r3, r3, r6
lbl_803C9208:
/* 803C9208 003C6168  38 00 00 00 */	li r0, 0
/* 803C920C 003C616C  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 803C9210 003C6170  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 803C9214 003C6174  7C 04 C0 10 */	subfc r0, r4, r24
/* 803C9218 003C6178  7C A5 31 10 */	subfe r5, r5, r6
/* 803C921C 003C617C  7C A6 31 10 */	subfe r5, r6, r6
/* 803C9220 003C6180  7C A5 00 D1 */	neg. r5, r5
/* 803C9224 003C6184  41 82 00 0C */	beq lbl_803C9230
/* 803C9228 003C6188  38 97 FF FF */	addi r4, r23, -1
/* 803C922C 003C618C  38 60 00 00 */	li r3, 0
lbl_803C9230:
/* 803C9230 003C6190  38 00 FF FF */	li r0, -1
/* 803C9234 003C6194  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 803C9238 003C6198  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 803C923C 003C619C  7C 17 20 10 */	subfc r0, r23, r4
/* 803C9240 003C61A0  7C A5 31 10 */	subfe r5, r5, r6
/* 803C9244 003C61A4  7C A6 31 10 */	subfe r5, r6, r6
/* 803C9248 003C61A8  7C A5 00 D1 */	neg. r5, r5
/* 803C924C 003C61AC  41 82 00 0C */	beq lbl_803C9258
/* 803C9250 003C61B0  3C 80 80 00 */	lis r4, 0x8000
/* 803C9254 003C61B4  38 60 FF FF */	li r3, -1
lbl_803C9258:
/* 803C9258 003C61B8  38 A0 00 10 */	li r5, 0x10
/* 803C925C 003C61BC  4B FC 0C E1 */	bl __shr2i
/* 803C9260 003C61C0  B0 9D 00 00 */	sth r4, 0(r29)
/* 803C9264 003C61C4  7E B4 AB 78 */	mr r20, r21
/* 803C9268 003C61C8  3A A4 00 00 */	addi r21, r4, 0
/* 803C926C 003C61CC  B0 9E 00 00 */	sth r4, 0(r30)
/* 803C9270 003C61D0  7F BD DA 14 */	add r29, r29, r27
/* 803C9274 003C61D4  7F DE DA 14 */	add r30, r30, r27
/* 803C9278 003C61D8  3A D6 00 01 */	addi r22, r22, 1
lbl_803C927C:
/* 803C927C 003C61DC  80 1F 00 04 */	lwz r0, 4(r31)
/* 803C9280 003C61E0  7C 16 00 40 */	cmplw r22, r0
/* 803C9284 003C61E4  41 80 FE E4 */	blt lbl_803C9168
/* 803C9288 003C61E8  48 00 02 8C */	b lbl_803C9514
lbl_803C928C:
/* 803C928C 003C61EC  38 61 00 14 */	addi r3, r1, 0x14
/* 803C9290 003C61F0  48 00 03 2D */	bl __THPAudioInitialize
/* 803C9294 003C61F4  3F 00 00 01 */	lis r24, 0x0000FFFF@ha
/* 803C9298 003C61F8  AA DF 00 48 */	lha r22, 0x48(r31)
/* 803C929C 003C61FC  3F 20 80 00 */	lis r25, 0x7FFFFFFF@ha
/* 803C92A0 003C6200  AA 9F 00 4A */	lha r20, 0x4a(r31)
/* 803C92A4 003C6204  57 5C 08 3C */	slwi r28, r26, 1
/* 803C92A8 003C6208  3A F8 FF FF */	addi r23, r24, 0x0000FFFF@l
/* 803C92AC 003C620C  3B 59 FF FF */	addi r26, r25, 0x7FFFFFFF@l
/* 803C92B0 003C6210  3A A0 00 00 */	li r21, 0
/* 803C92B4 003C6214  48 00 01 10 */	b lbl_803C93C4
lbl_803C92B8:
/* 803C92B8 003C6218  38 61 00 14 */	addi r3, r1, 0x14
/* 803C92BC 003C621C  48 00 02 71 */	bl __THPAudioGetNewSample
/* 803C92C0 003C6220  88 A1 00 1C */	lbz r5, 0x1c(r1)
/* 803C92C4 003C6224  7E 86 07 34 */	extsh r6, r20
/* 803C92C8 003C6228  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 803C92CC 003C622C  7E C4 07 34 */	extsh r4, r22
/* 803C92D0 003C6230  54 A5 10 3A */	slwi r5, r5, 2
/* 803C92D4 003C6234  7C BF 2A 14 */	add r5, r31, r5
/* 803C92D8 003C6238  A8 E5 00 0A */	lha r7, 0xa(r5)
/* 803C92DC 003C623C  7C 60 00 30 */	slw r0, r3, r0
/* 803C92E0 003C6240  A8 65 00 08 */	lha r3, 8(r5)
/* 803C92E4 003C6244  54 05 58 28 */	slwi r5, r0, 0xb
/* 803C92E8 003C6248  7C C7 31 D6 */	mullw r6, r7, r6
/* 803C92EC 003C624C  7C 83 21 D6 */	mullw r4, r3, r4
/* 803C92F0 003C6250  7C C3 FE 70 */	srawi r3, r6, 0x1f
/* 803C92F4 003C6254  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 803C92F8 003C6258  7C 86 20 14 */	addc r4, r6, r4
/* 803C92FC 003C625C  7C 63 01 14 */	adde r3, r3, r0
/* 803C9300 003C6260  7C A0 FE 70 */	srawi r0, r5, 0x1f
/* 803C9304 003C6264  7C 84 28 14 */	addc r4, r4, r5
/* 803C9308 003C6268  7C 63 01 14 */	adde r3, r3, r0
/* 803C930C 003C626C  38 A0 00 05 */	li r5, 5
/* 803C9310 003C6270  4B FC 0B E5 */	bl __shl2i
/* 803C9314 003C6274  7C 80 B8 38 */	and r0, r4, r23
/* 803C9318 003C6278  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C931C 003C627C  28 00 80 00 */	cmplwi r0, 0x8000
/* 803C9320 003C6280  38 C0 00 00 */	li r6, 0
/* 803C9324 003C6284  7C 67 30 38 */	and r7, r3, r6
/* 803C9328 003C6288  40 81 00 10 */	ble lbl_803C9338
/* 803C932C 003C628C  7C 84 C0 14 */	addc r4, r4, r24
/* 803C9330 003C6290  7C 63 31 14 */	adde r3, r3, r6
/* 803C9334 003C6294  48 00 00 24 */	b lbl_803C9358
lbl_803C9338:
/* 803C9338 003C6298  40 82 00 20 */	bne lbl_803C9358
/* 803C933C 003C629C  7C 80 C0 38 */	and r0, r4, r24
/* 803C9340 003C62A0  7C 05 32 78 */	xor r5, r0, r6
/* 803C9344 003C62A4  7C E0 32 78 */	xor r0, r7, r6
/* 803C9348 003C62A8  7C A0 03 79 */	or. r0, r5, r0
/* 803C934C 003C62AC  41 82 00 0C */	beq lbl_803C9358
/* 803C9350 003C62B0  7C 84 C0 14 */	addc r4, r4, r24
/* 803C9354 003C62B4  7C 63 31 14 */	adde r3, r3, r6
lbl_803C9358:
/* 803C9358 003C62B8  38 E0 00 00 */	li r7, 0
/* 803C935C 003C62BC  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 803C9360 003C62C0  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 803C9364 003C62C4  7C 04 D0 10 */	subfc r0, r4, r26
/* 803C9368 003C62C8  7C A5 31 10 */	subfe r5, r5, r6
/* 803C936C 003C62CC  7C A6 31 10 */	subfe r5, r6, r6
/* 803C9370 003C62D0  7C A5 00 D1 */	neg. r5, r5
/* 803C9374 003C62D4  41 82 00 0C */	beq lbl_803C9380
/* 803C9378 003C62D8  38 99 FF FF */	addi r4, r25, -1
/* 803C937C 003C62DC  38 67 00 00 */	addi r3, r7, 0
lbl_803C9380:
/* 803C9380 003C62E0  38 E0 FF FF */	li r7, -1
/* 803C9384 003C62E4  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 803C9388 003C62E8  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 803C938C 003C62EC  7C 19 20 10 */	subfc r0, r25, r4
/* 803C9390 003C62F0  7C A5 31 10 */	subfe r5, r5, r6
/* 803C9394 003C62F4  7C A6 31 10 */	subfe r5, r6, r6
/* 803C9398 003C62F8  7C A5 00 D1 */	neg. r5, r5
/* 803C939C 003C62FC  41 82 00 0C */	beq lbl_803C93A8
/* 803C93A0 003C6300  3C 80 80 00 */	lis r4, 0x8000
/* 803C93A4 003C6304  38 67 00 00 */	addi r3, r7, 0
lbl_803C93A8:
/* 803C93A8 003C6308  38 A0 00 10 */	li r5, 0x10
/* 803C93AC 003C630C  4B FC 0B 91 */	bl __shr2i
/* 803C93B0 003C6310  B0 9D 00 00 */	sth r4, 0(r29)
/* 803C93B4 003C6314  3A 96 00 00 */	addi r20, r22, 0
/* 803C93B8 003C6318  3A C4 00 00 */	addi r22, r4, 0
/* 803C93BC 003C631C  7F BD E2 14 */	add r29, r29, r28
/* 803C93C0 003C6320  3A B5 00 01 */	addi r21, r21, 1
lbl_803C93C4:
/* 803C93C4 003C6324  80 1F 00 04 */	lwz r0, 4(r31)
/* 803C93C8 003C6328  7C 15 00 40 */	cmplw r21, r0
/* 803C93CC 003C632C  41 80 FE EC */	blt lbl_803C92B8
/* 803C93D0 003C6330  38 61 00 14 */	addi r3, r1, 0x14
/* 803C93D4 003C6334  38 9B 00 00 */	addi r4, r27, 0
/* 803C93D8 003C6338  48 00 01 E5 */	bl __THPAudioInitialize
/* 803C93DC 003C633C  3F 40 00 01 */	lis r26, 0x0000FFFF@ha
/* 803C93E0 003C6340  AA FF 00 4C */	lha r23, 0x4c(r31)
/* 803C93E4 003C6344  3F 60 80 00 */	lis r27, 0x7FFFFFFF@ha
/* 803C93E8 003C6348  AA BF 00 4E */	lha r21, 0x4e(r31)
/* 803C93EC 003C634C  3B 3A FF FF */	addi r25, r26, 0x0000FFFF@l
/* 803C93F0 003C6350  3B BB FF FF */	addi r29, r27, 0x7FFFFFFF@l
/* 803C93F4 003C6354  3A C0 00 00 */	li r22, 0
/* 803C93F8 003C6358  48 00 01 10 */	b lbl_803C9508
lbl_803C93FC:
/* 803C93FC 003C635C  38 61 00 14 */	addi r3, r1, 0x14
/* 803C9400 003C6360  48 00 01 2D */	bl __THPAudioGetNewSample
/* 803C9404 003C6364  88 A1 00 1C */	lbz r5, 0x1c(r1)
/* 803C9408 003C6368  7E A6 07 34 */	extsh r6, r21
/* 803C940C 003C636C  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 803C9410 003C6370  7E E4 07 34 */	extsh r4, r23
/* 803C9414 003C6374  54 A5 10 3A */	slwi r5, r5, 2
/* 803C9418 003C6378  7C BF 2A 14 */	add r5, r31, r5
/* 803C941C 003C637C  A8 E5 00 2A */	lha r7, 0x2a(r5)
/* 803C9420 003C6380  7C 60 00 30 */	slw r0, r3, r0
/* 803C9424 003C6384  A8 65 00 28 */	lha r3, 0x28(r5)
/* 803C9428 003C6388  54 05 58 28 */	slwi r5, r0, 0xb
/* 803C942C 003C638C  7C C7 31 D6 */	mullw r6, r7, r6
/* 803C9430 003C6390  7C 83 21 D6 */	mullw r4, r3, r4
/* 803C9434 003C6394  7C C3 FE 70 */	srawi r3, r6, 0x1f
/* 803C9438 003C6398  7C 80 FE 70 */	srawi r0, r4, 0x1f
/* 803C943C 003C639C  7C 86 20 14 */	addc r4, r6, r4
/* 803C9440 003C63A0  7C 63 01 14 */	adde r3, r3, r0
/* 803C9444 003C63A4  7C A0 FE 70 */	srawi r0, r5, 0x1f
/* 803C9448 003C63A8  7C 84 28 14 */	addc r4, r4, r5
/* 803C944C 003C63AC  7C 63 01 14 */	adde r3, r3, r0
/* 803C9450 003C63B0  38 A0 00 05 */	li r5, 5
/* 803C9454 003C63B4  4B FC 0A A1 */	bl __shl2i
/* 803C9458 003C63B8  7C 80 C8 38 */	and r0, r4, r25
/* 803C945C 003C63BC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803C9460 003C63C0  28 00 80 00 */	cmplwi r0, 0x8000
/* 803C9464 003C63C4  38 C0 00 00 */	li r6, 0
/* 803C9468 003C63C8  7C 67 30 38 */	and r7, r3, r6
/* 803C946C 003C63CC  40 81 00 10 */	ble lbl_803C947C
/* 803C9470 003C63D0  7C 84 D0 14 */	addc r4, r4, r26
/* 803C9474 003C63D4  7C 63 31 14 */	adde r3, r3, r6
/* 803C9478 003C63D8  48 00 00 24 */	b lbl_803C949C
lbl_803C947C:
/* 803C947C 003C63DC  40 82 00 20 */	bne lbl_803C949C
/* 803C9480 003C63E0  7C 80 D0 38 */	and r0, r4, r26
/* 803C9484 003C63E4  7C 05 32 78 */	xor r5, r0, r6
/* 803C9488 003C63E8  7C E0 32 78 */	xor r0, r7, r6
/* 803C948C 003C63EC  7C A0 03 79 */	or. r0, r5, r0
/* 803C9490 003C63F0  41 82 00 0C */	beq lbl_803C949C
/* 803C9494 003C63F4  7C 84 D0 14 */	addc r4, r4, r26
/* 803C9498 003C63F8  7C 63 31 14 */	adde r3, r3, r6
lbl_803C949C:
/* 803C949C 003C63FC  38 E0 00 00 */	li r7, 0
/* 803C94A0 003C6400  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 803C94A4 003C6404  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 803C94A8 003C6408  7C 04 E8 10 */	subfc r0, r4, r29
/* 803C94AC 003C640C  7C A5 31 10 */	subfe r5, r5, r6
/* 803C94B0 003C6410  7C A6 31 10 */	subfe r5, r6, r6
/* 803C94B4 003C6414  7C A5 00 D1 */	neg. r5, r5
/* 803C94B8 003C6418  41 82 00 0C */	beq lbl_803C94C4
/* 803C94BC 003C641C  38 9B FF FF */	addi r4, r27, -1
/* 803C94C0 003C6420  38 67 00 00 */	addi r3, r7, 0
lbl_803C94C4:
/* 803C94C4 003C6424  38 E0 FF FF */	li r7, -1
/* 803C94C8 003C6428  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 803C94CC 003C642C  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 803C94D0 003C6430  7C 1B 20 10 */	subfc r0, r27, r4
/* 803C94D4 003C6434  7C A5 31 10 */	subfe r5, r5, r6
/* 803C94D8 003C6438  7C A6 31 10 */	subfe r5, r6, r6
/* 803C94DC 003C643C  7C A5 00 D1 */	neg. r5, r5
/* 803C94E0 003C6440  41 82 00 0C */	beq lbl_803C94EC
/* 803C94E4 003C6444  3C 80 80 00 */	lis r4, 0x8000
/* 803C94E8 003C6448  38 67 00 00 */	addi r3, r7, 0
lbl_803C94EC:
/* 803C94EC 003C644C  38 A0 00 10 */	li r5, 0x10
/* 803C94F0 003C6450  4B FC 0A 4D */	bl __shr2i
/* 803C94F4 003C6454  B0 9E 00 00 */	sth r4, 0(r30)
/* 803C94F8 003C6458  3A B7 00 00 */	addi r21, r23, 0
/* 803C94FC 003C645C  3A E4 00 00 */	addi r23, r4, 0
/* 803C9500 003C6460  7F DE E2 14 */	add r30, r30, r28
/* 803C9504 003C6464  3A D6 00 01 */	addi r22, r22, 1
lbl_803C9508:
/* 803C9508 003C6468  80 1F 00 04 */	lwz r0, 4(r31)
/* 803C950C 003C646C  7C 16 00 40 */	cmplw r22, r0
/* 803C9510 003C6470  41 80 FE EC */	blt lbl_803C93FC
lbl_803C9514:
/* 803C9514 003C6474  80 7F 00 04 */	lwz r3, 4(r31)
lbl_803C9518:
/* 803C9518 003C6478  BA 81 00 28 */	lmw r20, 0x28(r1)
/* 803C951C 003C647C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 803C9520 003C6480  38 21 00 58 */	addi r1, r1, 0x58
/* 803C9524 003C6484  7C 08 03 A6 */	mtlr r0
/* 803C9528 003C6488  4E 80 00 20 */	blr 

.global __THPAudioGetNewSample
__THPAudioGetNewSample:
/* 803C952C 003C648C  80 03 00 04 */	lwz r0, 4(r3)
/* 803C9530 003C6490  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 803C9534 003C6494  40 82 00 3C */	bne lbl_803C9570
/* 803C9538 003C6498  80 83 00 00 */	lwz r4, 0(r3)
/* 803C953C 003C649C  88 04 00 00 */	lbz r0, 0(r4)
/* 803C9540 003C64A0  54 00 E7 7E */	rlwinm r0, r0, 0x1c, 0x1d, 0x1f
/* 803C9544 003C64A4  98 03 00 08 */	stb r0, 8(r3)
/* 803C9548 003C64A8  80 83 00 00 */	lwz r4, 0(r3)
/* 803C954C 003C64AC  88 04 00 00 */	lbz r0, 0(r4)
/* 803C9550 003C64B0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 803C9554 003C64B4  98 03 00 09 */	stb r0, 9(r3)
/* 803C9558 003C64B8  80 83 00 00 */	lwz r4, 0(r3)
/* 803C955C 003C64BC  38 04 00 01 */	addi r0, r4, 1
/* 803C9560 003C64C0  90 03 00 00 */	stw r0, 0(r3)
/* 803C9564 003C64C4  80 83 00 04 */	lwz r4, 4(r3)
/* 803C9568 003C64C8  38 04 00 02 */	addi r0, r4, 2
/* 803C956C 003C64CC  90 03 00 04 */	stw r0, 4(r3)
lbl_803C9570:
/* 803C9570 003C64D0  80 03 00 04 */	lwz r0, 4(r3)
/* 803C9574 003C64D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803C9578 003C64D8  41 82 00 20 */	beq lbl_803C9598
/* 803C957C 003C64DC  80 A3 00 00 */	lwz r5, 0(r3)
/* 803C9580 003C64E0  88 85 00 00 */	lbz r4, 0(r5)
/* 803C9584 003C64E4  38 05 00 01 */	addi r0, r5, 1
/* 803C9588 003C64E8  90 03 00 00 */	stw r0, 0(r3)
/* 803C958C 003C64EC  54 80 E0 06 */	slwi r0, r4, 0x1c
/* 803C9590 003C64F0  7C 05 E6 70 */	srawi r5, r0, 0x1c
/* 803C9594 003C64F4  48 00 00 14 */	b lbl_803C95A8
lbl_803C9598:
/* 803C9598 003C64F8  80 83 00 00 */	lwz r4, 0(r3)
/* 803C959C 003C64FC  88 04 00 00 */	lbz r0, 0(r4)
/* 803C95A0 003C6500  54 00 C0 06 */	rlwinm r0, r0, 0x18, 0, 3
/* 803C95A4 003C6504  7C 05 E6 70 */	srawi r5, r0, 0x1c
lbl_803C95A8:
/* 803C95A8 003C6508  80 83 00 04 */	lwz r4, 4(r3)
/* 803C95AC 003C650C  38 04 00 01 */	addi r0, r4, 1
/* 803C95B0 003C6510  90 03 00 04 */	stw r0, 4(r3)
/* 803C95B4 003C6514  7C A3 2B 78 */	mr r3, r5
/* 803C95B8 003C6518  4E 80 00 20 */	blr 

.global __THPAudioInitialize
__THPAudioInitialize:
/* 803C95BC 003C651C  90 83 00 00 */	stw r4, 0(r3)
/* 803C95C0 003C6520  38 00 00 02 */	li r0, 2
/* 803C95C4 003C6524  90 03 00 04 */	stw r0, 4(r3)
/* 803C95C8 003C6528  80 83 00 00 */	lwz r4, 0(r3)
/* 803C95CC 003C652C  88 04 00 00 */	lbz r0, 0(r4)
/* 803C95D0 003C6530  54 00 E7 7E */	rlwinm r0, r0, 0x1c, 0x1d, 0x1f
/* 803C95D4 003C6534  98 03 00 08 */	stb r0, 8(r3)
/* 803C95D8 003C6538  80 83 00 00 */	lwz r4, 0(r3)
/* 803C95DC 003C653C  88 04 00 00 */	lbz r0, 0(r4)
/* 803C95E0 003C6540  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 803C95E4 003C6544  98 03 00 09 */	stb r0, 9(r3)
/* 803C95E8 003C6548  80 83 00 00 */	lwz r4, 0(r3)
/* 803C95EC 003C654C  38 04 00 01 */	addi r0, r4, 1
/* 803C95F0 003C6550  90 03 00 00 */	stw r0, 0(r3)
/* 803C95F4 003C6554  4E 80 00 20 */	blr 
