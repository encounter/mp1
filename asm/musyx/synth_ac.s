.include "macros.inc"

.section .sdata2
.global lbl_805AF2B0
lbl_805AF2B0:
	# ROM: 0x3FBB50
	.4byte 0x3F879C7D
	.4byte 0

.global lbl_805AF2B8
lbl_805AF2B8:
	# ROM: 0x3FBB58
	.4byte 0x43300000
	.4byte 0

.global lbl_805AF2C0
lbl_805AF2C0:
	# ROM: 0x3FBB60
	.4byte 0x45800000
	.4byte 0


.section .text, "ax"

.global sndPitchUpOne
sndPitchUpOne:
/* 803A90F0 003A6050  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A90F4 003A6054  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803A90F8 003A6058  3C 00 43 30 */	lis r0, 0x4330
/* 803A90FC 003A605C  C8 22 D5 98 */	lfd f1, lbl_805AF2B8@sda21(r2)
/* 803A9100 003A6060  90 61 00 0C */	stw r3, 0xc(r1)
/* 803A9104 003A6064  C0 42 D5 90 */	lfs f2, lbl_805AF2B0@sda21(r2)
/* 803A9108 003A6068  90 01 00 08 */	stw r0, 8(r1)
/* 803A910C 003A606C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A9110 003A6070  EC 00 08 28 */	fsubs f0, f0, f1
/* 803A9114 003A6074  EC 02 00 32 */	fmuls f0, f2, f0
/* 803A9118 003A6078  FC 00 00 1E */	fctiwz f0, f0
/* 803A911C 003A607C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803A9120 003A6080  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803A9124 003A6084  38 21 00 20 */	addi r1, r1, 0x20
/* 803A9128 003A6088  4E 80 00 20 */	blr

.global sndGetPitch
sndGetPitch:
/* 803A912C 003A608C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A9130 003A6090  7C 08 02 A6 */	mflr r0
/* 803A9134 003A6094  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A9138 003A6098  3C 04 00 01 */	addis r0, r4, 1
/* 803A913C 003A609C  28 00 FF FF */	cmplwi r0, 0xffff
/* 803A9140 003A60A0  40 82 00 0C */	bne lbl_803A914C
/* 803A9144 003A60A4  3C 80 40 00 */	lis r4, 0x40005622@ha
/* 803A9148 003A60A8  38 84 56 22 */	addi r4, r4, 0x40005622@l
lbl_803A914C:
/* 803A914C 003A60AC  54 86 46 3E */	srwi r6, r4, 0x18
/* 803A9150 003A60B0  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803A9154 003A60B4  7C 05 30 40 */	cmplw r5, r6
/* 803A9158 003A60B8  C0 42 D5 A0 */	lfs f2, lbl_805AF2C0@sda21(r2)
/* 803A915C 003A60BC  41 82 00 5C */	beq lbl_803A91B8
/* 803A9160 003A60C0  54 83 02 3E */	clrlwi r3, r4, 8
/* 803A9164 003A60C4  3C 00 43 30 */	lis r0, 0x4330
/* 803A9168 003A60C8  90 61 00 0C */	stw r3, 0xc(r1)
/* 803A916C 003A60CC  7C 06 28 40 */	cmplw r6, r5
/* 803A9170 003A60D0  C8 22 D5 98 */	lfd f1, lbl_805AF2B8@sda21(r2)
/* 803A9174 003A60D4  90 01 00 08 */	stw r0, 8(r1)
/* 803A9178 003A60D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A917C 003A60DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 803A9180 003A60E0  40 80 00 1C */	bge lbl_803A919C
/* 803A9184 003A60E4  7C 06 28 50 */	subf r0, r6, r5
/* 803A9188 003A60E8  3C 60 80 3F */	lis r3, lbl_803F3420@ha
/* 803A918C 003A60EC  54 00 10 3A */	slwi r0, r0, 2
/* 803A9190 003A60F0  38 63 34 20 */	addi r3, r3, lbl_803F3420@l
/* 803A9194 003A60F4  7C 03 04 2E */	lfsx f0, r3, r0
/* 803A9198 003A60F8  48 00 00 18 */	b lbl_803A91B0
lbl_803A919C:
/* 803A919C 003A60FC  7C 05 30 50 */	subf r0, r5, r6
/* 803A91A0 003A6100  3C 60 80 3F */	lis r3, lbl_803F3620@ha
/* 803A91A4 003A6104  54 00 10 3A */	slwi r0, r0, 2
/* 803A91A8 003A6108  38 63 36 20 */	addi r3, r3, lbl_803F3620@l
/* 803A91AC 003A610C  7C 03 04 2E */	lfsx f0, r3, r0
lbl_803A91B0:
/* 803A91B0 003A6110  EC 01 00 32 */	fmuls f0, f1, f0
/* 803A91B4 003A6114  48 00 00 20 */	b lbl_803A91D4
lbl_803A91B8:
/* 803A91B8 003A6118  54 83 02 3E */	clrlwi r3, r4, 8
/* 803A91BC 003A611C  3C 00 43 30 */	lis r0, 0x4330
/* 803A91C0 003A6120  90 61 00 14 */	stw r3, 0x14(r1)
/* 803A91C4 003A6124  C8 22 D5 98 */	lfd f1, lbl_805AF2B8@sda21(r2)
/* 803A91C8 003A6128  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A91CC 003A612C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A91D0 003A6130  EC 00 08 28 */	fsubs f0, f0, f1
lbl_803A91D4:
/* 803A91D4 003A6134  3C 00 43 30 */	lis r0, 0x4330
/* 803A91D8 003A6138  3C 60 80 55 */	lis r3, synthInfo@ha
/* 803A91DC 003A613C  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A91E0 003A6140  EC 42 00 32 */	fmuls f2, f2, f0
/* 803A91E4 003A6144  80 03 00 50 */	lwz r0, synthInfo@l(r3)
/* 803A91E8 003A6148  C8 22 D5 98 */	lfd f1, lbl_805AF2B8@sda21(r2)
/* 803A91EC 003A614C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803A91F0 003A6150  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803A91F4 003A6154  EC 00 08 28 */	fsubs f0, f0, f1
/* 803A91F8 003A6158  EC 22 00 24 */	fdivs f1, f2, f0
/* 803A91FC 003A615C  4B FE 07 59 */	bl __cvt_fp2unsigned
/* 803A9200 003A6160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A9204 003A6164  7C 08 03 A6 */	mtlr r0
/* 803A9208 003A6168  38 21 00 20 */	addi r1, r1, 0x20
/* 803A920C 003A616C  4E 80 00 20 */	blr
