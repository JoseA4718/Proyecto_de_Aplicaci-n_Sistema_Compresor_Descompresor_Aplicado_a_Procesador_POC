	.arch armv8-a
	.file	"discrete_fourier_transform.c"
	.text
	.global	k
	.data
	.align	2
	.type	k, %object
	.size	k, 4
k:
	.word	20
	.section	.rodata
	.align	3
.LC0:
	.string	"Discrete Fourier Transform using naive method"
	.align	3
.LC1:
	.string	"Enter the coefficient of simple linear function:"
	.align	3
.LC2:
	.string	"ax + by = c"
	.align	3
.LC3:
	.string	"where a = 1, b =2 and c = 3"
	.align	3
.LC5:
	.string	"The coefficients are: "
	.align	3
.LC6:
	.string	"( %e ) - ( %e i)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -272]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	stp	x27, x28, [sp, 80]
	str	w0, [x29, 172]
	str	x1, [x29, 160]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, 264]
	mov	x1,0
	mov	x0, sp
	str	x0, [x29, 104]
	mov	w0, 10
	str	w0, [x29, 176]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w1, [x0]
	sxtw	x0, w1
	sub	x0, x0, #1
	str	x0, [x29, 208]
	sxtw	x0, w1
	str	x0, [x29, 144]
	str	xzr, [x29, 152]
	ldr	x0, [x29, 144]
	lsr	x0, x0, 57
	ldr	x18, [x29, 152]
	lsl	x3, x18, 7
	orr	x3, x0, x3
	ldr	x0, [x29, 144]
	lsl	x2, x0, 7
	sxtw	x0, w1
	str	x0, [x29, 128]
	str	xzr, [x29, 136]
	ldp	x2, x3, [x29, 128]
	mov	x0, x2
	lsr	x0, x0, 57
	mov	x18, x3
	lsl	x13, x18, 7
	orr	x13, x0, x13
	mov	x0, x2
	lsl	x12, x0, 7
	sxtw	x0, w1
	lsl	x0, x0, 4
	add	x0, x0, 7
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 200]
	ldr	w0, [x29, 176]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 216]
	sxtw	x1, w0
	str	x1, [x29, 112]
	str	xzr, [x29, 120]
	ldp	x2, x3, [x29, 112]
	mov	x1, x2
	lsr	x1, x1, 58
	mov	x12, x3
	lsl	x11, x12, 6
	orr	x11, x1, x11
	mov	x1, x2
	lsl	x10, x1, 6
	sxtw	x1, w0
	mov	x27, x1
	mov	x28, 0
	lsr	x1, x27, 58
	lsl	x9, x28, 6
	orr	x9, x1, x9
	lsl	x8, x27, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x0, 7
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 224]
	ldr	w0, [x29, 176]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 232]
	sxtw	x1, w0
	mov	x16, x1
	mov	x17, 0
	lsr	x1, x16, 58
	lsl	x7, x17, 6
	orr	x7, x1, x7
	lsl	x6, x16, 6
	sxtw	x1, w0
	mov	x14, x1
	mov	x15, 0
	lsr	x1, x14, 58
	lsl	x5, x15, 6
	orr	x5, x1, x5
	lsl	x4, x14, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x0, 7
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 240]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	puts
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [x29, 176]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, 248]
	sxtw	x1, w0
	mov	x25, x1
	mov	x26, 0
	lsr	x1, x25, 58
	lsl	x22, x26, 6
	orr	x22, x1, x22
	lsl	x21, x25, 6
	sxtw	x1, w0
	mov	x23, x1
	mov	x24, 0
	lsr	x1, x23, 58
	lsl	x20, x24, 6
	orr	x20, x1, x20
	lsl	x19, x23, 6
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x0, x0, 7
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	sub	sp, sp, x0
	mov	x0, sp
	add	x0, x0, 7
	lsr	x0, x0, 3
	lsl	x0, x0, 3
	str	x0, [x29, 256]
	str	wzr, [x29, 184]
	b	.L2
