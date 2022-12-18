.include "macros.inc"

.section .data
.balign 8
lbl_803F1258:
	.asciz "------------------------- Context 0x%08x -------------------------\n"
.balign 4
	.asciz "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
.balign 4
	.asciz "LR   = 0x%08x                   CR   = 0x%08x\n"
.balign 4
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
.balign 4
	.asciz "\nGQRs----------\n"
.balign 4
	.asciz "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
.balign 4
	.asciz "\n\nFPRs----------\n"
.balign 4
	.asciz "fr%d \t= %d \t fr%d \t= %d\n"
.balign 4
	.asciz "\n\nPSFs----------\n"
.balign 4
	.asciz "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"
.balign 4

lbl_803F140C:
	.asciz "FPU-unavailable handler installed\n"
	.balign 4

.section .text, "ax"

.global __OSLoadFPUContext
__OSLoadFPUContext:
/* 8037F1C8 0037C128  A0 A4 01 A2 */	lhz r5, 0x1a2(r4)
/* 8037F1CC 0037C12C  54 A5 07 FF */	clrlwi. r5, r5, 0x1f
/* 8037F1D0 0037C130  41 82 01 18 */	beq lbl_8037f2e8
/* 8037F1D4 0037C134  C8 04 01 90 */	lfd f0, 0x190(r4)
/* 8037F1D8 0037C138  FD FE 05 8E */	mtfsf 0xff, f0
/* 8037F1DC 0037C13C  7C B8 E2 A6 */	mfspr r5, 0x398
/* 8037F1E0 0037C140  54 A5 1F FF */	rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 8037F1E4 0037C144  41 82 00 84 */	beq lbl_8037F268
/* 8037F1E8 0037C148  E0 04 01 C8 */	psq_l f0, 456(r4), 0, qr0
/* 8037F1EC 0037C14C  E0 24 01 D0 */	psq_l f1, 464(r4), 0, qr0
/* 8037F1F0 0037C150  E0 44 01 D8 */	psq_l f2, 472(r4), 0, qr0
/* 8037F1F4 0037C154  E0 64 01 E0 */	psq_l f3, 480(r4), 0, qr0
/* 8037F1F8 0037C158  E0 84 01 E8 */	psq_l f4, 488(r4), 0, qr0
/* 8037F1FC 0037C15C  E0 A4 01 F0 */	psq_l f5, 496(r4), 0, qr0
/* 8037F200 0037C160  E0 C4 01 F8 */	psq_l f6, 504(r4), 0, qr0
/* 8037F204 0037C164  E0 E4 02 00 */	psq_l f7, 512(r4), 0, qr0
/* 8037F208 0037C168  E1 04 02 08 */	psq_l f8, 520(r4), 0, qr0
/* 8037F20C 0037C16C  E1 24 02 10 */	psq_l f9, 528(r4), 0, qr0
/* 8037F210 0037C170  E1 44 02 18 */	psq_l f10, 536(r4), 0, qr0
/* 8037F214 0037C174  E1 64 02 20 */	psq_l f11, 544(r4), 0, qr0
/* 8037F218 0037C178  E1 84 02 28 */	psq_l f12, 552(r4), 0, qr0
/* 8037F21C 0037C17C  E1 A4 02 30 */	psq_l f13, 560(r4), 0, qr0
/* 8037F220 0037C180  E1 C4 02 38 */	psq_l f14, 568(r4), 0, qr0
/* 8037F224 0037C184  E1 E4 02 40 */	psq_l f15, 576(r4), 0, qr0
/* 8037F228 0037C188  E2 04 02 48 */	psq_l f16, 584(r4), 0, qr0
/* 8037F22C 0037C18C  E2 24 02 50 */	psq_l f17, 592(r4), 0, qr0
/* 8037F230 0037C190  E2 44 02 58 */	psq_l f18, 600(r4), 0, qr0
/* 8037F234 0037C194  E2 64 02 60 */	psq_l f19, 608(r4), 0, qr0
/* 8037F238 0037C198  E2 84 02 68 */	psq_l f20, 616(r4), 0, qr0
/* 8037F23C 0037C19C  E2 A4 02 70 */	psq_l f21, 624(r4), 0, qr0
/* 8037F240 0037C1A0  E2 C4 02 78 */	psq_l f22, 632(r4), 0, qr0
/* 8037F244 0037C1A4  E2 E4 02 80 */	psq_l f23, 640(r4), 0, qr0
/* 8037F248 0037C1A8  E3 04 02 88 */	psq_l f24, 648(r4), 0, qr0
/* 8037F24C 0037C1AC  E3 24 02 90 */	psq_l f25, 656(r4), 0, qr0
/* 8037F250 0037C1B0  E3 44 02 98 */	psq_l f26, 664(r4), 0, qr0
/* 8037F254 0037C1B4  E3 64 02 A0 */	psq_l f27, 672(r4), 0, qr0
/* 8037F258 0037C1B8  E3 84 02 A8 */	psq_l f28, 680(r4), 0, qr0
/* 8037F25C 0037C1BC  E3 A4 02 B0 */	psq_l f29, 688(r4), 0, qr0
/* 8037F260 0037C1C0  E3 C4 02 B8 */	psq_l f30, 696(r4), 0, qr0
/* 8037F264 0037C1C4  E3 E4 02 C0 */	psq_l f31, 704(r4), 0, qr0
lbl_8037F268:
/* 8037F268 0037C1C8  C8 04 00 90 */	lfd f0, 0x90(r4)
/* 8037F26C 0037C1CC  C8 24 00 98 */	lfd f1, 0x98(r4)
/* 8037F270 0037C1D0  C8 44 00 A0 */	lfd f2, 0xa0(r4)
/* 8037F274 0037C1D4  C8 64 00 A8 */	lfd f3, 0xa8(r4)
/* 8037F278 0037C1D8  C8 84 00 B0 */	lfd f4, 0xb0(r4)
/* 8037F27C 0037C1DC  C8 A4 00 B8 */	lfd f5, 0xb8(r4)
/* 8037F280 0037C1E0  C8 C4 00 C0 */	lfd f6, 0xc0(r4)
/* 8037F284 0037C1E4  C8 E4 00 C8 */	lfd f7, 0xc8(r4)
/* 8037F288 0037C1E8  C9 04 00 D0 */	lfd f8, 0xd0(r4)
/* 8037F28C 0037C1EC  C9 24 00 D8 */	lfd f9, 0xd8(r4)
/* 8037F290 0037C1F0  C9 44 00 E0 */	lfd f10, 0xe0(r4)
/* 8037F294 0037C1F4  C9 64 00 E8 */	lfd f11, 0xe8(r4)
/* 8037F298 0037C1F8  C9 84 00 F0 */	lfd f12, 0xf0(r4)
/* 8037F29C 0037C1FC  C9 A4 00 F8 */	lfd f13, 0xf8(r4)
/* 8037F2A0 0037C200  C9 C4 01 00 */	lfd f14, 0x100(r4)
/* 8037F2A4 0037C204  C9 E4 01 08 */	lfd f15, 0x108(r4)
/* 8037F2A8 0037C208  CA 04 01 10 */	lfd f16, 0x110(r4)
/* 8037F2AC 0037C20C  CA 24 01 18 */	lfd f17, 0x118(r4)
/* 8037F2B0 0037C210  CA 44 01 20 */	lfd f18, 0x120(r4)
/* 8037F2B4 0037C214  CA 64 01 28 */	lfd f19, 0x128(r4)
/* 8037F2B8 0037C218  CA 84 01 30 */	lfd f20, 0x130(r4)
/* 8037F2BC 0037C21C  CA A4 01 38 */	lfd f21, 0x138(r4)
/* 8037F2C0 0037C220  CA C4 01 40 */	lfd f22, 0x140(r4)
/* 8037F2C4 0037C224  CA E4 01 48 */	lfd f23, 0x148(r4)
/* 8037F2C8 0037C228  CB 04 01 50 */	lfd f24, 0x150(r4)
/* 8037F2CC 0037C22C  CB 24 01 58 */	lfd f25, 0x158(r4)
/* 8037F2D0 0037C230  CB 44 01 60 */	lfd f26, 0x160(r4)
/* 8037F2D4 0037C234  CB 64 01 68 */	lfd f27, 0x168(r4)
/* 8037F2D8 0037C238  CB 84 01 70 */	lfd f28, 0x170(r4)
/* 8037F2DC 0037C23C  CB A4 01 78 */	lfd f29, 0x178(r4)
/* 8037F2E0 0037C240  CB C4 01 80 */	lfd f30, 0x180(r4)
/* 8037F2E4 0037C244  CB E4 01 88 */	lfd f31, 0x188(r4)
lbl_8037f2e8:
/* 8037F2E8 0037C248  4E 80 00 20 */	blr

