	.file	"em3d.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	compute_nodes
	.type	compute_nodes, @function
compute_nodes:
.LFB22:
	.file 1 "../olden/em3d/src/em3d.c"
	.loc 1 7 0
	.cfi_startproc
.LVL0:
	.loc 1 11 0
	testq	%rdi, %rdi
	je	.L1
.LBB2:
	.loc 1 30 0
	pxor	%xmm4, %xmm4
	.loc 1 39 0
	pxor	%xmm5, %xmm5
	.loc 1 53 0
	pxor	%xmm6, %xmm6
	.p2align 4,,10
	.p2align 3
.L9:
.LVL1:
	.loc 1 22 0
	movl	40(%rdi), %eax
	.loc 1 21 0
	movq	(%rdi), %r11
	.loc 1 22 0
	leal	-1(%rax), %r10d
	.loc 1 21 0
	movsd	(%r11), %xmm2
.LVL2:
	.loc 1 23 0
	testl	%r10d, %r10d
	jle	.L10
	leal	-2(%rax), %r8d
	.loc 1 24 0
	movq	24(%rdi), %rcx
	.loc 1 25 0
	movq	32(%rdi), %r9
	xorl	%eax, %eax
	shrl	%r8d
	movl	%r8d, %esi
	addq	$1, %rsi
	salq	$4, %rsi
.LVL3:
	.p2align 4,,10
	.p2align 3
.L6:
	.loc 1 24 0
	movq	(%rcx,%rax), %rdx
.LVL4:
	.loc 1 25 0
	movsd	(%r9,%rax), %xmm3
.LVL5:
	.loc 1 30 0
	movapd	%xmm4, %xmm1
	.loc 1 27 0
	testq	%rdx, %rdx
	je	.L4
	.loc 1 28 0
	movsd	(%rdx), %xmm1
.LVL6:
.L4:
	.loc 1 32 0
	mulsd	%xmm3, %xmm1
.LVL7:
	.loc 1 33 0
	movq	8(%rcx,%rax), %rdx
.LVL8:
	.loc 1 39 0
	movapd	%xmm5, %xmm0
	.loc 1 36 0
	testq	%rdx, %rdx
	.loc 1 32 0
	subsd	%xmm1, %xmm2
.LVL9:
	.loc 1 36 0
	je	.L5
	.loc 1 37 0
	movsd	(%rdx), %xmm0
.LVL10:
.L5:
	.loc 1 41 0 discriminator 2
	mulsd	%xmm3, %xmm0
.LVL11:
	addq	$16, %rax
	.loc 1 23 0 discriminator 2
	cmpq	%rax, %rsi
	.loc 1 41 0 discriminator 2
	subsd	%xmm0, %xmm2
.LVL12:
	.loc 1 23 0 discriminator 2
	jne	.L6
	leal	2(%r8,%r8), %eax
.LVL13:
.L3:
	.loc 1 46 0
	cmpl	%eax, %r10d
	je	.L20
.LVL14:
.L7:
	.loc 1 58 0
	movq	8(%rdi), %rdi
.LVL15:
	.loc 1 57 0
	movsd	%xmm2, (%r11)
.LBE2:
	.loc 1 11 0
	testq	%rdi, %rdi
	jne	.L9
.LVL16:
.L1:
	.loc 1 60 0
	rep ret
.LVL17:
	.p2align 4,,10
	.p2align 3
.L20:
.LBB3:
	.loc 1 47 0
	movq	24(%rdi), %rax
	movslq	%r10d, %r10
	.loc 1 48 0
	movq	32(%rdi), %rdx
	.loc 1 53 0
	movapd	%xmm6, %xmm0
	.loc 1 47 0
	movq	(%rax,%r10,8), %rax
.LVL18:
	.loc 1 48 0
	movsd	(%rdx,%r10,8), %xmm1
.LVL19:
	.loc 1 50 0
	testq	%rax, %rax
	je	.L8
	.loc 1 51 0
	movsd	(%rax), %xmm0
.LVL20:
.L8:
	.loc 1 55 0
	mulsd	%xmm1, %xmm0
.LVL21:
	subsd	%xmm0, %xmm2
.LVL22:
	jmp	.L7
.LVL23:
	.p2align 4,,10
	.p2align 3
.L10:
	.loc 1 23 0
	xorl	%eax, %eax
	jmp	.L3
.LBE3:
	.cfi_endproc
.LFE22:
	.size	compute_nodes, .-compute_nodes
	.globl	nonlocals
	.bss
	.align 4
	.type	nonlocals, @object
	.size	nonlocals, 4
