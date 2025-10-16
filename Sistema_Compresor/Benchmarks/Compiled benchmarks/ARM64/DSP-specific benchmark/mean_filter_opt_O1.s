	.arch armv8-a
	.file	"mean_filter_opt.cpp"
	.text
	.align	2
	.global	_Z13insertionSortPii
	.type	_Z13insertionSortPii, %function
_Z13insertionSortPii:
.LFB1734:
	.cfi_startproc
	cmp	w1, 1
	ble	.L1
	mov	x9, 1
	mov	x8, 0
	b	.L6
.L3:
	add	x4, x0, x4, sxtw 2
	str	w7, [x4, 4]
	add	x8, x8, 1
	add	x9, x9, 1
	cmp	w1, w9
	ble	.L1
.L6:
	ldr	w7, [x0, x9, lsl 2]
	mov	w4, w8
	tbnz	w8, #31, .L3
	ldr	w5, [x0, x8, lsl 2]
	cmp	w7, w5
	bge	.L3
	sub	x3, x8, #1
	mov	x2, x8
.L4:
	add	x2, x2, 1
	str	w5, [x0, x2, lsl 2]
	sub	w4, w4, #1
	cmn	w4, #1
	beq	.L3
	sub	x6, x3, #1
	ldr	w5, [x0, x3, lsl 2]
	mov	x2, x3
	cmp	w5, w7
	ble	.L3
	mov	x3, x6
	b	.L4
.L1:
	ret
	.cfi_endproc
.LFE1734:
	.size	_Z13insertionSortPii, .-_Z13insertionSortPii
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1735:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1735
	sub	sp, sp, #1632
	.cfi_def_cfa_offset 1632
	stp	x29, x30, [sp]
	.cfi_offset 29, -1632
	.cfi_offset 30, -1624
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	.cfi_offset 19, -1616
	.cfi_offset 20, -1608
	.cfi_offset 21, -1600
	.cfi_offset 22, -1592
	.cfi_offset 23, -1584
	.cfi_offset 24, -1576
	.cfi_offset 25, -1568
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, 1624]
	mov	x1,0
	str	wzr, [x29, 100]
	str	wzr, [x29, 104]
	str	wzr, [x29, 108]
	mov	w2, 8
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	add	x0, x29, 1096
.LEHB0:
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE0:
	mov	w1, 24
	add	x0, x29, 184
.LEHB1:
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode
.LEHE1:
	add	x2, x29, 96
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	add	x0, x29, 112
.LEHB2:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE2:
	add	x1, x29, 112
	add	x0, x29, 1096
