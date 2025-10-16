	.file	"makegraph.c"
	.text
.Ltext0:
	.p2align 4,,15
	.type	hashfunc, @function
hashfunc:
.LFB25:
	.file 1 "../olden/mst/src/makegraph.c"
	.loc 1 37 0
	.cfi_startproc
.LVL0:
	.loc 1 38 0
	movl	%edi, %eax
	xorl	%edx, %edx
	shrl	$3, %eax
	divl	HashRange(%rip)
	.loc 1 39 0
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	hashfunc, .-hashfunc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Make phase 2"
.LC1:
	.string	"Make phase 4"
.LC2:
	.string	"Make returning"
.LC3:
	.string	"Make phase 3"
	.text
	.p2align 4,,15
	.globl	MakeGraph
	.type	MakeGraph, @function
MakeGraph:
.LFB27:
	.loc 1 76 0
	.cfi_startproc
.LVL1:
	.loc 1 77 0
	movl	%edi, %eax
	.loc 1 76 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 77 0
	cltd
	.loc 1 76 0
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	.loc 1 77 0
	idivl	%esi
	.loc 1 76 0
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebp
	movl	%esi, %r15d
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.loc 1 77 0
	movl	%edi, 12(%rsp)
	.loc 1 83 0
	movl	$8, %edi
.LVL2:
	.loc 1 76 0
	movl	%esi, 72(%rsp)
	.loc 1 77 0
	movl	%eax, %ebx
.LVL3:
	.loc 1 83 0
	call	malloc@PLT
.LVL4:
.LBB40:
.LBB41:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC0(%rip), %rdi
.LBE41:
.LBE40:
	.loc 1 86 0
	movq	$0, (%rax)
	.loc 1 83 0
	movq	%rax, %r14
	movq	%rax, 32(%rsp)
.LVL5:
.LBB43:
.LBB42:
	.loc 2 104 0
	call	puts@PLT
.LVL6:
.LBE42:
.LBE43:
	.loc 1 89 0
	movl	%r15d, %esi
	subl	$1, %esi
.LVL7:
	movl	%esi, 76(%rsp)
	js	.L4
	.loc 1 91 0
	movslq	%ebx, %rax
	.loc 1 96 0
	leal	3(%rbp), %r12d
	testl	%ebp, %ebp
	.loc 1 91 0
	leaq	(%rax,%rax,2), %rax
	.loc 1 98 0
	movl	%ebx, 16(%rsp)
	.loc 1 96 0
	cmovns	%ebp, %r12d
	.loc 1 91 0
	leaq	0(,%rax,8), %rdi
	movslq	%esi, %rax
	.loc 1 96 0
	sarl	$2, %r12d
	salq	$3, %rax
	leaq	(%r14,%rax), %rdx
	subq	$8, %rax
	.loc 1 91 0
	movq	%rdi, 40(%rsp)
	movq	%rax, 88(%rsp)
	movq	%rdx, 96(%rsp)
	movq	%rdx, (%rsp)
	movl	%esi, %edx
	leaq	0(,%rdx,8), %rsi
.LVL8:
	subq	%rsi, %rax
	movq	%rsi, 80(%rsp)
	leaq	-24(%rdi), %rsi
	addq	%r14, %rax
	movq	%rax, 24(%rsp)
	leal	-1(%rbx), %eax
	movq	%rsi, 56(%rsp)
	leaq	0(,%rax,4), %rcx
	leaq	(%rax,%rax,2), %rdx
	subq	%rcx, %rax
	salq	$3, %rdx
	leaq	(%rsi,%rax,8), %rax
	movq	%rax, 48(%rsp)
	leaq	-48(%rdi), %rax
	subq	%rdx, %rax
	movq	%rax, 64(%rsp)
.LVL9:
	.p2align 4,,10
	.p2align 3
.L7:
	movq	40(%rsp), %rdi
	call	malloc@PLT
.LVL10:
	.loc 1 93 0
	movl	16(%rsp), %edx
	.loc 1 91 0
	movq	%rax, %r14
.LVL11:
	.loc 1 93 0
	testl	%edx, %edx
	jle	.L19
	movq	56(%rsp), %rax
.LVL12:
	.loc 1 92 0
	xorl	%ebx, %ebx
	leaq	(%r14,%rax), %r15
	movq	64(%rsp), %rax
	leaq	(%r14,%rax), %r13