.global __OSSaveFPUContext
__OSSaveFPUContext:
/* 8037F2EC 0037C24C  A0 65 01 A2 */	lhz r3, 0x1a2(r5)
/* 8037F2F0 0037C250  60 63 00 01 */	ori r3, r3, 1
/* 8037F2F4 0037C254  B0 65 01 A2 */	sth r3, 0x1a2(r5)
/* 8037F2F8 0037C258  D8 05 00 90 */	stfd f0, 0x90(r5)
/* 8037F2FC 0037C25C  D8 25 00 98 */	stfd f1, 0x98(r5)
/* 8037F300 0037C260  D8 45 00 A0 */	stfd f2, 0xa0(r5)
/* 8037F304 0037C264  D8 65 00 A8 */	stfd f3, 0xa8(r5)
/* 8037F308 0037C268  D8 85 00 B0 */	stfd f4, 0xb0(r5)
/* 8037F30C 0037C26C  D8 A5 00 B8 */	stfd f5, 0xb8(r5)
/* 8037F310 0037C270  D8 C5 00 C0 */	stfd f6, 0xc0(r5)
/* 8037F314 0037C274  D8 E5 00 C8 */	stfd f7, 0xc8(r5)
/* 8037F318 0037C278  D9 05 00 D0 */	stfd f8, 0xd0(r5)
/* 8037F31C 0037C27C  D9 25 00 D8 */	stfd f9, 0xd8(r5)
/* 8037F320 0037C280  D9 45 00 E0 */	stfd f10, 0xe0(r5)
/* 8037F324 0037C284  D9 65 00 E8 */	stfd f11, 0xe8(r5)
/* 8037F328 0037C288  D9 85 00 F0 */	stfd f12, 0xf0(r5)
/* 8037F32C 0037C28C  D9 A5 00 F8 */	stfd f13, 0xf8(r5)
/* 8037F330 0037C290  D9 C5 01 00 */	stfd f14, 0x100(r5)
/* 8037F334 0037C294  D9 E5 01 08 */	stfd f15, 0x108(r5)
/* 8037F338 0037C298  DA 05 01 10 */	stfd f16, 0x110(r5)
/* 8037F33C 0037C29C  DA 25 01 18 */	stfd f17, 0x118(r5)
/* 8037F340 0037C2A0  DA 45 01 20 */	stfd f18, 0x120(r5)
/* 8037F344 0037C2A4  DA 65 01 28 */	stfd f19, 0x128(r5)
/* 8037F348 0037C2A8  DA 85 01 30 */	stfd f20, 0x130(r5)
/* 8037F34C 0037C2AC  DA A5 01 38 */	stfd f21, 0x138(r5)
/* 8037F350 0037C2B0  DA C5 01 40 */	stfd f22, 0x140(r5)
/* 8037F354 0037C2B4  DA E5 01 48 */	stfd f23, 0x148(r5)
/* 8037F358 0037C2B8  DB 05 01 50 */	stfd f24, 0x150(r5)
/* 8037F35C 0037C2BC  DB 25 01 58 */	stfd f25, 0x158(r5)
/* 8037F360 0037C2C0  DB 45 01 60 */	stfd f26, 0x160(r5)
/* 8037F364 0037C2C4  DB 65 01 68 */	stfd f27, 0x168(r5)
/* 8037F368 0037C2C8  DB 85 01 70 */	stfd f28, 0x170(r5)
/* 8037F36C 0037C2CC  DB A5 01 78 */	stfd f29, 0x178(r5)
/* 8037F370 0037C2D0  DB C5 01 80 */	stfd f30, 0x180(r5)
/* 8037F374 0037C2D4  DB E5 01 88 */	stfd f31, 0x188(r5)
/* 8037F378 0037C2D8  FC 00 04 8E */	mffs f0
/* 8037F37C 0037C2DC  D8 05 01 90 */	stfd f0, 0x190(r5)
/* 8037F380 0037C2E0  C8 05 00 90 */	lfd f0, 0x90(r5)
/* 8037F384 0037C2E4  7C 78 E2 A6 */	mfspr r3, 0x398
/* 8037F388 0037C2E8  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 8037F38C 0037C2EC  41 82 00 84 */	beq lbl_8037f410
/* 8037F390 0037C2F0  F0 05 01 C8 */	psq_st f0, 456(r5), 0, qr0
/* 8037F394 0037C2F4  F0 25 01 D0 */	psq_st f1, 464(r5), 0, qr0
/* 8037F398 0037C2F8  F0 45 01 D8 */	psq_st f2, 472(r5), 0, qr0
/* 8037F39C 0037C2FC  F0 65 01 E0 */	psq_st f3, 480(r5), 0, qr0
/* 8037F3A0 0037C300  F0 85 01 E8 */	psq_st f4, 488(r5), 0, qr0
/* 8037F3A4 0037C304  F0 A5 01 F0 */	psq_st f5, 496(r5), 0, qr0
/* 8037F3A8 0037C308  F0 C5 01 F8 */	psq_st f6, 504(r5), 0, qr0
/* 8037F3AC 0037C30C  F0 E5 02 00 */	psq_st f7, 512(r5), 0, qr0
/* 8037F3B0 0037C310  F1 05 02 08 */	psq_st f8, 520(r5), 0, qr0
/* 8037F3B4 0037C314  F1 25 02 10 */	psq_st f9, 528(r5), 0, qr0
/* 8037F3B8 0037C318  F1 45 02 18 */	psq_st f10, 536(r5), 0, qr0
/* 8037F3BC 0037C31C  F1 65 02 20 */	psq_st f11, 544(r5), 0, qr0
/* 8037F3C0 0037C320  F1 85 02 28 */	psq_st f12, 552(r5), 0, qr0
/* 8037F3C4 0037C324  F1 A5 02 30 */	psq_st f13, 560(r5), 0, qr0
/* 8037F3C8 0037C328  F1 C5 02 38 */	psq_st f14, 568(r5), 0, qr0
/* 8037F3CC 0037C32C  F1 E5 02 40 */	psq_st f15, 576(r5), 0, qr0
/* 8037F3D0 0037C330  F2 05 02 48 */	psq_st f16, 584(r5), 0, qr0
/* 8037F3D4 0037C334  F2 25 02 50 */	psq_st f17, 592(r5), 0, qr0
/* 8037F3D8 0037C338  F2 45 02 58 */	psq_st f18, 600(r5), 0, qr0
/* 8037F3DC 0037C33C  F2 65 02 60 */	psq_st f19, 608(r5), 0, qr0
/* 8037F3E0 0037C340  F2 85 02 68 */	psq_st f20, 616(r5), 0, qr0
/* 8037F3E4 0037C344  F2 A5 02 70 */	psq_st f21, 624(r5), 0, qr0
/* 8037F3E8 0037C348  F2 C5 02 78 */	psq_st f22, 632(r5), 0, qr0
/* 8037F3EC 0037C34C  F2 E5 02 80 */	psq_st f23, 640(r5), 0, qr0
/* 8037F3F0 0037C350  F3 05 02 88 */	psq_st f24, 648(r5), 0, qr0
/* 8037F3F4 0037C354  F3 25 02 90 */	psq_st f25, 656(r5), 0, qr0
/* 8037F3F8 0037C358  F3 45 02 98 */	psq_st f26, 664(r5), 0, qr0
/* 8037F3FC 0037C35C  F3 65 02 A0 */	psq_st f27, 672(r5), 0, qr0
/* 8037F400 0037C360  F3 85 02 A8 */	psq_st f28, 680(r5), 0, qr0
/* 8037F404 0037C364  F3 A5 02 B0 */	psq_st f29, 688(r5), 0, qr0
/* 8037F408 0037C368  F3 C5 02 B8 */	psq_st f30, 696(r5), 0, qr0
/* 8037F40C 0037C36C  F3 E5 02 C0 */	psq_st f31, 704(r5), 0, qr0
lbl_8037f410:
/* 8037F410 0037C370  4E 80 00 20 */	blr