.LEHB3:
	bl	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	add	x0, x29, 112
	bl	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	cbz	w0, .L9
	mov	x2, 13
	adrp	x1, .LC3
	add	x1, x1, :lo12:.LC3
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, #:got_lo12:_ZSt4cerr]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	adrp	x0, :got:_ZSt4cerr
	ldr	x0, [x0, #:got_lo12:_ZSt4cerr]
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	b	.L10
.L9:
	mov	x2, 10
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	x2, [x29, 120]
	ldr	x1, [x29, 112]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.L10:
	add	x1, x29, 1112
	add	x0, x29, 200
	bl	_ZNSolsEPSt15basic_streambufIcSt11char_traitsIcEE
	add	x1, x29, 104
	add	x0, x29, 184
	bl	_ZNSirsERi
	add	x1, x29, 100
	bl	_ZNSirsERi
	add	x1, x29, 108
	bl	_ZNSirsERi
	ldr	w1, [x29, 104]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, #:got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	mov	x19, x0
	mov	x2, 13
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [x29, 100]
	mov	x0, x19
	bl	_ZNSolsEi
	mov	x19, x0
	mov	x2, 5
	adrp	x1, .LC6
	add	x1, x1, :lo12:.LC6
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	x0, x19
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	x19, x0
	mov	x2, 19
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [x29, 108]
	mov	x0, x19
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w5, [x29, 100]
	tbnz	w5, #31, .L14
	adrp	x1, array
	add	x1, x1, :lo12:array
	mov	x4, 0
	mov	w3, 0
	mov	x6, x1
	mov	x18, 24000
	mov	x17, 32000
	mov	x16, 40000
	mov	x15, 48000
	mov	x14, 56000
	mov	x13, 64000
	mov	x12, 6464
	movk	x12, 0x1, lsl 16
	mov	x11, 14464
	movk	x11, 0x1, lsl 16
	mov	x10, 22464
	movk	x10, 0x1, lsl 16
	mov	x9, 30464
	movk	x9, 0x1, lsl 16
	mov	x8, 38464
	movk	x8, 0x1, lsl 16
	mov	x7, 46464
	movk	x7, 0x1, lsl 16
	mov	x2, 54464
	movk	x2, 0x1, lsl 16
.L15:
	str	wzr, [x1]
	str	wzr, [x1, 8000]
	str	wzr, [x1, 16000]
	add	x0, x4, x6
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
	add	w3, w3, 15
	str	wzr, [x0, x2]
	add	x1, x1, x2
	add	x4, x4, x2
	cmp	w3, w5
	ble	.L15
.L14:
	ldr	w2, [x29, 104]
	tbnz	w2, #31, .L12
	adrp	x0, array
	add	x0, x0, :lo12:array
	mov	w1, 0
.L18:
	str	wzr, [x0]
	str	wzr, [x0, 4]
	str	wzr, [x0, 8]
	str	wzr, [x0, 12]
	str	wzr, [x0, 16]
	str	wzr, [x0, 20]
	str	wzr, [x0, 24]
	str	wzr, [x0, 28]
	str	wzr, [x0, 32]
	str	wzr, [x0, 36]
	str	wzr, [x0, 40]
	str	wzr, [x0, 44]
	str	wzr, [x0, 48]
	str	wzr, [x0, 52]
	str	wzr, [x0, 56]
	add	w1, w1, 15
	str	wzr, [x0, 60]!
	cmp	w1, w2
	ble	.L18
.L12:
	cmp	w5, 0
	ble	.L16
	mov	w24, 1
	adrp	x21, array
	add	x21, x21, :lo12:array
	add	x22, x29, 184
	b	.L17
.L52:
	cmp	w0, 0
	ble	.L16
	stp	x26, x27, [x29, 72]
	.cfi_offset 27, -1552
	.cfi_offset 26, -1560
	str	x28, [x29, 88]
	.cfi_offset 28, -1544
	mov	w26, 1
	adrp	x27, array
	add	x27, x27, :lo12:array
	adrp	x28, arr
	add	x28, x28, :lo12:arr
	add	x24, x29, 144
.L21:
	ldr	w0, [x29, 104]
	cmp	w0, 0
	ble	.L24
	sub	w20, w26, #1
	sxtw	x0, w20
	lsl	x20, x0, 5
	sub	x20, x20, x0
	add	x20, x0, x20, lsl 2
	add	x20, x27, x20, lsl 6
	sxtw	x0, w26
	lsl	x22, x0, 5
	sub	x22, x22, x0
	add	x22, x0, x22, lsl 2
	lsl	x22, x22, 6
	add	x21, x22, x27
	add	w19, w26, 1
	sxtw	x0, w19
	lsl	x19, x0, 5
	sub	x19, x19, x0
	add	x19, x0, x19, lsl 2
	add	x19, x27, x19, lsl 6
	add	x22, x22, 4
	add	x22, x22, x28
	mov	w25, 1
	mov	w23, 9
.L25:
	ldr	w0, [x20]
	str	w0, [x29, 144]
	ldr	w0, [x20, 4]
	str	w0, [x29, 148]
	add	w25, w25, 1
	ldr	w0, [x20, 8]
	str	w0, [x29, 152]
	ldr	w0, [x21]
	str	w0, [x29, 156]
	ldr	w0, [x21, 4]
	str	w0, [x29, 160]
	ldr	w0, [x21, 8]
	str	w0, [x29, 164]
	ldr	w0, [x19]
	str	w0, [x29, 168]
	ldr	w0, [x19, 4]
	str	w0, [x29, 172]
	ldr	w0, [x19, 8]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22]
	ldr	w0, [x20, 4]
	str	w0, [x29, 144]
	ldr	w0, [x20, 8]
	str	w0, [x29, 148]
	ldr	w0, [x20, 12]
	str	w0, [x29, 152]
	ldr	w0, [x21, 4]
	str	w0, [x29, 156]
	ldr	w0, [x21, 8]
	str	w0, [x29, 160]
	ldr	w0, [x21, 12]
	str	w0, [x29, 164]
	ldr	w0, [x19, 4]
	str	w0, [x29, 168]
	ldr	w0, [x19, 8]
	str	w0, [x29, 172]
	ldr	w0, [x19, 12]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 4]
	ldr	w0, [x20, 8]
	str	w0, [x29, 144]
	ldr	w0, [x20, 12]
	str	w0, [x29, 148]
	ldr	w0, [x20, 16]
	str	w0, [x29, 152]
	ldr	w0, [x21, 8]
	str	w0, [x29, 156]
	ldr	w0, [x21, 12]
	str	w0, [x29, 160]
	ldr	w0, [x21, 16]
	str	w0, [x29, 164]
	ldr	w0, [x19, 8]
	str	w0, [x29, 168]
	ldr	w0, [x19, 12]
	str	w0, [x29, 172]
	ldr	w0, [x19, 16]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 8]
	ldr	w0, [x20, 12]
	str	w0, [x29, 144]
	ldr	w0, [x20, 16]
	str	w0, [x29, 148]
	ldr	w0, [x20, 20]
	str	w0, [x29, 152]
	ldr	w0, [x21, 12]
	str	w0, [x29, 156]
	ldr	w0, [x21, 16]
	str	w0, [x29, 160]
	ldr	w0, [x21, 20]
	str	w0, [x29, 164]
	ldr	w0, [x19, 12]
	str	w0, [x29, 168]
	ldr	w0, [x19, 16]
	str	w0, [x29, 172]
	ldr	w0, [x19, 20]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 12]
	ldr	w0, [x20, 16]
	str	w0, [x29, 144]
	ldr	w0, [x20, 20]
	str	w0, [x29, 148]
	ldr	w0, [x20, 24]
	str	w0, [x29, 152]
	ldr	w0, [x21, 16]
	str	w0, [x29, 156]
	ldr	w0, [x21, 20]
	str	w0, [x29, 160]
	ldr	w0, [x21, 24]
	str	w0, [x29, 164]
	ldr	w0, [x19, 16]
	str	w0, [x29, 168]
	ldr	w0, [x19, 20]
	str	w0, [x29, 172]
	ldr	w0, [x19, 24]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 16]
	ldr	w0, [x20, 20]
	str	w0, [x29, 144]
	ldr	w0, [x20, 24]
	str	w0, [x29, 148]
	ldr	w0, [x20, 28]
	str	w0, [x29, 152]
	ldr	w0, [x21, 20]
	str	w0, [x29, 156]
	ldr	w0, [x21, 24]
	str	w0, [x29, 160]
	ldr	w0, [x21, 28]
	str	w0, [x29, 164]
	ldr	w0, [x19, 20]
	str	w0, [x29, 168]
	ldr	w0, [x19, 24]
	str	w0, [x29, 172]
	ldr	w0, [x19, 28]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 20]
	ldr	w0, [x20, 24]
	str	w0, [x29, 144]
	ldr	w0, [x20, 28]
	str	w0, [x29, 148]
	ldr	w0, [x20, 32]
	str	w0, [x29, 152]
	ldr	w0, [x21, 24]
	str	w0, [x29, 156]
	ldr	w0, [x21, 28]
	str	w0, [x29, 160]
	ldr	w0, [x21, 32]
	str	w0, [x29, 164]
	ldr	w0, [x19, 24]
	str	w0, [x29, 168]
	ldr	w0, [x19, 28]
	str	w0, [x29, 172]
	ldr	w0, [x19, 32]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 24]
	ldr	w0, [x20, 28]
	str	w0, [x29, 144]
	ldr	w0, [x20, 32]
	str	w0, [x29, 148]
	ldr	w0, [x20, 36]
	str	w0, [x29, 152]
	ldr	w0, [x21, 28]
	str	w0, [x29, 156]
	ldr	w0, [x21, 32]
	str	w0, [x29, 160]
	ldr	w0, [x21, 36]
	str	w0, [x29, 164]
	ldr	w0, [x19, 28]
	str	w0, [x29, 168]
	ldr	w0, [x19, 32]
	str	w0, [x29, 172]
	ldr	w0, [x19, 36]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 28]
	ldr	w0, [x20, 32]
	str	w0, [x29, 144]
	ldr	w0, [x20, 36]
	str	w0, [x29, 148]
	ldr	w0, [x20, 40]
	str	w0, [x29, 152]
	ldr	w0, [x21, 32]
	str	w0, [x29, 156]
	ldr	w0, [x21, 36]
	str	w0, [x29, 160]
	ldr	w0, [x21, 40]
	str	w0, [x29, 164]
	ldr	w0, [x19, 32]
	str	w0, [x29, 168]
	ldr	w0, [x19, 36]
	str	w0, [x29, 172]
	ldr	w0, [x19, 40]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 32]
	ldr	w0, [x20, 36]
	str	w0, [x29, 144]
	ldr	w0, [x20, 40]
	str	w0, [x29, 148]
	ldr	w0, [x20, 44]
	str	w0, [x29, 152]
	ldr	w0, [x21, 36]
	str	w0, [x29, 156]
	ldr	w0, [x21, 40]
	str	w0, [x29, 160]
	ldr	w0, [x21, 44]
	str	w0, [x29, 164]
	ldr	w0, [x19, 36]
	str	w0, [x29, 168]
	ldr	w0, [x19, 40]
	str	w0, [x29, 172]
	ldr	w0, [x19, 44]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 36]
	ldr	w0, [x20, 40]
	str	w0, [x29, 144]
	ldr	w0, [x20, 44]
	str	w0, [x29, 148]
	ldr	w0, [x20, 48]
	str	w0, [x29, 152]
	ldr	w0, [x21, 40]
	str	w0, [x29, 156]
	ldr	w0, [x21, 44]
	str	w0, [x29, 160]
	ldr	w0, [x21, 48]
	str	w0, [x29, 164]
	ldr	w0, [x19, 40]
	str	w0, [x29, 168]
	ldr	w0, [x19, 44]
	str	w0, [x29, 172]
	ldr	w0, [x19, 48]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 40]
	ldr	w0, [x20, 44]
	str	w0, [x29, 144]
	ldr	w0, [x20, 48]
	str	w0, [x29, 148]
	ldr	w0, [x20, 52]
	str	w0, [x29, 152]
	ldr	w0, [x21, 44]
	str	w0, [x29, 156]
	ldr	w0, [x21, 48]
	str	w0, [x29, 160]
	ldr	w0, [x21, 52]
	str	w0, [x29, 164]
	ldr	w0, [x19, 44]
	str	w0, [x29, 168]
	ldr	w0, [x19, 48]
	str	w0, [x29, 172]
	ldr	w0, [x19, 52]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 44]
	ldr	w0, [x20, 48]
	str	w0, [x29, 144]
	ldr	w0, [x20, 52]
	str	w0, [x29, 148]
	ldr	w0, [x20, 56]
	str	w0, [x29, 152]
	ldr	w0, [x21, 48]
	str	w0, [x29, 156]
	ldr	w0, [x21, 52]
	str	w0, [x29, 160]
	ldr	w0, [x21, 56]
	str	w0, [x29, 164]
	ldr	w0, [x19, 48]
	str	w0, [x29, 168]
	ldr	w0, [x19, 52]
	str	w0, [x29, 172]
	ldr	w0, [x19, 56]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 48]
	ldr	w0, [x20, 52]
	str	w0, [x29, 144]
	ldr	w0, [x20, 56]
	str	w0, [x29, 148]
	ldr	w0, [x20, 60]
	str	w0, [x29, 152]
	ldr	w0, [x21, 52]
	str	w0, [x29, 156]
	ldr	w0, [x21, 56]
	str	w0, [x29, 160]
	ldr	w0, [x21, 60]
	str	w0, [x29, 164]
	ldr	w0, [x19, 52]
	str	w0, [x29, 168]
	ldr	w0, [x19, 56]
	str	w0, [x29, 172]
	ldr	w0, [x19, 60]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 52]
	ldr	w0, [x20, 56]
	str	w0, [x29, 144]
	ldr	w0, [x20, 60]
	str	w0, [x29, 148]
	ldr	w0, [x20, 64]
	str	w0, [x29, 152]
	ldr	w0, [x21, 56]
	str	w0, [x29, 156]
	ldr	w0, [x21, 60]
	str	w0, [x29, 160]
	ldr	w0, [x21, 64]
	str	w0, [x29, 164]
	ldr	w0, [x19, 56]
	str	w0, [x29, 168]
	ldr	w0, [x19, 60]
	str	w0, [x29, 172]
	ldr	w0, [x19, 64]
	str	w0, [x29, 176]
	mov	w1, w23
	mov	x0, x24
	bl	_Z13insertionSortPii
	ldr	w0, [x29, 160]
	str	w0, [x22, 56]
	add	x20, x20, 4
	add	x21, x21, 4
	add	x19, x19, 4
	add	x22, x22, 4
	ldr	w0, [x29, 104]
	cmp	w0, w25
	bge	.L25
