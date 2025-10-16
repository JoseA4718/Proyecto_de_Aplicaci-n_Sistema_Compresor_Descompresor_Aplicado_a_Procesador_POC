	.arch armv8-a
	.file	"mean_filter_opt.cpp"
	.text
	.section	.rodata
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",@progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.align	2
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.type	_ZStorSt13_Ios_OpenmodeS_, %function
_ZStorSt13_Ios_OpenmodeS_:
.LFB1094:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	orr	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1094:
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,8
	.text
	.align	2
	.global	_Z13insertionSortPii
	.type	_Z13insertionSortPii, %function
_Z13insertionSortPii:
.LFB1663:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	mov	w0, 1
	str	w0, [sp, 20]
.L7:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	bge	.L8
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L6:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	blt	.L5
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L5
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	b	.L6
.L5:
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	str	w1, [x0]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	b	.L7
.L8:
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1663:
	.size	_Z13insertionSortPii, .-_Z13insertionSortPii
	.global	array
	.bss
	.align	3
	.type	array, %object
	.size	array, 16000000
array:
	.zero	16000000
	.global	arr
	.align	3
	.type	arr, %object
	.size	arr, 16000000
arr:
	.zero	16000000
	.section	.rodata
	.align	3
.LC0:
	.string	"Saltpepper.pgm"
	.align	3
.LC1:
	.string	""
	.align	3
.LC2:
	.string	"P2"
	.align	3
.LC3:
	.string	"Version error"
	.align	3
.LC4:
	.string	"Version : "
	.align	3
.LC5:
	.string	" columns and "
	.align	3
.LC6:
	.string	" rows"
	.align	3
.LC7:
	.string	" Maximium Intesity "
	.align	3
.LC8:
	.string	"Medianfilter.pnm"
	.align	3
.LC9:
	.string	" "
	.align	3
.LC10:
	.string	"255"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1664:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1664
	sub	sp, sp, #1584
	.cfi_def_cfa_offset 1584
	stp	x29, x30, [sp]
	.cfi_offset 29, -1584
	.cfi_offset 30, -1576
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x19, [sp, 16]
	.cfi_offset 19, -1568
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, 1576]
	mov	x1,0
	str	wzr, [x29, 56]
	str	wzr, [x29, 60]
	str	wzr, [x29, 44]
	str	wzr, [x29, 48]
	str	wzr, [x29, 52]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, x29, 1048
	mov	w2, 8
.LEHB0:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE0:
	mov	w1, 8
	mov	w0, 16
	bl	_ZStorSt13_Ios_OpenmodeS_
	mov	w1, w0
	add	x0, x29, 136
.LEHB1:
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode
.LEHE1:
	add	x0, x29, 40
	bl	_ZNSaIcEC1Ev
	add	x2, x29, 40
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	add	x0, x29, 64
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE2:
	add	x0, x29, 40
	bl	_ZNSaIcED1Ev
	add	x1, x29, 64
	add	x0, x29, 1048
.LEHB3:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, x29, 64
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, #:got_lo12:_ZSt4cerr]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x0, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L11
.L10:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	add	x0, x29, 64
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x0, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
.L11:
	add	x0, x29, 1048
	bl	_ZNKSt14basic_ifstreamIcSt11char_traitsIcEE5rdbufEv
	mov	x1, x0
	add	x0, x29, 136
	add	x0, x0, 16
	bl	_ZNSolsEPSt15basic_streambufIcSt11char_traitsIcEE
	add	x1, x29, 48
	add	x0, x29, 136
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 44
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, x29, 52
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w1, [x29, 48]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	w0, [x29, 44]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x0, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	x2, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	w0, [x29, 52]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x0, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	str	wzr, [x29, 56]
.L13:
	ldr	w0, [x29, 44]
	ldr	w1, [x29, 56]
	cmp	w1, w0
	bgt	.L12
	adrp	x0, array
	add	x2, x0, :lo12:array
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 14
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w1, w0, 15
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 6
	add	x0, x2, x0
	str	wzr, [x0]
	ldr	w0, [x29, 56]
	add	w0, w0, 15
	str	w0, [x29, 56]
	b	.L13
