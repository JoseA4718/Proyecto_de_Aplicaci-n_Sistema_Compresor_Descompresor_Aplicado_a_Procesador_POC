	.file	"list.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	addList
	.type	addList, @function
addList:
.LFB22:
	.file 1 "../olden/health/src/list.c"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 15 0
	testq	%rdi, %rdi
	jne	.L3
	jmp	.L9
.LVL1:
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rax, %rbx
.LVL2:
.L3:
	.loc 1 17 0
	movq	(%rbx), %rax
.LVL3:
	.loc 1 15 0
	testq	%rax, %rax
	jne	.L5
.LVL4:
.L2:
	.loc 1 19 0
	movl	$24, %edi
	call	malloc@PLT
.LVL5:
	.loc 1 20 0
	movq	%rbp, 8(%rax)
	.loc 1 21 0
	movq	$0, (%rax)
	.loc 1 22 0
	movq	%rbx, 16(%rax)
	.loc 1 23 0
	movq	%rax, (%rbx)
	.loc 1 24 0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL6:
	ret
.LVL7:
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	.loc 1 15 0
	xorl	%ebx, %ebx
.LVL8:
	jmp	.L2
	.cfi_endproc
.LFE22:
	.size	addList, .-addList
	.p2align 4,,15
	.globl	removeList
	.type	removeList, @function
removeList:
.LFB23:
	.loc 1 26 0
	.cfi_startproc
.LVL9:
	.loc 1 31 0
	cmpq	%rsi, 8(%rdi)
	je	.L11
.LVL10:
	.p2align 4,,10
	.p2align 3
.L12:
	.loc 1 32 0
	movq	(%rdi), %rdi
.LVL11:
	.loc 1 31 0
	cmpq	8(%rdi), %rsi
	jne	.L12
.LVL12:
.L11:
	.loc 1 37 0
	movq	(%rdi), %rax
	.loc 1 36 0
	movq	16(%rdi), %rdx
.LVL13:
	.loc 1 38 0
	movq	%rax, (%rdx)
	.loc 1 39 0
	movq	(%rdi), %rax
.LVL14:
	testq	%rax, %rax
	je	.L10
.LVL15:
	.loc 1 42 0
	movq	%rdx, 16(%rax)
.LVL16:
.L10:
	.loc 1 45 0
	rep ret
	.cfi_endproc
.LFE23:
	.size	removeList, .-removeList
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "../olden/health/src/health.h"
	.file 7 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x505
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF79
	.byte	0xc
	.long	.LASF80
	.long	.LASF81
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF40
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x215
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xfb
	.long	0x88
	.byte	0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x88
	.byte	0x10
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x88
	.byte	0x18
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x88
	.byte	0x20
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x88
	.byte	0x28
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x88
	.byte	0x30
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x88
	.byte	0x38
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x88
	.byte	0x40
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x104
	.long	0x88
	.byte	0x48
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x88
	.byte	0x50
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x88
	.byte	0x58
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x108
	.long	0x24d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x10a
	.long	0x253
	.byte	0x68
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x259
	.byte	0x83
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x11c
	.long	0x269
	.byte	0x88
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x12d
	.long	0x86
	.byte	0x98
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12e
	.long	0x86
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x12f
	.long	0x86
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x130
	.long	0x86
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x26f
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF82
	.byte	0x4
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF41
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x24d
	.uleb128 0x8
	.long	.LASF42
	.byte	0x4
	.byte	0xa1
	.long	0x24d
	.byte	0
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x253
	.byte	0x8
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21c
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0xb
	.long	0x8e
	.long	0x269
	.uleb128 0xc
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x215
	.uleb128 0xb
	.long	0x8e
	.long	0x27f
	.uleb128 0xc
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF83
	.uleb128 0xe
	.long	.LASF45
	.byte	0x4
	.value	0x13f
	.long	0x27f
	.uleb128 0xe
	.long	.LASF46
	.byte	0x4
	.value	0x140
	.long	0x27f
	.uleb128 0xe
	.long	.LASF47
	.byte	0x4
	.value	0x141
	.long	0x27f
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.byte	0x87
	.long	0x253
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.byte	0x88
	.long	0x253
	.uleb128 0xf
	.long	.LASF50
	.byte	0x5
	.byte	0x89
	.long	0x253
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF51
	.uleb128 0xf
	.long	.LASF52
	.byte	0x6
	.byte	0x17
	.long	0x62
	.uleb128 0xf
	.long	.LASF53
	.byte	0x6
	.byte	0x18
	.long	0x69
	.uleb128 0xf
	.long	.LASF54
	.byte	0x6
	.byte	0x19
	.long	0x2c9
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF55
	.uleb128 0x7
	.long	.LASF56
	.byte	0x18
	.byte	0x6
	.byte	0x21
	.long	0x335
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x22
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x23
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x24
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x25
	.long	0x38a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF61
	.byte	0xc0
	.byte	0x6
	.byte	0x42
	.long	0x38a
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x44
	.long	0x42d
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.byte	0x45
	.long	0x38a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x46
	.long	0x390
	.byte	0x28
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x47
	.long	0x3cd
	.byte	0x40
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x48
	.long	0x62
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x49
	.long	0x2c9
	.byte	0xb8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x335
	.uleb128 0x7
	.long	.LASF67
	.byte	0x18
	.byte	0x6
	.byte	0x28
	.long	0x3c1
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x29
	.long	0x3c1
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0x2a
	.long	0x3c7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.byte	0x2b
	.long	0x3c1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x390
	.uleb128 0x6
	.byte	0x8
	.long	0x2f8
	.uleb128 0x7
	.long	.LASF69
	.byte	0x70
	.byte	0x6
	.byte	0x2e
	.long	0x42d
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.byte	0x30
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0x31
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0x32
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0x33
	.long	0x390
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0x34
	.long	0x390
	.byte	0x28
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0x35
	.long	0x390
	.byte	0x40
	.uleb128 0x10
	.string	"up"
	.byte	0x6
	.byte	0x36
	.long	0x390
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	0x38a
	.long	0x43d
	.uleb128 0xc
	.long	0x38
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.long	.LASF77
	.byte	0x1
	.byte	0x1a
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a0
	.uleb128 0x12
	.long	.LASF76
	.byte	0x1
	.byte	0x1a
	.long	0x3c1
	.long	.LLST3
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x1a
	.long	0x3c7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"l1"
	.byte	0x1
	.byte	0x1b
	.long	0x3c1
	.long	.LLST4
	.uleb128 0x14
	.string	"l2"
	.byte	0x1
	.byte	0x1b
	.long	0x3c1
	.long	.LLST5
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x1c
	.long	0x3c7
	.long	.LLST6
	.byte	0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x1
	.byte	0xc
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fc
	.uleb128 0x12
	.long	.LASF76
	.byte	0x1
	.byte	0xc
	.long	0x3c1
	.long	.LLST0
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0xc
	.long	0x3c7
	.long	.LLST1
	.uleb128 0x14
	.string	"b"
	.byte	0x1
	.byte	0xd
	.long	0x3c1
	.long	.LLST2
	.uleb128 0x15
	.quad	.LVL5
	.long	0x4fc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF84
	.long	.LASF84
	.byte	0x7
	.value	0x21b
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
	.uleb128 0x3
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL11-.Ltext0
	.quad	.LFE23-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x2
	.byte	0x71
	.sleb128 0
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x23
	.uleb128 0x8
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL8-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL5-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL5-1-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 8
	.quad	.LVL7-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x53
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
.LASF19:
	.string	"_IO_buf_end"
