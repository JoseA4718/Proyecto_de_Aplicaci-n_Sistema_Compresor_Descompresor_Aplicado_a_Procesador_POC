	.arch armv8-a
	.file	"mean_filter_opt.cpp"
	.text
	.align	2
	.global	_Z13insertionSortPii
	.type	_Z13insertionSortPii, %function
_Z13insertionSortPii:
.LFB1711:
	.cfi_startproc
	add	x3, x0, 4
	mov	w4, 1
.L5:
	cmp	w4, w1
	bge	.L1
	ldr	w5, [x3]
	mov	x2, x3
.L4:
	cmp	x0, x2
	beq	.L3
	ldr	w6, [x2, -4]
	cmp	w6, w5
	ble	.L3
	str	w6, [x2], -4
	b	.L4
.L3:
	add	w4, w4, 1
	add	x3, x3, 4
	str	w5, [x2]
	b	.L5
.L1:
	ret
	.cfi_endproc
.LFE1711:
	.size	_Z13insertionSortPii, .-_Z13insertionSortPii
	.section	.text.startup,"ax",@progbits
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1712:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1712
	sub	sp, sp, #1632
	.cfi_def_cfa_offset 1632
	adrp	x0, :got:__stack_chk_guard
	mov	w2, 8
	stp	x29, x30, [sp]
	.cfi_offset 29, -1632
	.cfi_offset 30, -1624
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	stp	x25, x26, [sp, 64]
	.cfi_offset 25, -1568
	.cfi_offset 26, -1560
	add	x25, x29, 1096
	ldr	x1, [x0]
	str	x1, [x29, 1624]
	mov	x1,0
	stp	x19, x20, [sp, 16]
	mov	x0, x25
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	adrp	x1, .LC0
	stp	x27, x28, [sp, 80]
	.cfi_offset 19, -1616
	.cfi_offset 20, -1608
	.cfi_offset 21, -1600
	.cfi_offset 22, -1592
	.cfi_offset 23, -1584
	.cfi_offset 24, -1576
	.cfi_offset 27, -1552
	.cfi_offset 28, -1544
	add	x1, x1, :lo12:.LC0
	add	x20, x29, 184
	stp	wzr, wzr, [x29, 100]
	str	wzr, [x29, 108]
.LEHB0:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE0:
	mov	w1, 24
	mov	x0, x20
.LEHB1:
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode
.LEHE1:
	add	x23, x29, 112
	adrp	x2, .LC1
	add	x2, x2, :lo12:.LC1
	add	x0, x23, 16
	mov	x1, x2
	str	x0, [x29, 112]
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	str	xzr, [x29, 120]
	ldr	x0, [x29, 112]
	mov	x1, x23
	strb	wzr, [x0]
	mov	x0, x25