.L3:
	ldr	s0, [x29, 188]
	fcvt	d1, s0
	ldr	w0, [x29, 184]
	scvtf	d0, w0
	fmul	d1, d1, d0
	ldr	s0, [x29, 192]
	fcvt	d2, s0
	ldr	w0, [x29, 184]
	scvtf	d0, w0
	fmul	d0, d2, d0
	fadd	d1, d1, d0
	ldr	s0, [x29, 196]
	fcvt	d0, s0
	fsub	d0, d1, d0
	ldr	x0, [x29, 256]
	ldrsw	x1, [x29, 184]
	str	d0, [x0, x1, lsl 3]
	ldr	s0, [x29, 188]
	fcvt	d1, s0
	ldr	w0, [x29, 184]
	scvtf	d0, w0
	fmul	d1, d1, d0
	fmov	d0, 1.0e+0
	fadd	d1, d1, d0
	ldr	s0, [x29, 192]
	fcvt	d2, s0
	ldr	w0, [x29, 184]
	scvtf	d0, w0
	fmul	d2, d2, d0
	fmov	d0, 1.0e+0
	fadd	d0, d2, d0
	fadd	d1, d1, d0
	ldr	s0, [x29, 196]
	fcvt	d0, s0
	ldr	w0, [x29, 184]
	add	w1, w0, 1
	fsub	d0, d1, d0
	ldr	x0, [x29, 256]
	sxtw	x1, w1
	str	d0, [x0, x1, lsl 3]
	ldr	s0, [x29, 188]
	fcvt	d1, s0
	ldr	w0, [x29, 184]
	scvtf	d0, w0
	fmul	d1, d1, d0
	fmov	d0, 2.0e+0
	fadd	d1, d1, d0
	ldr	s0, [x29, 192]
	fcvt	d2, s0
	ldr	w0, [x29, 184]
	scvtf	d0, w0
	fmul	d2, d2, d0
	fmov	d0, 2.0e+0
	fadd	d0, d2, d0
	fadd	d1, d1, d0
	ldr	s0, [x29, 196]
	fcvt	d0, s0
	ldr	w0, [x29, 184]
	add	w1, w0, 2
	fsub	d0, d1, d0
	ldr	x0, [x29, 256]
	sxtw	x1, w1
	str	d0, [x0, x1, lsl 3]
	ldr	s0, [x29, 188]
	fcvt	d1, s0
	ldr	w0, [x29, 184]
	scvtf	d0, w0
	fmul	d1, d1, d0
	fmov	d0, 3.0e+0
	fadd	d1, d1, d0
	ldr	s0, [x29, 192]
	fcvt	d2, s0
	ldr	w0, [x29, 184]
	scvtf	d0, w0
	fmul	d2, d2, d0
	fmov	d0, 3.0e+0
	fadd	d0, d2, d0
	fadd	d1, d1, d0
	ldr	s0, [x29, 196]
	fcvt	d0, s0
	ldr	w0, [x29, 184]
	add	w1, w0, 3
	fsub	d0, d1, d0
	ldr	x0, [x29, 256]
	sxtw	x1, w1
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w0, w0, 4
	str	w0, [x29, 184]
.L2:
	ldr	w1, [x29, 184]
	ldr	w0, [x29, 176]
	cmp	w1, w0
	blt	.L3
	str	wzr, [x29, 184]
	b	.L4
.L5:
	ldr	w0, [x29, 184]
	lsl	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	mul	w0, w1, w0
	scvtf	d1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	w0, [x29, 176]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	bl	cos
	ldr	x0, [x29, 224]
	ldrsw	x1, [x29, 184]
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	lsl	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	mul	w0, w1, w0
	scvtf	d1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	w0, [x29, 176]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	bl	sin
	ldr	x0, [x29, 240]
	ldrsw	x1, [x29, 184]
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w0, w0, 1
	lsl	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	mul	w0, w1, w0
	scvtf	d1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	w0, [x29, 176]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	ldr	w0, [x29, 184]
	add	w19, w0, 1
	bl	cos
	ldr	x0, [x29, 224]
	sxtw	x1, w19
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w0, w0, 1
	lsl	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	mul	w0, w1, w0
	scvtf	d1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	w0, [x29, 176]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	ldr	w0, [x29, 184]
	add	w19, w0, 1
	bl	sin
	ldr	x0, [x29, 240]
	sxtw	x1, w19
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w0, w0, 2
	lsl	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	mul	w0, w1, w0
	scvtf	d1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	w0, [x29, 176]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	ldr	w0, [x29, 184]
	add	w19, w0, 2
	bl	cos
	ldr	x0, [x29, 224]
	sxtw	x1, w19
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w0, w0, 2
	lsl	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	mul	w0, w1, w0
	scvtf	d1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	w0, [x29, 176]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	ldr	w0, [x29, 184]
	add	w19, w0, 2
	bl	sin
	ldr	x0, [x29, 240]
	sxtw	x1, w19
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w0, w0, 3
	lsl	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	mul	w0, w1, w0
	scvtf	d1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	w0, [x29, 176]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	ldr	w0, [x29, 184]
	add	w19, w0, 3
	bl	cos
	ldr	x0, [x29, 224]
	sxtw	x1, w19
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w0, w0, 3
	lsl	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	mul	w0, w1, w0
	scvtf	d1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	ldr	d0, [x0]
	fmul	d1, d1, d0
	ldr	w0, [x29, 176]
	scvtf	d0, w0
	fdiv	d0, d1, d0
	ldr	w0, [x29, 184]
	add	w19, w0, 3
	bl	sin
	ldr	x0, [x29, 240]
	sxtw	x1, w19
	str	d0, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w0, w0, 4
	str	w0, [x29, 184]
