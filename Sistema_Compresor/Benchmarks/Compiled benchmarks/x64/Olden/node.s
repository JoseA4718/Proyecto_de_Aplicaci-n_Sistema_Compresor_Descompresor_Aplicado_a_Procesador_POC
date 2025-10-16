	.file	"node.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	TreeAdd
	.type	TreeAdd, @function
TreeAdd:
.LFB37:
	.file 1 "../olden/treeadd/src/node.c"
	.loc 1 124 0
	.cfi_startproc
.LVL0:
	.loc 1 125 0
	testq	%rsi, %rsi
	jne	.L11
	xorl	%eax, %eax
	.loc 1 164 0
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	.loc 1 124 0
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
.LBB38:
.LBB39:
	.loc 1 154 0
	leal	1(%rdi), %r12d
.LBE39:
.LBE38:
	.loc 1 124 0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
.LVL1:
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
.LVL2:
.LBB41:
.LBB40:
	.loc 1 154 0
	movq	8(%rsi), %rsi
.LVL3:
	movl	%r12d, %edi
.LVL4:
	call	TreeAdd
.LVL5:
	.loc 1 156 0
	movq	16(%rbp), %rsi
	.loc 1 154 0
	movl	%eax, %ebx
.LVL6:
	.loc 1 156 0
	movl	%r12d, %edi
	call	TreeAdd
.LVL7:
	.loc 1 161 0
	addl	%ebx, %eax
.LVL8:
	addl	0(%rbp), %eax
.LVL9:
.LBE40:
.LBE41:
	.loc 1 164 0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL10:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL11:
	ret
	.cfi_endproc
.LFE37:
	.size	TreeAdd, .-TreeAdd
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Treeadd with %d levels on %d processors with %d runs\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"About to enter TreeAlloc"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"olden: allocation time (in ms): %f\n"
	.section	.rodata.str1.1
.LC5:
	.string	"About to enter TreeAdd"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"olden: process time (in ms): %f\n"
	.section	.rodata.str1.1
.LC7:
	.string	"Received result of %d\n"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"olden: total time (in ms): %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB36:
	.loc 1 36 0
	.cfi_startproc
.LVL12:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%edi, %ebp
	.loc 1 42 0
	movl	$4, %edi
.LVL13:
	.loc 1 36 0
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	.loc 1 42 0
	movq	%rsp, %rsi
.LVL14:
	.loc 1 69 0
	leaq	32(%rsp), %r13
	.loc 1 36 0
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	.loc 1 42 0
	call	clock_gettime@PLT
.LVL15:
	.loc 1 50 0
	movq	%r12, %rsi
	movl	%ebp, %edi
	.loc 1 75 0
	leaq	48(%rsp), %r12
.LVL16:
	.loc 1 50 0
	call	dealwithargs@PLT
.LVL17:
.LBB62:
.LBB63:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	NumNodes(%rip), %ecx
	movl	runs(%rip), %r8d
	leaq	.LC0(%rip), %rsi
	movl	%eax, %edx
.LBE63:
.LBE62:
	.loc 1 50 0
	movl	%eax, %ebp
.LVL18:
.LBB65:
.LBB64:
	.loc 2 104 0
	movl	$1, %edi
	xorl	%eax, %eax
.LVL19:
	call	__printf_chk@PLT
.LVL20:
.LBE64:
.LBE65:
.LBB66:
.LBB67:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.LVL21:
.LBE67:
.LBE66:
	.loc 1 69 0
	movq	%r13, %rsi
	movl	$4, %edi
	call	clock_gettime@PLT
.LVL22:
	.loc 1 71 0
	movl	NumNodes(%rip), %edx
	xorl	%esi, %esi
	movl	%ebp, %edi
	call	TreeAlloc@PLT
.LVL23:
	.loc 1 75 0
	movq	%r12, %rsi
	movl	$4, %edi
	.loc 1 71 0
	movq	%rax, %rbp
.LVL24:
	.loc 1 75 0
	call	clock_gettime@PLT
.LVL25:
	.loc 1 77 0
	pxor	%xmm0, %xmm0
	movq	56(%rsp), %rax
	pxor	%xmm1, %xmm1
	subq	40(%rsp), %rax
