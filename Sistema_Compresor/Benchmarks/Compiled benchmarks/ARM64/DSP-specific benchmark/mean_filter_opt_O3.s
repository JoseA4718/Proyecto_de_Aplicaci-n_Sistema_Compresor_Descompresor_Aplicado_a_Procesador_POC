	.arch armv8-a
	.file	"mean_filter_opt.cpp"
	.text
	.align	2
	.p2align 3,,7
	.global	_Z13insertionSortPii
	.type	_Z13insertionSortPii, %function
_Z13insertionSortPii:
.LFB1734:
	.cfi_startproc
	cmp	w1, 1
	ble	.L1
	sub	w1, w1, #2
	sub	x5, x0, #4
	add	x7, x1, 1
	mov	x6, 0
	.p2align 3
.L6:
	ldp	w2, w4, [x5, 4]
	cmp	w4, w2
	bge	.L7
	mov	x3, x5
	mov	x1, x6
	b	.L4
	.p2align 2
.L5:
	ldr	w2, [x3], -4
	cmp	w2, w4
	ble	.L3
.L4:
	str	w2, [x3, 8]
	sub	x1, x1, #1
	cmn	x1, #1
	bne	.L5
.L3:
	add	x1, x1, 1
	add	x6, x6, 1
	add	x5, x5, 4
	cmp	x7, x6
	str	w4, [x0, x1, lsl 2]
	bne	.L6
.L1:
	ret
	.p2align 2
.L7:
	mov	x1, x6
	add	x6, x6, 1
	add	x1, x1, 1
	add	x5, x5, 4
	cmp	x7, x6
	str	w4, [x0, x1, lsl 2]
	bne	.L6
	b	.L1
	.cfi_endproc
.LFE1734:
	.size	_Z13insertionSortPii, .-_Z13insertionSortPii
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 3,,7
	.global	main
	.type	main, %function
main:
.LFB1735:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1735
	sub	sp, sp, #1632
	.cfi_def_cfa_offset 1632
	adrp	x1, :got:__stack_chk_guard
	mov	w2, 8
	stp	x29, x30, [sp]
	.cfi_offset 29, -1632
	.cfi_offset 30, -1624
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	stp	x21, x22, [sp, 32]
	.cfi_offset 21, -1600
	.cfi_offset 22, -1592
	add	x21, x29, 1096
	ldr	x3, [x1]
	str	x3, [x29, 1624]
	mov	x3,0
	mov	x0, x21
	str	x19, [sp, 16]
	adrp	x1, .LC0
	stp	x23, x24, [sp, 48]
	add	x1, x1, :lo12:.LC0
	stp	x25, x26, [sp, 64]
	.cfi_offset 19, -1616
	.cfi_offset 23, -1584
	.cfi_offset 24, -1576
	.cfi_offset 25, -1568
	.cfi_offset 26, -1560
	add	x19, x29, 184
	stp	x27, x28, [sp, 80]
	stp	wzr, wzr, [x29, 100]
	str	wzr, [x29, 108]
.LEHB0:
	.cfi_offset 27, -1552
	.cfi_offset 28, -1544
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE0:
	mov	w1, 24
	mov	x0, x19
.LEHB1:
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode
.LEHE1:
	str	x20, [x29, 24]
	.cfi_offset 20, -1608
	add	x20, x29, 112
	add	x0, x20, 16
	mov	x1, x20
	str	x0, [x29, 112]
	mov	x0, x21
	str	xzr, [x29, 120]
	strb	wzr, [x29, 128]
