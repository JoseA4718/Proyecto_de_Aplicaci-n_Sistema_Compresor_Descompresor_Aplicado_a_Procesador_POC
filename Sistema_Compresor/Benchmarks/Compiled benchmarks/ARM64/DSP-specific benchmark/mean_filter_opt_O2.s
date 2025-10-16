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
	cmp	x6, x7
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
	cmp	x6, x7
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
	stp	x26, x27, [sp, 72]
	.cfi_offset 26, -1560
	.cfi_offset 27, -1552
	add	x26, x29, 1096
	ldr	x3, [x1]
	str	x3, [x29, 1624]
	mov	x3,0
	stp	x19, x20, [sp, 16]
	mov	x0, x26
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	adrp	x1, .LC0
	.cfi_offset 19, -1616
	.cfi_offset 20, -1608
	.cfi_offset 21, -1600
	.cfi_offset 22, -1592
	.cfi_offset 23, -1584
	.cfi_offset 24, -1576
	add	x20, x29, 184
	add	x1, x1, :lo12:.LC0
	stp	wzr, wzr, [x29, 100]
	str	wzr, [x29, 108]
	str	x28, [sp, 88]
.LEHB0:
	.cfi_offset 28, -1544
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE0:
	mov	w1, 24
	mov	x0, x20
.LEHB1:
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode
.LEHE1:
	str	x25, [x29, 64]
	.cfi_offset 25, -1568
	add	x25, x29, 112
	add	x0, x25, 16
	mov	x1, x25
	str	x0, [x29, 112]
	mov	x0, x26
	str	xzr, [x29, 120]
	strb	wzr, [x29, 128]