.LEHB2:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	adrp	x26, .LC2
	mov	x0, x23
	add	x1, x26, :lo12:.LC2
	adrp	x19, :got:_ZSt4cout
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	cbz	w0, .L7
	adrp	x0, :got:_ZSt4cerr
	adrp	x1, .LC3
	add	x1, x1, :lo12:.LC3
	ldr	x0, [x0, #:got_lo12:_ZSt4cerr]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L37:
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	add	x1, x25, 16
	add	x0, x20, 16
	bl	_ZNSolsEPSt15basic_streambufIcSt11char_traitsIcEE
	b	.L38
.L7:
	ldr	x0, [x19, #:got_lo12:_ZSt4cout]
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x1, x23
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	b	.L37
.L38:
	add	x1, x29, 104
	mov	x0, x20
	bl	_ZNSirsERi
	add	x1, x29, 100
	bl	_ZNSirsERi
	add	x1, x29, 108
	bl	_ZNSirsERi
	ldr	x0, [x19, #:got_lo12:_ZSt4cout]
	ldr	w1, [x29, 104]
	bl	_ZNSolsEi
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w1, [x29, 100]
	bl	_ZNSolsEi
	adrp	x1, .LC6
	add	x1, x1, :lo12:.LC6
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w1, [x29, 108]
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w19, [x29, 100]
	mov	x22, 54464
	adrp	x21, array
	mov	x18, -46464
	mov	x17, -38464
	mov	x16, -30464
	mov	x15, -22464
	mov	x14, -14464
	mov	x13, -6464
	add	x3, x21, :lo12:array
	mov	x1, 0
	mov	w4, 0
	movk	x22, 0x1, lsl 16
	movk	x18, 0xfffe, lsl 16
	movk	x17, 0xfffe, lsl 16
	movk	x16, 0xfffe, lsl 16
	movk	x15, 0xfffe, lsl 16
	movk	x14, 0xfffe, lsl 16
	movk	x13, 0xfffe, lsl 16
	mov	x12, -64000
	mov	x11, -56000
	mov	x10, -48000
	mov	x9, -40000
	mov	x8, -32000
	mov	x7, -24000
	mov	x6, -16000
	mov	x5, -8000
.L12:
	add	x2, x1, x22
	cmp	w19, w4
	bge	.L10
	add	x21, x21, :lo12:array
	ldr	w2, [x29, 104]
	mov	x0, x21
	mov	w1, 0
.L11:
	add	x0, x0, 60
	cmp	w2, w1
	bge	.L13
	adrp	x24, array+8000
	add	x22, x29, 184
	add	x24, x24, :lo12:array+8000
	mov	w27, 1
.L14:
	ldr	w0, [x29, 100]
	cmp	w0, w27
	blt	.L29
	mov	x19, x24
	mov	w28, 1
.L17:
	ldr	w0, [x29, 104]
	cmp	w0, w28
	blt	.L16
	add	x1, x19, 4
	mov	x0, x20
	bl	_ZNSirsERi
	b	.L39
.L10:
	add	x0, x2, x3
	str	wzr, [x1, x3]
	add	w4, w4, 15
	mov	x1, x2
	str	wzr, [x0, x18]
	str	wzr, [x0, x17]
	str	wzr, [x0, x16]
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
	str	wzr, [x0, x5]
	str	wzr, [x2, x3]
	b	.L12
.L13:
	add	w1, w1, 15
	stp	wzr, wzr, [x0, -60]
	stp	wzr, wzr, [x0, -52]
	stp	wzr, wzr, [x0, -44]
	stp	wzr, wzr, [x0, -36]
	stp	wzr, wzr, [x0, -28]
	stp	wzr, wzr, [x0, -20]
	stp	wzr, wzr, [x0, -12]
	stp	wzr, wzr, [x0, -4]
	b	.L11
.L39:
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
	mov	x0, x22
	bl	_ZNSirsERi
	add	x1, x19, 40
	mov	x0, x22
	bl	_ZNSirsERi
	add	x1, x19, 44
	mov	x0, x22
	bl	_ZNSirsERi
	add	x1, x19, 48
	mov	x0, x22
	bl	_ZNSirsERi
	add	x1, x19, 52
	mov	x0, x22
	bl	_ZNSirsERi
	add	x1, x19, 56
	mov	x0, x22
	bl	_ZNSirsERi
	add	x19, x19, 60
	mov	x0, x22
	mov	x1, x19
	bl	_ZNSirsERi
	add	w28, w28, 15
	b	.L17
.L16:
	mov	x4, 8000
	add	w27, w27, 1
	add	x24, x24, x4
	b	.L14
.L29:
	adrp	x13, arr
	add	x13, x13, :lo12:arr
	mov	x3, 8004
	add	x11, x29, 144
	add	x13, x13, x3
	mov	x12, 0
	mov	w15, 2
.L15:
	ldr	w1, [x29, 100]
	sub	w0, w15, #1
	cmp	w1, w0
	blt	.L18
	mov	x1, 8000
	mov	x2, 16000
	add	x8, x21, x1
	add	x7, x21, x2
	add	x9, x12, x21
	add	x8, x8, x12
	add	x7, x7, x12
	add	x10, x13, x12
	mov	w14, 1
.L20:
	ldr	w0, [x29, 104]
	add	x9, x9, 4
	add	x8, x8, 4
	add	x7, x7, 4
	add	x10, x10, 4
	cmp	w0, w14
	bge	.L19
	mov	x0, 8000
	add	w15, w15, 1
	add	x12, x12, x0
	b	.L15
.L19:
	ldr	w0, [x9, -4]
	add	w14, w14, 1
	str	w0, [x29, 144]
	mov	w1, 9
	ldr	w0, [x9]
	str	w0, [x29, 148]
	ldr	w0, [x9, 4]
	str	w0, [x29, 152]
	ldr	w0, [x8, -4]
	str	w0, [x29, 156]
	ldr	w0, [x8]
	str	w0, [x29, 160]
	ldr	w0, [x8, 4]
	str	w0, [x29, 164]
	ldr	w0, [x7, -4]
	str	w0, [x29, 168]
	ldr	w0, [x7]
	str	w0, [x29, 172]
	ldr	w0, [x7, 4]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, -4]
	ldr	w0, [x9]
	str	w0, [x29, 144]
	ldr	w0, [x9, 4]
	str	w0, [x29, 148]
	ldr	w0, [x9, 8]
	str	w0, [x29, 152]
	ldr	w0, [x8]
	str	w0, [x29, 156]
	ldr	w0, [x8, 4]
	str	w0, [x29, 160]
	ldr	w0, [x8, 8]
	str	w0, [x29, 164]
	ldr	w0, [x7]
	str	w0, [x29, 168]
	ldr	w0, [x7, 4]
	str	w0, [x29, 172]
	ldr	w0, [x7, 8]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10]
	ldr	w0, [x9, 4]
	str	w0, [x29, 144]
	ldr	w0, [x9, 8]
	str	w0, [x29, 148]
	ldr	w0, [x9, 12]
	str	w0, [x29, 152]
	ldr	w0, [x8, 4]
	str	w0, [x29, 156]
	ldr	w0, [x8, 8]
	str	w0, [x29, 160]
	ldr	w0, [x8, 12]
	str	w0, [x29, 164]
	ldr	w0, [x7, 4]
	str	w0, [x29, 168]
	ldr	w0, [x7, 8]
	str	w0, [x29, 172]
	ldr	w0, [x7, 12]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 4]
	ldr	w0, [x9, 8]
	str	w0, [x29, 144]
	ldr	w0, [x9, 12]
	str	w0, [x29, 148]
	ldr	w0, [x9, 16]
	str	w0, [x29, 152]
	ldr	w0, [x8, 8]
	str	w0, [x29, 156]
	ldr	w0, [x8, 12]
	str	w0, [x29, 160]
	ldr	w0, [x8, 16]
	str	w0, [x29, 164]
	ldr	w0, [x7, 8]
	str	w0, [x29, 168]
	ldr	w0, [x7, 12]
	str	w0, [x29, 172]
	ldr	w0, [x7, 16]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 8]
	ldr	w0, [x9, 12]
	str	w0, [x29, 144]
	ldr	w0, [x9, 16]
	str	w0, [x29, 148]
	ldr	w0, [x9, 20]
	str	w0, [x29, 152]
	ldr	w0, [x8, 12]
	str	w0, [x29, 156]
	ldr	w0, [x8, 16]
	str	w0, [x29, 160]
	ldr	w0, [x8, 20]
	str	w0, [x29, 164]
	ldr	w0, [x7, 12]
	str	w0, [x29, 168]
	ldr	w0, [x7, 16]
	str	w0, [x29, 172]
	ldr	w0, [x7, 20]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 12]
	ldr	w0, [x9, 16]
	str	w0, [x29, 144]
	ldr	w0, [x9, 20]
	str	w0, [x29, 148]
	ldr	w0, [x9, 24]
	str	w0, [x29, 152]
	ldr	w0, [x8, 16]
	str	w0, [x29, 156]
	ldr	w0, [x8, 20]
	str	w0, [x29, 160]
	ldr	w0, [x8, 24]
	str	w0, [x29, 164]
	ldr	w0, [x7, 16]
	str	w0, [x29, 168]
	ldr	w0, [x7, 20]
	str	w0, [x29, 172]
	ldr	w0, [x7, 24]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 16]
	ldr	w0, [x9, 20]
	str	w0, [x29, 144]
	ldr	w0, [x9, 24]
	str	w0, [x29, 148]
	ldr	w0, [x9, 28]
	str	w0, [x29, 152]
	ldr	w0, [x8, 20]
	str	w0, [x29, 156]
	ldr	w0, [x8, 24]
	str	w0, [x29, 160]
	ldr	w0, [x8, 28]
	str	w0, [x29, 164]
	ldr	w0, [x7, 20]
	str	w0, [x29, 168]
	ldr	w0, [x7, 24]
	str	w0, [x29, 172]
	ldr	w0, [x7, 28]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 20]
	ldr	w0, [x9, 24]
	str	w0, [x29, 144]
	ldr	w0, [x9, 28]
	str	w0, [x29, 148]
	ldr	w0, [x9, 32]
	str	w0, [x29, 152]
	ldr	w0, [x8, 24]
	str	w0, [x29, 156]
	ldr	w0, [x8, 28]
	str	w0, [x29, 160]
	ldr	w0, [x8, 32]
	str	w0, [x29, 164]
	ldr	w0, [x7, 24]
	str	w0, [x29, 168]
	ldr	w0, [x7, 28]
	str	w0, [x29, 172]
	ldr	w0, [x7, 32]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 24]
	ldr	w0, [x9, 28]
	str	w0, [x29, 144]
	ldr	w0, [x9, 32]
	str	w0, [x29, 148]
	ldr	w0, [x9, 36]
	str	w0, [x29, 152]
	ldr	w0, [x8, 28]
	str	w0, [x29, 156]
	ldr	w0, [x8, 32]
	str	w0, [x29, 160]
	ldr	w0, [x8, 36]
	str	w0, [x29, 164]
	ldr	w0, [x7, 28]
	str	w0, [x29, 168]
	ldr	w0, [x7, 32]
	str	w0, [x29, 172]
	ldr	w0, [x7, 36]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 28]
	ldr	w0, [x9, 32]
	str	w0, [x29, 144]
	ldr	w0, [x9, 36]
	str	w0, [x29, 148]
	ldr	w0, [x9, 40]
	str	w0, [x29, 152]
	ldr	w0, [x8, 32]
	str	w0, [x29, 156]
	ldr	w0, [x8, 36]
	str	w0, [x29, 160]
	ldr	w0, [x8, 40]
	str	w0, [x29, 164]
	ldr	w0, [x7, 32]
	str	w0, [x29, 168]
	ldr	w0, [x7, 36]
	str	w0, [x29, 172]
	ldr	w0, [x7, 40]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 32]
	ldr	w0, [x9, 36]
	str	w0, [x29, 144]
	ldr	w0, [x9, 40]
	str	w0, [x29, 148]
	ldr	w0, [x9, 44]
	str	w0, [x29, 152]
	ldr	w0, [x8, 36]
	str	w0, [x29, 156]
	ldr	w0, [x8, 40]
	str	w0, [x29, 160]
	ldr	w0, [x8, 44]
	str	w0, [x29, 164]
	ldr	w0, [x7, 36]
	str	w0, [x29, 168]
	ldr	w0, [x7, 40]
	str	w0, [x29, 172]
	ldr	w0, [x7, 44]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 36]
	ldr	w0, [x9, 40]
	str	w0, [x29, 144]
	ldr	w0, [x9, 44]
	str	w0, [x29, 148]
	ldr	w0, [x9, 48]
	str	w0, [x29, 152]
	ldr	w0, [x8, 40]
	str	w0, [x29, 156]
	ldr	w0, [x8, 44]
	str	w0, [x29, 160]
	ldr	w0, [x8, 48]
	str	w0, [x29, 164]
	ldr	w0, [x7, 40]
	str	w0, [x29, 168]
	ldr	w0, [x7, 44]
	str	w0, [x29, 172]
	ldr	w0, [x7, 48]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 40]
	ldr	w0, [x9, 44]
	str	w0, [x29, 144]
	ldr	w0, [x9, 48]
	str	w0, [x29, 148]
	ldr	w0, [x9, 52]
	str	w0, [x29, 152]
	ldr	w0, [x8, 44]
	str	w0, [x29, 156]
	ldr	w0, [x8, 48]
	str	w0, [x29, 160]
	ldr	w0, [x8, 52]
	str	w0, [x29, 164]
	ldr	w0, [x7, 44]
	str	w0, [x29, 168]
	ldr	w0, [x7, 48]
	str	w0, [x29, 172]
	ldr	w0, [x7, 52]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 44]
	ldr	w0, [x9, 48]
	str	w0, [x29, 144]
	ldr	w0, [x9, 52]
	str	w0, [x29, 148]
	ldr	w0, [x9, 56]
	str	w0, [x29, 152]
	ldr	w0, [x8, 48]
	str	w0, [x29, 156]
	ldr	w0, [x8, 52]
	str	w0, [x29, 160]
	ldr	w0, [x8, 56]
	str	w0, [x29, 164]
	ldr	w0, [x7, 48]
	str	w0, [x29, 168]
	ldr	w0, [x7, 52]
	str	w0, [x29, 172]
	ldr	w0, [x7, 56]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	mov	w1, 9
	str	w0, [x10, 48]
	ldr	w0, [x9, 52]
	str	w0, [x29, 144]
	ldr	w0, [x9, 56]
	str	w0, [x29, 148]
	ldr	w0, [x9, 60]
	str	w0, [x29, 152]
	ldr	w0, [x8, 52]
	str	w0, [x29, 156]
	ldr	w0, [x8, 56]
	str	w0, [x29, 160]
	ldr	w0, [x8, 60]
	str	w0, [x29, 164]
	ldr	w0, [x7, 52]
	str	w0, [x29, 168]
	ldr	w0, [x7, 56]
	str	w0, [x29, 172]
	ldr	w0, [x7, 60]
	str	w0, [x29, 176]
	mov	x0, x11
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x10, 52]
	b	.L20