.LVL13:
	.p2align 4,,10
	.p2align 3
.L6:
	.loc 1 98 0 discriminator 3
	leaq	hashfunc(%rip), %rsi
	.loc 1 97 0 discriminator 3
	movl	$9999999, (%r15)
	.loc 1 98 0 discriminator 3
	movl	%r12d, %edi
	.loc 1 95 0 discriminator 3
	movq	%r15, %rbp
.LVL14:
	.loc 1 96 0 discriminator 3
	movl	%r12d, HashRange(%rip)
	subq	$24, %r15
	.loc 1 98 0 discriminator 3
	call	MakeHash@PLT
.LVL15:
	.loc 1 99 0 discriminator 3
	movq	%rbx, 32(%r15)
.LVL16:
	.loc 1 98 0 discriminator 3
	movq	%rax, 40(%r15)
	.loc 1 93 0 discriminator 3
	cmpq	%r13, %r15
	movq	%rbp, %rbx
	jne	.L6
	addq	48(%rsp), %r14
.LVL17:
.L5:
	.loc 1 102 0 discriminator 2
	movq	(%rsp), %rax
	movq	%r14, (%rax)
	subq	$8, %rax
	.loc 1 89 0 discriminator 2
	cmpq	24(%rsp), %rax
	movq	%rax, (%rsp)
	jne	.L7
.LBB44:
.LBB45:
	.loc 2 104 0
	leaq	.LC3(%rip), %rdi
	movl	16(%rsp), %ebx
.LVL18:
.LBE45:
.LBE44:
.LBB48:
.LBB49:
.LBB50:
.LBB51:
.LBB52:
.LBB53:
.LBB54:
.LBB55:
.LBB56:
	.loc 1 17 0
	movl	$1759218605, %r12d
.LBE56:
.LBE55:
.LBE54:
.LBE53:
.LBE52:
.LBE51:
.LBE50:
.LBE49:
.LBE48:
.LBB95:
.LBB46:
	.loc 2 104 0
	call	puts@PLT
.LVL19:
	movq	96(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	32(%rsp), %rcx
.LBE46:
.LBE95:
.LBB96:
.LBB93:
	.loc 1 54 0
	movl	72(%rsp), %r13d
	movq	104(%rsp), %rbp
	movl	%ebx, (%rsp)
	movq	%rax, 16(%rsp)
.LVL20:
	movl	76(%rsp), %eax
	imull	%ebx, %r13d
	imull	%ebx, %eax
	movl	%eax, 24(%rsp)
	movq	88(%rsp), %rax
	subq	%rsi, %rax
	addq	%rcx, %rax
	movq	%rax, 40(%rsp)
	leaq	8(%rcx,%rsi), %rax
	movq	%rax, 48(%rsp)
.LVL21:
	.p2align 4,,10
	.p2align 3
.L17:
	.loc 1 48 0 discriminator 3
	movl	72(%rsp), %eax
.LBE93:
.LBE96:
	.loc 1 108 0 discriminator 3
	movl	24(%rsp), %r14d
.LVL22:
.LBB97:
.LBB94:
	.loc 1 48 0 discriminator 3
	testl	%eax, %eax
	jle	.L9
	.loc 1 48 0 is_stmt 0
	movq	32(%rsp), %rax
.LVL23:
	movq	48(%rsp), %rdx
.LVL24:
	.p2align 4,,10
	.p2align 3
.L10:
	.loc 1 49 0 is_stmt 1
	movq	(%rax), %rbp
	addq	$8, %rax
.LVL25:
	.loc 1 48 0
	cmpq	%rax, %rdx
	jne	.L10
.LVL26:
.L9:
	.loc 1 52 0
	movq	16(%rsp), %rax
	movl	%r14d, %ebx
	movq	(%rax), %r15
.LVL27:
	testq	%r15, %r15
	movq	%r15, %r14
.LVL28:
	je	.L12
.LVL29:
	.p2align 4,,10
	.p2align 3
.L11:
	.loc 1 54 0
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	jle	.L16
	movq	%r14, %rax
	movl	%r15d, %r14d
.LVL30:
	movq	%rax, %r15
	jmp	.L15
.LVL31:
	.p2align 4,,10
	.p2align 3
.L39:
.LBB91:
.LBB84:
.LBB77:
	.loc 1 32 0
	movl	%r14d, %eax
	movl	%ebx, %esi
.L14:
.LVL32:
	.loc 1 33 0
	imull	12(%rsp), %esi
.LVL33:
	addl	%eax, %esi
.LVL34:
.LBB72:
.LBB67:
.LBB62:
.LBB57:
	.loc 1 17 0
	movl	%esi, %eax
.LVL35:
	movl	%esi, %r10d
	imull	%r12d
.LBE57:
.LBE62:
.LBE67:
.LBE72:
.LBE77:
.LBE84:
	.loc 1 64 0
	movl	%r14d, %eax
.LBB85:
.LBB78:
.LBB73:
.LBB68:
.LBB63:
.LBB58:
	.loc 1 17 0
	sarl	$31, %r10d
	movl	%edx, %ecx
.LBE58:
.LBE63:
.LBE68:
.LBE73:
.LBE78:
.LBE85:
	.loc 1 64 0
	cltd
	idivl	(%rsp)
.LBB86:
.LBB79:
.LBB74:
.LBB69:
.LBB64:
.LBB59:
	.loc 1 17 0
	sarl	$12, %ecx
	movl	%ecx, %edi
	subl	%r10d, %ecx
	subl	%r10d, %edi
	imull	$10000, %edi, %edi
.LBE59:
.LBE64:
.LBE69:
.LBE74:
.LBE79:
.LBE86:
	.loc 1 65 0
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx,2), %rax
.LBB87:
.LBB80:
.LBB75:
.LBB70:
.LBB65:
.LBB60:
	.loc 1 17 0
	subl	%edi, %esi