.LASF62:
	.string	"forward"
.LASF60:
	.string	"home_village"
.LASF27:
	.string	"_old_offset"
.LASF64:
	.string	"returned"
.LASF22:
	.string	"_IO_save_end"
.LASF65:
	.string	"hosp"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF66:
	.string	"label"
.LASF57:
	.string	"hosps_visited"
.LASF82:
	.string	"_IO_lock_t"
.LASF32:
	.string	"_offset"
.LASF68:
	.string	"patient"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF18:
	.string	"_IO_buf_base"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF76:
	.string	"list"
.LASF78:
	.string	"addList"
.LASF74:
	.string	"assess"
.LASF61:
	.string	"Village"
.LASF71:
	.string	"free_personnel"
.LASF55:
	.string	"float"
.LASF50:
	.string	"stderr"
.LASF51:
	.string	"long long int"
.LASF84:
	.string	"malloc"
.LASF31:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF67:
	.string	"List"
.LASF28:
	.string	"_cur_column"
.LASF47:
	.string	"_IO_2_1_stderr_"
.LASF83:
	.string	"_IO_FILE_plus"
.LASF44:
	.string	"_pos"
.LASF75:
	.string	"inside"
.LASF43:
	.string	"_sbuf"
.LASF40:
	.string	"_IO_FILE"
.LASF59:
	.string	"time_left"
.LASF1:
	.string	"unsigned char"
.LASF79:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF70:
	.string	"personnel"
.LASF77:
	.string	"removeList"
.LASF4:
	.string	"signed char"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF15:
	.string	"_IO_write_base"
.LASF39:
	.string	"_unused2"
.LASF12:
	.string	"_IO_read_ptr"
.LASF52:
	.string	"max_level"
.LASF2:
	.string	"short unsigned int"
.LASF69:
	.string	"Hosp"
.LASF10:
	.string	"char"
.LASF54:
	.string	"seed"
.LASF53:
	.string	"max_time"
.LASF42:
	.string	"_next"
.LASF33:
	.string	"__pad1"
.LASF34:
	.string	"__pad2"
.LASF35:
	.string	"__pad3"
.LASF36:
	.string	"__pad4"
.LASF37:
	.string	"__pad5"
.LASF63:
	.string	"back"
.LASF72:
	.string	"num_waiting_patients"
.LASF0:
	.string	"long unsigned int"
.LASF80:
	.string	"../olden/health/src/list.c"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF56:
	.string	"Patient"
.LASF8:
	.string	"__off_t"
.LASF24:
	.string	"_chain"
.LASF21:
	.string	"_IO_backup_base"
.LASF48:
	.string	"stdin"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF29:
	.string	"_vtable_offset"
.LASF58:
	.string	"time"
.LASF20:
	.string	"_IO_save_base"
.LASF73:
	.string	"waiting"
.LASF25:
	.string	"_fileno"
.LASF49:
	.string	"stdout"
.LASF46:
	.string	"_IO_2_1_stdout_"
.LASF81:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