.L18:
	add	x19, x29, 576
	mov	x0, x19
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE2:
	adrp	x1, .LC8
	mov	w2, 48
	add	x1, x1, :lo12:.LC8
	mov	x0, x19
.LEHB3:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	add	x1, x26, :lo12:.LC2
	mov	x0, x19
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w1, [x29, 104]
	mov	x0, x19
	bl	_ZNSolsEi
	adrp	x24, .LC9
	add	x1, x24, :lo12:.LC9
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w1, [x29, 100]
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	adrp	x1, .LC10
	mov	x0, x19
	add	x1, x1, :lo12:.LC10
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	adrp	x21, arr+8000
	add	x24, x24, :lo12:.LC9
	add	x21, x21, :lo12:arr+8000
	mov	w26, 1
	mov	x27, 8000
.L24:
	ldr	w0, [x29, 100]
	cmp	w0, w26
	blt	.L21
	mov	x22, 1
.L23:
	ldr	w0, [x29, 104]
	cmp	w0, w22
	blt	.L22
	ldr	w1, [x21, x22, lsl 2]
	mov	x0, x19
	bl	_ZNSolsEi
	mov	x1, x24
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	x22, x22, 1
	b	.L23
.L22:
	add	w26, w26, 1
	add	x21, x21, x27
	b	.L24