.LEHB2:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	adrp	x27, .LC1
	mov	x0, x25
	add	x1, x27, :lo12:.LC1
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	cbz	w0, .L11
	adrp	x19, :got:_ZSt4cerr
	adrp	x1, .LC2
	mov	x2, 13
	add	x1, x1, :lo12:.LC2
	ldr	x0, [x19, #:got_lo12:_ZSt4cerr]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x19, #:got_lo12:_ZSt4cerr]
.L52:
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	add	x1, x26, 16
	add	x0, x20, 16
	bl	_ZNSolsEPSt15basic_streambufIcSt11char_traitsIcEE
	add	x1, x29, 104
	mov	x0, x20
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
	mov	x19, x0
	mov	x2, 13
	add	x1, x1, :lo12:.LC4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [x29, 100]
	mov	x0, x19
	bl	_ZNSolsEi
	adrp	x1, .LC5
	mov	x19, x0
	mov	x2, 5
	add	x1, x1, :lo12:.LC5
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	adrp	x1, .LC6
	mov	x19, x0
	mov	x2, 19
	add	x1, x1, :lo12:.LC6
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [x29, 108]
	mov	x0, x19
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w2, [x29, 100]
	tbnz	w2, #31, .L53
	adrp	x24, array
	add	x1, x24, :lo12:array
	mov	x11, 6464
	mov	x10, 14464
	mov	x9, 22464
	mov	x8, 30464
	mov	x7, 38464
	mov	x6, 46464
	mov	x3, 54464
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
	movk	x3, 0x1, lsl 16
	.p2align 3
.L19:
	add	x0, x5, x18
	str	wzr, [x1]
	str	wzr, [x1, 8000]
	add	w4, w4, 15
	str	wzr, [x1, 16000]
	add	x5, x5, x3
	str	wzr, [x0, x17]
	cmp	w4, w2
	str	wzr, [x0, x16]
	add	x1, x1, x3
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
	str	wzr, [x0, x3]
	ble	.L19
	ldr	w0, [x29, 104]
	tbnz	w0, #31, .L16
.L17:
	add	x1, x24, :lo12:array
	mov	w3, 0
	.p2align 3
.L22:
	stp	wzr, wzr, [x1]
	add	w3, w3, 15
	stp	wzr, wzr, [x1, 8]
	cmp	w0, w3
	stp	wzr, wzr, [x1, 16]
	stp	wzr, wzr, [x1, 24]
	stp	wzr, wzr, [x1, 32]
	stp	wzr, wzr, [x1, 40]
	stp	wzr, wzr, [x1, 48]
	str	wzr, [x1, 56]
	str	wzr, [x1, 60]!
	bge	.L22
.L16:
	cmp	w2, 0
	ble	.L20
	adrp	x22, array+8004
	add	x22, x22, :lo12:array+8004
	mov	w23, 1
	mov	x28, 8000
	.p2align 3
.L21:
	cmp	w0, 0
	ble	.L23
	mov	x19, x22
	mov	w21, 1
	.p2align 3
.L24:
	mov	x1, x19
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 4
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 8
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 12
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 16
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 20
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 24
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 28
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 32
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 36
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 40
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 44
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 48
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 52
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x19, 56
	mov	x0, x20
	bl	_ZNSirsERi
	ldr	w0, [x29, 104]
	add	w21, w21, 15
	add	x19, x19, 60
	cmp	w0, w21
	bge	.L24
	ldr	w2, [x29, 100]
.L23:
	add	w23, w23, 1
	add	x22, x22, x28
	cmp	w2, w23
	bge	.L21
	cmp	w2, 0
	ble	.L20
	add	x24, x24, :lo12:array
	adrp	x18, arr
	add	x18, x18, :lo12:arr
	mov	x3, 8000
	mov	x4, 8004
	add	x19, x24, x3
	add	x18, x18, x4
	mov	x14, 0
	mov	w15, 1
	.p2align 3
.L25:
	add	w15, w15, 1
	cmp	w0, 0
	ble	.L27
	mov	x2, 16000
	add	x8, x24, x2
	add	x10, x14, x24
	add	x9, x19, x14
	add	x8, x8, x14
	add	x11, x18, x14
	add	x12, x29, 144
	mov	w13, 1
	.p2align 3
.L28:
	ldp	w7, w6, [x9]
	mov	x0, x12
	ldp	w4, w3, [x8]
	mov	w1, 9
	ldr	w2, [x8, 8]
	ldr	w5, [x9, 8]
	ldp	w21, w17, [x10]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 8]
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	stp	w4, w3, [x29, 168]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 4]
	mov	w1, 9
	ldp	w4, w3, [x8, 4]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 12]
	ldr	w5, [x9, 12]
	ldp	w21, w17, [x10, 4]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 12]
	ldr	w0, [x29, 160]
	str	w0, [x11]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 8]
	mov	w1, 9
	ldp	w4, w3, [x8, 8]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 16]
	ldr	w5, [x9, 16]
	ldp	w21, w17, [x10, 8]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 16]
	ldr	w0, [x29, 160]
	str	w0, [x11, 4]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 12]
	mov	w1, 9
	ldp	w4, w3, [x8, 12]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 20]
	ldr	w5, [x9, 20]
	ldp	w21, w17, [x10, 12]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 20]
	ldr	w0, [x29, 160]
	str	w0, [x11, 8]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 16]
	mov	w1, 9
	ldp	w4, w3, [x8, 16]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 24]
	ldr	w5, [x9, 24]
	ldp	w21, w17, [x10, 16]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 24]
	ldr	w0, [x29, 160]
	str	w0, [x11, 12]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 20]
	mov	w1, 9
	ldp	w4, w3, [x8, 20]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 28]
	ldr	w5, [x9, 28]
	ldp	w21, w17, [x10, 20]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 28]
	ldr	w0, [x29, 160]
	str	w0, [x11, 16]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 24]
	mov	w1, 9
	ldp	w4, w3, [x8, 24]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 32]
	ldr	w5, [x9, 32]
	ldp	w21, w17, [x10, 24]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 32]
	ldr	w0, [x29, 160]
	str	w0, [x11, 20]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 28]
	mov	w1, 9
	ldp	w4, w3, [x8, 28]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 36]
	ldr	w5, [x9, 36]
	ldp	w21, w17, [x10, 28]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 36]
	ldr	w0, [x29, 160]
	str	w0, [x11, 24]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 32]
	mov	w1, 9
	ldp	w4, w3, [x8, 32]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 40]
	ldr	w5, [x9, 40]
	ldp	w21, w17, [x10, 32]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 40]
	ldr	w0, [x29, 160]
	str	w0, [x11, 28]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 36]
	mov	w1, 9
	ldp	w4, w3, [x8, 36]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 44]
	ldr	w5, [x9, 44]
	ldp	w21, w17, [x10, 36]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 44]
	ldr	w0, [x29, 160]
	str	w0, [x11, 32]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 40]
	mov	w1, 9
	ldp	w4, w3, [x8, 40]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 48]
	ldr	w5, [x9, 48]
	ldp	w21, w17, [x10, 40]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 48]
	ldr	w0, [x29, 160]
	str	w0, [x11, 36]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 44]
	mov	w1, 9
	ldp	w4, w3, [x8, 44]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 52]
	ldr	w5, [x9, 52]
	ldp	w21, w17, [x10, 44]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 52]
	ldr	w0, [x29, 160]
	str	w0, [x11, 40]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 48]
	mov	w1, 9
	ldp	w4, w3, [x8, 48]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 56]
	ldr	w5, [x9, 56]
	ldp	w21, w17, [x10, 48]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 56]
	ldr	w0, [x29, 160]
	str	w0, [x11, 44]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldp	w7, w6, [x9, 52]
	mov	w1, 9
	ldp	w4, w3, [x8, 52]
	stp	w4, w3, [x29, 168]
	ldr	w2, [x8, 60]
	ldr	w5, [x9, 60]
	ldp	w21, w17, [x10, 52]
	stp	w21, w17, [x29, 144]
	ldr	w16, [x10, 60]
	ldr	w0, [x29, 160]
	str	w0, [x11, 48]
	mov	x0, x12
	stp	w16, w7, [x29, 152]
	stp	w6, w5, [x29, 160]
	str	w2, [x29, 176]
	bl	_Z13insertionSortPii
	ldr	w17, [x29, 160]
	ldp	w2, w1, [x8, 56]
	str	w17, [x11, 52]
	ldp	w5, w4, [x9, 56]
	stp	w2, w1, [x29, 168]
	ldr	w3, [x9, 64]
	mov	w1, 9
	ldp	w16, w7, [x10, 56]
	stp	w16, w7, [x29, 144]
	ldr	w6, [x10, 64]
	ldr	w0, [x8, 64]
	stp	w6, w5, [x29, 152]
	stp	w4, w3, [x29, 160]
	str	w0, [x29, 176]
	mov	x0, x12
	bl	_Z13insertionSortPii
	add	w13, w13, 1
	ldr	w0, [x29, 160]
	add	x10, x10, 4
	str	w0, [x11, 56]
	add	x9, x9, 4
	ldr	w0, [x29, 104]
	add	x8, x8, 4
	add	x11, x11, 4
	cmp	w0, w13
	bge	.L28
	ldr	w2, [x29, 100]