.L24:
	add	w26, w26, 1
	ldr	w0, [x29, 100]
	cmp	w0, w26
	bge	.L21
	ldp	x26, x27, [x29, 72]
	.cfi_restore 27
	.cfi_restore 26
	ldr	x28, [x29, 88]
	.cfi_restore 28
.L16:
	add	x0, x29, 576
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev
	b	.L50
.L51:
	add	w1, w23, 1
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 2
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 3
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 4
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 5
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 6
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 7
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 8
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 9
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 10
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 11
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 12
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 13
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w1, w23, 14
	add	x1, x20, x1, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
	add	w23, w23, 15
	ldr	w0, [x29, 104]
	cmp	w0, w23
	blt	.L19
.L22:
	add	x1, x20, x23, sxtw
	add	x1, x21, x1, lsl 2
	mov	x0, x22
	bl	_ZNSirsERi
.LEHE3:
	b	.L51
.L19:
	add	w24, w24, 1
	ldr	w0, [x29, 100]
	cmp	w0, w24
	blt	.L52
.L17:
	ldr	w0, [x29, 104]
	cmp	w0, 0
	ble	.L19
	sxtw	x0, w24
	lsl	x20, x0, 5
	sub	x20, x20, x0
	add	x20, x0, x20, lsl 2
	lsl	x20, x20, 4
	mov	w23, 1
	b	.L22