.LEHB2:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	adrp	x22, .LC1
	mov	x0, x20
	add	x1, x22, :lo12:.LC1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	cbz	w0, .L11
	adrp	x23, :got:_ZSt4cerr
	adrp	x1, .LC2
	mov	x2, 13
	add	x1, x1, :lo12:.LC2
	ldr	x0, [x23, #:got_lo12:_ZSt4cerr]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x23, #:got_lo12:_ZSt4cerr]
.L161:
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	add	x1, x21, 16
	add	x0, x19, 16
	bl	_ZNSolsEPSt15basic_streambufIcSt11char_traitsIcEE
	add	x1, x29, 104
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x29, 100
	bl	_ZNSirsERi
	add	x1, x29, 108
	bl	_ZNSirsERi
	adrp	x0, :got:_ZSt4cout
	ldr	w1, [x29, 104]
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	adrp	x1, .LC4
	mov	x23, x0
	mov	x2, 13
	add	x1, x1, :lo12:.LC4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [x29, 100]
	mov	x0, x23
	bl	_ZNSolsEi
	adrp	x1, .LC5
	mov	x23, x0
	mov	x2, 5
	add	x1, x1, :lo12:.LC5
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x23
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	adrp	x1, .LC6
	mov	x23, x0
	mov	x2, 19
	add	x1, x1, :lo12:.LC6
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [x29, 108]
	mov	x0, x23
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w3, [x29, 100]
	tbnz	w3, #31, .L162
	adrp	x23, array
	add	x1, x23, :lo12:array
	mov	x11, 6464
	mov	x10, 14464
	mov	x9, 22464
	mov	x8, 30464
	mov	x7, 38464
	mov	x6, 46464
	mov	x2, 54464
	mov	x18, x1
	mov	x5, 0
	mov	w4, 0
	mov	x17, 24000
	mov	x16, 32000
	mov	x15, 40000
	mov	x14, 48000
	mov	x13, 56000
	mov	x12, 64000
	movk	x11, 0x1, lsl 16
	movk	x10, 0x1, lsl 16
	movk	x9, 0x1, lsl 16
	movk	x8, 0x1, lsl 16
	movk	x7, 0x1, lsl 16
	movk	x6, 0x1, lsl 16
	movk	x2, 0x1, lsl 16
	.p2align 3
.L19:
	add	x0, x5, x18
	str	wzr, [x1]
	str	wzr, [x1, 8000]
	add	w4, w4, 15
	str	wzr, [x1, 16000]
	add	x5, x5, x2
	str	wzr, [x0, x17]
	cmp	w4, w3
	str	wzr, [x0, x16]
	add	x1, x1, x2
	str	wzr, [x0, x15]
	str	wzr, [x0, x14]
	str	wzr, [x0, x13]
	str	wzr, [x0, x12]
	str	wzr, [x0, x11]
	str	wzr, [x0, x10]
	str	wzr, [x0, x9]
	str	wzr, [x0, x8]
	str	wzr, [x0, x7]
	str	wzr, [x0, x6]
	str	wzr, [x0, x2]
	ble	.L19
	ldr	w0, [x29, 104]
	tbnz	w0, #31, .L16
.L17:
	movi	v0.4s, 0
	add	x1, x23, :lo12:array
	mov	w2, 0
	.p2align 3
.L22:
	str	q0, [x1]
	add	w2, w2, 15
	cmp	w0, w2
	str	q0, [x1, 16]
	str	q0, [x1, 32]
	stp	wzr, wzr, [x1, 48]
	str	wzr, [x1, 56]
	str	wzr, [x1, 60]!
	bge	.L22
.L16:
	cmp	w3, 0
	ble	.L20
	adrp	x27, array+8004
	add	x27, x27, :lo12:array+8004
	mov	w28, 1
	mov	x24, 8000
	.p2align 3
.L27:
	cmp	w0, 0
	ble	.L23
	mov	x25, x27
	mov	w26, 1
	.p2align 3
.L24:
	mov	x1, x25
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 4
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 8
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 12
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 16
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 20
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 24
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 28
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 32
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 36
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 40
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 44
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 48
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 52
	mov	x0, x19
	bl	_ZNSirsERi
	add	x1, x25, 56
	mov	x0, x19
	bl	_ZNSirsERi
	ldr	w0, [x29, 104]
	add	w26, w26, 15
	add	x25, x25, 60
	cmp	w0, w26
	bge	.L24
	ldr	w3, [x29, 100]
.L23:
	add	w28, w28, 1
	add	x27, x27, x24
	cmp	w28, w3
	ble	.L27
	cmp	w3, 0
	ble	.L20
	cmp	w0, 0
	ble	.L20
	add	x2, x23, :lo12:array
	sub	w3, w3, #1
	mov	x1, 8000
	add	x12, x2, x1
	sub	w0, w0, #1
	add	x6, x29, 144
	mov	x8, 4
	adrp	x13, arr+8004
	umaddl	x11, w3, w24, x12
	add	x8, x8, x0, uxtw 2
	add	x13, x13, :lo12:arr+8004
	add	x9, x6, 4
	mov	x15, 16000
	mov	x14, 8000
	.p2align 3
.L74:
	ldr	w23, [x2, 4]
	add	x4, x2, x15
	add	x10, x8, x2
	mov	x5, x13
	mov	x3, x12
	.p2align 3
.L73:
	ldp	w16, w24, [x4]
	add	x0, x6, 4
	ldp	w26, w25, [x3]
	mov	x1, x0
	ldr	w27, [x2]
	ldr	w7, [x2, 8]
	ldr	w18, [x3, 8]
	ldr	w17, [x4, 8]
	stp	w27, w23, [x29, 144]
	stp	w7, w26, [x29, 152]
	stp	w25, w18, [x29, 160]
	stp	w16, w24, [x29, 168]
	mov	w16, -1
	str	w17, [x29, 176]
	.p2align 3
.L30:
	ldp	w27, w26, [x1, -4]
	cmp	w26, w27
	bge	.L85
	str	w27, [x1]
	cmn	w16, #1
	beq	.L86
	ldr	w28, [x1, -8]
	sub	x27, x1, #4
	cmp	w26, w28
	bge	.L28
	str	w28, [x1, -4]
	sub	x27, x1, #8
	cmp	w16, #1
	bmi	.L28
	ldr	w28, [x1, -12]
	cmp	w26, w28
	bge	.L28
	str	w28, [x1, -8]
	sub	x27, x1, #12
	cmp	w16, #2
	bmi	.L28
	ldr	w28, [x1, -16]
	cmp	w26, w28
	bge	.L28
	str	w28, [x1, -12]
	sub	x27, x1, #16
	cmp	w16, #3
	bmi	.L28
	ldr	w28, [x1, -20]
	cmp	w26, w28
	bge	.L28
	str	w28, [x1, -16]
	sub	x27, x1, #20
	cmp	w16, #4
	bmi	.L28
	ldr	w28, [x1, -24]
	cmp	w26, w28
	bge	.L28
	str	w28, [x1, -20]
	sub	x27, x1, #24
	cmp	w16, #5
	bmi	.L28
	ldr	w28, [x1, -28]
	cmp	w26, w28
	bge	.L28
	str	w28, [x1, -24]
	sub	x27, x1, #28
	cmp	w16, 6
	bne	.L28
	ldr	w27, [x29, 144]
	cmp	w26, w27
	bge	.L87
	str	w27, [x29, 148]
	sub	x27, x1, #32
.L28:
	str	w26, [x27]
	add	w16, w16, 1
	add	x1, x1, 4
	cmp	w16, 7
	bne	.L30
	ldr	w26, [x29, 160]
	mov	x1, x0
	ldr	w28, [x2, 12]
	ldr	w27, [x3, 12]
	ldr	w16, [x4, 12]
	stp	w23, w7, [x29, 144]
	mov	w23, -1
	str	w26, [x5]
	stp	w28, w25, [x29, 152]
	stp	w18, w27, [x29, 160]
	stp	w24, w17, [x29, 168]
	str	w16, [x29, 176]
	.p2align 3
.L33:
	ldp	w25, w24, [x1, -4]
	cmp	w24, w25
	bge	.L88
	str	w25, [x1]
	cmn	w23, #1
	beq	.L89
	ldr	w26, [x1, -8]
	sub	x25, x1, #4
	cmp	w24, w26
	bge	.L31
	str	w26, [x1, -4]
	sub	x25, x1, #8
	cmp	w23, #1
	bmi	.L31
	ldr	w26, [x1, -12]
	cmp	w24, w26
	bge	.L31
	str	w26, [x1, -8]
	sub	x25, x1, #12
	cmp	w23, #2
	bmi	.L31
	ldr	w26, [x1, -16]
	cmp	w24, w26
	bge	.L31
	str	w26, [x1, -12]
	sub	x25, x1, #16
	cmp	w23, #3
	bmi	.L31
	ldr	w26, [x1, -20]
	cmp	w24, w26
	bge	.L31
	str	w26, [x1, -16]
	sub	x25, x1, #20
	cmp	w23, #4
	bmi	.L31
	ldr	w26, [x1, -24]
	cmp	w24, w26
	bge	.L31
	str	w26, [x1, -20]
	sub	x25, x1, #24
	cmp	w23, #5
	bmi	.L31
	ldr	w26, [x1, -28]
	cmp	w24, w26
	bge	.L31
	str	w26, [x1, -24]
	sub	x25, x1, #28
	cmp	w23, 6
	bne	.L31
	ldr	w25, [x29, 144]
	cmp	w24, w25
	bge	.L90
	str	w25, [x29, 148]
	sub	x25, x1, #32
.L31:
	str	w24, [x25]
	add	w23, w23, 1
	add	x1, x1, 4
	cmp	w23, 7
	bne	.L33
	ldr	w23, [x29, 160]
	mov	x1, x0
	ldr	w26, [x2, 16]
	ldr	w25, [x3, 16]
	ldr	w24, [x4, 16]
	str	w23, [x5, 4]
	stp	w7, w28, [x29, 144]
	stp	w26, w18, [x29, 152]
	stp	w27, w25, [x29, 160]
	stp	w17, w16, [x29, 168]
	mov	w17, -1
	str	w24, [x29, 176]
	.p2align 3
.L36:
	ldp	w23, w18, [x1, -4]
	cmp	w18, w23
	bge	.L91
	str	w23, [x1]
	cmn	w17, #1
	beq	.L92
	ldr	w30, [x1, -8]
	sub	x23, x1, #4
	cmp	w18, w30
	bge	.L34
	str	w30, [x1, -4]
	sub	x23, x1, #8
	cmp	w17, #1
	bmi	.L34
	ldr	w30, [x1, -12]
	cmp	w18, w30
	bge	.L34
	str	w30, [x1, -8]
	sub	x23, x1, #12
	cmp	w17, #2
	bmi	.L34
	ldr	w30, [x1, -16]
	cmp	w18, w30
	bge	.L34
	str	w30, [x1, -12]
	sub	x23, x1, #16
	cmp	w17, #3
	bmi	.L34
	ldr	w30, [x1, -20]
	cmp	w18, w30
	bge	.L34
	str	w30, [x1, -16]
	sub	x23, x1, #20
	cmp	w17, #4
	bmi	.L34
	ldr	w30, [x1, -24]
	cmp	w18, w30
	bge	.L34
	str	w30, [x1, -20]
	sub	x23, x1, #24
	cmp	w17, #5
	bmi	.L34
	ldr	w30, [x1, -28]
	cmp	w18, w30
	bge	.L34
	str	w30, [x1, -24]
	sub	x23, x1, #28
	cmp	w17, 6
	bne	.L34
	ldr	w23, [x29, 144]
	cmp	w18, w23
	bge	.L93
	str	w23, [x29, 148]
	sub	x23, x1, #32
.L34:
	str	w18, [x23]
	add	w17, w17, 1
	add	x1, x1, 4
	cmp	w17, 7
	bne	.L36
	ldr	w1, [x29, 160]
	ldr	w23, [x2, 20]
	ldr	w18, [x3, 20]
	ldr	w17, [x4, 20]
	str	w1, [x5, 8]
	mov	x1, x0
	stp	w28, w26, [x29, 144]
	stp	w23, w27, [x29, 152]
	stp	w25, w18, [x29, 160]
	stp	w16, w24, [x29, 168]
	mov	w16, -1
	str	w17, [x29, 176]
	.p2align 3
.L39:
	ldp	w28, w27, [x1, -4]
	cmp	w27, w28
	bge	.L94
	str	w28, [x1]
	cmn	w16, #1
	beq	.L95
	ldr	w30, [x1, -8]
	sub	x28, x1, #4
	cmp	w27, w30
	bge	.L37
	str	w30, [x1, -4]
	sub	x28, x1, #8
	cmp	w16, #1
	bmi	.L37
	ldr	w30, [x1, -12]
	cmp	w27, w30
	bge	.L37
	str	w30, [x1, -8]
	sub	x28, x1, #12
	cmp	w16, #2
	bmi	.L37
	ldr	w30, [x1, -16]
	cmp	w27, w30
	bge	.L37
	str	w30, [x1, -12]
	sub	x28, x1, #16
	cmp	w16, #3
	bmi	.L37
	ldr	w30, [x1, -20]
	cmp	w27, w30
	bge	.L37
	str	w30, [x1, -16]
	sub	x28, x1, #20
	cmp	w16, #4
	bmi	.L37
	ldr	w30, [x1, -24]
	cmp	w27, w30
	bge	.L37
	str	w30, [x1, -20]
	sub	x28, x1, #24
	cmp	w16, #5
	bmi	.L37
	ldr	w30, [x1, -28]
	cmp	w27, w30
	bge	.L37
	str	w30, [x1, -24]
	sub	x28, x1, #28
	cmp	w16, 6
	bne	.L37
	ldr	w28, [x29, 144]
	cmp	w27, w28
	bge	.L96
	str	w28, [x29, 148]
	sub	x28, x1, #32
.L37:
	str	w27, [x28]
	add	w16, w16, 1
	add	x1, x1, 4
	cmp	w16, 7
	bne	.L39
	ldr	w1, [x29, 160]
	ldr	w28, [x2, 24]
	ldr	w27, [x3, 24]
	ldr	w16, [x4, 24]
	str	w1, [x5, 12]
	mov	x1, x0
	stp	w26, w23, [x29, 144]
	stp	w28, w25, [x29, 152]
	stp	w18, w27, [x29, 160]
	stp	w24, w17, [x29, 168]
	mov	w24, -1
	str	w16, [x29, 176]
	.p2align 3
.L42:
	ldp	w26, w25, [x1, -4]
	cmp	w25, w26
	bge	.L97
	str	w26, [x1]
	cmn	w24, #1
	beq	.L98
	ldr	w30, [x1, -8]
	sub	x26, x1, #4
	cmp	w25, w30
	bge	.L40
	str	w30, [x1, -4]
	sub	x26, x1, #8
	cmp	w24, #1
	bmi	.L40
	ldr	w30, [x1, -12]
	cmp	w25, w30
	bge	.L40
	str	w30, [x1, -8]
	sub	x26, x1, #12
	cmp	w24, #2
	bmi	.L40
	ldr	w30, [x1, -16]
	cmp	w25, w30
	bge	.L40
	str	w30, [x1, -12]
	sub	x26, x1, #16
	cmp	w24, #3
	bmi	.L40
	ldr	w30, [x1, -20]
	cmp	w25, w30
	bge	.L40
	str	w30, [x1, -16]
	sub	x26, x1, #20
	cmp	w24, #4
	bmi	.L40
	ldr	w30, [x1, -24]
	cmp	w25, w30
	bge	.L40
	str	w30, [x1, -20]
	sub	x26, x1, #24
	cmp	w24, #5
	bmi	.L40
	ldr	w30, [x1, -28]
	cmp	w25, w30
	bge	.L40
	str	w30, [x1, -24]
	sub	x26, x1, #28
	cmp	w24, 6
	bne	.L40
	ldr	w26, [x29, 144]
	cmp	w25, w26
	bge	.L99
	str	w26, [x29, 148]
	sub	x26, x1, #32
.L40:
	str	w25, [x26]
	add	w24, w24, 1
	add	x1, x1, 4
	cmp	w24, 7
	bne	.L42
	ldr	w1, [x29, 160]
	ldr	w26, [x2, 28]
	ldr	w25, [x3, 28]
	ldr	w24, [x4, 28]
	str	w1, [x5, 16]
	mov	x1, x0
	stp	w23, w28, [x29, 144]
	stp	w26, w18, [x29, 152]
	stp	w27, w25, [x29, 160]
	stp	w17, w16, [x29, 168]
	mov	w17, -1
	str	w24, [x29, 176]
	.p2align 3
.L45:
	ldp	w23, w18, [x1, -4]
	cmp	w18, w23
	bge	.L100
	str	w23, [x1]
	cmn	w17, #1
	beq	.L101
	ldr	w30, [x1, -8]
	sub	x23, x1, #4
	cmp	w18, w30
	bge	.L43
	str	w30, [x1, -4]
	sub	x23, x1, #8
	cmp	w17, #1
	bmi	.L43
	ldr	w30, [x1, -12]
	cmp	w18, w30
	bge	.L43
	str	w30, [x1, -8]
	sub	x23, x1, #12
	cmp	w17, #2
	bmi	.L43
	ldr	w30, [x1, -16]
	cmp	w18, w30
	bge	.L43
	str	w30, [x1, -12]
	sub	x23, x1, #16
	cmp	w17, #3
	bmi	.L43
	ldr	w30, [x1, -20]
	cmp	w18, w30
	bge	.L43
	str	w30, [x1, -16]
	sub	x23, x1, #20
	cmp	w17, #4
	bmi	.L43
	ldr	w30, [x1, -24]
	cmp	w18, w30
	bge	.L43
	str	w30, [x1, -20]
	sub	x23, x1, #24
	cmp	w17, #5
	bmi	.L43
	ldr	w30, [x1, -28]
	cmp	w18, w30
	bge	.L43
	str	w30, [x1, -24]
	sub	x23, x1, #28
	cmp	w17, 6
	bne	.L43
	ldr	w23, [x29, 144]
	cmp	w18, w23
	bge	.L102
	str	w23, [x29, 148]
	sub	x23, x1, #32
.L43:
	str	w18, [x23]
	add	w17, w17, 1
	add	x1, x1, 4
	cmp	w17, 7
	bne	.L45
	ldr	w1, [x29, 160]
	ldr	w23, [x2, 32]
	ldr	w18, [x3, 32]
	ldr	w17, [x4, 32]
	str	w1, [x5, 20]
	mov	x1, x0
	stp	w28, w26, [x29, 144]
	stp	w23, w27, [x29, 152]
	stp	w25, w18, [x29, 160]
	stp	w16, w24, [x29, 168]
	mov	w16, -1
	str	w17, [x29, 176]
	.p2align 3
.L48:
	ldp	w28, w27, [x1, -4]
	cmp	w27, w28
	bge	.L103
	str	w28, [x1]
	cmn	w16, #1
	beq	.L104
	ldr	w30, [x1, -8]
	sub	x28, x1, #4
	cmp	w27, w30
	bge	.L46
	str	w30, [x1, -4]
	sub	x28, x1, #8
	cmp	w16, #1
	bmi	.L46
	ldr	w30, [x1, -12]
	cmp	w27, w30
	bge	.L46
	str	w30, [x1, -8]
	sub	x28, x1, #12
	cmp	w16, #2
	bmi	.L46
	ldr	w30, [x1, -16]
	cmp	w27, w30
	bge	.L46
	str	w30, [x1, -12]
	sub	x28, x1, #16
	cmp	w16, #3
	bmi	.L46
	ldr	w30, [x1, -20]
	cmp	w27, w30
	bge	.L46
	str	w30, [x1, -16]
	sub	x28, x1, #20
	cmp	w16, #4
	bmi	.L46
	ldr	w30, [x1, -24]
	cmp	w27, w30
	bge	.L46
	str	w30, [x1, -20]
	sub	x28, x1, #24
	cmp	w16, #5
	bmi	.L46
	ldr	w30, [x1, -28]
	cmp	w27, w30
	bge	.L46
	str	w30, [x1, -24]
	sub	x28, x1, #28
	cmp	w16, 6
	bne	.L46
	ldr	w28, [x29, 144]
	cmp	w27, w28
	bge	.L105
	str	w28, [x29, 148]
	sub	x28, x1, #32
.L46:
	str	w27, [x28]
	add	w16, w16, 1
	add	x1, x1, 4
	cmp	w16, 7
	bne	.L48
	ldr	w1, [x29, 160]
	ldr	w28, [x2, 36]
	ldr	w27, [x3, 36]
	ldr	w16, [x4, 36]
	str	w1, [x5, 24]
	mov	x1, x0
	stp	w26, w23, [x29, 144]
	stp	w28, w25, [x29, 152]
	stp	w18, w27, [x29, 160]
	stp	w24, w17, [x29, 168]
	mov	w24, -1
	str	w16, [x29, 176]
	.p2align 3
.L51:
	ldp	w26, w25, [x1, -4]
	cmp	w25, w26
	bge	.L106
	str	w26, [x1]
	cmn	w24, #1
	beq	.L107
	ldr	w30, [x1, -8]
	sub	x26, x1, #4
	cmp	w25, w30
	bge	.L49
	str	w30, [x1, -4]
	sub	x26, x1, #8
	cmp	w24, #1
	bmi	.L49
	ldr	w30, [x1, -12]
	cmp	w25, w30
	bge	.L49
	str	w30, [x1, -8]
	sub	x26, x1, #12
	cmp	w24, #2
	bmi	.L49
	ldr	w30, [x1, -16]
	cmp	w25, w30
	bge	.L49
	str	w30, [x1, -12]
	sub	x26, x1, #16
	cmp	w24, #3
	bmi	.L49
	ldr	w30, [x1, -20]
	cmp	w25, w30
	bge	.L49
	str	w30, [x1, -16]
	sub	x26, x1, #20
	cmp	w24, #4
	bmi	.L49
	ldr	w30, [x1, -24]
	cmp	w25, w30
	bge	.L49
	str	w30, [x1, -20]
	sub	x26, x1, #24
	cmp	w24, #5
	bmi	.L49
	ldr	w30, [x1, -28]
	cmp	w25, w30
	bge	.L49
	str	w30, [x1, -24]
	sub	x26, x1, #28
	cmp	w24, 6
	bne	.L49
	ldr	w26, [x29, 144]
	cmp	w25, w26
	bge	.L108
	str	w26, [x29, 148]
	sub	x26, x1, #32
.L49:
	str	w25, [x26]
	add	w24, w24, 1
	add	x1, x1, 4
	cmp	w24, 7
	bne	.L51
	ldr	w1, [x29, 160]
	ldr	w26, [x2, 40]
	ldr	w25, [x3, 40]
	ldr	w24, [x4, 40]
	str	w1, [x5, 28]
	mov	x1, x0
	stp	w23, w28, [x29, 144]
	stp	w26, w18, [x29, 152]
	stp	w27, w25, [x29, 160]
	stp	w17, w16, [x29, 168]
	mov	w17, -1
	str	w24, [x29, 176]
	.p2align 3
.L54:
	ldp	w23, w18, [x1, -4]
	cmp	w18, w23
	bge	.L109
	str	w23, [x1]
	cmn	w17, #1
	beq	.L110
	ldr	w30, [x1, -8]
	sub	x23, x1, #4
	cmp	w18, w30
	bge	.L52
	str	w30, [x1, -4]
	sub	x23, x1, #8
	cmp	w17, #1
	bmi	.L52
	ldr	w30, [x1, -12]
	cmp	w18, w30
	bge	.L52
	str	w30, [x1, -8]
	sub	x23, x1, #12
	cmp	w17, #2
	bmi	.L52
	ldr	w30, [x1, -16]
	cmp	w18, w30
	bge	.L52
	str	w30, [x1, -12]
	sub	x23, x1, #16
	cmp	w17, #3
	bmi	.L52
	ldr	w30, [x1, -20]
	cmp	w18, w30
	bge	.L52
	str	w30, [x1, -16]
	sub	x23, x1, #20
	cmp	w17, #4
	bmi	.L52
	ldr	w30, [x1, -24]
	cmp	w18, w30
	bge	.L52
	str	w30, [x1, -20]
	sub	x23, x1, #24
	cmp	w17, #5
	bmi	.L52
	ldr	w30, [x1, -28]
	cmp	w18, w30
	bge	.L52
	str	w30, [x1, -24]
	sub	x23, x1, #28
	cmp	w17, 6
	bne	.L52
	ldr	w23, [x29, 144]
	cmp	w18, w23
	bge	.L111
	str	w23, [x29, 148]
	sub	x23, x1, #32
.L52:
	str	w18, [x23]
	add	w17, w17, 1
	add	x1, x1, 4
	cmp	w17, 7
	bne	.L54
	ldr	w1, [x29, 160]
	ldr	w23, [x2, 44]
	ldr	w18, [x3, 44]
	ldr	w17, [x4, 44]
	str	w1, [x5, 32]
	mov	x1, x0
	stp	w28, w26, [x29, 144]
	stp	w23, w27, [x29, 152]
	stp	w25, w18, [x29, 160]
	stp	w16, w24, [x29, 168]
	mov	w16, -1
	str	w17, [x29, 176]
	.p2align 3
.L57:
	ldp	w28, w27, [x1, -4]
	cmp	w27, w28
	bge	.L112
	str	w28, [x1]
	cmn	w16, #1
	beq	.L113
	ldr	w30, [x1, -8]
	sub	x28, x1, #4
	cmp	w27, w30
	bge	.L55
	str	w30, [x1, -4]
	sub	x28, x1, #8
	cmp	w16, #1
	bmi	.L55
	ldr	w30, [x1, -12]
	cmp	w27, w30
	bge	.L55
	str	w30, [x1, -8]
	sub	x28, x1, #12
	cmp	w16, #2
	bmi	.L55
	ldr	w30, [x1, -16]
	cmp	w27, w30
	bge	.L55
	str	w30, [x1, -12]
	sub	x28, x1, #16
	cmp	w16, #3
	bmi	.L55
	ldr	w30, [x1, -20]
	cmp	w27, w30
	bge	.L55
	str	w30, [x1, -16]
	sub	x28, x1, #20
	cmp	w16, #4
	bmi	.L55
	ldr	w30, [x1, -24]
	cmp	w27, w30
	bge	.L55
	str	w30, [x1, -20]
	sub	x28, x1, #24
	cmp	w16, #5
	bmi	.L55
	ldr	w30, [x1, -28]
	cmp	w27, w30
	bge	.L55
	str	w30, [x1, -24]
	sub	x28, x1, #28
	cmp	w16, 6
	bne	.L55
	ldr	w28, [x29, 144]
	cmp	w27, w28
	bge	.L114
	str	w28, [x29, 148]
	sub	x28, x1, #32
.L55:
	str	w27, [x28]
	add	w16, w16, 1
	add	x1, x1, 4
	cmp	w16, 7
	bne	.L57
	ldr	w1, [x29, 160]
	ldr	w28, [x2, 48]
	ldr	w27, [x3, 48]
	ldr	w16, [x4, 48]
	str	w1, [x5, 36]
	mov	x1, x0
	stp	w26, w23, [x29, 144]
	stp	w28, w25, [x29, 152]
	stp	w18, w27, [x29, 160]
	stp	w24, w17, [x29, 168]
	mov	w24, -1
	str	w16, [x29, 176]
	.p2align 3
.L60:
	ldp	w26, w25, [x1, -4]
	cmp	w25, w26
	bge	.L115
	str	w26, [x1]
	cmn	w24, #1
	beq	.L116
	ldr	w30, [x1, -8]
	sub	x26, x1, #4
	cmp	w25, w30
	bge	.L58
	str	w30, [x1, -4]
	sub	x26, x1, #8
	cmp	w24, #1
	bmi	.L58
	ldr	w30, [x1, -12]
	cmp	w25, w30
	bge	.L58
	str	w30, [x1, -8]
	sub	x26, x1, #12
	cmp	w24, #2
	bmi	.L58
	ldr	w30, [x1, -16]
	cmp	w25, w30
	bge	.L58
	str	w30, [x1, -12]
	sub	x26, x1, #16
	cmp	w24, #3
	bmi	.L58
	ldr	w30, [x1, -20]
	cmp	w25, w30
	bge	.L58
	str	w30, [x1, -16]
	sub	x26, x1, #20
	cmp	w24, #4
	bmi	.L58
	ldr	w30, [x1, -24]
	cmp	w25, w30
	bge	.L58
	str	w30, [x1, -20]
	sub	x26, x1, #24
	cmp	w24, #5
	bmi	.L58
	ldr	w30, [x1, -28]
	cmp	w25, w30
	bge	.L58
	str	w30, [x1, -24]
	sub	x26, x1, #28
	cmp	w24, 6
	bne	.L58
	ldr	w26, [x29, 144]
	cmp	w25, w26
	bge	.L117
	str	w26, [x29, 148]
	sub	x26, x1, #32
.L58:
	str	w25, [x26]
	add	w24, w24, 1
	add	x1, x1, 4
	cmp	w24, 7
	bne	.L60
	ldr	w1, [x29, 160]
	ldr	w26, [x2, 52]
	ldr	w25, [x3, 52]
	ldr	w24, [x4, 52]
	str	w1, [x5, 40]
	mov	x1, x0
	stp	w23, w28, [x29, 144]
	stp	w26, w18, [x29, 152]
	stp	w27, w25, [x29, 160]
	stp	w17, w16, [x29, 168]
	mov	w17, -1
	str	w24, [x29, 176]
	.p2align 3
.L63:
	ldp	w23, w18, [x1, -4]
	cmp	w18, w23
	bge	.L118
	str	w23, [x1]
	cmn	w17, #1
	beq	.L119
	ldr	w30, [x1, -8]
	sub	x23, x1, #4
	cmp	w18, w30
	bge	.L61
	str	w30, [x1, -4]
	sub	x23, x1, #8
	cmp	w17, #1
	bmi	.L61
	ldr	w30, [x1, -12]
	cmp	w18, w30
	bge	.L61
	str	w30, [x1, -8]
	sub	x23, x1, #12
	cmp	w17, #2
	bmi	.L61
	ldr	w30, [x1, -16]
	cmp	w18, w30
	bge	.L61
	str	w30, [x1, -12]
	sub	x23, x1, #16
	cmp	w17, #3
	bmi	.L61
	ldr	w30, [x1, -20]
	cmp	w18, w30
	bge	.L61
	str	w30, [x1, -16]
	sub	x23, x1, #20
	cmp	w17, #4
	bmi	.L61
	ldr	w30, [x1, -24]
	cmp	w18, w30
	bge	.L61
	str	w30, [x1, -20]
	sub	x23, x1, #24
	cmp	w17, #5
	bmi	.L61
	ldr	w30, [x1, -28]
	cmp	w18, w30
	bge	.L61
	str	w30, [x1, -24]
	sub	x23, x1, #28
	cmp	w17, 6
	bne	.L61
	ldr	w23, [x29, 144]
	cmp	w18, w23
	bge	.L120
	str	w23, [x29, 148]
	sub	x23, x1, #32
.L61:
	str	w18, [x23]
	add	w17, w17, 1
	add	x1, x1, 4
	cmp	w17, 7
	bne	.L63
	ldr	w1, [x29, 160]
	ldr	w23, [x2, 56]
	ldr	w18, [x3, 56]
	ldr	w17, [x4, 56]
	str	w1, [x5, 44]
	mov	x1, x0
	stp	w28, w26, [x29, 144]
	stp	w23, w27, [x29, 152]
	stp	w25, w18, [x29, 160]
	stp	w16, w24, [x29, 168]
	mov	w16, -1
	str	w17, [x29, 176]
	.p2align 3
.L66:
	ldp	w28, w27, [x1, -4]
	cmp	w27, w28
	bge	.L121
	str	w28, [x1]
	cmn	w16, #1
	beq	.L122
	ldr	w30, [x1, -8]
	sub	x28, x1, #4
	cmp	w27, w30
	bge	.L64
	str	w30, [x1, -4]
	sub	x28, x1, #8
	cmp	w16, #1
	bmi	.L64
	ldr	w30, [x1, -12]
	cmp	w27, w30
	bge	.L64
	str	w30, [x1, -8]
	sub	x28, x1, #12
	cmp	w16, #2
	bmi	.L64
	ldr	w30, [x1, -16]
	cmp	w27, w30
	bge	.L64
	str	w30, [x1, -12]
	sub	x28, x1, #16
	cmp	w16, #3
	bmi	.L64
	ldr	w30, [x1, -20]
	cmp	w27, w30
	bge	.L64
	str	w30, [x1, -16]
	sub	x28, x1, #20
	cmp	w16, #4
	bmi	.L64
	ldr	w30, [x1, -24]
	cmp	w27, w30
	bge	.L64
	str	w30, [x1, -20]
	sub	x28, x1, #24
	cmp	w16, #5
	bmi	.L64
	ldr	w30, [x1, -28]
	cmp	w27, w30
	bge	.L64
	str	w30, [x1, -24]
	sub	x28, x1, #28
	cmp	w16, 6
	bne	.L64
	ldr	w28, [x29, 144]
	cmp	w27, w28
	bge	.L123
	str	w28, [x29, 148]
	sub	x28, x1, #32
.L64:
	str	w27, [x28]
	add	w16, w16, 1
	add	x1, x1, 4
	cmp	w16, 7
	bne	.L66
	ldr	w1, [x29, 160]
	mov	w16, -1
	ldr	w30, [x2, 60]
	ldr	w28, [x3, 60]
	ldr	w27, [x4, 60]
	str	w1, [x5, 48]
	mov	x1, x0
	stp	w26, w23, [x29, 144]
	stp	w30, w25, [x29, 152]
	stp	w18, w28, [x29, 160]
	stp	w24, w17, [x29, 168]
	str	w27, [x29, 176]
	.p2align 3
.L69:
	ldp	w25, w24, [x1, -4]
	cmp	w24, w25
	bge	.L124
	str	w25, [x1]
	cmn	w16, #1
	beq	.L125
	ldr	w26, [x1, -8]
	sub	x25, x1, #4
	cmp	w24, w26
	bge	.L67
	str	w26, [x1, -4]
	sub	x25, x1, #8
	cmp	w16, #1
	bmi	.L67
	ldr	w26, [x1, -12]
	cmp	w24, w26
	bge	.L67
	str	w26, [x1, -8]
	sub	x25, x1, #12
	cmp	w16, #2
	bmi	.L67
	ldr	w26, [x1, -16]
	cmp	w24, w26
	bge	.L67
	str	w26, [x1, -12]
	sub	x25, x1, #16
	cmp	w16, #3
	bmi	.L67
	ldr	w26, [x1, -20]
	cmp	w24, w26
	bge	.L67
	str	w26, [x1, -16]
	sub	x25, x1, #20
	cmp	w16, #4
	bmi	.L67
	ldr	w26, [x1, -24]
	cmp	w24, w26
	bge	.L67
	str	w26, [x1, -20]
	sub	x25, x1, #24
	cmp	w16, #5
	bmi	.L67
	ldr	w26, [x1, -28]
	cmp	w24, w26
	bge	.L67
	str	w26, [x1, -24]
	sub	x25, x1, #28
	cmp	w16, 6
	bne	.L67
	ldr	w25, [x29, 144]
	cmp	w24, w25
	bge	.L126
	str	w25, [x29, 148]
	sub	x25, x1, #32
.L67:
	str	w24, [x25]
	add	w16, w16, 1
	add	x1, x1, 4
	cmp	w16, 7
	bne	.L69
	ldr	w1, [x4, 64]
	ldr	w25, [x29, 160]
	ldr	w24, [x2, 64]
	ldr	w16, [x3, 64]
	str	w1, [x29, 176]
	mov	w1, -1
	str	w25, [x5, 52]
	stp	w23, w30, [x29, 144]
	stp	w24, w18, [x29, 152]
	stp	w28, w16, [x29, 160]
	stp	w17, w27, [x29, 168]
	.p2align 3
.L72:
	ldp	w17, w16, [x0, -4]
	cmp	w16, w17
	bge	.L127
	str	w17, [x0]
	cmn	w1, #1
	beq	.L128
	ldr	w18, [x0, -8]
	sub	x17, x0, #4
	cmp	w16, w18
	bge	.L70
	str	w18, [x0, -4]
	sub	x17, x0, #8
	cmp	w1, #1
	bmi	.L70
	ldr	w18, [x0, -12]
	cmp	w16, w18
	bge	.L70
	str	w18, [x0, -8]
	sub	x17, x0, #12
	cmp	w1, #2
	bmi	.L70
	ldr	w18, [x0, -16]
	cmp	w18, w16
	ble	.L70
	str	w18, [x0, -12]
	sub	x17, x0, #16
	cmp	w1, #3
	bmi	.L70
	ldr	w18, [x0, -20]
	cmp	w18, w16
	ble	.L70
	str	w18, [x0, -16]
	sub	x17, x0, #20
	cmp	w1, #4
	bmi	.L70
	ldr	w18, [x0, -24]
	cmp	w16, w18
	bge	.L70
	str	w18, [x0, -20]
	sub	x17, x0, #24
	cmp	w1, #5
	bmi	.L70
	ldr	w18, [x0, -28]
	cmp	w16, w18
	bge	.L70
	str	w18, [x0, -24]
	sub	x17, x0, #28
	cmp	w1, 6
	bne	.L70
	ldr	w17, [x29, 144]
	cmp	w16, w17
	bge	.L129
	str	w17, [x29, 148]
	sub	x17, x0, #32
.L70:
	str	w16, [x17]
	add	w1, w1, 1
	add	x0, x0, 4
	cmp	w1, 7
	bne	.L72
	ldr	w0, [x29, 160]
	add	x2, x2, 4
	str	w0, [x5, 56]
	add	x3, x3, 4
	add	x4, x4, 4
	mov	w23, w7
	cmp	x10, x2
	add	x5, x5, 4
	bne	.L73
	add	x13, x13, x14
	mov	x2, x12
	cmp	x12, x11
	beq	.L20
	mov	x0, 8000
	add	x12, x12, x0
	b	.L74
	.p2align 2
.L127:
	mov	x17, x0
	b	.L70
	.p2align 2
.L124:
	mov	x25, x1
	b	.L67
	.p2align 2
.L121:
	mov	x28, x1
	b	.L64
	.p2align 2
.L118:
	mov	x23, x1
	b	.L61
	.p2align 2
.L115:
	mov	x26, x1
	b	.L58
	.p2align 2
.L112:
	mov	x28, x1
	b	.L55
	.p2align 2
.L109:
	mov	x23, x1
	b	.L52
	.p2align 2
.L106:
	mov	x26, x1
	b	.L49
	.p2align 2
.L100:
	mov	x23, x1
	b	.L43
	.p2align 2
.L103:
	mov	x28, x1
	b	.L46
	.p2align 2
.L97:
	mov	x26, x1
	b	.L40
	.p2align 2
.L94:
	mov	x28, x1
	b	.L37
	.p2align 2
.L91:
	mov	x23, x1
	b	.L34
	.p2align 2
.L88:
	mov	x25, x1
	b	.L31
	.p2align 2
.L85:
	mov	x27, x1
	b	.L28
	.p2align 2
.L89:
	mov	x25, x6
	b	.L31
	.p2align 2
.L86:
	mov	x27, x6
	b	.L28
	.p2align 2
.L95:
	mov	x28, x6
	b	.L37
	.p2align 2
.L92:
	mov	x23, x6
	b	.L34
	.p2align 2
.L125:
	mov	x25, x6
	b	.L67
	.p2align 2
.L110:
	mov	x23, x6
	b	.L52
	.p2align 2
.L113:
	mov	x28, x6
	b	.L55
	.p2align 2
.L104:
	mov	x28, x6
	b	.L46
	.p2align 2
.L107:
	mov	x26, x6
	b	.L49
	.p2align 2
.L101:
	mov	x23, x6
	b	.L43
	.p2align 2
.L98:
	mov	x26, x6
	b	.L40
	.p2align 2
.L119:
	mov	x23, x6
	b	.L61
	.p2align 2
.L116:
	mov	x26, x6
	b	.L58
	.p2align 2
.L128:
	mov	x17, x6
	b	.L70
	.p2align 2
.L122:
	mov	x28, x6
	b	.L64
	.p2align 2
.L126:
	mov	x25, x9
	b	.L67
	.p2align 2
.L102:
	mov	x23, x9
	b	.L43
	.p2align 2
.L117:
	mov	x26, x9
	b	.L58
	.p2align 2
.L120:
	mov	x23, x9
	b	.L61
	.p2align 2
.L129:
	mov	x17, x9
	b	.L70
	.p2align 2
.L111:
	mov	x23, x9
	b	.L52
	.p2align 2
.L108:
	mov	x26, x9
	b	.L49
	.p2align 2
.L123:
	mov	x28, x9
	b	.L64
	.p2align 2
.L114:
	mov	x28, x9
	b	.L55
	.p2align 2
.L87:
	mov	x27, x9
	b	.L28
	.p2align 2
.L90:
	mov	x25, x9
	b	.L31
	.p2align 2
.L105:
	mov	x28, x9
	b	.L46
	.p2align 2
.L99:
	mov	x26, x9
	b	.L40
	.p2align 2
.L93:
	mov	x23, x9
	b	.L34
	.p2align 2
.L96:
	mov	x28, x9
	b	.L37
.L20:
	add	x24, x29, 576
	mov	x0, x24
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE2:
	adrp	x1, .LC7
	mov	w2, 48
	add	x1, x1, :lo12:.LC7
	mov	x0, x24
.LEHB3:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, 2
	add	x1, x22, :lo12:.LC1
	mov	x0, x24
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x24
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w1, [x29, 104]
	mov	x0, x24
	bl	_ZNSolsEi
	adrp	x25, .LC8
	mov	x22, x0
	mov	x2, 1
	add	x1, x25, :lo12:.LC8
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [x29, 100]
	mov	x0, x22
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	adrp	x1, .LC9
	mov	x2, 3
	add	x1, x1, :lo12:.LC9
	mov	x0, x24
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x24
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w1, [x29, 100]
	cmp	w1, 0
	ble	.L75
	ldr	w0, [x29, 104]
	adrp	x26, arr+8004
	add	x25, x25, :lo12:.LC8
	add	x26, x26, :lo12:arr+8004
	mov	w27, 1
	mov	x28, 8000
	.p2align 3
.L78:
	cmp	w0, 0
	ble	.L76
	mov	x23, x26
	mov	w22, 1
	.p2align 3
.L77:
	ldr	w1, [x23]
	mov	x0, x24
	bl	_ZNSolsEi
	mov	x2, 1
	mov	x1, x25
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w0, [x29, 104]
	add	w22, w22, 1
	add	x23, x23, 4
	cmp	w0, w22
	bge	.L77
	ldr	w1, [x29, 100]
.L76:
	add	w27, w27, 1
	add	x26, x26, x28
	cmp	w27, w1
	ble	.L78
.L75:
	mov	x0, x24
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE3:
	mov	x0, x24
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	ldr	x0, [x29, 112]
	add	x20, x20, 16
	cmp	x0, x20
	beq	.L79
	bl	_ZdlPv
.L79:
	mov	x0, x19
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	adrp	x0, :got:__stack_chk_guard
	ldr	x1, [x0, #:got_lo12:__stack_chk_guard]
	mov	w0, 0
	ldr	x2, [x29, 1624]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cbnz	x1, .L163
	ldp	x27, x28, [sp, 80]
	ldr	x20, [x29, 24]
	.cfi_remember_state
	.cfi_restore 20
	ldp	x29, x30, [sp]
	ldr	x19, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	add	sp, sp, 1632
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
.L11:
	.cfi_restore_state
	adrp	x23, :got:_ZSt4cout
	adrp	x1, .LC3
	mov	x2, 10
	add	x1, x1, :lo12:.LC3
	ldr	x0, [x23, #:got_lo12:_ZSt4cout]
.LEHB4:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x23, #:got_lo12:_ZSt4cout]
	ldp	x1, x2, [x29, 112]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE4:
	b	.L161
.L162:
	ldr	w0, [x29, 104]
	tbnz	w0, #31, .L20
	adrp	x23, array
	b	.L17
.L131:
	mov	x22, x0
.L81:
	ldr	x0, [x29, 112]
	add	x20, x20, 16
	cmp	x0, x20
	beq	.L82
	bl	_ZdlPv
.L82:
	mov	x0, x19
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
.L83:
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x22
.LEHB5:
	bl	_Unwind_Resume
.LEHE5:
.L132:
	mov	x22, x0
	mov	x0, x24
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	b	.L81
.L163:
	bl	__stack_chk_fail
.L130:
	.cfi_restore 20
	mov	x22, x0
	str	x20, [x29, 24]
	.cfi_offset 20, -1608
	b	.L83
	.cfi_endproc
.LFE1735:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1735:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1735-.LLSDACSB1735
.LLSDACSB1735:
	.uleb128 .LEHB0-.LFB1735
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1735
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L130-.LFB1735
	.uleb128 0
	.uleb128 .LEHB2-.LFB1735
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L131-.LFB1735
	.uleb128 0
	.uleb128 .LEHB3-.LFB1735
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L132-.LFB1735
	.uleb128 0
	.uleb128 .LEHB4-.LFB1735
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L131-.LFB1735
	.uleb128 0
	.uleb128 .LEHB5-.LFB1735
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1735:
	.section	.text.startup
	.size	main, .-main
	.align	2
	.p2align 3,,7
	.type	_GLOBAL__sub_I__Z13insertionSortPii, %function
_GLOBAL__sub_I__Z13insertionSortPii:
.LFB2322:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	adrp	x19, .LANCHOR0
	add	x19, x19, :lo12:.LANCHOR0
	mov	x0, x19
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	mov	x1, x19
	ldr	x19, [sp, 16]
	adrp	x2, __dso_handle
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]
	add	x2, x2, :lo12:__dso_handle
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	b	__cxa_atexit
	.cfi_endproc
.LFE2322:
	.size	_GLOBAL__sub_I__Z13insertionSortPii, .-_GLOBAL__sub_I__Z13insertionSortPii
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z13insertionSortPii
	.global	arr
	.global	array
	.bss
	.align	4
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.zero	15
	.type	arr, %object
	.size	arr, 16000000
arr:
	.zero	16000000
	.type	array, %object
	.size	array, 16000000
array:
	.zero	16000000
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"Saltpepper.pgm"
	.zero	1
.LC1:
	.string	"P2"
	.zero	5
.LC2:
	.string	"Version error"
	.zero	2
.LC3:
	.string	"Version : "
	.zero	5
.LC4:
	.string	" columns and "
	.zero	2
.LC5:
	.string	" rows"
	.zero	2
.LC6:
	.string	" Maximium Intesity "
	.zero	4
.LC7:
	.string	"Medianfilter.pnm"
	.zero	7
.LC8:
	.string	" "
	.zero	6
.LC9:
	.string	"255"
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