.L27:
	mov	x1, 8000
	cmp	w2, w15
	add	x14, x14, x1
	bge	.L25
.L20:
	add	x22, x29, 576
	mov	x0, x22
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE2:
	adrp	x1, .LC7
	mov	w2, 48
	add	x1, x1, :lo12:.LC7
	mov	x0, x22
.LEHB3:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, 2
	add	x1, x27, :lo12:.LC1
	mov	x0, x22
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x22
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w1, [x29, 104]
	mov	x0, x22
	bl	_ZNSolsEi
	adrp	x23, .LC8
	mov	x19, x0
	mov	x2, 1
	add	x1, x23, :lo12:.LC8
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [x29, 100]
	mov	x0, x19
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	adrp	x1, .LC9
	mov	x2, 3
	add	x1, x1, :lo12:.LC9
	mov	x0, x22
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x22
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w2, [x29, 100]
	cmp	w2, 0
	ble	.L29
	ldr	w0, [x29, 104]
	adrp	x24, arr+8004
	add	x23, x23, :lo12:.LC8
	add	x24, x24, :lo12:arr+8004
	mov	w27, 1
	mov	x28, 8000
	.p2align 3
.L32:
	cmp	w0, 0
	ble	.L30
	mov	x21, x24
	mov	w19, 1
	.p2align 3
.L31:
	ldr	w1, [x21]
	mov	x0, x22
	bl	_ZNSolsEi
	mov	x2, 1
	mov	x1, x23
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w0, [x29, 104]
	add	w19, w19, 1
	add	x21, x21, 4
	cmp	w0, w19
	bge	.L31
	ldr	w2, [x29, 100]
.L30:
	add	w27, w27, 1
	add	x24, x24, x28
	cmp	w2, w27
	bge	.L32
.L29:
	mov	x0, x22
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	mov	x0, x26
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE3:
	mov	x0, x22
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	ldr	x0, [x29, 112]
	add	x25, x25, 16
	cmp	x0, x25
	beq	.L33
	bl	_ZdlPv
.L33:
	mov	x0, x20
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x26
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	adrp	x0, :got:__stack_chk_guard
	ldr	x1, [x0, #:got_lo12:__stack_chk_guard]
	mov	w0, 0
	ldr	x2, [x29, 1624]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cbnz	x1, .L54
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x26, x27, [sp, 72]
	ldr	x25, [x29, 64]
	.cfi_remember_state
	.cfi_restore 25
	ldp	x29, x30, [sp]
	ldr	x28, [sp, 88]
	add	sp, sp, 1632
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 28
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
.L11:
	.cfi_restore_state
	adrp	x19, :got:_ZSt4cout
	adrp	x1, .LC3
	mov	x2, 10
	add	x1, x1, :lo12:.LC3
	ldr	x0, [x19, #:got_lo12:_ZSt4cout]
.LEHB4:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x0, [x19, #:got_lo12:_ZSt4cout]
	ldp	x1, x2, [x29, 112]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.LEHE4:
	b	.L52
.L53:
	ldr	w0, [x29, 104]
	tbnz	w0, #31, .L20
	adrp	x24, array
	b	.L17
.L41:
	mov	x19, x0
	mov	x0, x22
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.L35:
	ldr	x0, [x29, 112]
	add	x25, x25, 16
	cmp	x0, x25
	beq	.L36
	bl	_ZdlPv
.L36:
	mov	x0, x20
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
.L37:
	mov	x0, x26
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB5:
	bl	_Unwind_Resume
.LEHE5:
.L40:
	mov	x19, x0
	b	.L35
.L39:
	.cfi_restore 25
	mov	x19, x0
	str	x25, [x29, 64]
	.cfi_offset 25, -1568
	b	.L37
.L54:
	bl	__stack_chk_fail
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
	.uleb128 .L39-.LFB1735
	.uleb128 0
	.uleb128 .LEHB2-.LFB1735
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L40-.LFB1735
	.uleb128 0
	.uleb128 .LEHB3-.LFB1735
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L41-.LFB1735
	.uleb128 0
	.uleb128 .LEHB4-.LFB1735
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L40-.LFB1735
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
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.zero	7
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