.L50:
	mov	w2, 48
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	add	x0, x29, 576
.LEHB4:
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	mov	x2, 2
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	add	x0, x29, 576
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x0, x29, 576
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w1, [x29, 104]
	add	x0, x29, 576
	bl	_ZNSolsEi
	mov	x19, x0
	mov	x2, 1
	adrp	x1, .LC9
	add	x1, x1, :lo12:.LC9
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	ldr	w1, [x29, 100]
	mov	x0, x19
	bl	_ZNSolsEi
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	x2, 3
	adrp	x1, .LC10
	add	x1, x1, :lo12:.LC10
	add	x0, x29, 576
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	x0, x29, 576
	bl	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	w0, [x29, 100]
	cmp	w0, 0
	ble	.L26
	mov	w22, 1
	adrp	x23, arr
	add	x23, x23, :lo12:arr
	adrp	x21, .LC9
	add	x21, x21, :lo12:.LC9
	b	.L29
.L53:
	mov	x2, x25
	mov	x1, x21
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	add	w20, w20, 1
	add	x19, x19, 4
	ldr	w0, [x29, 104]
	cmp	w0, w20
	blt	.L27
.L28:
	ldr	w1, [x19]
	mov	x0, x24
	bl	_ZNSolsEi
	b	.L53
.L27:
	add	w22, w22, 1
	ldr	w0, [x29, 100]
	cmp	w0, w22
	blt	.L26
