	.file	"walksub.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	walksub
	.type	walksub, @function
walksub:
.LFB22:
	.file 1 "../olden/bh/src/walksub.c"
	.loc 1 21 0
	.cfi_startproc
.LVL0:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.loc 1 27 0
	movq	%rsi, %rdi
.LVL1:
	.loc 1 21 0
	movq	%rsi, %rbp
	movl	%edx, %r13d
	subq	$104, %rsp
	.cfi_def_cfa_offset 144
	.loc 1 21 0
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movsd	%xmm1, 8(%rsp)
	.loc 1 27 0
	pushq	200(%rsp)
	.cfi_def_cfa_offset 152
	pushq	200(%rsp)
	.cfi_def_cfa_offset 160
	pushq	200(%rsp)
	.cfi_def_cfa_offset 168
	pushq	200(%rsp)
	.cfi_def_cfa_offset 176
	pushq	200(%rsp)
	.cfi_def_cfa_offset 184
	pushq	200(%rsp)
	.cfi_def_cfa_offset 192
	pushq	200(%rsp)
	.cfi_def_cfa_offset 200
	pushq	200(%rsp)
	.cfi_def_cfa_offset 208
	movsd	%xmm0, 64(%rsp)
	call	subdivp@PLT
.LVL2:
	addq	$64, %rsp
	.cfi_def_cfa_offset 144
.LVL3:
	testw	%ax, %ax
	je	.L2
	leaq	48(%rbp), %rbx
	movsd	(%rsp), %xmm2
	addq	$112, %rbp
.LVL4:
	jmp	.L4
.LVL5:
	.p2align 4,,10
	.p2align 3
.L3:
	addq	$8, %rbx
	.loc 1 28 0 discriminator 2
	cmpq	%rbp, %rbx
	je	.L5
.LVL6:
.L4:
	.loc 1 29 0
	movq	(%rbx), %rsi
.LVL7:
	.loc 1 30 0
	testq	%rsi, %rsi
	je	.L3
	.loc 1 31 0
	movsd	.LC0(%rip), %xmm0
	pushq	200(%rsp)
	.cfi_def_cfa_offset 152
	leal	1(%r13), %edx
	pushq	200(%rsp)
	.cfi_def_cfa_offset 160
	pushq	200(%rsp)
	.cfi_def_cfa_offset 168
	addq	$8, %rbx
	pushq	200(%rsp)
	.cfi_def_cfa_offset 176
	mulsd	%xmm2, %xmm0
	pushq	200(%rsp)
	.cfi_def_cfa_offset 184
	pushq	200(%rsp)
	.cfi_def_cfa_offset 192
	pushq	200(%rsp)
	.cfi_def_cfa_offset 200
	pushq	200(%rsp)
	.cfi_def_cfa_offset 208
	movsd	72(%rsp), %xmm1
	leaq	208(%rsp), %rdi
.LVL8:
	movsd	%xmm2, 64(%rsp)
	call	walksub
.LVL9:
	addq	$64, %rsp
	.cfi_def_cfa_offset 144
	.loc 1 28 0
	cmpq	%rbp, %rbx
	.loc 1 31 0
	movsd	(%rsp), %xmm2
	.loc 1 28 0
	jne	.L4
.LVL10:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 39 0
	movdqu	144(%rsp), %xmm0
	.loc 1 40 0
	movq	%r12, %rax
	movq	88(%rsp), %rcx
	xorq	%fs:40, %rcx
	.loc 1 39 0
	movups	%xmm0, (%r12)
	movdqu	160(%rsp), %xmm0
	movups	%xmm0, 16(%r12)
	movdqu	176(%rsp), %xmm0
	movups	%xmm0, 32(%r12)
	movdqu	192(%rsp), %xmm0
	movups	%xmm0, 48(%r12)
	.loc 1 40 0
	jne	.L14
.LVL11:
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL12:
	ret
.LVL13:
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	.loc 1 34 0
	cmpq	%rbp, 144(%rsp)
	je	.L5
	.loc 1 35 0
	leaq	16(%rsp), %rdi
	pushq	200(%rsp)
	.cfi_def_cfa_offset 152