.LVL36:
	movl	%esi, %edi
.LVL37:
.LBE60:
.LBE65:
.LBE70:
.LBE75:
.LBE80:
.LBE87:
	.loc 1 65 0
	leaq	0(%rbp,%rax,8), %rsi
.LBB88:
.LBB81:
.LBB76:
.LBB71:
.LBB66:
.LBB61:
	.loc 1 19 0
	imull	$5821, %ecx, %ecx
	imull	$3141, %edi, %eax
	addl	%eax, %ecx
	movl	%ecx, %eax
	imull	%r12d
.LVL38:
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	subl	%eax, %edx
	imull	$10000, %edx, %edx
	imull	$5821, %edi, %edi
	subl	%edx, %ecx
	imull	$10000, %ecx, %ecx
.LBE61:
.LBE66:
	.loc 1 25 0
	leal	1(%rcx,%rdi), %eax
.LBE71:
.LBE76:
	.loc 1 33 0
	cltd
	shrl	$21, %edx
	leal	(%rax,%rdx), %edi
	andl	$2047, %edi
	subl	%edx, %edi
.LBE81:
.LBE88:
	.loc 1 67 0
	movq	16(%r15), %rdx
.LBB89:
.LBB82:
	.loc 1 33 0
	addl	$1, %edi
.LBE82:
.LBE89:
	.loc 1 67 0
	movslq	%edi, %rdi
	call	HashInsert@PLT
.LVL39:
.L13:
.LBE91:
	.loc 1 54 0
	addl	$1, %r14d
.LVL40:
	cmpl	%r13d, %r14d
	je	.L38
.LVL41:
.L15:
.LBB92:
	.loc 1 60 0
	cmpl	%r14d, %ebx
	je	.L13
.LVL42:
.LBB90:
.LBB83:
	.loc 1 32 0
	jle	.L39
	movl	%ebx, %eax
	movl	%r14d, %esi
	jmp	.L14
.LVL43:
	.p2align 4,,10
	.p2align 3
.L38:
	movq	%r15, %r14
.LVL44:
.L16:
.LBE83:
.LBE90:
.LBE92:
	.loc 1 52 0
	movq	8(%r14), %r14
.LVL45:
	.loc 1 71 0
	addl	$1, %ebx
.LVL46:
	.loc 1 52 0
	testq	%r14, %r14
	jne	.L11
.LVL47:
.L12:
	subq	$8, 16(%rsp)
	movl	(%rsp), %esi
	movq	16(%rsp), %rax
	subl	%esi, 24(%rsp)