.L29:
	ldr	w0, [x29, 104]
	cmp	w0, 0
	ble	.L27
	sxtw	x0, w22
	lsl	x19, x0, 5
	sub	x19, x19, x0
	add	x19, x0, x19, lsl 2
	add	x19, x23, x19, lsl 6
	add	x19, x19, 4
	mov	w20, 1
	add	x24, x29, 576
	mov	x25, 1
	b	.L28
.L26:
	add	x0, x29, 576
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv
	add	x0, x29, 1096
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE4:
	add	x0, x29, 576
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	ldr	x0, [x29, 112]
	add	x1, x29, 128
	cmp	x0, x1
	beq	.L30
	bl	_ZdlPv
.L30:
	add	x0, x29, 184
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
	add	x0, x29, 1096
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	w0, 0
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [x29, 1624]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cbnz	x1, .L54
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp]
	add	sp, sp, 1632
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 25
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
.L54:
	.cfi_restore_state
	stp	x26, x27, [x29, 72]
	.cfi_remember_state
	.cfi_offset 27, -1552
	.cfi_offset 26, -1560
	str	x28, [x29, 88]
	.cfi_offset 28, -1544
	bl	__stack_chk_fail
.L40:
	.cfi_restore_state
	mov	x19, x0
	add	x0, x29, 576
	bl	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.L32:
	ldr	x0, [x29, 112]
	add	x1, x29, 128
	cmp	x0, x1
	beq	.L34
	bl	_ZdlPv