nonlocals:
	.zero	4
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "../olden/em3d/src/em3d.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x440
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF71
	.byte	0xc
	.long	.LASF72
	.long	.LASF73
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
	.long	.LASF74
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
	.long	.LASF75
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
	.long	0x88
	.uleb128 0xf
	.long	.LASF53
	.byte	0x6
	.byte	0x18
	.long	0x88
	.uleb128 0xf
	.long	.LASF54
	.byte	0x6
	.byte	0x1a
	.long	0x62
	.uleb128 0xf
	.long	.LASF55
	.byte	0x6
	.byte	0x1b
	.long	0x62
	.uleb128 0xf
	.long	.LASF56
	.byte	0x6
	.byte	0x1c
	.long	0x62
	.uleb128 0x7
	.long	.LASF57
	.byte	0x30
	.byte	0x6
	.byte	0x21
	.long	0x368
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x22
	.long	0x368
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x23
	.long	0x375
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x24
	.long	0x37b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x25
	.long	0x381
	.byte	0x18
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x26
	.long	0x368
	.byte	0x20
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.byte	0x27
	.long	0x62
	.byte	0x28
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x28
	.long	0x62
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x36e
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF65
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x6
	.byte	0x8
	.long	0x375
	.uleb128 0x6
	.byte	0x8
	.long	0x368
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x29
	.long	0x307
	.uleb128 0x6
	.byte	0x8
	.long	0x387
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x4
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	nonlocals
	.uleb128 0x11
	.long	.LASF76
	.byte	0x1
	.byte	0x5
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.byte	0x6
	.long	0x392
	.long	.LLST0
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x8
	.long	0x62
	.long	.LLST1
	.uleb128 0x14
	.long	.LASF67
	.byte	0x1
	.byte	0x9
	.long	0x392
	.long	.LLST2
	.uleb128 0x15
	.long	.Ldebug_ranges0+0
	.uleb128 0x14
	.long	.LASF68
	.byte	0x1
	.byte	0xc
	.long	0x36e
	.long	.LLST3
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.byte	0xd
	.long	0x62
	.long	.LLST4
	.uleb128 0x14
	.long	.LASF69
	.byte	0x1
	.byte	0xe
	.long	0x368
	.long	.LLST5
	.uleb128 0x14
	.long	.LASF70
	.byte	0x1
	.byte	0xf
	.long	0x36e
	.long	.LLST6
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0x10
	.long	0x36e
	.long	.LLST7
	.byte	0
	.byte	0
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL15-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL17-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL2-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL17-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL2-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x7
	.byte	0x75
	.sleb128 40
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL4-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.quad	.LVL9-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL18-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL5-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL19-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x61
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"_IO_buf_end"
.LASF56:
	.string	"local_p"
.LASF27:
	.string	"_old_offset"
.LASF65:
	.string	"double"
.LASF72:
	.string	"../olden/em3d/src/em3d.c"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF74:
	.string	"_IO_lock_t"
.LASF32:
	.string	"_offset"
.LASF61:
	.string	"from_values"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF18:
	.string	"_IO_buf_base"
.LASF63:
	.string	"from_count"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF64:
	.string	"from_length"
.LASF54:
	.string	"n_nodes"
.LASF55:
	.string	"d_nodes"
.LASF50:
	.string	"stderr"
.LASF51:
	.string	"long long int"
.LASF67:
	.string	"localnode"
.LASF31:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF28:
	.string	"_cur_column"
.LASF47:
	.string	"_IO_2_1_stderr_"
.LASF75:
	.string	"_IO_FILE_plus"
.LASF44:
	.string	"_pos"
.LASF43:
	.string	"_sbuf"
.LASF40:
	.string	"_IO_FILE"
.LASF70:
	.string	"coeff"
.LASF1:
	.string	"unsigned char"
.LASF71:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF62:
	.string	"coeffs"
.LASF4:
	.string	"signed char"
.LASF59:
	.string	"next"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF57:
	.string	"node_t"
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
.LASF52:
	.string	"min_ptr"
.LASF12:
	.string	"_IO_read_ptr"
.LASF2:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF53:
	.string	"max_ptr"
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
.LASF76:
	.string	"compute_nodes"
.LASF68:
	.string	"cur_value"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF24:
	.string	"_chain"
.LASF66:
	.string	"nonlocals"
.LASF60:
	.string	"to_nodes"
.LASF69:
	.string	"other_value"
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
.LASF20:
	.string	"_IO_save_base"
.LASF25:
	.string	"_fileno"
.LASF77:
	.string	"nodelist"
.LASF58:
	.string	"value"
.LASF49:
	.string	"stdout"
.LASF46:
	.string	"_IO_2_1_stdout_"
.LASF73:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