.global OSSaveFPUContext
OSSaveFPUContext:
/* 8037F414 0037C374  38 A3 00 00 */	addi r5, r3, 0
/* 8037F418 0037C378  4B FF FE D4 */	b __OSSaveFPUContext

.global OSSetCurrentContext
OSSetCurrentContext:
/* 8037F41C 0037C37C  3C 80 80 00 */	lis r4, 0x800000D4@ha
/* 8037F420 0037C380  90 64 00 D4 */	stw r3, 0x800000D4@l(r4)
/* 8037F424 0037C384  54 65 00 BE */	clrlwi r5, r3, 2
/* 8037F428 0037C388  90 A4 00 C0 */	stw r5, 0xc0(r4)
/* 8037F42C 0037C38C  80 A4 00 D8 */	lwz r5, 0xd8(r4)
/* 8037F430 0037C390  7C 05 18 00 */	cmpw r5, r3
/* 8037F434 0037C394  40 82 00 20 */	bne lbl_8037F454
/* 8037F438 0037C398  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 8037F43C 0037C39C  60 C6 20 00 */	ori r6, r6, 0x2000
/* 8037F440 0037C3A0  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 8037F444 0037C3A4  7C C0 00 A6 */	mfmsr r6
/* 8037F448 0037C3A8  60 C6 00 02 */	ori r6, r6, 2
/* 8037F44C 0037C3AC  7C C0 01 24 */	mtmsr r6
/* 8037F450 0037C3B0  4E 80 00 20 */	blr
lbl_8037F454:
/* 8037F454 0037C3B4  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 8037F458 0037C3B8  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 8037F45C 0037C3BC  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 8037F460 0037C3C0  7C C0 00 A6 */	mfmsr r6
/* 8037F464 0037C3C4  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 8037F468 0037C3C8  60 C6 00 02 */	ori r6, r6, 2
/* 8037F46C 0037C3CC  7C C0 01 24 */	mtmsr r6
/* 8037F470 0037C3D0  4C 00 01 2C */	isync
/* 8037F474 0037C3D4  4E 80 00 20 */	blr

