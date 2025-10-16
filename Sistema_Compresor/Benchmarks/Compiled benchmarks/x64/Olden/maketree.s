	.file	"maketree.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	MakeTree
	.type	MakeTree, @function
MakeTree:
.LFB12:
	.file 1 "../olden/perimeter/src/maketree.c"
	.loc 1 33 0
	.cfi_startproc
.LVL0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebp
	.loc 1 40 0
	movl	$48, %edi
.LVL1:
	.loc 1 33 0
	movl	%esi, %r12d
	movl	%ecx, %r15d
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 33 0
	movl	%r8d, 12(%rsp)
	.loc 1 40 0
	call	malloc@PLT
.LVL2:
	movq	%rax, %rbx
.LVL3:
	.loc 1 42 0
	movq	%r14, 40(%rax)
	.loc 1 43 0
	movl	96(%rsp), %eax
.LVL4:
.LBB37:
.LBB38:
	.loc 1 19 0
	leal	0(%r13,%rbp), %edx
	movl	%r13d, %ecx
.LBB39:
.LBB40:
	.loc 1 10 0
	movl	12(%rsp), %r8d
	subl	%ebp, %ecx
.LBE40:
.LBE39:
.LBE38:
.LBE37:
	.loc 1 43 0
	movl	%eax, 4(%rbx)
.LVL5:
.LBB79:
.LBB77:
	.loc 1 19 0
	leal	(%r12,%rbp), %eax
.LVL6:
.LBB42:
.LBB41:
	.loc 1 8 0
	imull	%edx, %edx
.LVL7:
	imull	%eax, %eax
.LVL8:
	imull	%ecx, %ecx
	leal	(%rax,%rdx), %edi
.LVL9:
	leal	(%rax,%rcx), %esi
	movl	%r12d, %eax
	subl	%ebp, %eax
	imull	%eax, %eax
	addl	%eax, %ecx
	addl	%eax, %edx
	.loc 1 10 0
	cmpl	$4194304, %edi
	jg	.L11
	.loc 1 11 0
	cmpl	$1048575, %edi
	jg	.L19
.LVL10:
.L3:
.LBE41:
.LBE42:
.LBB43:
.LBB44:
	xorl	%eax, %eax
	cmpl	$1048575, %edi
	setle	%al
	negl	%eax
.LBE44:
.LBE43:
.LBB47:
.LBB48:
	.loc 1 10 0
	cmpl	$4194304, %esi
.LBE48:
.LBE47:
.LBB53:
.LBB45:
	.loc 1 11 0
	movl	%eax, %edi
.LVL11:
.LBE45:
.LBE53:
.LBB54:
.LBB49:
	.loc 1 10 0
	movl	$1, %eax
	jle	.L20
.LVL12:
.L5:
.LBE49:
.LBE54:
	.loc 1 23 0
	addl	%edi, %eax
.LVL13:
.LBB55:
.LBB56:
	.loc 1 10 0
	cmpl	$4194304, %ecx
	movl	$1, %esi
	jle	.L21
.LVL14:
.L6:
	movl	%ebp, %ecx
.LBE56:
.LBE55:
	.loc 1 24 0
	addl	%esi, %eax
.LVL15:
	shrl	$31, %ecx
	addl	%ecx, %ebp
.LVL16:
	sarl	%ebp
.LBB60:
.LBB61:
	.loc 1 10 0
	cmpl	$4194304, %edx
	jg	.L14
	.loc 1 11 0
	cmpl	$1048575, %edx
	jg	.L8
	movl	$-1, %edx
.L7:
.LVL17:
.LBE61:
.LBE60:
	.loc 1 27 0
	leal	4(%rax,%rdx), %eax
.LVL18:
	andl	$-9, %eax
	jne	.L8
.LVL19:
.LBE77:
.LBE79:
	.loc 1 47 0
	cmpl	$511, %ebp
	jle	.L22
.LVL20:
.L8:
	.loc 1 65 0
	movl	104(%rsp), %eax
	testl	%eax, %eax
	jne	.L9
.LVL21:
.L17:
	.loc 1 67 0
	movl	$0, (%rbx)
	.loc 1 68 0
	movq	$0, 8(%rbx)
	.loc 1 69 0
	movq	$0, 16(%rbx)
	.loc 1 70 0
	movq	$0, 24(%rbx)
	.loc 1 71 0
	movq	$0, 32(%rbx)
.LVL22:
.L1:
	.loc 1 120 0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL23:
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
.LVL24:
	ret