.L34:
	add	x0, x29, 184
	bl	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev
.L35:
	stp	x26, x27, [x29, 72]
	.cfi_remember_state
	.cfi_offset 27, -1552
	.cfi_offset 26, -1560
	str	x28, [x29, 88]
	.cfi_offset 28, -1544
	add	x0, x29, 1096
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	x0, x19
.LEHB5:
	bl	_Unwind_Resume
.LEHE5:
.L39:
	.cfi_restore_state
	mov	x19, x0
	b	.L32
.L38:
	mov	x19, x0
	b	.L34
.L37:
	mov	x19, x0
	b	.L35
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
	.uleb128 .L37-.LFB1735
	.uleb128 0
	.uleb128 .LEHB2-.LFB1735
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L38-.LFB1735
	.uleb128 0
	.uleb128 .LEHB3-.LFB1735
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L39-.LFB1735
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
	.text
	.size	main, .-main
	.align	2
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
	adrp	x2, __dso_handle
	add	x2, x2, :lo12:__dso_handle
	mov	x1, x19
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	ldr	x0, [x0, #:got_lo12:_ZNSt8ios_base4InitD1Ev]
	bl	__cxa_atexit
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
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
	.string	""
	.zero	7
.LC2:
	.string	"P2"
	.zero	5
.LC3:
	.string	"Version error"
	.zero	2
.LC4:
	.string	"Version : "
	.zero	5
.LC5:
	.string	" columns and "
	.zero	2
.LC6:
	.string	" rows"
	.zero	2
.LC7:
	.string	" Maximium Intesity "
	.zero	4
.LC8:
	.string	"Medianfilter.pnm"
	.zero	7
.LC9:
	.string	" "
	.zero	6
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