.LVL48:
.LBE94:
.LBE97:
	.loc 1 106 0
	cmpq	40(%rsp), %rax
	jne	.L17
.L18:
.LVL49:
.LBB98:
.LBB99:
	.loc 2 104 0
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.LVL50:
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
.LVL51:
.LBE101:
.LBE100:
	.loc 1 115 0
	movq	32(%rsp), %rax
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.LVL52:
.L19:
	.cfi_restore_state
	.loc 1 92 0
	xorl	%r14d, %r14d
	jmp	.L5
.LVL53:
.L4:
.LBB102:
.LBB47:
	.loc 2 104 0
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.LVL54:
	jmp	.L18
.LBE47:
.LBE102:
	.cfi_endproc
.LFE27:
	.size	MakeGraph, .-MakeGraph
	.local	HashRange
	.comm	HashRange,4,4
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "../olden/mst/src/hash.h"
	.file 8 "../olden/mst/src/mst.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9cc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF89
	.byte	0xc
	.long	.LASF90
	.long	.LASF91
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x8c
	.long	0x46
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x8d
	.long	0x46
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	0x95
	.uleb128 0x8
	.long	.LASF41
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x221
	.uleb128 0x9
	.long	.LASF12
	.byte	0x5
	.byte	0xf6
	.long	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0xfb
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.value	0x104
	.long	0x8f
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x108
	.long	0x259
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x10a
	.long	0x25f
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x10c
	.long	0x3f
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x110
	.long	0x3f
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x112
	.long	0x77
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x116
	.long	0x5b
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x69
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x265
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x11c
	.long	0x275
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x125
	.long	0x82
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x12d
	.long	0x8d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x12e
	.long	0x8d
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x3f
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x27b
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x5
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF42
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x259
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.byte	0xa1
	.long	0x259
	.byte	0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x25f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0xa6
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0x6
	.byte	0x8
	.long	0xa1
	.uleb128 0xc
	.long	0x95
	.long	0x275
	.uleb128 0xd
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x221
	.uleb128 0xc
	.long	0x95
	.long	0x28b
	.uleb128 0xd
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF93
	.uleb128 0xf
	.long	.LASF46
	.byte	0x5
	.value	0x13f
	.long	0x28b
	.uleb128 0xf
	.long	.LASF47
	.byte	0x5
	.value	0x140
	.long	0x28b
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.value	0x141
	.long	0x28b
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x10
	.long	0x2b4
	.uleb128 0x11
	.long	.LASF49
	.byte	0x6
	.byte	0x87
	.long	0x25f
	.uleb128 0x11
	.long	.LASF50
	.byte	0x6
	.byte	0x88
	.long	0x25f
	.uleb128 0x11
	.long	.LASF51
	.byte	0x6
	.byte	0x89
	.long	0x25f
	.uleb128 0x8
	.long	.LASF52
	.byte	0x18
	.byte	0x7
	.byte	0x5
	.long	0x311
	.uleb128 0x12
	.string	"key"
	.byte	0x7
	.byte	0x6
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF53
	.byte	0x7
	.byte	0x7
	.long	0x8d
	.byte	0x8
	.uleb128 0x9
	.long	.LASF54
	.byte	0x7
	.byte	0x8
	.long	0x311
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x7
	.byte	0x9
	.long	0x311
	.uleb128 0x8
	.long	.LASF56
	.byte	0x18
	.byte	0x7
	.byte	0xb
	.long	0x353
	.uleb128 0x9
	.long	.LASF57
	.byte	0x7
	.byte	0xc
	.long	0x353
	.byte	0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x7
	.byte	0xd
	.long	0x368
	.byte	0x8
	.uleb128 0x9
	.long	.LASF59
	.byte	0x7
	.byte	0xe
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x317
	.uleb128 0x13
	.long	0x3f
	.long	0x368
	.uleb128 0x14
	.long	0x62
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x359
	.uleb128 0x2
	.long	.LASF60
	.byte	0x7
	.byte	0xf
	.long	0x379
	.uleb128 0x6
	.byte	0x8
	.long	0x322
	.uleb128 0x11
	.long	.LASF61
	.byte	0x8
	.byte	0x8
	.long	0x3f
	.uleb128 0x8
	.long	.LASF62
	.byte	0x18
	.byte	0x8
	.byte	0xa
	.long	0x3bb
	.uleb128 0x9
	.long	.LASF63
	.byte	0x8
	.byte	0xb
	.long	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0xc
	.long	0x3bb
	.byte	0x8
	.uleb128 0x9
	.long	.LASF64
	.byte	0x8
	.byte	0xd
	.long	0x36e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x38a
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0xe
	.long	0x3bb
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x8
	.byte	0x10
	.long	0x3e5
	.uleb128 0x9
	.long	.LASF67
	.byte	0x8
	.byte	0x11
	.long	0x3e5
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3c1
	.long	0x3f5
	.uleb128 0xd
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x12
	.long	0x400
	.uleb128 0x6
	.byte	0x8
	.long	0x3cc
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.byte	0xb
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	HashRange
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.byte	0x4b
	.long	0x3f5
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x7af
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.long	.LLST0
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.long	.LLST1
	.uleb128 0x18
	.long	.LASF72
	.byte	0x1
	.byte	0x4d
	.long	0x3f
	.long	.LLST2
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.long	.LLST3
	.uleb128 0x19
	.string	"j"
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.long	.LLST4
	.uleb128 0x18
	.long	.LASF73
	.byte	0x1
	.byte	0x4f
	.long	0x3f
	.long	.LLST5
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.byte	0x50
	.long	0x3c1
	.long	.LLST6
	.uleb128 0x19
	.string	"tmp"
	.byte	0x1
	.byte	0x50
	.long	0x3c1
	.long	.LLST7
	.uleb128 0x18
	.long	.LASF74
	.byte	0x1
	.byte	0x51
	.long	0x3c1
	.long	.LLST8
	.uleb128 0x18
	.long	.LASF75
	.byte	0x1
	.byte	0x52
	.long	0x3f5
	.long	.LLST9
	.uleb128 0x1a
	.long	0x937
	.quad	.LBB40
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x58
	.long	0x508
	.uleb128 0x1b
	.long	0x947
	.long	.LLST10
	.uleb128 0x1c
	.quad	.LVL6
	.long	0x966
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x937
	.quad	.LBB44
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x69
	.long	0x563
	.uleb128 0x1b
	.long	0x947
	.long	.LLST11
	.uleb128 0x1e
	.quad	.LVL19
	.long	0x966
	.long	0x547
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x1c
	.quad	.LVL54
	.long	0x966
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x7af
	.quad	.LBB48
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x6d
	.long	0x6dc
	.uleb128 0x1f
	.long	0x7f2
	.uleb128 0x1b
	.long	0x7e7
	.long	.LLST12
	.uleb128 0x1b
	.long	0x7dc
	.long	.LLST13
	.uleb128 0x1b
	.long	0x7d1
	.long	.LLST14
	.uleb128 0x1b
	.long	0x7c6
	.long	.LLST15
	.uleb128 0x1b
	.long	0x7bb
	.long	.LLST16
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x21
	.long	0x7fb
	.long	.LLST17
	.uleb128 0x22
	.long	0x806
	.uleb128 0x21
	.long	0x811
	.long	.LLST18
	.uleb128 0x23
	.long	0x81a
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x21
	.long	0x81b
	.long	.LLST19
	.uleb128 0x21
	.long	0x825
	.long	.LLST20
	.uleb128 0x22
	.long	0x830
	.uleb128 0x22
	.long	0x83b
	.uleb128 0x21
	.long	0x846
	.long	.LLST21
	.uleb128 0x1a
	.long	0x882
	.quad	.LBB51
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x3e
	.long	0x6af
	.uleb128 0x1b
	.long	0x8a4
	.long	.LLST22
	.uleb128 0x1b
	.long	0x89b
	.long	.LLST23
	.uleb128 0x1b
	.long	0x892
	.long	.LLST24
	.uleb128 0x20
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x21
	.long	0x8af
	.long	.LLST25
	.uleb128 0x21
	.long	0x8ba
	.long	.LLST26
	.uleb128 0x24
	.long	0x8c5
	.quad	.LBB53
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x21
	.uleb128 0x1b
	.long	0x8d5
	.long	.LLST27
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x22
	.long	0x8e0
	.uleb128 0x24
	.long	0x8ec
	.quad	.LBB55
	.long	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0x19
	.uleb128 0x1b
	.long	0x905
	.long	.LLST28
	.uleb128 0x1b
	.long	0x8fc
	.long	.LLST27
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x21
	.long	0x90e
	.long	.LLST30
	.uleb128 0x25
	.long	0x918
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.long	0x922
	.uleb128 0x22
	.long	0x92c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL39
	.long	0x987
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.byte	0x7e
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x33
	.byte	0x1e
	.byte	0x33
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x937
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.byte	0x1
	.byte	0x6f
	.long	0x71c
	.uleb128 0x1b
	.long	0x947
	.long	.LLST31
	.uleb128 0x1c
	.quad	.LVL50
	.long	0x966
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x937
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.byte	0x1
	.byte	0x71
	.long	0x75c
	.uleb128 0x1b
	.long	0x947
	.long	.LLST32
	.uleb128 0x1c
	.quad	.LVL51
	.long	0x966
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL4
	.long	0x9b8
	.long	0x773
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1e
	.quad	.LVL10
	.long	0x9b8
	.long	0x78d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x1c
	.quad	.LVL15
	.long	0x9c4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	hashfunc
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF95
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.long	0x853
	.uleb128 0x28
	.long	.LASF73
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.uleb128 0x28
	.long	.LASF75
	.byte	0x1
	.byte	0x29
	.long	0x3f5
	.uleb128 0x28
	.long	.LASF70
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.uleb128 0x28
	.long	.LASF72
	.byte	0x1
	.byte	0x2a
	.long	0x3f
	.uleb128 0x28
	.long	.LASF69
	.byte	0x1
	.byte	0x2a
	.long	0x3f
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.byte	0x2a
	.long	0x3f
	.uleb128 0x2a
	.string	"tmp"
	.byte	0x1
	.byte	0x2c
	.long	0x3c1
	.uleb128 0x2b
	.long	.LASF76
	.byte	0x1
	.byte	0x2d
	.long	0x3e5
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.long	0x3f
	.uleb128 0x2c
	.uleb128 0x2a
	.string	"pn"
	.byte	0x1
	.byte	0x38
	.long	0x3f
	.uleb128 0x2b
	.long	.LASF77
	.byte	0x1
	.byte	0x38
	.long	0x3f
	.uleb128 0x2b
	.long	.LASF78
	.byte	0x1
	.byte	0x38
	.long	0x3f
	.uleb128 0x2b
	.long	.LASF79
	.byte	0x1
	.byte	0x39
	.long	0x3c1
	.uleb128 0x2b
	.long	.LASF56
	.byte	0x1
	.byte	0x3a
	.long	0x36e
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF96
	.byte	0x1
	.byte	0x24
	.long	0x3f
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x882
	.uleb128 0x2e
	.string	"key"
	.byte	0x1
	.byte	0x24
	.long	0x62
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x2f
	.long	.LASF81
	.byte	0x1
	.byte	0x1d
	.long	0x3f
	.byte	0x1
	.long	0x8c5
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.long	0x3f
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.byte	0x1d
	.long	0x3f
	.uleb128 0x28
	.long	.LASF69
	.byte	0x1
	.byte	0x1d
	.long	0x3f
	.uleb128 0x2b
	.long	.LASF80
	.byte	0x1
	.byte	0x1f
	.long	0x3f
	.uleb128 0x2a
	.string	"gt"
	.byte	0x1
	.byte	0x1f
	.long	0x3f
	.byte	0
	.uleb128 0x2f
	.long	.LASF82
	.byte	0x1
	.byte	0x16
	.long	0x3f
	.byte	0x1
	.long	0x8ec
	.uleb128 0x28
	.long	.LASF83
	.byte	0x1
	.byte	0x16
	.long	0x3f
	.uleb128 0x2a
	.string	"tmp"
	.byte	0x1
	.byte	0x18
	.long	0x3f
	.byte	0
	.uleb128 0x2f
	.long	.LASF84
	.byte	0x1
	.byte	0xd
	.long	0x3f
	.byte	0x1
	.long	0x937
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.byte	0xd
	.long	0x3f
	.uleb128 0x29
	.string	"q"
	.byte	0x1
	.byte	0xd
	.long	0x3f
	.uleb128 0x2a
	.string	"p1"
	.byte	0x1
	.byte	0xf
	.long	0x3f
	.uleb128 0x2a
	.string	"p0"
	.byte	0x1
	.byte	0xf
	.long	0x3f
	.uleb128 0x2a
	.string	"q1"
	.byte	0x1
	.byte	0xf
	.long	0x3f
	.uleb128 0x2a
	.string	"q0"
	.byte	0x1
	.byte	0xf
	.long	0x3f
	.byte	0
	.uleb128 0x30
	.long	.LASF97
	.byte	0x2
	.byte	0x66
	.long	0x3f
	.byte	0x3
	.long	0x954
	.uleb128 0x28
	.long	.LASF85
	.byte	0x2
	.byte	0x66
	.long	0x2ba
	.uleb128 0x31
	.byte	0
	.uleb128 0x32
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xe
	.byte	0x4d
	.byte	0x61
	.byte	0x6b
	.byte	0x65
	.byte	0x20
	.byte	0x70
	.byte	0x68
	.byte	0x61
	.byte	0x73
	.byte	0x65
	.byte	0x20
	.byte	0x32
	.byte	0xa
	.byte	0
	.uleb128 0x33
	.long	.LASF98
	.long	.LASF99
	.byte	0xa
	.byte	0
	.long	.LASF98
	.uleb128 0x32
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xe
	.byte	0x4d
	.byte	0x61
	.byte	0x6b
	.byte	0x65
	.byte	0x20
	.byte	0x70
	.byte	0x68
	.byte	0x61
	.byte	0x73
	.byte	0x65
	.byte	0x20
	.byte	0x33
	.byte	0xa
	.byte	0
	.uleb128 0x34
	.long	.LASF86
	.long	.LASF86
	.byte	0x7
	.byte	0x13
	.uleb128 0x32
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xe
	.byte	0x4d
	.byte	0x61
	.byte	0x6b
	.byte	0x65
	.byte	0x20
	.byte	0x70
	.byte	0x68
	.byte	0x61
	.byte	0x73
	.byte	0x65
	.byte	0x20
	.byte	0x34
	.byte	0xa
	.byte	0
	.uleb128 0x32
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x10
	.byte	0x4d
	.byte	0x61
	.byte	0x6b
	.byte	0x65
	.byte	0x20
	.byte	0x72
	.byte	0x65
	.byte	0x74
	.byte	0x75
	.byte	0x72
	.byte	0x6e
	.byte	0x69
	.byte	0x6e
	.byte	0x67
	.byte	0xa
	.byte	0
	.uleb128 0x35
	.long	.LASF87
	.long	.LASF87
	.byte	0x9
	.value	0x21b
	.uleb128 0x34
	.long	.LASF88
	.long	.LASF88
	.byte	0x7
	.byte	0x11
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
.LLST0:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL9-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -164
	.quad	.LVL53-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL4-1-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL9-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	.LVL53-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL4-1-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL9-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL20-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0xc
	.byte	0x91
	.sleb128 -164
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x94
	.byte	0x4
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.quad	.LVL53-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL53-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -100
	.quad	.LVL19-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -100
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL54-1-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -100
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL22-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL28-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -152
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL14-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL12-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL6-1-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL9-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -144
	.quad	.LVL53-.Ltext0
	.quad	.LFE27-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2388
	.sleb128 0
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2421
	.sleb128 0
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2421
	.sleb128 0
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL22-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -164
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL22-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL23-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL22-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -144
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL22-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL27-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -152
	.quad	.LVL29-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL27-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL31-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL22-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL31-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x8
	.byte	0x7e
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-1-.Ltext0
	.value	0x2
	.byte	0x7f
	.sleb128 16
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL31-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -164
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -164
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL31-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL31-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL32-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL34-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL34-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x6
	.byte	0xc
	.long	0x1df5e0d
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL34-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.value	0x2710
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2450
	.sleb128 0
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2468
	.sleb128 0
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
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	.LBB95-.Ltext0
	.quad	.LBE95-.Ltext0
	.quad	.LBB102-.Ltext0
	.quad	.LBE102-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB96-.Ltext0
	.quad	.LBE96-.Ltext0
	.quad	.LBB97-.Ltext0
	.quad	.LBE97-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	.LBB91-.Ltext0
	.quad	.LBE91-.Ltext0
	.quad	.LBB92-.Ltext0
	.quad	.LBE92-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB51-.Ltext0
	.quad	.LBE51-.Ltext0
	.quad	.LBB84-.Ltext0
	.quad	.LBE84-.Ltext0
	.quad	.LBB85-.Ltext0
	.quad	.LBE85-.Ltext0
	.quad	.LBB86-.Ltext0
	.quad	.LBE86-.Ltext0
	.quad	.LBB87-.Ltext0
	.quad	.LBE87-.Ltext0
	.quad	.LBB88-.Ltext0
	.quad	.LBE88-.Ltext0
	.quad	.LBB89-.Ltext0
	.quad	.LBE89-.Ltext0
	.quad	.LBB90-.Ltext0
	.quad	.LBE90-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB72-.Ltext0
	.quad	.LBE72-.Ltext0
	.quad	.LBB73-.Ltext0
	.quad	.LBE73-.Ltext0
	.quad	.LBB74-.Ltext0
	.quad	.LBE74-.Ltext0
	.quad	.LBB75-.Ltext0
	.quad	.LBE75-.Ltext0
	.quad	.LBB76-.Ltext0
	.quad	.LBE76-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB63-.Ltext0
	.quad	.LBE63-.Ltext0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF87:
	.string	"malloc"