.LVL25:
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
.LBB80:
.LBB78:
.LBB63:
.LBB50:
	.loc 1 10 0
	cmpl	$4194304, %esi
.LBE50:
.LBE63:
.LBB64:
.LBB46:
	movl	$1, %edi
.LVL26:
.LBE46:
.LBE64:
.LBB65:
.LBB51:
	movl	$1, %eax
	jg	.L5
.LVL27:
.L20:
	.loc 1 11 0
	xorl	%eax, %eax
	cmpl	$1048575, %esi
.LBE51:
.LBE65:
.LBB66:
.LBB57:
	.loc 1 10 0
	movl	$1, %esi
.LBE57:
.LBE66:
.LBB67:
.LBB52:
	.loc 1 11 0
	setle	%al
	negl	%eax
.LVL28:
.LBE52:
.LBE67:
	.loc 1 23 0
	addl	%edi, %eax
.LVL29:
.LBB68:
.LBB58:
	.loc 1 10 0
	cmpl	$4194304, %ecx
	jg	.L6
	jmp	.L21
.LVL30:
	.p2align 4,,10
	.p2align 3
.L14:
.LBE58:
.LBE68:
.LBB69:
.LBB62:
	movl	$1, %edx
	jmp	.L7
.LVL31:
	.p2align 4,,10
	.p2align 3
.L21:
.LBE62:
.LBE69:
.LBB70:
.LBB59:
	.loc 1 11 0
	xorl	%esi, %esi
	cmpl	$1048575, %ecx
	setle	%sil
	negl	%esi
	jmp	.L6
.LVL32:
	.p2align 4,,10
	.p2align 3
.L19:
.LBE59:
.LBE70:
.LBB71:
.LBB72:
	leal	-1048576(%rsi), %eax
	cmpl	$3145728, %eax
	ja	.L3
.LVL33:
.LBE72:
.LBE71:
.LBB73:
.LBB74:
	leal	-1048576(%rcx), %eax
	cmpl	$3145728, %eax
	ja	.L3
.LVL34:
.LBE74:
.LBE73:
.LBB75:
.LBB76:
	leal	-1048576(%rdx), %eax
	cmpl	$3145728, %eax
	ja	.L3
	jmp	.L17
.LVL35:
	.p2align 4,,10
	.p2align 3
.L22:
.LBE76:
.LBE75:
.LBE78:
.LBE80:
	.loc 1 49 0
	movl	$1, (%rbx)
	.loc 1 50 0
	movq	$0, 8(%rbx)
	.loc 1 51 0
	movq	$0, 16(%rbx)
	.loc 1 52 0
	movq	$0, 24(%rbx)
	.loc 1 53 0
	movq	$0, 32(%rbx)
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L9:
.LBB81:
	.loc 1 80 0
	leal	(%r15,%r8), %eax
	.loc 1 84 0
	movl	104(%rsp), %edi
	movl	%r12d, %esi
	subl	%ebp, %esi
	movq	%rbx, %r9
	.loc 1 87 0
	addl	%ebp, %r12d
.LVL36:
	.loc 1 80 0
	movl	%eax, %r10d
	shrl	$31, %r10d
	.loc 1 84 0
	leal	-1(%rdi), %r14d
.LVL37:
	movl	%r13d, %edi
	.loc 1 80 0
	addl	%eax, %r10d
	.loc 1 81 0
	addl	$1, %eax
	.loc 1 84 0
	subl	%ebp, %edi
	.loc 1 81 0
	movl	%eax, %edx
	.loc 1 80 0
	sarl	%r10d
	.loc 1 90 0
	addl	%ebp, %r13d
.LVL38:
	.loc 1 81 0
	shrl	$31, %edx
	.loc 1 80 0
	movl	%r10d, 28(%rsp)
.LVL39:
	.loc 1 81 0
	addl	%edx, %eax
	sarl	%eax
.LVL40:
	.loc 1 85 0
	leal	(%r8,%rax), %r11d
	movl	%eax, 20(%rsp)
	leal	1(%r11), %eax
.LVL41:
	movl	%r11d, 24(%rsp)
	.loc 1 84 0
	pushq	%r14
	.cfi_def_cfa_offset 104
	pushq	$2
	.cfi_def_cfa_offset 112
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%edi, 28(%rsp)
.LVL42:
	movl	%esi, 32(%rsp)
	movl	%edx, %ecx
	movl	%edi, %edx
	movl	%ebp, %edi
	addl	%eax, %ecx
	sarl	%ecx
	call	MakeTree