.L4:
	ldr	w1, [x29, 184]
	ldr	w0, [x29, 176]
	cmp	w1, w0
	blt	.L5
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	str	wzr, [x29, 180]
	b	.L6
.L9:
	str	wzr, [x29, 184]
	b	.L7
.L8:
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	x0, [x29, 256]
	ldrsw	x1, [x29, 184]
	ldr	d2, [x0, x1, lsl 3]
	ldr	x0, [x29, 224]
	ldrsw	x1, [x29, 184]
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	d0, [x0]
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d1, [x0, 8]
	ldr	x0, [x29, 256]
	ldrsw	x1, [x29, 184]
	ldr	d2, [x0, x1, lsl 3]
	ldr	x0, [x29, 240]
	ldrsw	x1, [x29, 184]
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	d0, [x0, 8]
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [x29, 184]
	add	w1, w0, 1
	ldr	x0, [x29, 256]
	sxtw	x1, w1
	ldr	d2, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w1, w0, 1
	ldr	x0, [x29, 224]
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	d0, [x0]
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d1, [x0, 8]
	ldr	w0, [x29, 184]
	add	w1, w0, 1
	ldr	x0, [x29, 256]
	sxtw	x1, w1
	ldr	d2, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w1, w0, 1
	ldr	x0, [x29, 240]
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	d0, [x0, 8]
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [x29, 184]
	add	w1, w0, 2
	ldr	x0, [x29, 256]
	sxtw	x1, w1
	ldr	d2, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w1, w0, 2
	ldr	x0, [x29, 224]
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	d0, [x0]
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d1, [x0, 8]
	ldr	w0, [x29, 184]
	add	w1, w0, 2
	ldr	x0, [x29, 256]
	sxtw	x1, w1
	ldr	d2, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w1, w0, 2
	ldr	x0, [x29, 240]
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	d0, [x0, 8]
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d1, [x0]
	ldr	w0, [x29, 184]
	add	w1, w0, 3
	ldr	x0, [x29, 256]
	sxtw	x1, w1
	ldr	d2, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w1, w0, 3
	ldr	x0, [x29, 224]
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	d0, [x0]
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d1, [x0, 8]
	ldr	w0, [x29, 184]
	add	w1, w0, 3
	ldr	x0, [x29, 256]
	sxtw	x1, w1
	ldr	d2, [x0, x1, lsl 3]
	ldr	w0, [x29, 184]
	add	w1, w0, 3
	ldr	x0, [x29, 240]
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	str	d0, [x0, 8]
	ldr	w0, [x29, 184]
	add	w0, w0, 4
	str	w0, [x29, 184]
.L7:
	ldr	w1, [x29, 184]
	ldr	w0, [x29, 176]
	cmp	w1, w0
	blt	.L8
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d0, [x0]
	ldr	x1, [x29, 200]
	ldrsw	x0, [x29, 180]
	lsl	x0, x0, 4
	add	x0, x1, x0
	ldr	d1, [x0, 8]
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	ldr	w0, [x29, 180]
	add	w0, w0, 1
	str	w0, [x29, 180]
.L6:
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [x29, 180]
	cmp	w1, w0
	blt	.L9
	mov	w0, 0
	ldr	x1, [x29, 104]
	mov	sp, x1
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [x29, 264]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cmp	x1, 0
	beq	.L11
	bl	__stack_chk_fail
.L11:
	add	sp, x29, 0
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	ldp	x29, x30, [sp], 272
	ret
	.size	main, .-main
	.section	.rodata
	.align	3
.LC4:
	.word	1405670641
	.word	1074340347
	.text
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