.LASF25:
	.string	"_chain"
.LASF94:
	.string	"MakeGraph"
.LASF8:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF48:
	.string	"_IO_2_1_stderr_"
.LASF19:
	.string	"_IO_buf_base"
.LASF72:
	.string	"perproc"
.LASF97:
	.string	"printf"
.LASF53:
	.string	"entry"
.LASF54:
	.string	"next"
.LASF91:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
.LASF2:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF1:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF81:
	.string	"compute_dist"
.LASF65:
	.string	"Vertex"
.LASF75:
	.string	"retval"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF57:
	.string	"array"
.LASF80:
	.string	"less"
.LASF78:
	.string	"dist"
.LASF82:
	.string	"random2"
.LASF42:
	.string	"_IO_marker"
.LASF49:
	.string	"stdin"
.LASF74:
	.string	"block"
.LASF5:
	.string	"unsigned int"
.LASF61:
	.string	"NumNodes"
.LASF83:
	.string	"seed"
.LASF60:
	.string	"Hash"
.LASF0:
	.string	"long unsigned int"
.LASF93:
	.string	"_IO_FILE_plus"
.LASF17:
	.string	"_IO_write_ptr"
.LASF70:
	.string	"numproc"
.LASF44:
	.string	"_sbuf"
.LASF59:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF67:
	.string	"vlist"
