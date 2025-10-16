	.file	"build.c"
	.text
.Ltext0:
	.p2align 4,,15
	.type	median.isra.0, @function
median.isra.0:
.LFB25:
	.file 1 "../olden/tsp/src/build.c"
	.loc 1 48 0
	.cfi_startproc
.LVL0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 52 0
	xorl	%eax, %eax
	.loc 1 48 0
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm1, 16(%rsp)
	.loc 1 52 0
	call	drand48@PLT
.LVL1:
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
.LVL2:
	.loc 1 53 0
	ucomisd	.LC0(%rip), %xmm0
	ja	.L9
	.loc 1 57 0
	mulsd	.LC1(%rip), %xmm0
.LVL3:
	movsd	.LC3(%rip), %xmm1
	movapd	%xmm1, %xmm3
	movsd	%xmm1, 24(%rsp)
	divsd	.LC2(%rip), %xmm0
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	call	log@PLT
.LVL4:
	xorpd	.LC5(%rip), %xmm0
	movsd	24(%rsp), %xmm1
	divsd	.LC4(%rip), %xmm0
.LVL5:
.L4:
	.loc 1 60 0
	addsd	%xmm1, %xmm0
.LVL6:
	movsd	8(%rsp), %xmm2
	movsd	16(%rsp), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	.LC0(%rip), %xmm0
.LVL7:
	.loc 1 63 0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	.loc 1 61 0
	addsd	%xmm2, %xmm0
.LVL8:
	.loc 1 63 0
	ret
.LVL9:
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	.loc 1 54 0
	subsd	.LC0(%rip), %xmm0
.LVL10:
	movsd	.LC3(%rip), %xmm1
	movapd	%xmm1, %xmm4
	movsd	%xmm1, 24(%rsp)
	mulsd	.LC1(%rip), %xmm0
	divsd	.LC2(%rip), %xmm0
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	call	log@PLT
.LVL11:
	movsd	24(%rsp), %xmm1
	divsd	.LC4(%rip), %xmm0
.LVL12:
	jmp	.L4
	.cfi_endproc
.LFE25:
	.size	median.isra.0, .-median.isra.0
	.p2align 4,,15
	.globl	build_tree
	.type	build_tree, @function
build_tree:
.LFB24:
	.loc 1 77 0
	.cfi_startproc
.LVL13:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.loc 1 84 0
	testl	%edi, %edi
	je	.L14
	movl	%ecx, %ebp
	movl	%edi, %r12d
	.loc 1 86 0
	movl	$56, %edi
.LVL14:
	movl	%edx, %r14d
	movl	%esi, %r15d
	movsd	%xmm3, 24(%rsp)
	movsd	%xmm2, 16(%rsp)
	movl	%r12d, %r13d
	movsd	%xmm1, 8(%rsp)
	shrl	$31, %r13d
	movsd	%xmm0, (%rsp)
	addl	%r12d, %r13d
	call	malloc@PLT
.LVL15:
	movl	%ebp, %ecx
	sarl	%r13d
	movq	%rax, %rbx
.LVL16:
	shrl	$31, %ecx
	addl	%ecx, %ebp
.LVL17:
	sarl	%ebp
	.loc 1 88 0
	testl	%r15d, %r15d
	leal	(%r14,%rbp), %edx
	movl	%edx, 44(%rsp)
	jne	.L16