.LVL14:
	pushq	200(%rsp)
	.cfi_def_cfa_offset 160
	pushq	200(%rsp)
	.cfi_def_cfa_offset 168
	pushq	200(%rsp)
	.cfi_def_cfa_offset 176
	movq	%rbp, %rsi
	pushq	200(%rsp)
	.cfi_def_cfa_offset 184
	pushq	200(%rsp)
	.cfi_def_cfa_offset 192
	pushq	200(%rsp)
	.cfi_def_cfa_offset 200
	pushq	200(%rsp)
	.cfi_def_cfa_offset 208
	call	gravsub@PLT
.LVL15:
	movdqu	80(%rsp), %xmm0
	movups	%xmm0, 208(%rsp)
	movdqu	96(%rsp), %xmm0
	movups	%xmm0, 224(%rsp)
	movdqu	112(%rsp), %xmm0
	movups	%xmm0, 240(%rsp)
	movdqu	128(%rsp), %xmm0
	movups	%xmm0, 256(%rsp)
	addq	$64, %rsp
	.cfi_def_cfa_offset 144
.LVL16:
	jmp	.L5
.LVL17:
.L14:
	.loc 1 40 0
	call	__stack_chk_fail@PLT
.LVL18:
	.cfi_endproc
.LFE22:
	.size	walksub, .-walksub
	.comm	xxxrsize,8,8
	.comm	rmin,24,16
	.comm	root,8,8
	.comm	NumNodes,4,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1070596096
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "../olden/bh/src/defs.h"
	.file 7 "../olden/bh/src/stdinc.h"
	.file 8 "../olden/bh/src/vectmath.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x66a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF84
	.byte	0xc
	.long	.LASF85
	.long	.LASF86
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0xd8
	.long	0x3f
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0x8c
	.long	0x70
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x70
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x21c
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf6
	.long	0x69
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfb
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x104
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x108
	.long	0x254
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10a
	.long	0x25a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10c
	.long	0x69
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x110
	.long	0x69
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x112
	.long	0x77
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x116
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x117
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x118
	.long	0x260
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11c
	.long	0x270
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x125
	.long	0x82
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12d
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x12e
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x132
	.long	0x34
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x133
	.long	0x69
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x135
	.long	0x276
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF87
	.byte	0x4
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x254
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa1
	.long	0x254
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa2
	.long	0x25a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa6
	.long	0x69
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x223
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x270
	.uleb128 0xc
	.long	0x3f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21c
	.uleb128 0xb
	.long	0x95
	.long	0x286
	.uleb128 0xc
	.long	0x3f
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF88
	.uleb128 0xe
	.long	.LASF46
	.byte	0x4
	.value	0x13f
	.long	0x286
	.uleb128 0xe
	.long	.LASF47
	.byte	0x4
	.value	0x140
	.long	0x286
	.uleb128 0xe
	.long	.LASF48
	.byte	0x4
	.value	0x141
	.long	0x286
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.byte	0x87
	.long	0x25a
	.uleb128 0xf
	.long	.LASF50
	.byte	0x5
	.byte	0x88
	.long	0x25a
	.uleb128 0xf
	.long	.LASF51
	.byte	0x5
	.byte	0x89
	.long	0x25a
	.uleb128 0x10
	.long	.LASF52
	.byte	0x6
	.byte	0x14
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	NumNodes
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF53
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x3
	.long	.LASF55
	.byte	0x7
	.byte	0x42
	.long	0x2d
	.uleb128 0x3
	.long	.LASF56
	.byte	0x8
	.byte	0x19
	.long	0x309
	.uleb128 0xb
	.long	0x2f3
	.long	0x319
	.uleb128 0xc
	.long	0x3f
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF57
	.byte	0x30
	.byte	0x6
	.byte	0x3a
	.long	0x362
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x3b
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x3c
	.long	0x2f3
	.byte	0x8
	.uleb128 0x11
	.string	"pos"
	.byte	0x6
	.byte	0x3d
	.long	0x2fe
	.byte	0x10
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x3e
	.long	0x69
	.byte	0x28
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x3f
	.long	0x69
	.byte	0x2c
	.byte	0
	.uleb128 0x3
	.long	.LASF62
	.byte	0x6
	.byte	0x43
	.long	0x36d
	.uleb128 0x6
	.byte	0x8
	.long	0x319
	.uleb128 0x3
	.long	.LASF63
	.byte	0x6
	.byte	0x58
	.long	0x37e
	.uleb128 0x6
	.byte	0x8
	.long	0x384
	.uleb128 0x7
	.long	.LASF64
	.byte	0x90
	.byte	0x6
	.byte	0x5a
	.long	0x415
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x5b
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x5c
	.long	0x2f3
	.byte	0x8
	.uleb128 0x11
	.string	"pos"
	.byte	0x6
	.byte	0x5d
	.long	0x2fe
	.byte	0x10
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x5e
	.long	0x69
	.byte	0x28
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x5f
	.long	0x69
	.byte	0x2c
	.uleb128 0x11
	.string	"vel"
	.byte	0x6
	.byte	0x63
	.long	0x2fe
	.byte	0x30
	.uleb128 0x11
	.string	"acc"
	.byte	0x6
	.byte	0x64
	.long	0x2fe
	.byte	0x48
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x65
	.long	0x2fe
	.byte	0x60
	.uleb128 0x11
	.string	"phi"
	.byte	0x6
	.byte	0x66
	.long	0x2f3
	.byte	0x78
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x67
	.long	0x373
	.byte	0x80
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0x68
	.long	0x373
	.byte	0x88
	.byte	0
	.uleb128 0x3
	.long	.LASF68
	.byte	0x6
	.byte	0x82
	.long	0x420
	.uleb128 0x6
	.byte	0x8
	.long	0x426
	.uleb128 0x7
	.long	.LASF69
	.byte	0x78
	.byte	0x6
	.byte	0x84
	.long	0x487
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x85
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x86
	.long	0x2f3
	.byte	0x8
	.uleb128 0x11
	.string	"pos"
	.byte	0x6
	.byte	0x87
	.long	0x2fe
	.byte	0x10
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x88
	.long	0x69
	.byte	0x28
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x89
	.long	0x69
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.byte	0x8d
	.long	0x487
	.byte	0x30
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x8e
	.long	0x415
	.byte	0x70
	.byte	0
	.uleb128 0xb
	.long	0x362
	.long	0x497
	.uleb128 0xc
	.long	0x3f
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x6
	.byte	0xc3
	.long	0x362
	.uleb128 0x9
	.byte	0x3
	.quad	root
	.uleb128 0x10
	.long	.LASF72
	.byte	0x6
	.byte	0xc9
	.long	0x2fe
	.uleb128 0x9
	.byte	0x3
	.quad	rmin
	.uleb128 0x10
	.long	.LASF73
	.byte	0x6
	.byte	0xcb
	.long	0x2f3
	.uleb128 0x9
	.byte	0x3
	.quad	xxxrsize
	.uleb128 0xf
	.long	.LASF74
	.byte	0x6
	.byte	0xee
	.long	0x69
	.uleb128 0x12
	.byte	0x40
	.byte	0x1
	.byte	0x4
	.long	0x51a
	.uleb128 0x8
	.long	.LASF75
	.byte	0x1
	.byte	0x5
	.long	0x373
	.byte	0
	.uleb128 0x8
	.long	.LASF76
	.byte	0x1
	.byte	0x6
	.long	0x2fe
	.byte	0x8
	.uleb128 0x8
	.long	.LASF77
	.byte	0x1
	.byte	0x7
	.long	0x2f3
	.byte	0x20
	.uleb128 0x8
	.long	.LASF78
	.byte	0x1
	.byte	0x8
	.long	0x2fe
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.long	.LASF79
	.byte	0x1
	.byte	0x9
	.long	0x4e1
	.uleb128 0x13
	.long	.LASF89
	.byte	0x1
	.byte	0x14
	.long	0x51a
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x64e
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x14
	.long	0x362
	.long	.LLST0
	.uleb128 0x14
	.string	"dsq"
	.byte	0x1
	.byte	0x14
	.long	0x2f3
	.long	.LLST1
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.byte	0x14
	.long	0x2f3
	.long	.LLST2
	.uleb128 0x16
	.string	"hg"
	.byte	0x1
	.byte	0x14
	.long	0x51a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF81
	.byte	0x1
	.byte	0x14
	.long	0x69
	.long	.LLST3
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.byte	0x16
	.long	0x69
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x16
	.long	0x69
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.byte	0x17
	.long	0x362
	.long	.LLST4
	.uleb128 0x17
	.string	"tmp"
	.byte	0x1
	.byte	0x18
	.long	0x487
	.uleb128 0x19
	.quad	.LVL2
	.long	0x64e
	.long	0x5e3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -144
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -136
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x19
	.quad	.LVL9
	.long	0x525
	.long	0x621
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x12
	.byte	0x91
	.sleb128 -144
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0x3fd00000
	.byte	0x1e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -136
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 1
	.byte	0
	.uleb128 0x19
	.quad	.LVL15
	.long	0x659
	.long	0x640
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL18
	.long	0x664
	.byte	0
	.uleb128 0x1c
	.long	.LASF82
	.long	.LASF82
	.byte	0x1
	.byte	0x10
	.uleb128 0x1c
	.long	.LASF83
	.long	.LASF83
	.byte	0x1
	.byte	0x12
	.uleb128 0x1d
	.long	.LASF90
	.long	.LASF90
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL4-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x4
	.byte	0x76
	.sleb128 -112
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL17-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -144
	.quad	.LVL3-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL5-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL14-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -144
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL17-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-1-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 -136
	.quad	.LVL9-1-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_chain"
