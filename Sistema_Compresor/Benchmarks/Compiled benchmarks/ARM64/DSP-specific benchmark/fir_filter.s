	.arch armv8-a
	.file	"fir_filter.c"
	.text
	.align	2
	.type	convolve, %function
convolve:
	sub	sp, sp, #96
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	x3, [sp, 16]
	str	x4, [sp, 8]
	str	xzr, [sp, 48]
	b	.L2
.L11:
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
	str	xzr, [sp, 56]
	mov	x0, 1
	str	x0, [sp, 80]
	b	.L7
.L8:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 80]
	add	x0, x1, x0
	add	x0, x0, 2
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 80]
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
	ldr	x0, [sp, 80]
	add	x0, x1, x0
	add	x0, x0, 3
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 80]
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
	ldr	x0, [sp, 80]
	add	x0, x1, x0
	add	x0, x0, 4
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 80]
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
	ldr	x0, [sp, 80]
	add	x0, x1, x0
	add	x0, x0, 5
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 80]
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
	ldr	x0, [sp, 80]
	add	x0, x0, 4
	str	x0, [sp, 80]
.L7:
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L8
	ldr	x0, [sp, 48]
	add	x0, x0, 2
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	d0, [sp, 56]
	fcvt	s0, d0
	str	s0, [x0]
	str	xzr, [sp, 56]
	mov	x0, 1
	str	x0, [sp, 88]
	b	.L9
.L10:
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 88]
	add	x0, x1, x0
	add	x0, x0, 3
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 88]
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
	ldr	x0, [sp, 88]
	add	x0, x1, x0
	add	x0, x0, 4
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 88]
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
	ldr	x0, [sp, 88]
	add	x0, x1, x0
	add	x0, x0, 5
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 88]
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
	ldr	x0, [sp, 88]
	add	x0, x1, x0
	add	x0, x0, 6
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	s1, [x0]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 88]
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
	ldr	x0, [sp, 88]
	add	x0, x0, 4
	str	x0, [sp, 88]
.L9:
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	bcc	.L10
	ldr	x0, [sp, 48]
	add	x0, x0, 3
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
	bcc	.L11
	nop
	add	sp, sp, 96
	ret
	.size	convolve, .-convolve
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