.global OSGetCurrentContext
OSGetCurrentContext:
/* 8037F478 0037C3D8  3C 60 80 00 */	lis r3, 0x800000D4@ha
/* 8037F47C 0037C3DC  80 63 00 D4 */	lwz r3, 0x800000D4@l(r3)
/* 8037F480 0037C3E0  4E 80 00 20 */	blr

.global OSSaveContext
OSSaveContext:
/* 8037F484 0037C3E4  BD A3 00 34 */	stmw r13, 0x34(r3)
/* 8037F488 0037C3E8  7C 11 E2 A6 */	mfspr r0, 0x391
/* 8037F48C 0037C3EC  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 8037F490 0037C3F0  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8037F494 0037C3F4  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 8037F498 0037C3F8  7C 13 E2 A6 */	mfspr r0, 0x393
/* 8037F49C 0037C3FC  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 8037F4A0 0037C400  7C 14 E2 A6 */	mfspr r0, 0x394
/* 8037F4A4 0037C404  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 8037F4A8 0037C408  7C 15 E2 A6 */	mfspr r0, 0x395
/* 8037F4AC 0037C40C  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 8037F4B0 0037C410  7C 16 E2 A6 */	mfspr r0, 0x396
/* 8037F4B4 0037C414  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 8037F4B8 0037C418  7C 17 E2 A6 */	mfspr r0, 0x397
/* 8037F4BC 0037C41C  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 8037F4C0 0037C420  7C 00 00 26 */	mfcr r0
/* 8037F4C4 0037C424  90 03 00 80 */	stw r0, 0x80(r3)
/* 8037F4C8 0037C428  7C 08 02 A6 */	mflr r0
/* 8037F4CC 0037C42C  90 03 00 84 */	stw r0, 0x84(r3)
/* 8037F4D0 0037C430  90 03 01 98 */	stw r0, 0x198(r3)
/* 8037F4D4 0037C434  7C 00 00 A6 */	mfmsr r0
/* 8037F4D8 0037C438  90 03 01 9C */	stw r0, 0x19c(r3)
/* 8037F4DC 0037C43C  7C 09 02 A6 */	mfctr r0
/* 8037F4E0 0037C440  90 03 00 88 */	stw r0, 0x88(r3)
/* 8037F4E4 0037C444  7C 01 02 A6 */	mfxer r0
/* 8037F4E8 0037C448  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8037F4EC 0037C44C  90 23 00 04 */	stw r1, 4(r3)
/* 8037F4F0 0037C450  90 43 00 08 */	stw r2, 8(r3)
/* 8037F4F4 0037C454  38 00 00 01 */	li r0, 1
/* 8037F4F8 0037C458  90 03 00 0C */	stw r0, 0xc(r3)
/* 8037F4FC 0037C45C  38 60 00 00 */	li r3, 0
/* 8037F500 0037C460  4E 80 00 20 */	blr

.global OSLoadContext
OSLoadContext:
/* 8037F504 0037C464  3C 80 80 38 */	lis r4, __RAS_OSDisableInterrupts_begin@ha
/* 8037F508 0037C468  80 C3 01 98 */	lwz r6, 0x198(r3)
/* 8037F50C 0037C46C  38 A4 16 60 */	addi r5, r4, __RAS_OSDisableInterrupts_begin@l
/* 8037F510 0037C470  7C 06 28 40 */	cmplw r6, r5
/* 8037F514 0037C474  40 81 00 18 */	ble lbl_8037F52C
/* 8037F518 0037C478  3C 80 80 38 */	lis r4, __RAS_OSDisableInterrupts_end@ha
/* 8037F51C 0037C47C  38 04 16 6C */	addi r0, r4, __RAS_OSDisableInterrupts_end@l
/* 8037F520 0037C480  7C 06 00 40 */	cmplw r6, r0
/* 8037F524 0037C484  40 80 00 08 */	bge lbl_8037F52C
/* 8037F528 0037C488  90 A3 01 98 */	stw r5, 0x198(r3)
lbl_8037F52C:
/* 8037F52C 0037C48C  80 03 00 00 */	lwz r0, 0(r3)
/* 8037F530 0037C490  80 23 00 04 */	lwz r1, 4(r3)
/* 8037F534 0037C494  80 43 00 08 */	lwz r2, 8(r3)
/* 8037F538 0037C498  A0 83 01 A2 */	lhz r4, 0x1a2(r3)
/* 8037F53C 0037C49C  54 85 07 BD */	rlwinm. r5, r4, 0, 0x1e, 0x1e
/* 8037F540 0037C4A0  41 82 00 14 */	beq lbl_8037F554
/* 8037F544 0037C4A4  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8037F548 0037C4A8  B0 83 01 A2 */	sth r4, 0x1a2(r3)
/* 8037F54C 0037C4AC  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 8037F550 0037C4B0  48 00 00 08 */	b lbl_8037F558
lbl_8037F554:
/* 8037F554 0037C4B4  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_8037F558:
/* 8037F558 0037C4B8  80 83 01 A8 */	lwz r4, 0x1a8(r3)
/* 8037F55C 0037C4BC  7C 91 E3 A6 */	mtspr 0x391, r4
/* 8037F560 0037C4C0  80 83 01 AC */	lwz r4, 0x1ac(r3)
/* 8037F564 0037C4C4  7C 92 E3 A6 */	mtspr 0x392, r4
/* 8037F568 0037C4C8  80 83 01 B0 */	lwz r4, 0x1b0(r3)
/* 8037F56C 0037C4CC  7C 93 E3 A6 */	mtspr 0x393, r4
/* 8037F570 0037C4D0  80 83 01 B4 */	lwz r4, 0x1b4(r3)
/* 8037F574 0037C4D4  7C 94 E3 A6 */	mtspr 0x394, r4
/* 8037F578 0037C4D8  80 83 01 B8 */	lwz r4, 0x1b8(r3)
/* 8037F57C 0037C4DC  7C 95 E3 A6 */	mtspr 0x395, r4
/* 8037F580 0037C4E0  80 83 01 BC */	lwz r4, 0x1bc(r3)
/* 8037F584 0037C4E4  7C 96 E3 A6 */	mtspr 0x396, r4
/* 8037F588 0037C4E8  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 8037F58C 0037C4EC  7C 97 E3 A6 */	mtspr 0x397, r4
/* 8037F590 0037C4F0  80 83 00 80 */	lwz r4, 0x80(r3)
/* 8037F594 0037C4F4  7C 8F F1 20 */	mtcrf 0xff, r4
/* 8037F598 0037C4F8  80 83 00 84 */	lwz r4, 0x84(r3)
/* 8037F59C 0037C4FC  7C 88 03 A6 */	mtlr r4
/* 8037F5A0 0037C500  80 83 00 88 */	lwz r4, 0x88(r3)
/* 8037F5A4 0037C504  7C 89 03 A6 */	mtctr r4
/* 8037F5A8 0037C508  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 8037F5AC 0037C50C  7C 81 03 A6 */	mtxer r4
/* 8037F5B0 0037C510  7C 80 00 A6 */	mfmsr r4
/* 8037F5B4 0037C514  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 8037F5B8 0037C518  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8037F5BC 0037C51C  7C 80 01 24 */	mtmsr r4
/* 8037F5C0 0037C520  80 83 01 98 */	lwz r4, 0x198(r3)
/* 8037F5C4 0037C524  7C 9A 03 A6 */	mtspr 0x1a, r4
/* 8037F5C8 0037C528  80 83 01 9C */	lwz r4, 0x19c(r3)
/* 8037F5CC 0037C52C  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 8037F5D0 0037C530  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8037F5D4 0037C534  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8037F5D8 0037C538  4C 00 00 64 */	rfi

