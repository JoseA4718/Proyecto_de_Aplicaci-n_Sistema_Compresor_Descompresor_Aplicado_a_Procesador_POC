	.arch armv8-a
	.file	"loop_unrolling_8.c"
	.text
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
	b	.L2
.L3:
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
	add	w0, w0, 5
	str	w0, [sp, 60]
.L2:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	blt	.L3
	nop
	add	sp, sp, 64
	ret
	.size	iirfilter, .-iirfilter
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