.LVL43:
	.loc 1 87 0
	movl	40(%rsp), %r11d
	pushq	%r14
	.cfi_def_cfa_offset 120
	movq	%rbx, %r9
	pushq	$3
	.cfi_def_cfa_offset 128
	movl	52(%rsp), %ecx
	movl	%r12d, %esi
	movl	44(%rsp), %edx
	movl	%ebp, %edi
	.loc 1 84 0
	movq	%rax, 24(%rbx)
	.loc 1 87 0
	movl	%r11d, %r8d
	shrl	$31, %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	call	MakeTree
.LVL44:
	.loc 1 91 0
	movl	60(%rsp), %r10d
	.loc 1 87 0
	movq	%rax, 32(%rbx)
	.loc 1 90 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 96
	movq	%rbx, %r9
	movl	%r13d, %edx
	movl	%r12d, %esi
	movl	%ebp, %edi
	.loc 1 91 0
	leal	(%r15,%r10), %r11d
	.loc 1 90 0
	movl	%r10d, %r8d
	.loc 1 91 0
	leal	1(%r11), %eax
	movl	%r11d, 12(%rsp)
	.loc 1 90 0
	pushq	%r14
	.cfi_def_cfa_offset 104
	pushq	$1
	.cfi_def_cfa_offset 112
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	call	MakeTree
.LVL45:
	.loc 1 93 0
	movl	28(%rsp), %r11d
	pushq	%r14
	.cfi_def_cfa_offset 120
	movq	%rbx, %r9
	pushq	$0
	.cfi_def_cfa_offset 128
	movl	48(%rsp), %esi
	movl	%r15d, %ecx
	movl	%r13d, %edx
	movl	%ebp, %edi
	.loc 1 90 0
	movq	%rax, 16(%rbx)
	.loc 1 93 0
	movl	%r11d, %r8d
	shrl	$31, %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	call	MakeTree
.LVL46:
	.loc 1 116 0
	movl	$2, (%rbx)
	.loc 1 93 0
	movq	%rax, 8(%rbx)
	.loc 1 116 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 96
.LBE81:
	.loc 1 119 0
	jmp	.L1
	.cfi_endproc
.LFE12:
	.size	MakeTree, .-MakeTree