.global OSGetStackPointer
OSGetStackPointer:
/* 8037F5DC 0037C53C  7C 23 0B 78 */	mr r3, r1
/* 8037F5E0 0037C540  4E 80 00 20 */	blr

.global OSSwitchFiber
OSSwitchFiber:
/* 8037F5E4 0037C544  7C 08 02 A6 */	mflr r0
/* 8037F5E8 0037C548  7C 25 0B 78 */	mr r5, r1
/* 8037F5EC 0037C54C  94 A4 FF F8 */	stwu r5, -8(r4)
/* 8037F5F0 0037C550  7C 81 23 78 */	mr r1, r4
/* 8037F5F4 0037C554  90 05 00 04 */	stw r0, 4(r5)
/* 8037F5F8 0037C558  7C 68 03 A6 */	mtlr r3
/* 8037F5FC 0037C55C  4E 80 00 21 */	blrl
/* 8037F600 0037C560  80 A1 00 00 */	lwz r5, 0(r1)
/* 8037F604 0037C564  80 05 00 04 */	lwz r0, 4(r5)
/* 8037F608 0037C568  7C 08 03 A6 */	mtlr r0
/* 8037F60C 0037C56C  7C A1 2B 78 */	mr r1, r5
/* 8037F610 0037C570  4E 80 00 20 */	blr

.global OSClearContext
OSClearContext:
/* 8037F614 0037C574  38 A0 00 00 */	li r5, 0
/* 8037F618 0037C578  B0 A3 01 A0 */	sth r5, 0x1a0(r3)
/* 8037F61C 0037C57C  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 8037F620 0037C580  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 8037F624 0037C584  80 04 00 D8 */	lwz r0, 0x800000D8@l(r4)
/* 8037F628 0037C588  7C 03 00 40 */	cmplw r3, r0
/* 8037F62C 0037C58C  40 82 00 08 */	bne lbl_8037F634
/* 8037F630 0037C590  90 A4 00 D8 */	stw r5, 0xd8(r4)
lbl_8037F634:
/* 8037F634 0037C594  4E 80 00 20 */	blr

