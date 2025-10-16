	.arch armv8-a
	.file	"filters.c"
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
	.align	2
	.global	iirfilter
	.type	iirfilter, %function
iirfilter:
	sub	sp, sp, #64
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	s0, [sp, 32]
	str	x4, [sp, 8]
	str	wzr, [sp, 60]
	str	wzr, [sp, 60]
	b	.L9
.L10:
	ldr	x0, [sp, 24]
	ldr	s0, [x0, 4]
	ldr	x0, [sp, 24]
	str	s0, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	x1, [sp, 24]
	ldr	s0, [x1, 8]
	str	s0, [x0]
	ldr	x0, [sp, 40]
	ldr	s1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	s0, [sp, 32]
	fmul	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	ldr	s0, [x0, 4]
	ldr	x0, [sp, 16]
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	x1, [sp, 16]
	ldr	s0, [x1, 8]
	str	s0, [x0]
	ldr	x0, [sp, 24]
	ldr	s1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fmul	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	s1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	s2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	s0, [x0]
	fmul	s0, s2, s0
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fadd	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	s1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	s2, [x0]
	ldr	x0, [sp, 8]
	ldr	s0, [x0]
	fmul	s0, s2, s0
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fadd	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	s1, [x0]
	ldr	x0, [sp, 16]
	ldr	s2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	s0, [x0]
	fmul	s0, s2, s0
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fsub	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	s1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	s2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	s0, [x0]
	fmul	s0, s2, s0
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fsub	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	ldr	s0, [x0, 8]
	ldr	x0, [sp, 40]
	str	s0, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L9:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L10
	nop
	add	sp, sp, 64
	ret
	.size	iirfilter, .-iirfilter
	.align	2
	.global	iirfilter_unscaled
	.type	iirfilter_unscaled, %function
iirfilter_unscaled:
	sub	sp, sp, #64
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	s0, [sp, 32]
	str	x4, [sp, 8]
	str	wzr, [sp, 60]
	str	wzr, [sp, 60]
	b	.L12
.L13:
	ldr	x0, [sp, 24]
	ldr	s0, [x0, 4]
	ldr	x0, [sp, 24]
	str	s0, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	x1, [sp, 24]
	ldr	s0, [x1, 8]
	str	s0, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	x1, [sp, 40]
	ldr	s0, [x1]
	str	s0, [x0]
	ldr	x0, [sp, 16]
	ldr	s0, [x0, 4]
	ldr	x0, [sp, 16]
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	x1, [sp, 16]
	ldr	s0, [x1, 8]
	str	s0, [x0]
	ldr	x0, [sp, 24]
	ldr	s1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	ldr	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fmul	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	s1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	s2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 4
	ldr	s0, [x0]
	fmul	s0, s2, s0
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fadd	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	s1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	s2, [x0]
	ldr	x0, [sp, 8]
	ldr	s0, [x0]
	fmul	s0, s2, s0
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fadd	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	s1, [x0]
	ldr	x0, [sp, 16]
	ldr	s2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	s0, [x0]
	fmul	s0, s2, s0
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fsub	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	s1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	s2, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	s0, [x0]
	fmul	s0, s2, s0
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	fsub	s0, s1, s0
	str	s0, [x0]
	ldr	x0, [sp, 16]
	ldr	s0, [x0, 8]
	ldr	x0, [sp, 40]
	str	s0, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L12:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L13
	nop
	add	sp, sp, 64
	ret
	.size	iirfilter_unscaled, .-iirfilter_unscaled
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