.LASF21:
	.string	"_IO_save_base"
.LASF55:
	.string	"HashEntry"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF99:
	.string	"__builtin_puts"
.LASF50:
	.string	"stdout"
.LASF71:
	.string	"HashRange"
.LASF46:
	.string	"_IO_2_1_stdin_"
.LASF98:
	.string	"puts"
.LASF69:
	.string	"numvert"
.LASF64:
	.string	"edgehash"
.LASF86:
	.string	"HashInsert"
.LASF96:
	.string	"hashfunc"
.LASF18:
	.string	"_IO_write_end"
.LASF92:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF79:
	.string	"dest"
.LASF45:
	.string	"_pos"
.LASF76:
	.string	"helper"
.LASF88:
	.string	"MakeHash"
.LASF24:
	.string	"_markers"
.LASF58:
	.string	"mapfunc"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF63:
	.string	"mindist"
.LASF30:
	.string	"_vtable_offset"
.LASF47:
	.string	"_IO_2_1_stdout_"
.LASF52:
	.string	"hash_entry"
.LASF62:
	.string	"vert_st"
.LASF11:
	.string	"char"
.LASF84:
	.string	"mult"
.LASF43:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF77:
	.string	"offset"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF56:
	.string	"hash"
.LASF89:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF85:
	.string	"__fmt"
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
.LASF40:
	.string	"_unused2"
.LASF51:
	.string	"stderr"
.LASF73:
	.string	"count1"
.LASF22:
	.string	"_IO_backup_base"
.LASF95:
	.string	"AddEdges"
.LASF66:
	.string	"graph_st"
.LASF68:
	.string	"Graph"
.LASF90:
	.string	"../olden/mst/src/makegraph.c"
.LASF16:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