.global OSDumpContext
OSDumpContext:
/* 8037F638 0037C598  7C 08 02 A6 */	mflr r0
/* 8037F63C 0037C59C  90 01 00 04 */	stw r0, 4(r1)
/* 8037F640 0037C5A0  94 21 FD 08 */	stwu r1, -0x2f8(r1)
/* 8037F644 0037C5A4  BF 21 02 DC */	stmw r25, 0x2dc(r1)
/* 8037F648 0037C5A8  7C 7C 1B 78 */	mr r28, r3
/* 8037F64C 0037C5AC  3C 60 80 3F */	lis r3, lbl_803F1258@ha
/* 8037F650 0037C5B0  4C C6 31 82 */	crclr 6
/* 8037F654 0037C5B4  3B E3 12 58 */	addi r31, r3, lbl_803F1258@l
/* 8037F658 0037C5B8  7F E3 FB 78 */	mr r3, r31
/* 8037F65C 0037C5BC  7F 84 E3 78 */	mr r4, r28
/* 8037F660 0037C5C0  48 00 03 4D */	bl OSReport
/* 8037F664 0037C5C4  3B 20 00 00 */	li r25, 0
/* 8037F668 0037C5C8  57 20 10 3A */	slwi r0, r25, 2
/* 8037F66C 0037C5CC  7F 7C 02 14 */	add r27, r28, r0
/* 8037F670 0037C5D0  48 00 00 04 */	b lbl_8037F674
lbl_8037F674:
/* 8037F674 0037C5D4  48 00 00 04 */	b lbl_8037F678
lbl_8037F678:
/* 8037F678 0037C5D8  48 00 00 04 */	b lbl_8037F67C
lbl_8037F67C:
/* 8037F67C 0037C5DC  81 1B 00 40 */	lwz r8, 0x40(r27)
/* 8037F680 0037C5E0  7F 24 CB 78 */	mr r4, r25
/* 8037F684 0037C5E4  80 BB 00 00 */	lwz r5, 0(r27)
/* 8037F688 0037C5E8  38 7F 00 44 */	addi r3, r31, 0x44
/* 8037F68C 0037C5EC  4C C6 31 82 */	crclr 6
/* 8037F690 0037C5F0  7C A6 2B 78 */	mr r6, r5
/* 8037F694 0037C5F4  7D 09 43 78 */	mr r9, r8
/* 8037F698 0037C5F8  38 F9 00 10 */	addi r7, r25, 0x10
/* 8037F69C 0037C5FC  48 00 03 11 */	bl OSReport
/* 8037F6A0 0037C600  3B 7B 00 04 */	addi r27, r27, 4
/* 8037F6A4 0037C604  3B 39 00 01 */	addi r25, r25, 1
/* 8037F6A8 0037C608  28 19 00 10 */	cmplwi r25, 0x10
/* 8037F6AC 0037C60C  41 80 FF D0 */	blt lbl_8037F67C
/* 8037F6B0 0037C610  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 8037F6B4 0037C614  38 7F 00 74 */	addi r3, r31, 0x74
/* 8037F6B8 0037C618  80 BC 00 80 */	lwz r5, 0x80(r28)
/* 8037F6BC 0037C61C  4C C6 31 82 */	crclr 6
/* 8037F6C0 0037C620  48 00 02 ED */	bl OSReport
/* 8037F6C4 0037C624  80 9C 01 98 */	lwz r4, 0x198(r28)
/* 8037F6C8 0037C628  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 8037F6CC 0037C62C  80 BC 01 9C */	lwz r5, 0x19c(r28)
/* 8037F6D0 0037C630  4C C6 31 82 */	crclr 6
/* 8037F6D4 0037C634  48 00 02 D9 */	bl OSReport
/* 8037F6D8 0037C638  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8037F6DC 0037C63C  4C C6 31 82 */	crclr 6
/* 8037F6E0 0037C640  48 00 02 CD */	bl OSReport
/* 8037F6E4 0037C644  3B 20 00 00 */	li r25, 0
/* 8037F6E8 0037C648  57 20 10 3A */	slwi r0, r25, 2
/* 8037F6EC 0037C64C  7F 7C 02 14 */	add r27, r28, r0
/* 8037F6F0 0037C650  48 00 00 04 */	b lbl_8037F6F4
lbl_8037F6F4:
/* 8037F6F4 0037C654  48 00 00 04 */	b lbl_8037F6F8
lbl_8037F6F8:
/* 8037F6F8 0037C658  48 00 00 04 */	b lbl_8037F6FC
lbl_8037F6FC:
/* 8037F6FC 0037C65C  80 BB 01 A4 */	lwz r5, 0x1a4(r27)
/* 8037F700 0037C660  7F 24 CB 78 */	mr r4, r25
/* 8037F704 0037C664  80 FB 01 B4 */	lwz r7, 0x1b4(r27)
/* 8037F708 0037C668  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 8037F70C 0037C66C  38 D9 00 04 */	addi r6, r25, 4
/* 8037F710 0037C670  4C C6 31 82 */	crclr 6
/* 8037F714 0037C674  48 00 02 99 */	bl OSReport
/* 8037F718 0037C678  3B 7B 00 04 */	addi r27, r27, 4
/* 8037F71C 0037C67C  3B 39 00 01 */	addi r25, r25, 1
/* 8037F720 0037C680  28 19 00 04 */	cmplwi r25, 4
/* 8037F724 0037C684  41 80 FF D8 */	blt lbl_8037F6FC
/* 8037F728 0037C688  A0 1C 01 A2 */	lhz r0, 0x1a2(r28)
/* 8037F72C 0037C68C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8037F730 0037C690  28 00 00 00 */	cmplwi r0, 0
/* 8037F734 0037C694  41 82 01 3C */	beq lbl_8037F870
/* 8037F738 0037C698  48 00 1F 29 */	bl OSDisableInterrupts
/* 8037F73C 0037C69C  3C C0 80 00 */	lis r6, 0x800000D4@ha
/* 8037F740 0037C6A0  80 06 00 D4 */	lwz r0, 0x800000D4@l(r6)
/* 8037F744 0037C6A4  38 A0 00 00 */	li r5, 0
/* 8037F748 0037C6A8  38 81 00 10 */	addi r4, r1, 0x10
/* 8037F74C 0037C6AC  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 8037F750 0037C6B0  7C 1E 03 78 */	mr r30, r0
/* 8037F754 0037C6B4  7C 7D 1B 78 */	mr r29, r3
/* 8037F758 0037C6B8  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 8037F75C 0037C6BC  80 06 00 D8 */	lwz r0, 0xd8(r6)
/* 8037F760 0037C6C0  7C 04 00 40 */	cmplw r4, r0
/* 8037F764 0037C6C4  40 82 00 08 */	bne lbl_8037F76C
/* 8037F768 0037C6C8  90 A6 00 D8 */	stw r5, 0xd8(r6)
lbl_8037F76C:
/* 8037F76C 0037C6CC  38 61 00 10 */	addi r3, r1, 0x10
/* 8037F770 0037C6D0  4B FF FC AD */	bl OSSetCurrentContext
/* 8037F774 0037C6D4  38 7F 01 0C */	addi r3, r31, 0x10c
/* 8037F778 0037C6D8  4C C6 31 82 */	crclr 6
/* 8037F77C 0037C6DC  48 00 02 31 */	bl OSReport
/* 8037F780 0037C6E0  3B 20 00 00 */	li r25, 0
/* 8037F784 0037C6E4  57 20 18 38 */	slwi r0, r25, 3
/* 8037F788 0037C6E8  7F 5C 02 14 */	add r26, r28, r0
/* 8037F78C 0037C6EC  48 00 00 04 */	b lbl_8037F790
lbl_8037F790:
/* 8037F790 0037C6F0  48 00 00 04 */	b lbl_8037F794
lbl_8037F794:
/* 8037F794 0037C6F4  48 00 00 04 */	b lbl_8037F798
lbl_8037F798:
/* 8037F798 0037C6F8  C8 3A 00 98 */	lfd f1, 0x98(r26)
/* 8037F79C 0037C6FC  48 00 A1 B9 */	bl __cvt_fp2unsigned
/* 8037F7A0 0037C700  7C 7B 1B 78 */	mr r27, r3
/* 8037F7A4 0037C704  C8 3A 00 90 */	lfd f1, 0x90(r26)
/* 8037F7A8 0037C708  48 00 A1 AD */	bl __cvt_fp2unsigned
/* 8037F7AC 0037C70C  7C 65 1B 78 */	mr r5, r3
/* 8037F7B0 0037C710  4C C6 31 82 */	crclr 6
/* 8037F7B4 0037C714  7F 24 CB 78 */	mr r4, r25
/* 8037F7B8 0037C718  7F 67 DB 78 */	mr r7, r27
/* 8037F7BC 0037C71C  38 7F 01 20 */	addi r3, r31, 0x120
/* 8037F7C0 0037C720  38 D9 00 01 */	addi r6, r25, 1
/* 8037F7C4 0037C724  48 00 01 E9 */	bl OSReport
/* 8037F7C8 0037C728  3B 5A 00 10 */	addi r26, r26, 0x10
/* 8037F7CC 0037C72C  3B 39 00 02 */	addi r25, r25, 2
/* 8037F7D0 0037C730  28 19 00 20 */	cmplwi r25, 0x20
/* 8037F7D4 0037C734  41 80 FF C4 */	blt lbl_8037F798
/* 8037F7D8 0037C738  38 7F 01 3C */	addi r3, r31, 0x13c
/* 8037F7DC 0037C73C  4C C6 31 82 */	crclr 6
/* 8037F7E0 0037C740  48 00 01 CD */	bl OSReport
/* 8037F7E4 0037C744  3B 20 00 00 */	li r25, 0
/* 8037F7E8 0037C748  57 20 18 38 */	slwi r0, r25, 3
/* 8037F7EC 0037C74C  7F 5C 02 14 */	add r26, r28, r0
/* 8037F7F0 0037C750  48 00 00 04 */	b lbl_8037F7F4
lbl_8037F7F4:
/* 8037F7F4 0037C754  48 00 00 04 */	b lbl_8037F7F8
lbl_8037F7F8:
/* 8037F7F8 0037C758  48 00 00 04 */	b lbl_8037F7FC
lbl_8037F7FC:
/* 8037F7FC 0037C75C  C8 3A 01 D0 */	lfd f1, 0x1d0(r26)
/* 8037F800 0037C760  48 00 A1 55 */	bl __cvt_fp2unsigned
/* 8037F804 0037C764  7C 7B 1B 78 */	mr r27, r3
/* 8037F808 0037C768  C8 3A 01 C8 */	lfd f1, 0x1c8(r26)
/* 8037F80C 0037C76C  48 00 A1 49 */	bl __cvt_fp2unsigned
/* 8037F810 0037C770  7C 65 1B 78 */	mr r5, r3
/* 8037F814 0037C774  4C C6 31 82 */	crclr 6
/* 8037F818 0037C778  7F 24 CB 78 */	mr r4, r25
/* 8037F81C 0037C77C  7F 67 DB 78 */	mr r7, r27
/* 8037F820 0037C780  38 7F 01 50 */	addi r3, r31, 0x150
/* 8037F824 0037C784  38 D9 00 01 */	addi r6, r25, 1
/* 8037F828 0037C788  48 00 01 85 */	bl OSReport
/* 8037F82C 0037C78C  3B 5A 00 10 */	addi r26, r26, 0x10
/* 8037F830 0037C790  3B 39 00 02 */	addi r25, r25, 2
/* 8037F834 0037C794  28 19 00 20 */	cmplwi r25, 0x20
/* 8037F838 0037C798  41 80 FF C4 */	blt lbl_8037F7FC
/* 8037F83C 0037C79C  38 A0 00 00 */	li r5, 0
/* 8037F840 0037C7A0  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 8037F844 0037C7A4  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 8037F848 0037C7A8  38 81 00 10 */	addi r4, r1, 0x10
/* 8037F84C 0037C7AC  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 8037F850 0037C7B0  80 03 00 D8 */	lwz r0, 0x800000D8@l(r3)
/* 8037F854 0037C7B4  7C 04 00 40 */	cmplw r4, r0
/* 8037F858 0037C7B8  40 82 00 08 */	bne lbl_8037F860
/* 8037F85C 0037C7BC  90 A3 00 D8 */	stw r5, 0xd8(r3)
lbl_8037F860:
/* 8037F860 0037C7C0  7F C3 F3 78 */	mr r3, r30
/* 8037F864 0037C7C4  4B FF FB B9 */	bl OSSetCurrentContext
/* 8037F868 0037C7C8  7F A3 EB 78 */	mr r3, r29
/* 8037F86C 0037C7CC  48 00 1E 1D */	bl OSRestoreInterrupts
lbl_8037F870:
/* 8037F870 0037C7D0  38 7F 01 70 */	addi r3, r31, 0x170
/* 8037F874 0037C7D4  4C C6 31 82 */	crclr 6
/* 8037F878 0037C7D8  48 00 01 35 */	bl OSReport
/* 8037F87C 0037C7DC  83 3C 00 04 */	lwz r25, 4(r28)
/* 8037F880 0037C7E0  3B 40 00 00 */	li r26, 0
/* 8037F884 0037C7E4  48 00 00 04 */	b lbl_8037F888
lbl_8037F888:
/* 8037F888 0037C7E8  48 00 00 04 */	b lbl_8037F88C
lbl_8037F88C:
/* 8037F88C 0037C7EC  48 00 00 20 */	b lbl_8037F8AC
lbl_8037F890:
/* 8037F890 0037C7F0  80 B9 00 00 */	lwz r5, 0(r25)
/* 8037F894 0037C7F4  7F 24 CB 78 */	mr r4, r25
/* 8037F898 0037C7F8  80 D9 00 04 */	lwz r6, 4(r25)
/* 8037F89C 0037C7FC  38 7F 01 98 */	addi r3, r31, 0x198
/* 8037F8A0 0037C800  4C C6 31 82 */	crclr 6
/* 8037F8A4 0037C804  48 00 01 09 */	bl OSReport
/* 8037F8A8 0037C808  83 39 00 00 */	lwz r25, 0(r25)
lbl_8037F8AC:
/* 8037F8AC 0037C80C  28 19 00 00 */	cmplwi r25, 0
/* 8037F8B0 0037C810  41 82 00 1C */	beq lbl_8037F8CC
/* 8037F8B4 0037C814  3C 19 00 01 */	addis r0, r25, 1
/* 8037F8B8 0037C818  28 00 FF FF */	cmplwi r0, 0xffff
/* 8037F8BC 0037C81C  41 82 00 10 */	beq lbl_8037F8CC
/* 8037F8C0 0037C820  28 1A 00 10 */	cmplwi r26, 0x10
/* 8037F8C4 0037C824  3B 5A 00 01 */	addi r26, r26, 1
/* 8037F8C8 0037C828  41 80 FF C8 */	blt lbl_8037F890
lbl_8037F8CC:
/* 8037F8CC 0037C82C  BB 21 02 DC */	lmw r25, 0x2dc(r1)
/* 8037F8D0 0037C830  80 01 02 FC */	lwz r0, 0x2fc(r1)
/* 8037F8D4 0037C834  38 21 02 F8 */	addi r1, r1, 0x2f8
/* 8037F8D8 0037C838  7C 08 03 A6 */	mtlr r0
/* 8037F8DC 0037C83C  4E 80 00 20 */	blr

