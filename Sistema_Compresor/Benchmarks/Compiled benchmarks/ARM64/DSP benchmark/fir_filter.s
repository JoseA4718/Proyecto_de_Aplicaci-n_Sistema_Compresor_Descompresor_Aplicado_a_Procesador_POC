	.arch armv8-a
	.file	"fir_filter.c"
	.text
	.align	2
	.type	convolve, %function
convolve:
	sub	sp, sp, #80
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	str	xzr, [sp, 48]
	b	.L2
.L7:
	str	xzr, [sp, 56]
	mov	x0, 1
	str	x0, [sp, 64]
	b	.L3
.L4:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 64]
	sub	x0, x1, x0
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	fcvt	d0, s0
	ldr	d1, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 64]
	sub	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	fcvt	d0, s0
	ldr	d1, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	add	x0, x0, 2
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 64]
	sub	x0, x1, x0
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	fcvt	d0, s0
	ldr	d1, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	add	x0, x0, 3
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 64]
	sub	x0, x1, x0
	add	x0, x0, 2
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	fcvt	d0, s0
	ldr	d1, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x0, [sp, 64]
	add	x0, x0, 4
	str	x0, [sp, 64]
.L3:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L4
	ldr	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	d0, [sp, 56]
	fcvt	s0, d0
	str	s0, [x0]
	str	xzr, [sp, 56]
	mov	x0, 1
	str	x0, [sp, 72]
	b	.L5
.L6:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	fcvt	d0, s0
	ldr	d1, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	add	x0, x0, 2
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	fcvt	d0, s0
	ldr	d1, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	add	x0, x0, 3
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	fcvt	d0, s0
	ldr	d1, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 72]
	add	x0, x1, x0
	add	x0, x0, 4
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	add	x0, x0, 2
	lsl	x0, x0, 2
	ldr	x1, [sp, 32]
	add	x0, x1, x0
	ldr	s0, [x0]
	fmul	s0, s1, s0
	fcvt	d0, s0
	ldr	d1, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 56]
	ldr	x0, [sp, 72]
	add	x0, x0, 4
	str	x0, [sp, 72]
.L5:
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L6
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	d0, [sp, 56]
	fcvt	s0, d0
	str	s0, [x0]
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
.L2:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	bcc	.L7
	nop
	add	sp, sp, 80
	ret
	.size	convolve, .-convolve
	.section	.rodata
	.align	3
.LC2:
	.string	"CombinedFilter[%zu] = %g.\n"
	.align	3
.LC3:
	.string	"Buffer0[%zu] = %g.  Buffer1[%zu] = %g.  Difference = %g.\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, #2192
	stp	x29, x30, [sp]
	add	x29, sp, 0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, 2184]
	mov	x1,0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, x29, 96
	ldr	x2, [x1]
	str	x2, [x0]
	ldr	w1, [x1, 8]
	str	w1, [x0, 8]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	add	x2, x29, 112
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	w0, [x3, 16]
	str	w0, [x2, 16]
	mov	x0, 3
	str	x0, [x29, 48]
	mov	x0, 5
	str	x0, [x29, 56]
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	sub	x0, x0, #2
	str	x0, [x29, 64]
	add	x0, x29, 136
	mov	x2, 512
	mov	w1, 0
	bl	memset
	ldr	x0, [x29, 64]
	lsl	x0, x0, 2
	add	x1, x29, 136
	fmov	s0, 1.0e+0
	str	s0, [x1, x0]
	ldr	x1, [x29, 64]
	ldr	x0, [x29, 48]
	add	x1, x1, x0
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	sub	x0, x0, #1
	str	x0, [x29, 72]
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 48]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 72]
	add	x2, x29, 648
	add	x1, x29, 96
	add	x0, x29, 136
	ldr	x4, [x29, 72]
	mov	x3, x2
	ldr	x2, [x29, 48]
	bl	convolve
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 56]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 72]
	add	x2, x29, 648
	add	x1, x29, 112
	add	x0, x29, 648
	ldr	x4, [x29, 72]
	mov	x3, x2
	ldr	x2, [x29, 56]
	bl	convolve
	ldr	x0, [x29, 72]
	str	x0, [x29, 80]
	str	xzr, [x29, 24]
	b	.L9
.L10:
	ldr	x0, [x29, 24]
	lsl	x0, x0, 2
	add	x1, x29, 648
	ldr	s0, [x1, x0]
	fcvt	d0, s0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	ldr	x1, [x29, 24]
	bl	printf
	ldr	x0, [x29, 24]
	add	x0, x0, 1
	str	x0, [x29, 24]
.L9:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 80]
	cmp	x1, x0
	bcc	.L10
	str	xzr, [x29, 32]
	b	.L11
.L12:
	ldr	x0, [x29, 32]
	ucvtf	s0, x0
	ldr	x0, [x29, 32]
	lsl	x0, x0, 2
	add	x1, x29, 1160
	str	s0, [x1, x0]
	ldr	x0, [x29, 32]
	ucvtf	s0, x0
	ldr	x0, [x29, 32]
	lsl	x0, x0, 2
	add	x1, x29, 1672
	str	s0, [x1, x0]
	ldr	x0, [x29, 32]
	add	x0, x0, 1
	str	x0, [x29, 32]
.L11:
	ldr	x0, [x29, 32]
	cmp	x0, 127
	bls	.L12
	mov	x0, 128
	str	x0, [x29, 72]
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 48]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 72]
	add	x2, x29, 1160
	add	x1, x29, 96
	add	x0, x29, 1160
	ldr	x4, [x29, 72]
	mov	x3, x2
	ldr	x2, [x29, 48]
	bl	convolve
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 56]
	sub	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 72]
	add	x2, x29, 1160
	add	x1, x29, 112
	add	x0, x29, 1160
	ldr	x4, [x29, 72]
	mov	x3, x2
	ldr	x2, [x29, 56]
	bl	convolve
	ldr	x0, [x29, 72]
	str	x0, [x29, 88]
	add	x2, x29, 1672
	add	x1, x29, 648
	add	x0, x29, 1672
	ldr	x4, [x29, 88]
	mov	x3, x2
	ldr	x2, [x29, 80]
	bl	convolve
	str	xzr, [x29, 40]
	b	.L13
.L14:
	ldr	x0, [x29, 40]
	lsl	x0, x0, 2
	add	x1, x29, 1160
	ldr	s0, [x1, x0]
	fcvt	d3, s0
	ldr	x0, [x29, 40]
	lsl	x0, x0, 2
	add	x1, x29, 1672
	ldr	s0, [x1, x0]
	fcvt	d4, s0
	ldr	x0, [x29, 40]
	lsl	x0, x0, 2
	add	x1, x29, 1160
	ldr	s1, [x1, x0]
	ldr	x0, [x29, 40]
	lsl	x0, x0, 2
	add	x1, x29, 1672
	ldr	s0, [x1, x0]
	fsub	s0, s1, s0
	fcvt	d0, s0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	fmov	d2, d0
	fmov	d1, d4
	ldr	x2, [x29, 40]
	fmov	d0, d3
	ldr	x1, [x29, 40]
	bl	printf
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
.L13:
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 88]
	cmp	x1, x0
	bcc	.L14
	mov	w0, 0
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [x29, 2184]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cmp	x1, 0
	beq	.L16
	bl	__stack_chk_fail
.L16:
	ldp	x29, x30, [sp]
	add	sp, sp, 2192
	ret
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	3212836864
	.align	3
.LC1:
	.word	1065353216
	.word	1084227584
	.word	1088421888
	.word	1084227584
	.word	1065353216
	.text
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