.L12:
	str	wzr, [x29, 60]
.L15:
	ldr	w0, [x29, 48]
	ldr	w1, [x29, 60]
	cmp	w1, w0
	bgt	.L14
	adrp	x0, array
	add	x0, x0, :lo12:array
	ldrsw	x1, [x29, 60]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 1
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 3
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 4
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 5
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 6
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 7
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 8
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 9
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 10
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 11
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 12
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 13
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 14
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w1, w0, 15
	adrp	x0, array
	add	x0, x0, :lo12:array
	sxtw	x1, w1
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, 60]
	add	w0, w0, 15
	str	w0, [x29, 60]
	b	.L15
.L14:
	mov	w0, 1
	str	w0, [x29, 56]
.L19:
	ldr	w0, [x29, 44]
	ldr	w1, [x29, 56]
	cmp	w1, w0
	bgt	.L16
	mov	w0, 1
	str	w0, [x29, 60]
.L18:
	ldr	w0, [x29, 48]
	ldr	w1, [x29, 60]
	cmp	w1, w0
	bgt	.L17
	ldrsw	x2, [x29, 60]
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 1
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 2
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 3
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 4
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 5
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 6
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 7
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 8
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 9
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 10
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 11
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 12
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 13
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 14
	sxtw	x2, w0
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, array
	add	x0, x0, :lo12:array
	add	x1, x1, x0
	add	x0, x29, 136
	bl	_ZNSirsERi
	ldr	w0, [x29, 60]
	add	w0, w0, 15
	str	w0, [x29, 60]
	b	.L18
.L17:
	ldr	w0, [x29, 56]
	add	w0, w0, 1
	str	w0, [x29, 56]
	b	.L19
.L16:
	mov	w0, 1
	str	w0, [x29, 56]
.L23:
	ldr	w0, [x29, 44]
	ldr	w1, [x29, 56]
	cmp	w1, w0
	bgt	.L20
	mov	w0, 1
	str	w0, [x29, 60]
.L22:
	ldr	w0, [x29, 48]
	ldr	w1, [x29, 60]
	cmp	w1, w0
	bgt	.L21
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	sub	w3, w0, #1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	adrp	x0, array
	add	x2, x0, :lo12:array
	ldrsw	x3, [x29, 60]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	sub	w1, w0, #1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	adrp	x0, array
	add	x2, x0, :lo12:array
	ldrsw	x3, [x29, 60]
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	sub	w3, w0, #1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	ldrsw	x3, [x29, 60]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	ldrsw	x4, [x29, 60]
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	adrp	x0, array
	add	x2, x0, :lo12:array
	ldrsw	x3, [x29, 60]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	adrp	x0, array
	add	x2, x0, :lo12:array
	ldrsw	x3, [x29, 60]
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	ldrsw	x3, [x29, 60]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 1
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 1
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 2
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 2
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 3
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 3
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 4
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 4
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 5
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 5
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 6
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 6
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 7
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 7
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 8
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 8
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 9
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 9
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 10
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 10
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 11
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 11
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 12
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 14
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 14
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 12
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 14
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 13
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 96]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 14
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 100]
	ldr	w0, [x29, 56]
	sub	w1, w0, #1
	ldr	w0, [x29, 60]
	add	w3, w0, 15
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 104]
	ldr	w0, [x29, 60]
	add	w1, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 108]
	ldr	w0, [x29, 60]
	add	w1, w0, 14
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 112]
	ldr	w0, [x29, 60]
	add	w1, w0, 15
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 116]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 13
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 120]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 14
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 124]
	ldr	w0, [x29, 56]
	add	w1, w0, 1
	ldr	w0, [x29, 60]
	add	w3, w0, 15
	adrp	x0, array
	add	x2, x0, :lo12:array
	sxtw	x3, w3
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [x29, 128]
	add	x0, x29, 96
	mov	w1, 9
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 60]
	add	w1, w0, 14
	ldr	w3, [x29, 112]
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	sxtw	x4, w1
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [x29, 60]
	add	w0, w0, 1
	str	w0, [x29, 60]
	b	.L22