.LASF78:
	.string	"acc0"
.LASF8:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF58:
	.string	"type"
.LASF48:
	.string	"_IO_2_1_stderr_"
.LASF19:
	.string	"_IO_buf_base"
.LASF70:
	.string	"subp"
.LASF56:
	.string	"vector"
.LASF66:
	.string	"next"
.LASF74:
	.string	"nbody"
.LASF86:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
.LASF54:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF7:
	.string	"long int"
.LASF83:
	.string	"gravsub"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF64:
	.string	"bnode"
.LASF0:
	.string	"double"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF77:
	.string	"phi0"
.LASF73:
	.string	"xxxrsize"
.LASF80:
	.string	"tolsq"
.LASF89:
	.string	"walksub"
.LASF59:
	.string	"mass"
.LASF76:
	.string	"pos0"
.LASF42:
	.string	"_IO_marker"
.LASF49:
	.string	"stdin"
.LASF4:
	.string	"unsigned int"
.LASF52:
	.string	"NumNodes"
.LASF1:
	.string	"long unsigned int"
.LASF88:
	.string	"_IO_FILE_plus"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF81:
	.string	"level"
.LASF65:
	.string	"new_acc"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"_IO_save_base"
.LASF79:
	.string	"hgstruct"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF50:
	.string	"stdout"