.LVL18:
	.loc 1 104 0
	movsd	24(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	call	median.isra.0
.LVL19:
	.loc 1 106 0
	movl	44(%rsp), %edx
	movapd	%xmm0, %xmm3
	movsd	%xmm0, 32(%rsp)
	movl	%ebp, %ecx
	movl	$1, %esi
	movsd	16(%rsp), %xmm2
	movl	%r13d, %edi
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
.LVL20:
	call	build_tree
.LVL21:
	.loc 1 107 0
	movsd	32(%rsp), %xmm4
	movl	%ebp, %ecx
	movsd	8(%rsp), %xmm1
	movl	%r14d, %edx
	movapd	%xmm4, %xmm2
	movl	$1, %esi
	movsd	(%rsp), %xmm0
	movl	%r13d, %edi
	movsd	24(%rsp), %xmm3
	.loc 1 106 0
	movq	%rax, 24(%rbx)
	.loc 1 107 0
	movsd	%xmm4, 16(%rsp)
.LVL22:
	call	build_tree
.LVL23:
	.loc 1 113 0
	movsd	16(%rsp), %xmm4
	.loc 1 107 0
	movq	%rax, 32(%rbx)
.LBB6:
.LBB7:
	.loc 1 69 0
	xorl	%eax, %eax
.LBE7:
.LBE6:
	.loc 1 113 0
	movsd	%xmm4, 16(%rbx)
.LVL24:
.LBB9:
.LBB8:
	.loc 1 69 0
	call	drand48@PLT
.LVL25:
	pxor	%xmm1, %xmm1
	.loc 1 70 0
	movsd	(%rsp), %xmm6
	movsd	8(%rsp), %xmm0
	.loc 1 69 0
	cvtsi2sd	%eax, %xmm1
.LVL26:
	.loc 1 70 0
	subsd	%xmm6, %xmm0
	mulsd	%xmm1, %xmm0
	.loc 1 71 0
	addsd	%xmm6, %xmm0
.LBE8:
.LBE9:
	.loc 1 114 0
	movsd	%xmm0, 8(%rbx)
.LVL27:
.L13:
	.loc 1 116 0
	movl	%r12d, (%rbx)
	.loc 1 117 0
	movq	$0, 40(%rbx)
	.loc 1 118 0
	movq	$0, 48(%rbx)
.LVL28:
.L10:
	.loc 1 124 0
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL29:
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
	.loc 1 90 0
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	median.isra.0
.LVL30:
	.loc 1 92 0
	movl	44(%rsp), %edx
	movapd	%xmm0, %xmm1
	movsd	24(%rsp), %xmm3
	movl	%ebp, %ecx
	movsd	16(%rsp), %xmm2
	xorl	%esi, %esi
	movsd	%xmm0, 32(%rsp)
	movl	%r13d, %edi
	movsd	(%rsp), %xmm0
.LVL31:
	call	build_tree
.LVL32:
	.loc 1 93 0
	movsd	32(%rsp), %xmm4
	movl	%ebp, %ecx
	movsd	8(%rsp), %xmm1
	movl	%r14d, %edx
	movapd	%xmm4, %xmm0
	xorl	%esi, %esi
	movsd	24(%rsp), %xmm3
	movl	%r13d, %edi
	movsd	16(%rsp), %xmm2
	.loc 1 92 0
	movq	%rax, 24(%rbx)
	.loc 1 93 0
	movsd	%xmm4, (%rsp)
.LVL33:
	call	build_tree
.LVL34:
	.loc 1 99 0
	movsd	(%rsp), %xmm4
	.loc 1 93 0
	movq	%rax, 32(%rbx)
.LBB10:
.LBB11:
	.loc 1 69 0
	xorl	%eax, %eax
.LBE11:
.LBE10:
	.loc 1 99 0
	movsd	%xmm4, 8(%rbx)
.LVL35:
.LBB13:
.LBB12:
	.loc 1 69 0
	call	drand48@PLT
.LVL36:
	pxor	%xmm1, %xmm1
	.loc 1 70 0
	movsd	16(%rsp), %xmm5
	movsd	24(%rsp), %xmm0
	.loc 1 69 0
	cvtsi2sd	%eax, %xmm1
.LVL37:
	.loc 1 70 0
	subsd	%xmm5, %xmm0
	mulsd	%xmm1, %xmm0
	.loc 1 71 0
	addsd	%xmm5, %xmm0
.LBE12:
.LBE13:
	.loc 1 100 0
	movsd	%xmm0, 16(%rbx)
	jmp	.L13
.LVL38:
	.p2align 4,,10
	.p2align 3
.L14:
	.loc 1 84 0
	xorl	%ebx, %ebx
	jmp	.L10
	.cfi_endproc
.LFE24:
	.size	build_tree, .-build_tree
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.align 8
.LC1:
	.long	1423146138
	.long	1091821070
	.align 8
.LC2:
	.long	1423146138
	.long	1090772502
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	1076363264
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "../olden/tsp/src/tsp.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x77a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF73
	.byte	0xc
	.long	.LASF74
	.long	.LASF75
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
	.long	.LASF76
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
	.long	.LASF77
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF52
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF53
	.uleb128 0xf
	.long	.LASF54
	.byte	0x6
	.byte	0x5
	.long	0x69
	.uleb128 0xf
	.long	.LASF55
	.byte	0x6
	.byte	0x5
	.long	0x69
	.uleb128 0xf
	.long	.LASF56
	.byte	0x6
	.byte	0x8
	.long	0x69
	.uleb128 0x7
	.long	.LASF57
	.byte	0x38
	.byte	0x6
	.byte	0x10
	.long	0x35b
	.uleb128 0x10
	.string	"sz"
	.byte	0x6
	.byte	0x11
	.long	0x69
	.byte	0
	.uleb128 0x10
	.string	"x"
	.byte	0x6
	.byte	0x12
	.long	0x2d
	.byte	0x8
	.uleb128 0x10
	.string	"y"
	.byte	0x6
	.byte	0x12
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x13
	.long	0x35b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x13
	.long	0x35b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x15
	.long	0x35b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x15
	.long	0x35b
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ff
	.uleb128 0x3
	.long	.LASF62
	.byte	0x6
	.byte	0x1a
	.long	0x35b
	.uleb128 0x11
	.long	.LASF78
	.byte	0x1
	.byte	0x4c
	.long	0x361
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x658
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x4c
	.long	0x69
	.long	.LLST4
	.uleb128 0x12
	.string	"dir"
	.byte	0x1
	.byte	0x4c
	.long	0x69
	.long	.LLST5
	.uleb128 0x12
	.string	"lo"
	.byte	0x1
	.byte	0x4c
	.long	0x69
	.long	.LLST6
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x4c
	.long	0x69
	.long	.LLST7
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x4c
	.long	0x2d
	.long	.LLST8
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.byte	0x4d
	.long	0x2d
	.long	.LLST9
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x4d
	.long	0x2d
	.long	.LLST10
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x4d
	.long	0x2d
	.long	.LLST11
	.uleb128 0x14
	.string	"med"
	.byte	0x1
	.byte	0x4e
	.long	0x2d
	.long	.LLST12
	.uleb128 0x14
	.string	"t"
	.byte	0x1
	.byte	0x4f
	.long	0x361
	.long	.LLST13
	.uleb128 0x15
	.long	0x658
	.quad	.LBB6
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x72
	.long	0x460
	.uleb128 0x16
	.long	0x673
	.long	.LLST14
	.uleb128 0x16
	.long	0x668
	.long	.LLST15
	.uleb128 0x17
	.long	.Ldebug_ranges0+0
	.uleb128 0x18
	.long	0x67e
	.uleb128 0x19
	.quad	.LVL25
	.long	0x75b
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x658
	.quad	.LBB10
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x64
	.long	0x4a2
	.uleb128 0x16
	.long	0x673
	.long	.LLST16
	.uleb128 0x16
	.long	0x668
	.long	.LLST17
	.uleb128 0x17
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x18
	.long	0x67e
	.uleb128 0x19
	.quad	.LVL36
	.long	0x75b
	.byte	0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL15
	.long	0x766
	.long	0x4ba
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x1a
	.quad	.LVL19
	.long	0x6e8
	.long	0x4e8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1c
	.long	0x6bd
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL21
	.long	0x36c
	.long	0x53b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -104
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x6
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x6
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x1a
	.quad	.LVL23
	.long	0x36c
	.long	0x58b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -104
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x6
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x6
	.byte	0x91
	.sleb128 -88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x1a
	.quad	.LVL30
	.long	0x6e8
	.long	0x5b8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -104
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1c
	.long	0x6bd
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL32
	.long	0x36c
	.long	0x60b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -80
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x6
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x6
	.byte	0x91
	.sleb128 -88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x1d
	.quad	.LVL34
	.long	0x36c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -104
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x6
	.byte	0x91
	.sleb128 -96
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x6
	.byte	0x91
	.sleb128 -88
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x1
	.byte	0x42
	.long	0x2d
	.byte	0x1
	.long	0x697
	.uleb128 0x1f
	.string	"min"
	.byte	0x1
	.byte	0x42
	.long	0x2d
	.uleb128 0x1f
	.string	"max"
	.byte	0x1
	.byte	0x42
	.long	0x2d
	.uleb128 0x20
	.long	.LASF70
	.byte	0x1
	.byte	0x43
	.long	0x2d
	.uleb128 0x21
	.long	.LASF71
	.byte	0x1
	.byte	0x34
	.long	0x69
	.uleb128 0x22
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF69
	.byte	0x1
	.byte	0x30
	.long	0x2d
	.byte	0x1
	.long	0x6e8
	.uleb128 0x1f
	.string	"min"
	.byte	0x1
	.byte	0x30
	.long	0x2d
	.uleb128 0x1f
	.string	"max"
	.byte	0x1
	.byte	0x30
	.long	0x2d
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.byte	0x30
	.long	0x69
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.byte	0x31
	.long	0x2d
	.uleb128 0x20
	.long	.LASF70
	.byte	0x1
	.byte	0x32
	.long	0x2d
	.uleb128 0x21
	.long	.LASF71
	.byte	0x1
	.byte	0x34
	.long	0x69
	.uleb128 0x22
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x697
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x75b
	.uleb128 0x16
	.long	0x6a7
	.long	.LLST0
	.uleb128 0x16
	.long	0x6b2
	.long	.LLST1
	.uleb128 0x25
	.long	0x6bd
	.uleb128 0x6
	.byte	0xfa
	.long	0x6bd
	.byte	0x9f
	.uleb128 0x26
	.long	0x6c6
	.long	.LLST2
	.uleb128 0x26
	.long	0x6cf
	.long	.LLST3
	.uleb128 0x19
	.quad	.LVL1
	.long	0x75b
	.uleb128 0x19
	.quad	.LVL4
	.long	0x772
	.uleb128 0x19
	.quad	.LVL11
	.long	0x772
	.byte	0
	.uleb128 0x27
	.long	.LASF71
	.long	.LASF71
	.byte	0x1
	.byte	0x34
	.uleb128 0x28
	.long	.LASF72
	.long	.LASF72
	.byte	0x7
	.value	0x21b
	.uleb128 0x29
	.string	"log"
	.string	"log"
	.byte	0x8
	.byte	0x68
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
	.uleb128 0x12
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
	.uleb128 0x17
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST4:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL14-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL38-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL15-1-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL18-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL15-1-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL38-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL15-1-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL17-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL15-1-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL27-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL33-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL15-1-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL38-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL15-1-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	.LVL22-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	.LVL38-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-1-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL15-1-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x2d
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL38-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-1-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL21-1-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL32-1-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL16-.Ltext0
	.quad	.LVL19-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL19-1-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL30-1-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL24-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL1-1-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL1-1-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x8
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x22
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL12-.Ltext0
	.quad	.LFE25-.Ltext0
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"_IO_buf_end"
.LASF68:
	.string	"uniform"
.LASF28:
	.string	"_old_offset"
.LASF0:
	.string	"double"
.LASF23:
	.string	"_IO_save_end"
.LASF69:
	.string	"median"
.LASF6:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF72:
	.string	"malloc"
.LASF76:
	.string	"_IO_lock_t"
.LASF33:
	.string	"_offset"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_base"
.LASF70:
	.string	"retval"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF53:
	.string	"float"
.LASF51:
	.string	"stderr"
.LASF52:
	.string	"long long int"
.LASF32:
	.string	"_lock"
.LASF65:
	.string	"max_x"
.LASF67:
	.string	"max_y"
.LASF7:
	.string	"long int"
.LASF29:
	.string	"_cur_column"
.LASF48:
	.string	"_IO_2_1_stderr_"
.LASF57:
	.string	"tree"
.LASF77:
	.string	"_IO_FILE_plus"
.LASF45:
	.string	"_pos"
.LASF44:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_FILE"
.LASF64:
	.string	"min_x"
.LASF55:
	.string	"NDim"
.LASF59:
	.string	"right"
.LASF2:
	.string	"unsigned char"
.LASF73:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF5:
	.string	"signed char"
.LASF60:
	.string	"next"
.LASF46:
	.string	"_IO_2_1_stdin_"
.LASF71:
	.string	"drand48"
.LASF4:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF66:
	.string	"min_y"
.LASF13:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"NumNodes"
.LASF3:
	.string	"short unsigned int"
.LASF62:
	.string	"Tree"
.LASF11:
	.string	"char"
.LASF58:
	.string	"left"
.LASF43:
	.string	"_next"
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
.LASF1:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF9:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF22:
	.string	"_IO_backup_base"
.LASF49:
	.string	"stdin"
.LASF78:
	.string	"build_tree"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF30:
	.string	"_vtable_offset"
.LASF63:
	.string	"num_proc"
.LASF21:
	.string	"_IO_save_base"
.LASF56:
	.string	"flag"
.LASF26:
	.string	"_fileno"
.LASF61:
	.string	"prev"
.LASF50:
	.string	"stdout"
.LASF47:
	.string	"_IO_2_1_stdout_"
.LASF75:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
.LASF74:
	.string	"../olden/tsp/src/build.c"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