.global OSSwitchFPUContext
OSSwitchFPUContext:
/* 8037F8E0 0037C840  7C A0 00 A6 */	mfmsr r5
/* 8037F8E4 0037C844  60 A5 20 00 */	ori r5, r5, 0x2000
/* 8037F8E8 0037C848  7C A0 01 24 */	mtmsr r5
/* 8037F8EC 0037C84C  4C 00 01 2C */	isync
/* 8037F8F0 0037C850  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 8037F8F4 0037C854  60 A5 20 00 */	ori r5, r5, 0x2000
/* 8037F8F8 0037C858  7C BB 03 A6 */	mtspr 0x1b, r5
/* 8037F8FC 0037C85C  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 8037F900 0037C860  80 A3 00 D8 */	lwz r5, 0x800000D8@l(r3)
/* 8037F904 0037C864  90 83 00 D8 */	stw r4, 0xd8(r3)
/* 8037F908 0037C868  7C 05 20 00 */	cmpw r5, r4
/* 8037F90C 0037C86C  41 82 00 14 */	beq lbl_8037F920
/* 8037F910 0037C870  2C 05 00 00 */	cmpwi r5, 0
/* 8037F914 0037C874  41 82 00 08 */	beq lbl_8037F91C
/* 8037F918 0037C878  4B FF F9 D5 */	bl __OSSaveFPUContext
lbl_8037F91C:
/* 8037F91C 0037C87C  4B FF F8 AD */	bl __OSLoadFPUContext
lbl_8037F920:
/* 8037F920 0037C880  80 64 00 80 */	lwz r3, 0x80(r4)
/* 8037F924 0037C884  7C 6F F1 20 */	mtcrf 0xff, r3
/* 8037F928 0037C888  80 64 00 84 */	lwz r3, 0x84(r4)
/* 8037F92C 0037C88C  7C 68 03 A6 */	mtlr r3
/* 8037F930 0037C890  80 64 01 98 */	lwz r3, 0x198(r4)
/* 8037F934 0037C894  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 8037F938 0037C898  80 64 00 88 */	lwz r3, 0x88(r4)
/* 8037F93C 0037C89C  7C 69 03 A6 */	mtctr r3
/* 8037F940 0037C8A0  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 8037F944 0037C8A4  7C 61 03 A6 */	mtxer r3
/* 8037F948 0037C8A8  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 8037F94C 0037C8AC  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 8037F950 0037C8B0  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 8037F954 0037C8B4  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8037F958 0037C8B8  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8037F95C 0037C8BC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8037F960 0037C8C0  4C 00 00 64 */	rfi