.LASF46:
	.string	"_IO_2_1_stdin_"
.LASF18:
	.string	"_IO_write_end"
.LASF72:
	.string	"rmin"
.LASF87:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF60:
	.string	"proc"
.LASF53:
	.string	"float"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF62:
	.string	"nodeptr"
.LASF2:
	.string	"unsigned char"
.LASF57:
	.string	"node"
.LASF6:
	.string	"short int"
.LASF30:
	.string	"_vtable_offset"
.LASF47:
	.string	"_IO_2_1_stdout_"
.LASF90:
	.string	"__stack_chk_fail"
.LASF85:
	.string	"../olden/bh/src/walksub.c"
.LASF11:
	.string	"char"
.LASF67:
	.string	"proc_next"
.LASF61:
	.string	"new_proc"
.LASF68:
	.string	"cellptr"
.LASF43:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF84:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF69:
	.string	"cnode"
.LASF40:
	.string	"_unused2"
.LASF51:
	.string	"stderr"
.LASF75:
	.string	"pskip"
.LASF22:
	.string	"_IO_backup_base"
.LASF82:
	.string	"subdivp"
.LASF55:
	.string	"real"
.LASF63:
	.string	"bodyptr"
.LASF16:
	.string	"_IO_write_base"
.LASF71:
	.string	"root"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