.L21:
	mov	x0, x19
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	add	x21, x29, 1096
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE3:
	mov	x0, x19
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	add	x0, x29, 112
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	add	x0, x29, 184
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	mov	x0, x21
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	adrp	x1, :got:__stack_chk_guard
	mov	w0, 0
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [x29, 1624]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cbz	x1, .L28
	bl	__stack_chk_fail
.L32:
	mov	x21, x0
	mov	x0, x19
	mov	x19, x21
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.L26:
	mov	x0, x23
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	mov	x0, x20
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
.L27:
	mov	x0, x25
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB4:
	bl	_Unwind_Resume
.LEHE4:
.L31:
	mov	x19, x0
	b	.L26
.L30:
	mov	x19, x0
	b	.L27
.L28:
	ldp	x29, x30, [sp]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
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
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE1712:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1712:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1712-.LLSDACSB1712
.LLSDACSB1712:
	.uleb128 .LEHB0-.LFB1712
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1712
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L30-.LFB1712
	.uleb128 0
	.uleb128 .LEHB2-.LFB1712
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L31-.LFB1712
	.uleb128 0
	.uleb128 .LEHB3-.LFB1712
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L32-.LFB1712
	.uleb128 0
	.uleb128 .LEHB4-.LFB1712
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1712:
	.section	.text.startup
	.size	main, .-main
	.align	2
	.type	_GLOBAL__sub_I__Z13insertionSortPii, %function
_GLOBAL__sub_I__Z13insertionSortPii:
.LFB2299:
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
.LFE2299:
	.size	_GLOBAL__sub_I__Z13insertionSortPii, .-_GLOBAL__sub_I__Z13insertionSortPii
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z13insertionSortPii
	.global	arr
	.global	array
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.zero	1
	.zero	3
	.type	arr, %object
	.size	arr, 16000000
arr:
	.zero	16000000
	.type	array, %object
	.size	array, 16000000
array:
	.zero	16000000
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Saltpepper.pgm"
.LC1:
	.string	""
.LC2:
	.string	"P2"
.LC3:
	.string	"Version error"
.LC4:
	.string	"Version : "
.LC5:
	.string	" columns and "
.LC6:
	.string	" rows"
.LC7:
	.string	" Maximium Intesity "
.LC8:
	.string	"Medianfilter.pnm"
.LC9:
	.string	" "
.LC10:
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