.L21:
	ldr	w0, [x29, 56]
	add	w0, w0, 1
	str	w0, [x29, 56]
	b	.L23
.L20:
	add	x0, x29, 528
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
.LEHE3:
	mov	w1, 32
	mov	w0, 16
	bl	_ZStorSt13_Ios_OpenmodeS_
	mov	w2, w0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, x29, 528
.LEHB4:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	add	x0, x29, 528
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x0, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w1, [x29, 48]
	add	x0, x29, 528
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	ldr	w0, [x29, 44]
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x0, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	add	x0, x29, 528
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	x2, x0
	adrp	x0, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x0, [x0, #:got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 1
	str	w0, [x29, 56]
.L27:
	ldr	w0, [x29, 44]
	ldr	w1, [x29, 56]
	cmp	w1, w0
	bgt	.L24
	mov	w0, 1
	str	w0, [x29, 60]
.L26:
	ldr	w0, [x29, 48]
	ldr	w1, [x29, 60]
	cmp	w1, w0
	bgt	.L25
	adrp	x0, arr
	add	x2, x0, :lo12:arr
	ldrsw	x3, [x29, 60]
	ldrsw	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 5
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x0, x3
	ldr	w1, [x2, x0, lsl 2]
	add	x0, x29, 528
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	mov	x1, x0
	mov	x0, x2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w0, [x29, 60]
	add	w0, w0, 1
	str	w0, [x29, 60]
	b	.L26
.L25:
	ldr	w0, [x29, 56]
	add	w0, w0, 1
	str	w0, [x29, 56]
	b	.L27
.L24:
	add	x0, x29, 528
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	add	x0, x29, 1048
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE4:
	mov	w19, 0
	add	x0, x29, 528
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	add	x0, x29, 64
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	x0, x29, 136
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	add	x0, x29, 1048
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	w0, w19
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [x29, 1576]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cmp	x1, 0
	beq	.L34
	b	.L39
.L36:
	mov	x19, x0
	add	x0, x29, 40
	bl	_ZNSaIcED1Ev
	b	.L30
.L38:
	mov	x19, x0
	add	x0, x29, 528
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	b	.L32
.L37:
	mov	x19, x0
.L32:
	add	x0, x29, 64
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L30:
	add	x0, x29, 136
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	b	.L33
.L35:
	mov	x19, x0
.L33:
	add	x0, x29, 1048
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB5:
	bl	_Unwind_Resume
.LEHE5:
.L39:
	bl	__stack_chk_fail
.L34:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 1584
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE1664:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1664:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1664-.LLSDACSB1664
.LLSDACSB1664:
	.uleb128 .LEHB0-.LFB1664
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1664
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L35-.LFB1664
	.uleb128 0
	.uleb128 .LEHB2-.LFB1664
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L36-.LFB1664
	.uleb128 0
	.uleb128 .LEHB3-.LFB1664
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L37-.LFB1664
	.uleb128 0
	.uleb128 .LEHB4-.LFB1664
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L38-.LFB1664
	.uleb128 0
	.uleb128 .LEHB5-.LFB1664
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1664:
	.text
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
.LFB2251:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29, 28]
	str	w1, [x29, 24]
	ldr	w0, [x29, 28]
	cmp	w0, 1
	bne	.L42
	ldr	w1, [x29, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L42
	adrp	x0, _ZStL8__ioinit
	add	x0, x0, :lo12:_ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, _ZStL8__ioinit
	add	x1, x0, :lo12:_ZStL8__ioinit
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]
	bl	__cxa_atexit
.L42:
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE2251:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.align	2
	.type	_GLOBAL__sub_I__Z13insertionSortPii, %function
_GLOBAL__sub_I__Z13insertionSortPii:
.LFB2252:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	mov	w1, 65535
	mov	w0, 1
	bl	_Z41__static_initialization_and_destruction_0ii
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE2252:
	.size	_GLOBAL__sub_I__Z13insertionSortPii, .-_GLOBAL__sub_I__Z13insertionSortPii
	.section	.init_array,"aw"
	.align	3
	.xword	_GLOBAL__sub_I__Z13insertionSortPii
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