.LBB68:
.LBB69:
	.loc 2 104 0
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
.LBE69:
.LBE68:
	.loc 1 77 0
	cvtsi2sdq	48(%rsp), %xmm0
	cvtsi2sdq	32(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.LBB72:
.LBB70:
	.loc 2 104 0
	movl	$1, %eax
.LBE70:
.LBE72:
	.loc 1 77 0
	mulsd	.LC2(%rip), %xmm0
	divsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
.LBB73:
.LBB71:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL26:
.LBE71:
.LBE73:
.LBB74:
.LBB75:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.LVL27:
.LBE75:
.LBE74:
	.loc 1 90 0
	movq	%r13, %rsi
	movl	$4, %edi
	call	clock_gettime@PLT
.LVL28:
.LBB76:
	.loc 1 93 0
	movl	runs(%rip), %ecx
	testl	%ecx, %ecx
	jle	.L13
	xorl	%edx, %edx
.LVL29:
	.p2align 4,,10
	.p2align 3
.L15:
.LBB77:
.LBB78:
	.loc 1 126 0
	xorl	%ebx, %ebx
	.loc 1 125 0
	testq	%rbp, %rbp
	je	.L14
.LVL30:
.LBB79:
.LBB80:
	.loc 1 154 0
	movq	8(%rbp), %rsi
	movl	$1, %edi
	call	TreeAdd
.LVL31:
	.loc 1 156 0
	movq	16(%rbp), %rsi
	.loc 1 154 0
	movl	%eax, %ebx
.LVL32:
	.loc 1 156 0
	movl	$1, %edi
	call	TreeAdd
.LVL33:
	.loc 1 161 0
	addl	%eax, %ebx
.LVL34:
	addl	0(%rbp), %ebx
.LVL35:
.L14:
.LBE80:
.LBE79:
.LBE78:
.LBE77:
	.loc 1 93 0
	addl	$1, %edx
.LVL36:
	cmpl	%ecx, %edx
	jne	.L15
.LVL37:
.L13:
.LBE76:
	.loc 1 97 0
	movq	%r12, %rsi
	movl	$4, %edi
	call	clock_gettime@PLT
.LVL38:
	.loc 1 99 0
	pxor	%xmm0, %xmm0
	movq	56(%rsp), %rax
	pxor	%xmm1, %xmm1
	subq	40(%rsp), %rax
.LBB81:
.LBB82:
	.loc 2 104 0
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
.LBE82:
.LBE81:
	.loc 1 99 0
	cvtsi2sdq	48(%rsp), %xmm0
	cvtsi2sdq	32(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.LBB85:
.LBB83:
	.loc 2 104 0
	movl	$1, %eax
.LBE83:
.LBE85:
	.loc 1 99 0
	mulsd	.LC2(%rip), %xmm0
	divsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
.LBB86:
.LBB84:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL39:
.LBE84:
.LBE86:
.LBB87:
.LBB88:
	leaq	.LC7(%rip), %rsi
	movl	%ebx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL40:
.LBE88:
.LBE87:
	.loc 1 115 0
	leaq	16(%rsp), %rsi
	movl	$4, %edi
	call	clock_gettime@PLT
.LVL41:
	.loc 1 116 0
	pxor	%xmm0, %xmm0
	movq	24(%rsp), %rax
	pxor	%xmm1, %xmm1
	subq	8(%rsp), %rax
.LBB89:
.LBB90:
	.loc 2 104 0
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
.LBE90:
.LBE89:
	.loc 1 116 0
	cvtsi2sdq	16(%rsp), %xmm0
	cvtsi2sdq	(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.LBB93:
.LBB91:
	.loc 2 104 0
	movl	$1, %eax
.LBE91:
.LBE93:
	.loc 1 116 0
	mulsd	.LC2(%rip), %xmm0
	divsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
.LBB94:
.LBB92:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL42:
.LBE92:
.LBE94:
	.loc 1 118 0
	xorl	%edi, %edi
	call	exit@PLT
.LVL43:
	.cfi_endproc
.LFE36:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1083129856
	.align 8
.LC3:
	.long	0
	.long	1093567616
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/unistd.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 8 "/usr/include/time.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "../olden/treeadd/src/tree.h"
	.file 12 "/usr/include/stdlib.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa1c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF97
	.byte	0xc
	.long	.LASF98
	.long	.LASF99
	.long	.Ldebug_ranges0+0x120
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF7
	.byte	0x3
	.byte	0x8c
	.long	0x5a
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.byte	0x8d
	.long	0x5a
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x94
	.long	0x5a
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0xb8
	.long	0x5a
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	0x95
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0xd8
	.long	0x3e
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.value	0x222
	.long	0xb8
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x9
	.long	.LASF14
	.byte	0x6
	.byte	0x24
	.long	0x8f
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.byte	0x32
	.long	0x53
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.byte	0x37
	.long	0x53
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.byte	0x3b
	.long	0x53
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xa
	.long	0xea
	.uleb128 0xb
	.long	.LASF29
	.byte	0x10
	.byte	0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0xc
	.long	.LASF18
	.byte	0x7
	.byte	0xa
	.long	0x77
	.byte	0
	.uleb128 0xc
	.long	.LASF19
	.byte	0x7
	.byte	0xb
	.long	0x84
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x8f
	.long	0x12a
	.uleb128 0xe
	.long	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x8
	.byte	0x9f
	.long	0x11a
	.uleb128 0x9
	.long	.LASF21
	.byte	0x8
	.byte	0xa0
	.long	0x53
	.uleb128 0x9
	.long	.LASF22
	.byte	0x8
	.byte	0xa1
	.long	0x5a
	.uleb128 0x9
	.long	.LASF23
	.byte	0x8
	.byte	0xa6
	.long	0x11a
	.uleb128 0x9
	.long	.LASF24
	.byte	0x8
	.byte	0xae
	.long	0x53
	.uleb128 0x9
	.long	.LASF25
	.byte	0x8
	.byte	0xaf
	.long	0x5a
	.uleb128 0x8
	.long	.LASF26
	.byte	0x8
	.value	0x118
	.long	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF27
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF28
	.uleb128 0xb
	.long	.LASF30
	.byte	0xd8
	.byte	0x9
	.byte	0xf5
	.long	0x306
	.uleb128 0xc
	.long	.LASF31
	.byte	0x9
	.byte	0xf6
	.long	0x53
	.byte	0
	.uleb128 0xc
	.long	.LASF32
	.byte	0x9
	.byte	0xfb
	.long	0x8f
	.byte	0x8
	.uleb128 0xc
	.long	.LASF33
	.byte	0x9
	.byte	0xfc
	.long	0x8f
	.byte	0x10
	.uleb128 0xc
	.long	.LASF34
	.byte	0x9
	.byte	0xfd
	.long	0x8f
	.byte	0x18
	.uleb128 0xc
	.long	.LASF35
	.byte	0x9
	.byte	0xfe
	.long	0x8f
	.byte	0x20
	.uleb128 0xc
	.long	.LASF36
	.byte	0x9
	.byte	0xff
	.long	0x8f
	.byte	0x28
	.uleb128 0xf
	.long	.LASF37
	.byte	0x9
	.value	0x100
	.long	0x8f
	.byte	0x30
	.uleb128 0xf
	.long	.LASF38
	.byte	0x9
	.value	0x101
	.long	0x8f
	.byte	0x38
	.uleb128 0xf
	.long	.LASF39
	.byte	0x9
	.value	0x102
	.long	0x8f
	.byte	0x40
	.uleb128 0xf
	.long	.LASF40
	.byte	0x9
	.value	0x104
	.long	0x8f
	.byte	0x48
	.uleb128 0xf
	.long	.LASF41
	.byte	0x9
	.value	0x105
	.long	0x8f
	.byte	0x50
	.uleb128 0xf
	.long	.LASF42
	.byte	0x9
	.value	0x106
	.long	0x8f
	.byte	0x58
	.uleb128 0xf
	.long	.LASF43
	.byte	0x9
	.value	0x108
	.long	0x33e
	.byte	0x60
	.uleb128 0xf
	.long	.LASF44
	.byte	0x9
	.value	0x10a
	.long	0x344
	.byte	0x68
	.uleb128 0xf
	.long	.LASF45
	.byte	0x9
	.value	0x10c
	.long	0x53
	.byte	0x70
	.uleb128 0xf
	.long	.LASF46
	.byte	0x9
	.value	0x110
	.long	0x53
	.byte	0x74
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.value	0x112
	.long	0x61
	.byte	0x78
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.value	0x116
	.long	0x30
	.byte	0x80
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.value	0x117
	.long	0x45
	.byte	0x82
	.uleb128 0xf
	.long	.LASF50
	.byte	0x9
	.value	0x118
	.long	0x34a
	.byte	0x83
	.uleb128 0xf
	.long	.LASF51
	.byte	0x9
	.value	0x11c
	.long	0x35a
	.byte	0x88
	.uleb128 0xf
	.long	.LASF52
	.byte	0x9
	.value	0x125
	.long	0x6c
	.byte	0x90
	.uleb128 0xf
	.long	.LASF53
	.byte	0x9
	.value	0x12d
	.long	0x82
	.byte	0x98
	.uleb128 0xf
	.long	.LASF54
	.byte	0x9
	.value	0x12e
	.long	0x82
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF55
	.byte	0x9
	.value	0x12f
	.long	0x82
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF56
	.byte	0x9
	.value	0x130
	.long	0x82
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF57
	.byte	0x9
	.value	0x132
	.long	0xa1
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF58
	.byte	0x9
	.value	0x133
	.long	0x53
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF59
	.byte	0x9
	.value	0x135
	.long	0x360
	.byte	0xc4
	.byte	0
	.uleb128 0x10
	.long	.LASF100
	.byte	0x9
	.byte	0x9a
	.uleb128 0xb
	.long	.LASF60
	.byte	0x18
	.byte	0x9
	.byte	0xa0
	.long	0x33e
	.uleb128 0xc
	.long	.LASF61
	.byte	0x9
	.byte	0xa1
	.long	0x33e
	.byte	0
	.uleb128 0xc
	.long	.LASF62
	.byte	0x9
	.byte	0xa2
	.long	0x344
	.byte	0x8
	.uleb128 0xc
	.long	.LASF63
	.byte	0x9
	.byte	0xa6
	.long	0x53
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x30d
	.uleb128 0x6
	.byte	0x8
	.long	0x186
	.uleb128 0xd
	.long	0x95
	.long	0x35a
	.uleb128 0xe
	.long	0x3e
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x306
	.uleb128 0xd
	.long	0x95
	.long	0x370
	.uleb128 0xe
	.long	0x3e
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.long	.LASF101
	.uleb128 0x8
	.long	.LASF64
	.byte	0x9
	.value	0x13f
	.long	0x370
	.uleb128 0x8
	.long	.LASF65
	.byte	0x9
	.value	0x140
	.long	0x370
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.value	0x141
	.long	0x370
	.uleb128 0x9
	.long	.LASF67
	.byte	0xa
	.byte	0x87
	.long	0x344
	.uleb128 0x9
	.long	.LASF68
	.byte	0xa
	.byte	0x88
	.long	0x344
	.uleb128 0x9
	.long	.LASF69
	.byte	0xa
	.byte	0x89
	.long	0x344
	.uleb128 0xb
	.long	.LASF70
	.byte	0x18
	.byte	0xb
	.byte	0xc
	.long	0x3eb
	.uleb128 0x12
	.string	"val"
	.byte	0xb
	.byte	0xd
	.long	0x53
	.byte	0
	.uleb128 0xc
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0x3eb
	.byte	0x8
	.uleb128 0xc
	.long	.LASF72
	.byte	0xb
	.byte	0xe
	.long	0x3eb
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ba
	.uleb128 0x4
	.long	.LASF73
	.byte	0xb
	.byte	0xf
	.long	0x3ba
	.uleb128 0x9
	.long	.LASF74
	.byte	0x1
	.byte	0x18
	.long	0x53
	.uleb128 0x9
	.long	.LASF75
	.byte	0x1
	.byte	0x1b
	.long	0x53
	.uleb128 0x13
	.long	.LASF102
	.byte	0x1
	.byte	0x7b
	.long	0x53
	.byte	0x1
	.long	0x470
	.uleb128 0x14
	.long	.LASF76
	.byte	0x1
	.byte	0x7b
	.long	0x53
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0x7b
	.long	0x470
	.uleb128 0x16
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.byte	0x94
	.long	0x53
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.byte	0x95
	.long	0x53
	.uleb128 0x17
	.long	.LASF79
	.byte	0x1
	.byte	0x96
	.long	0x470
	.uleb128 0x17
	.long	.LASF80
	.byte	0x1
	.byte	0x96
	.long	0x470
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.byte	0x97
	.long	0x53
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f1
	.uleb128 0x18
	.long	.LASF103
	.byte	0x1
	.byte	0x23
	.long	0x53
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d4
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0x23
	.long	0x53
	.long	.LLST9
	.uleb128 0x19
	.long	.LASF83
	.byte	0x1
	.byte	0x23
	.long	0xb8
	.long	.LLST10
	.uleb128 0x1a
	.long	.LASF84
	.byte	0x1
	.byte	0x25
	.long	0x470
	.long	.LLST11
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.byte	0x26
	.long	0x53
	.long	.LLST12
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.byte	0x26
	.long	0x53
	.long	.LLST13
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.byte	0x27
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.long	.LASF88
	.byte	0x1
	.byte	0x27
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.long	.LASF89
	.byte	0x1
	.byte	0x28
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF90
	.byte	0x1
	.byte	0x28
	.long	0xf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x600
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x5c
	.long	0x53
	.long	.LLST18
	.uleb128 0x1e
	.long	0x412
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.long	0x42d
	.long	.LLST19
	.uleb128 0x1f
	.long	0x422
	.long	.LLST20
	.uleb128 0x20
	.long	0x412
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x1f
	.long	0x42d
	.long	.LLST21
	.uleb128 0x1f
	.long	0x422
	.long	.LLST22
	.uleb128 0x20
	.long	0x436
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x21
	.long	0x437
	.long	.LLST23
	.uleb128 0x21
	.long	0x442
	.long	.LLST24
	.uleb128 0x21
	.long	0x44d
	.long	.LLST25
	.uleb128 0x21
	.long	0x458
	.long	.LLST26
	.uleb128 0x21
	.long	0x463
	.long	.LLST27
	.uleb128 0x22
	.quad	.LVL31
	.long	0x412
	.long	0x5e9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.quad	.LVL33
	.long	0x412
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x8d4
	.quad	.LBB62
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x39
	.long	0x647
	.uleb128 0x1f
	.long	0x8e4
	.long	.LLST14
	.uleb128 0x24
	.quad	.LVL20
	.long	0x99e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x8d4
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.byte	0x1
	.byte	0x40
	.long	0x687
	.uleb128 0x1f
	.long	0x8e4
	.long	.LLST15
	.uleb128 0x24
	.quad	.LVL21
	.long	0x9c7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x8d4
	.quad	.LBB68
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x4d
	.long	0x6c8
	.uleb128 0x1f
	.long	0x8e4
	.long	.LLST16
	.uleb128 0x24
	.quad	.LVL26
	.long	0x99e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x8d4
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.byte	0x1
	.byte	0x52
	.long	0x708
	.uleb128 0x1f
	.long	0x8e4
	.long	.LLST17
	.uleb128 0x24
	.quad	.LVL27
	.long	0x9c7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x8d4
	.quad	.LBB81
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0x63
	.long	0x749
	.uleb128 0x1f
	.long	0x8e4
	.long	.LLST28
	.uleb128 0x24
	.quad	.LVL39
	.long	0x99e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x8d4
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.byte	0x1
	.byte	0x68
	.long	0x794
	.uleb128 0x1f
	.long	0x8e4
	.long	.LLST29
	.uleb128 0x24
	.quad	.LVL40
	.long	0x99e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x8d4
	.quad	.LBB89
	.long	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x74
	.long	0x7d5
	.uleb128 0x1f
	.long	0x8e4
	.long	.LLST30
	.uleb128 0x24
	.quad	.LVL42
	.long	0x99e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LVL15
	.long	0x9f2
	.long	0x7f2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL17
	.long	0x9fd
	.long	0x811
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.quad	.LVL22
	.long	0x9f2
	.long	0x82e
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL23
	.long	0xa08
	.long	0x84b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL25
	.long	0x9f2
	.long	0x868
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL28
	.long	0x9f2
	.long	0x885
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL38
	.long	0x9f2
	.long	0x8a2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.quad	.LVL41
	.long	0x9f2
	.long	0x8c0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x24
	.quad	.LVL43
	.long	0xa13
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF104
	.byte	0x2
	.byte	0x66
	.long	0x53
	.byte	0x3
	.long	0x8f1
	.uleb128 0x14
	.long	.LASF91
	.byte	0x2
	.byte	0x66
	.long	0xf0
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.long	0x412
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x99e
	.uleb128 0x1f
	.long	0x422
	.long	.LLST0
	.uleb128 0x1f
	.long	0x42d
	.long	.LLST1
	.uleb128 0x2a
	.long	0x412
	.long	.Ldebug_ranges0+0
	.uleb128 0x1f
	.long	0x42d
	.long	.LLST2
	.uleb128 0x1f
	.long	0x422
	.long	.LLST3
	.uleb128 0x2a
	.long	0x436
	.long	.Ldebug_ranges0+0
	.uleb128 0x21
	.long	0x437
	.long	.LLST4
	.uleb128 0x21
	.long	0x442
	.long	.LLST5
	.uleb128 0x21
	.long	0x44d
	.long	.LLST6
	.uleb128 0x21
	.long	0x458
	.long	.LLST7
	.uleb128 0x21
	.long	0x463
	.long	.LLST8
	.uleb128 0x22
	.quad	.LVL5
	.long	0x412
	.long	0x987
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.quad	.LVL7
	.long	0x412
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF92
	.long	.LASF92
	.byte	0x2
	.byte	0x57
	.uleb128 0x2c
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1a
	.byte	0x41
	.byte	0x62
	.byte	0x6f
	.byte	0x75
	.byte	0x74
	.byte	0x20
	.byte	0x74
	.byte	0x6f
	.byte	0x20
	.byte	0x65
	.byte	0x6e
	.byte	0x74
	.byte	0x65
	.byte	0x72
	.byte	0x20
	.byte	0x54
	.byte	0x72
	.byte	0x65
	.byte	0x65
	.byte	0x41
	.byte	0x6c
	.byte	0x6c
	.byte	0x6f
	.byte	0x63
	.byte	0xa
	.byte	0
	.uleb128 0x2d
	.long	.LASF105
	.long	.LASF106
	.byte	0xd
	.byte	0
	.long	.LASF105
	.uleb128 0x2c
	.uleb128 0x1a
	.byte	0x9e
	.uleb128 0x18
	.byte	0x41
	.byte	0x62
	.byte	0x6f
	.byte	0x75
	.byte	0x74
	.byte	0x20
	.byte	0x74
	.byte	0x6f
	.byte	0x20
	.byte	0x65
	.byte	0x6e
	.byte	0x74
	.byte	0x65
	.byte	0x72
	.byte	0x20
	.byte	0x54
	.byte	0x72
	.byte	0x65
	.byte	0x65
	.byte	0x41
	.byte	0x64
	.byte	0x64
	.byte	0xa
	.byte	0
	.uleb128 0x2b
	.long	.LASF93
	.long	.LASF93
	.byte	0x8
	.byte	0xdb
	.uleb128 0x2b
	.long	.LASF94
	.long	.LASF94
	.byte	0x1
	.byte	0x1d
	.uleb128 0x2b
	.long	.LASF95
	.long	.LASF95
	.byte	0xb
	.byte	0x11
	.uleb128 0x2e
	.long	.LASF96
	.long	.LASF96
	.byte	0xc
	.value	0x266
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x4
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2e
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
.LLST9:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x55
	.quad	.LVL13
	.quad	.LVL18
	.value	0x1
	.byte	0x56
	.quad	.LVL18
	.quad	.LFE36
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL12
	.quad	.LVL14
	.value	0x1
	.byte	0x54
	.quad	.LVL14
	.quad	.LVL16
	.value	0x1
	.byte	0x5c
	.quad	.LVL16
	.quad	.LVL17-1
	.value	0x1
	.byte	0x54
	.quad	.LVL17-1
	.quad	.LFE36
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL24
	.quad	.LVL25-1
	.value	0x1
	.byte	0x50
	.quad	.LVL25-1
	.quad	.LFE36
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x1
	.byte	0x50
	.quad	.LVL19
	.quad	.LVL20-1
	.value	0x1
	.byte	0x51
	.quad	.LVL20-1
	.quad	.LVL24
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL34
	.quad	.LVL35
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL28
	.quad	.LVL29
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL29
	.quad	.LVL37
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL29
	.quad	.LVL35
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL29
	.quad	.LVL35
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL30
	.quad	.LVL35
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL30
	.quad	.LVL35
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL32
	.quad	.LVL33-1
	.value	0x1
	.byte	0x50
	.quad	.LVL33-1
	.quad	.LVL34
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL33
	.quad	.LVL35
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL30
	.quad	.LVL31-1
	.value	0x2
	.byte	0x76
	.sleb128 8
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL32
	.quad	.LVL33-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL33
	.quad	.LVL35
	.value	0x2
	.byte	0x76
	.sleb128 0
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL18
	.quad	.LVL20
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2473
	.sleb128 0
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL25
	.quad	.LVL26
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL26
	.quad	.LVL27
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2518
	.sleb128 0
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL38
	.quad	.LVL39
	.value	0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL39
	.quad	.LVL40
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL41
	.quad	.LVL42
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL4
	.value	0x1
	.byte	0x55
	.quad	.LVL4
	.quad	.LVL5-1
	.value	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL5-1
	.quad	.LVL11
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL11
	.quad	.LFE37
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL3
	.value	0x1
	.byte	0x54
	.quad	.LVL3
	.quad	.LVL10
	.value	0x1
	.byte	0x56
	.quad	.LVL10
	.quad	.LFE37
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1
	.quad	.LVL9
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL1
	.quad	.LVL4
	.value	0x1
	.byte	0x55
	.quad	.LVL4
	.quad	.LVL5-1
	.value	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL5-1
	.quad	.LVL9
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL6
	.quad	.LVL7-1
	.value	0x1
	.byte	0x50
	.quad	.LVL7-1
	.quad	.LVL9
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL7
	.quad	.LVL8
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL1
	.quad	.LVL2
	.value	0x2
	.byte	0x76
	.sleb128 8
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL6
	.quad	.LVL7-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL7
	.quad	.LVL9
	.value	0x2
	.byte	0x76
	.sleb128 0
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB38
	.quad	.LBE38
	.quad	.LBB41
	.quad	.LBE41
	.quad	0
	.quad	0
	.quad	.LBB62
	.quad	.LBE62
	.quad	.LBB65
	.quad	.LBE65
	.quad	0
	.quad	0
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB72
	.quad	.LBE72
	.quad	.LBB73
	.quad	.LBE73
	.quad	0
	.quad	0
	.quad	.LBB81
	.quad	.LBE81
	.quad	.LBB85
	.quad	.LBE85
	.quad	.LBB86
	.quad	.LBE86
	.quad	0
	.quad	0
	.quad	.LBB89
	.quad	.LBE89
	.quad	.LBB93
	.quad	.LBE93
	.quad	.LBB94
	.quad	.LBE94
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB36
	.quad	.LFE36
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF75:
	.string	"runs"
.LASF19:
	.string	"tv_nsec"
.LASF86:
	.string	"result"
.LASF106:
	.string	"__builtin_puts"
.LASF87:
	.string	"total_start"
.LASF72:
	.string	"right"
.LASF76:
	.string	"inc_level"
.LASF30:
	.string	"_IO_FILE"
.LASF18:
	.string	"tv_sec"
.LASF42:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF52:
	.string	"_offset"
.LASF20:
	.string	"__tzname"
.LASF98:
	.string	"../olden/treeadd/src/node.c"
.LASF103:
	.string	"main"
.LASF36:
	.string	"_IO_write_ptr"
.LASF31:
	.string	"_flags"
.LASF10:
	.string	"__syscall_slong_t"
.LASF65:
	.string	"_IO_2_1_stdout_"
.LASF13:
	.string	"__environ"
.LASF43:
	.string	"_markers"
.LASF81:
	.string	"value"
.LASF79:
	.string	"tleft"
.LASF24:
	.string	"daylight"
.LASF95:
	.string	"TreeAlloc"
.LASF25:
	.string	"timezone"
.LASF73:
	.string	"tree_t"
.LASF33:
	.string	"_IO_read_end"
.LASF69:
	.string	"stderr"
.LASF27:
	.string	"long long int"
.LASF22:
	.string	"__timezone"
.LASF51:
	.string	"_lock"
.LASF21:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF26:
	.string	"getdate_err"
.LASF104:
	.string	"printf"
.LASF48:
	.string	"_cur_column"
.LASF66:
	.string	"_IO_2_1_stderr_"
.LASF70:
	.string	"tree"
.LASF101:
	.string	"_IO_FILE_plus"
.LASF63:
	.string	"_pos"
.LASF35:
	.string	"_IO_write_base"
.LASF83:
	.string	"argv"
.LASF96:
	.string	"exit"
.LASF49:
	.string	"_vtable_offset"
.LASF47:
	.string	"_old_offset"
.LASF102:
	.string	"TreeAdd"
.LASF8:
	.string	"__off64_t"
.LASF0:
	.string	"unsigned char"
.LASF97:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF82:
	.string	"argc"
.LASF80:
	.string	"tright"
.LASF14:
	.string	"optarg"
.LASF4:
	.string	"signed char"
.LASF28:
	.string	"long long unsigned int"
.LASF64:
	.string	"_IO_2_1_stdin_"
.LASF2:
	.string	"unsigned int"
.LASF60:
	.string	"_IO_marker"
.LASF50:
	.string	"_shortbuf"
.LASF93:
	.string	"clock_gettime"
.LASF53:
	.string	"__pad1"
.LASF99:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
.LASF105:
	.string	"puts"
.LASF23:
	.string	"tzname"
.LASF59:
	.string	"_unused2"
.LASF16:
	.string	"opterr"
.LASF89:
	.string	"start"
.LASF39:
	.string	"_IO_buf_end"
.LASF90:
	.string	"stop"
.LASF11:
	.string	"char"
.LASF15:
	.string	"optind"
.LASF71:
	.string	"left"
.LASF61:
	.string	"_next"
.LASF74:
	.string	"NumNodes"
.LASF54:
	.string	"__pad2"
.LASF55:
	.string	"__pad3"
.LASF56:
	.string	"__pad4"
.LASF57:
	.string	"__pad5"
.LASF41:
	.string	"_IO_backup_base"
.LASF1:
	.string	"short unsigned int"
.LASF91:
	.string	"__fmt"
.LASF94:
	.string	"dealwithargs"
.LASF3:
	.string	"long unsigned int"
.LASF37:
	.string	"_IO_write_end"
.LASF9:
	.string	"__time_t"
.LASF45:
	.string	"_fileno"
.LASF77:
	.string	"leftval"
.LASF44:
	.string	"_chain"
.LASF7:
	.string	"__off_t"
.LASF78:
	.string	"rightval"
.LASF85:
	.string	"level"
.LASF67:
	.string	"stdin"
.LASF88:
	.string	"total_stop"
.LASF38:
	.string	"_IO_buf_base"
.LASF46:
	.string	"_flags2"
.LASF58:
	.string	"_mode"
.LASF34:
	.string	"_IO_read_base"
.LASF29:
	.string	"timespec"
.LASF92:
	.string	"__printf_chk"
.LASF40:
	.string	"_IO_save_base"
.LASF17:
	.string	"optopt"
.LASF62:
	.string	"_sbuf"
.LASF32:
	.string	"_IO_read_ptr"
.LASF84:
	.string	"root"
.LASF68:
	.string	"stdout"
.LASF100:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