.Letext0:
	.file 2 "../olden/perimeter/src/perimeter.h"
	.file 3 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5d4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF30
	.byte	0xc
	.long	.LASF31
	.long	.LASF32
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x2
	.byte	0x3
	.long	0x38
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x7
	.byte	0x4
	.long	0x5f
	.byte	0x2
	.byte	0x11
	.long	0x5f
	.uleb128 0x5
	.long	.LASF0
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x1
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x7
	.long	.LASF8
	.byte	0x2
	.byte	0x11
	.long	0x3f
	.uleb128 0x4
	.byte	0x7
	.byte	0x4
	.long	0x5f
	.byte	0x2
	.byte	0x12
	.long	0x97
	.uleb128 0x5
	.long	.LASF4
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x1
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF9
	.byte	0x2
	.byte	0x12
	.long	0x71
	.uleb128 0x8
	.long	.LASF34
	.byte	0x30
	.byte	0x2
	.byte	0x16
	.long	0xff
	.uleb128 0x9
	.long	.LASF10
	.byte	0x2
	.byte	0x17
	.long	0x66
	.byte	0
	.uleb128 0x9
	.long	.LASF11
	.byte	0x2
	.byte	0x18
	.long	0x97
	.byte	0x4
	.uleb128 0xa
	.string	"nw"
	.byte	0x2
	.byte	0x21
	.long	0xff
	.byte	0x8
	.uleb128 0xa
	.string	"ne"
	.byte	0x2
	.byte	0x22
	.long	0xff
	.byte	0x10
	.uleb128 0xa
	.string	"sw"
	.byte	0x2
	.byte	0x23
	.long	0xff
	.byte	0x18
	.uleb128 0xa
	.string	"se"
	.byte	0x2
	.byte	0x24
	.long	0xff
	.byte	0x20
	.uleb128 0x9
	.long	.LASF12
	.byte	0x2
	.byte	0x25
	.long	0xff
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xa2
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x28
	.long	0xff
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.byte	0x1f
	.long	0x105
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x560
	.uleb128 0xd
	.long	.LASF17
	.byte	0x1
	.byte	0x1f
	.long	0x38
	.long	.LLST0
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1
	.byte	0x1f
	.long	0x38
	.long	.LLST1
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x1f
	.long	0x38
	.long	.LLST2
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.byte	0x1f
	.long	0x38
	.long	.LLST3
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.byte	0x20
	.long	0x38
	.long	.LLST4
	.uleb128 0xd
	.long	.LASF12
	.byte	0x1
	.byte	0x20
	.long	0x105
	.long	.LLST5
	.uleb128 0xe
	.string	"ct"
	.byte	0x1
	.byte	0x20
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF22
	.byte	0x1
	.byte	0x20
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.byte	0x22
	.long	0x38
	.long	.LLST6
	.uleb128 0x10
	.long	.LASF24
	.byte	0x1
	.byte	0x23
	.long	0x105
	.long	.LLST7
	.uleb128 0x11
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.long	0x329
	.uleb128 0x10
	.long	.LASF25
	.byte	0x1
	.byte	0x4b
	.long	0x38
	.long	.LLST31
	.uleb128 0x10
	.long	.LASF26
	.byte	0x1
	.byte	0x4b
	.long	0x38
	.long	.LLST32
	.uleb128 0x12
	.quad	.LVL43
	.long	0x125
	.long	0x253
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -80
	.byte	0x94
	.byte	0x4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.byte	0x91
	.sleb128 -72
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x4f
	.byte	0x25
	.byte	0x91
	.sleb128 -72
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x31
	.byte	0x26
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL44
	.long	0x125
	.long	0x29c
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 -76
	.byte	0x94
	.byte	0x4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x58
	.uleb128 0xf
	.byte	0x91
	.sleb128 -72
	.byte	0x94
	.byte	0x4
	.byte	0x4f
	.byte	0x25
	.byte	0x91
	.sleb128 -72
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.quad	.LVL45
	.long	0x125
	.long	0x2e6
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x4f
	.byte	0x25
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x31
	.byte	0x26
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x5
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.quad	.LVL46
	.long	0x125
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x91
	.sleb128 -80
	.byte	0x94
	.byte	0x4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x58
	.uleb128 0xf
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x4
	.byte	0x4f
	.byte	0x25
	.byte	0x91
	.sleb128 -84
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x560
	.quad	.LBB37
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2d
	.long	0x54b
	.uleb128 0x16
	.long	0x586
	.long	.LLST8
	.uleb128 0x16
	.long	0x57b
	.long	.LLST9
	.uleb128 0x16
	.long	0x570
	.long	.LLST10
	.uleb128 0x17
	.long	.Ldebug_ranges0+0
	.uleb128 0x18
	.long	0x591
	.long	.LLST11
	.uleb128 0x15
	.long	0x59d
	.quad	.LBB39
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x13
	.long	0x3a2
	.uleb128 0x16
	.long	0x5b6
	.long	.LLST12
	.uleb128 0x16
	.long	0x5ad
	.long	.LLST13
	.uleb128 0x17
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x18
	.long	0x5bf
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x59d
	.quad	.LBB43
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x17
	.long	0x3db
	.uleb128 0x16
	.long	0x5b6
	.long	.LLST15
	.uleb128 0x16
	.long	0x5ad
	.long	.LLST16
	.uleb128 0x17
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x18
	.long	0x5bf
	.long	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x59d
	.quad	.LBB47
	.long	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x18
	.long	0x414
	.uleb128 0x16
	.long	0x5b6
	.long	.LLST18
	.uleb128 0x16
	.long	0x5ad
	.long	.LLST19
	.uleb128 0x17
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x18
	.long	0x5bf
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x59d
	.quad	.LBB55
	.long	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x19
	.long	0x445
	.uleb128 0x19
	.long	0x5b6
	.uleb128 0x16
	.long	0x5ad
	.long	.LLST21
	.uleb128 0x17
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x1a
	.long	0x5bf
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x59d
	.quad	.LBB60
	.long	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0x1a
	.long	0x476
	.uleb128 0x16
	.long	0x5b6
	.long	.LLST22
	.uleb128 0x19
	.long	0x5ad
	.uleb128 0x17
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x1a
	.long	0x5bf
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x59d
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.byte	0x1
	.byte	0x14
	.long	0x4bf
	.uleb128 0x16
	.long	0x5b6
	.long	.LLST23
	.uleb128 0x16
	.long	0x5ad
	.long	.LLST24
	.uleb128 0x1c
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x18
	.long	0x5bf
	.long	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x59d
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.byte	0x1
	.byte	0x15
	.long	0x508
	.uleb128 0x16
	.long	0x5b6
	.long	.LLST26
	.uleb128 0x16
	.long	0x5ad
	.long	.LLST27
	.uleb128 0x1c
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x18
	.long	0x5bf
	.long	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	0x59d
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.byte	0x1
	.byte	0x16
	.uleb128 0x16
	.long	0x5b6
	.long	.LLST29
	.uleb128 0x16
	.long	0x5ad
	.long	.LLST30
	.uleb128 0x1c
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x1a
	.long	0x5bf
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.quad	.LVL2
	.long	0x5cb
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF27
	.byte	0x1
	.byte	0xf
	.long	0x38
	.byte	0x1
	.long	0x59d
	.uleb128 0x1f
	.long	.LASF18
	.byte	0x1
	.byte	0xf
	.long	0x38
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x1
	.byte	0xf
	.long	0x38
	.uleb128 0x1f
	.long	.LASF17
	.byte	0x1
	.byte	0xf
	.long	0x38
	.uleb128 0x20
	.string	"sum"
	.byte	0x1
	.byte	0x11
	.long	0x38
	.byte	0
	.uleb128 0x1e
	.long	.LASF28
	.byte	0x1
	.byte	0x6
	.long	0x38
	.byte	0x1
	.long	0x5cb
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.byte	0x6
	.long	0x38
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.byte	0x6
	.long	0x38
	.uleb128 0x22
	.long	.LASF29
	.byte	0x1
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0x23
	.long	.LASF36
	.long	.LASF36
	.byte	0x3
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL16-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL31-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL35-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x32
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL22-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL36-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL22-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL38-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL22-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.quad	.LVL42-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL22-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL37-.Ltext0
	.quad	.LVL43-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 40
	.quad	.LVL43-1-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL0-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL4-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL25-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL39-.Ltext0
	.quad	.LVL43-1-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	.LVL43-1-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL41-.Ltext0
	.quad	.LFE12-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL5-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL16-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL31-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL5-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL25-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL5-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL25-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL7-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL6-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x18
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x18
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x18
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x7
	.byte	0x7d
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x7
	.byte	0x7d
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x18
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x1e
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x18
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x1e
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
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
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	.LBB79-.Ltext0
	.quad	.LBE79-.Ltext0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB64-.Ltext0
	.quad	.LBE64-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	.LBB63-.Ltext0
	.quad	.LBE63-.Ltext0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	.LBB67-.Ltext0
	.quad	.LBE67-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	.LBB68-.Ltext0
	.quad	.LBE68-.Ltext0
	.quad	.LBB70-.Ltext0
	.quad	.LBE70-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB60-.Ltext0
	.quad	.LBE60-.Ltext0
	.quad	.LBB69-.Ltext0
	.quad	.LBE69-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