.global __OSContextInit
__OSContextInit:
/* 8037F964 0037C8C4  7C 08 02 A6 */	mflr r0
/* 8037F968 0037C8C8  90 01 00 04 */	stw r0, 4(r1)
/* 8037F96C 0037C8CC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8037F970 0037C8D0  3C 60 80 38 */	lis r3, OSSwitchFPUContext@ha
/* 8037F974 0037C8D4  38 83 F8 E0 */	addi r4, r3, OSSwitchFPUContext@l
/* 8037F978 0037C8D8  38 60 00 07 */	li r3, 7
/* 8037F97C 0037C8DC  4B FF E5 4D */	bl __OSSetExceptionHandler
/* 8037F980 0037C8E0  38 00 00 00 */	li r0, 0
/* 8037F984 0037C8E4  4C C6 31 82 */	crclr 6
/* 8037F988 0037C8E8  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 8037F98C 0037C8EC  3C 60 80 3F */	lis r3, lbl_803F140C@ha
/* 8037F990 0037C8F0  90 04 00 D8 */	stw r0, 0x800000D8@l(r4)
/* 8037F994 0037C8F4  38 63 14 0C */	addi r3, r3, lbl_803F140C@l
/* 8037F998 0037C8F8  4B FE FF D1 */	bl DBPrintf
/* 8037F99C 0037C8FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8037F9A0 0037C900  38 21 00 08 */	addi r1, r1, 8
/* 8037F9A4 0037C904  7C 08 03 A6 */	mtlr r0
/* 8037F9A8 0037C908  4E 80 00 20 */	blr