.LASF22:
	.string	"level"
.LASF23:
	.string	"intersect"
.LASF5:
	.string	"northeast"
.LASF25:
	.string	"mid1"
.LASF6:
	.string	"southwest"
.LASF29:
	.string	"euclid"
.LASF36:
	.string	"malloc"
.LASF1:
	.string	"white"
.LASF17:
	.string	"size"
.LASF24:
	.string	"retval"
.LASF26:
	.string	"mid2"
.LASF4:
	.string	"northwest"
.LASF14:
	.string	"long unsigned int"
.LASF12:
	.string	"parent"
.LASF21:
	.string	"hi_proc"
.LASF0:
	.string	"black"
.LASF35:
	.string	"MakeTree"
.LASF10:
	.string	"color"
.LASF7:
	.string	"southeast"
.LASF28:
	.string	"CheckOutside"
.LASF31:
	.string	"../olden/perimeter/src/maketree.c"
.LASF3:
	.string	"unsigned int"
.LASF9:
	.string	"ChildType"
.LASF20:
	.string	"lo_proc"
.LASF30:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF8:
	.string	"Color"
.LASF16:
	.string	"long long int"
.LASF11:
	.string	"childtype"
.LASF18:
	.string	"center_x"
.LASF19:
	.string	"center_y"
.LASF34:
	.string	"quad_struct"
.LASF27:
	.string	"CheckIntersect"
.LASF15:
	.string	"long int"
.LASF2:
	.string	"grey"
.LASF13:
	.string	"QuadTree"
.LASF33:
	.string	"NumNodes"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
