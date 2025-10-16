	.file	"main.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%f %f\n"
	.text
	.p2align 4,,15
	.type	print_list.part.0, @function
print_list.part.0:
.LFB15:
	.file 1 "../olden/tsp/src/main.c"
	.loc 1 22 0
	.cfi_startproc
.LVL0:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
.LVL1:
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
.LBB38:
.LBB39:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC0(%rip), %rsi
.LBE39:
.LBE38:
	.loc 1 22 0
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 22 0
	movq	%rdi, %rbp
.LBB41:
.LBB40:
	.loc 2 104 0
	movl	$2, %eax
	movsd	16(%rdi), %xmm1
	movsd	8(%rdi), %xmm0
	movl	$1, %edi
.LVL2:
	call	__printf_chk@PLT
.LVL3:
.LBE40:
.LBE41:
	.loc 1 30 0
	movq	40(%rbp), %rbx
.LVL4:
	cmpq	%rbx, %rbp
	je	.L1
.LBB42:
.LBB43:
	.loc 2 104 0
	leaq	.LC0(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L3:
.LVL5:
	movsd	16(%rbx), %xmm1
	movq	%r12, %rsi
	movl	$1, %edi
	movsd	8(%rbx), %xmm0
	movl	$2, %eax
	call	__printf_chk@PLT
.LVL6:
.LBE43:
.LBE42:
	.loc 1 30 0
	movq	40(%rbx), %rbx
.LVL7:
	cmpq	%rbx, %rbp
	jne	.L3
.L1:
	.loc 1 35 0
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL8:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL9:
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	print_list.part.0, .-print_list.part.0
	.section	.rodata.str1.1
.LC1:
	.string	"x=%f,y=%f\n"
	.text
	.p2align 4,,15
	.globl	print_tree
	.type	print_tree, @function
print_tree:
.LFB12:
	.loc 1 9 0
	.cfi_startproc
.LVL10:
	.loc 1 14 0
	testq	%rdi, %rdi
	je	.L15
	.loc 1 9 0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
.LBB44:
.LBB45:
	.loc 2 104 0
	leaq	.LC1(%rip), %rbp
	movq	%rdi, %rbx
.LBE45:
.LBE44:
	.loc 1 9 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LVL11:
.L9:
.LBB47:
.LBB46:
	.loc 2 104 0
	movsd	16(%rbx), %xmm1
	movq	%rbp, %rsi
	movl	$1, %edi
	movsd	8(%rbx), %xmm0
	movl	$2, %eax
	call	__printf_chk@PLT
.LVL12:
.LBE46:
.LBE47:
	.loc 1 17 0
	movq	24(%rbx), %rdi
.LVL13:
	movq	32(%rbx), %rbx
.LVL14:
	.loc 1 18 0
	call	print_tree
.LVL15:
	.loc 1 14 0
	testq	%rbx, %rbx
	jne	.L9
	.loc 1 20 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL16:
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL17:
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore 3
	.cfi_restore 6
	rep ret
	.cfi_endproc
.LFE12:
	.size	print_tree, .-print_tree
	.p2align 4,,15
	.globl	print_list
	.type	print_list, @function
print_list:
.LFB13:
	.loc 1 23 0
	.cfi_startproc
.LVL18:
	.loc 1 27 0
	testq	%rdi, %rdi
	je	.L18
	jmp	print_list.part.0
.LVL19:
	.p2align 4,,10
	.p2align 3
.L18:
	.loc 1 35 0
	rep ret
	.cfi_endproc
.LFE13:
	.size	print_list, .-print_list
	.section	.rodata.str1.1
.LC2:
	.string	"Building tree of size %d\n"
.LC5:
	.string	"newgraph"
.LC6:
	.string	"Past build"
.LC7:
	.string	"newcurve pts"
.LC8:
	.string	"Call tsp(t, %d, %d)\n"
.LC9:
	.string	"linetype solid"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB14:
	.loc 1 38 0
	.cfi_startproc
.LVL20:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 42 0
	call	dealwithargs@PLT
.LVL21:
.LBB48:
.LBB49:
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
.LBE49:
.LBE48:
	.loc 1 42 0
	movl	%eax, %ebx
.LVL22:
.LBB51:
.LBB50:
	.loc 2 104 0
	movl	%eax, %edx
	movl	$1, %edi
	xorl	%eax, %eax
.LVL23:
	call	__printf_chk@PLT
.LVL24:
.LBE50:
.LBE51:
	.loc 1 45 0
	movsd	.LC3(%rip), %xmm3
	movl	NumNodes(%rip), %ecx
	pxor	%xmm2, %xmm2
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movapd	%xmm3, %xmm1
	movl	%ebx, %edi
	call	build_tree@PLT
.LVL25:
	.loc 1 46 0
	movl	flag(%rip), %edx
	.loc 1 45 0
	movq	%rax, %rbx
.LVL26:
	.loc 1 46 0
	testl	%edx, %edx
	je	.L21
.LVL27:
.L24:
.LBB52:
.LBB53:
	.loc 2 104 0
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
.LVL28:
.LBE53:
.LBE52:
	.loc 1 48 0
	movl	flag(%rip), %eax
	testl	%eax, %eax
	jne	.L32
.LVL29:
.L25:
.LBB54:
.LBB55:
	.loc 2 104 0
	movl	NumNodes(%rip), %ecx
	leaq	.LC8(%rip), %rsi
	movl	$150, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL30:
.LBE55:
.LBE54:
	.loc 1 51 0
	movl	NumNodes(%rip), %edx
	movl	$150, %esi
	movq	%rbx, %rdi
	call	tsp@PLT
.LVL31:
.LBB56:
.LBB57:
	.loc 1 27 0
	testq	%rbx, %rbx
.LBE57:
.LBE56:
	.loc 1 53 0
	movl	flag(%rip), %eax
.LVL32:
.LBB60:
.LBB58:
	.loc 1 27 0
	je	.L26
	testl	%eax, %eax
	jne	.L33
.L26:
.LBE58:
.LBE60:
	.loc 1 54 0
	testl	%eax, %eax
	je	.L27
.LVL33:
.LBB61:
.LBB62:
	.loc 2 104 0
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
.LVL34:
.L27:
.LBE62:
.LBE61:
	.loc 1 57 0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LVL35:
	ret
.LVL36:
.L32:
	.cfi_restore_state
.LBB63:
.LBB64:
	.loc 2 104 0
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
.LVL37:
	jmp	.L25
.LVL38:
.L33:
.LBE64:
.LBE63:
.LBB65:
.LBB59:
	movq	%rbx, %rdi
	call	print_list.part.0
.LVL39:
	movl	flag(%rip), %eax
	jmp	.L26
.LVL40:
.L21:
.LBE59:
.LBE65:
.LBB66:
.LBB67:
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
.LVL41:
.LBE67:
.LBE66:
	.loc 1 47 0
	cmpl	$0, flag(%rip)
	je	.L25
	jmp	.L24
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 3 "../olden/tsp/src/tsp.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8bd
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF67
	.byte	0xc
	.long	.LASF68
	.long	.LASF69
	.long	.Ldebug_ranges0+0xd0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x3
	.byte	0x5
	.long	0x3b
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x5
	.long	0x3b
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x8
	.long	0x3b
	.uleb128 0x5
	.long	.LASF20
	.byte	0x38
	.byte	0x3
	.byte	0x10
	.long	0xb4
	.uleb128 0x6
	.string	"sz"
	.byte	0x3
	.byte	0x11
	.long	0x3b
	.byte	0
	.uleb128 0x6
	.string	"x"
	.byte	0x3
	.byte	0x12
	.long	0x29
	.byte	0x8
	.uleb128 0x6
	.string	"y"
	.byte	0x3
	.byte	0x12
	.long	0x29
	.byte	0x10
	.uleb128 0x7
	.long	.LASF4
	.byte	0x3
	.byte	0x13
	.long	0xb4
	.byte	0x18
	.uleb128 0x7
	.long	.LASF5
	.byte	0x3
	.byte	0x13
	.long	0xb4
	.byte	0x20
	.uleb128 0x7
	.long	.LASF6
	.byte	0x3
	.byte	0x15
	.long	0xb4
	.byte	0x28
	.uleb128 0x7
	.long	.LASF7
	.byte	0x3
	.byte	0x15
	.long	0xb4
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x58
	.uleb128 0x9
	.long	.LASF8
	.byte	0x3
	.byte	0x1a
	.long	0xb4
	.uleb128 0x9
	.long	.LASF9
	.byte	0x4
	.byte	0xd8
	.long	0xd0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF11
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0x8c
	.long	0xfa
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0x8d
	.long	0xfa
	.uleb128 0xa
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.long	0x11f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0xb
	.long	0x11f
	.uleb128 0x5
	.long	.LASF21
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x2ab
	.uleb128 0x7
	.long	.LASF22
	.byte	0x6
	.byte	0xf6
	.long	0x3b
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x6
	.byte	0xfb
	.long	0x119
	.byte	0x8
	.uleb128 0x7
	.long	.LASF24
	.byte	0x6
	.byte	0xfc
	.long	0x119
	.byte	0x10
	.uleb128 0x7
	.long	.LASF25
	.byte	0x6
	.byte	0xfd
	.long	0x119
	.byte	0x18
	.uleb128 0x7
	.long	.LASF26
	.byte	0x6
	.byte	0xfe
	.long	0x119
	.byte	0x20
	.uleb128 0x7
	.long	.LASF27
	.byte	0x6
	.byte	0xff
	.long	0x119
	.byte	0x28
	.uleb128 0xc
	.long	.LASF28
	.byte	0x6
	.value	0x100
	.long	0x119
	.byte	0x30
	.uleb128 0xc
	.long	.LASF29
	.byte	0x6
	.value	0x101
	.long	0x119
	.byte	0x38
	.uleb128 0xc
	.long	.LASF30
	.byte	0x6
	.value	0x102
	.long	0x119
	.byte	0x40
	.uleb128 0xc
	.long	.LASF31
	.byte	0x6
	.value	0x104
	.long	0x119
	.byte	0x48
	.uleb128 0xc
	.long	.LASF32
	.byte	0x6
	.value	0x105
	.long	0x119
	.byte	0x50
	.uleb128 0xc
	.long	.LASF33
	.byte	0x6
	.value	0x106
	.long	0x119
	.byte	0x58
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.value	0x108
	.long	0x2e3
	.byte	0x60
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.value	0x10a
	.long	0x2e9
	.byte	0x68
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.value	0x10c
	.long	0x3b
	.byte	0x70
	.uleb128 0xc
	.long	.LASF37
	.byte	0x6
	.value	0x110
	.long	0x3b
	.byte	0x74
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.value	0x112
	.long	0x101
	.byte	0x78
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.value	0x116
	.long	0xde
	.byte	0x80
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.value	0x117
	.long	0xec
	.byte	0x82
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.value	0x118
	.long	0x2ef
	.byte	0x83
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.value	0x11c
	.long	0x2ff
	.byte	0x88
	.uleb128 0xc
	.long	.LASF43
	.byte	0x6
	.value	0x125
	.long	0x10c
	.byte	0x90
	.uleb128 0xc
	.long	.LASF44
	.byte	0x6
	.value	0x12d
	.long	0x117
	.byte	0x98
	.uleb128 0xc
	.long	.LASF45
	.byte	0x6
	.value	0x12e
	.long	0x117
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x6
	.value	0x12f
	.long	0x117
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF47
	.byte	0x6
	.value	0x130
	.long	0x117
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF48
	.byte	0x6
	.value	0x132
	.long	0xc5
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF49
	.byte	0x6
	.value	0x133
	.long	0x3b
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x6
	.value	0x135
	.long	0x305
	.byte	0xc4
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x6
	.byte	0x9a
	.uleb128 0x5
	.long	.LASF51
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x2e3
	.uleb128 0x7
	.long	.LASF52
	.byte	0x6
	.byte	0xa1
	.long	0x2e3
	.byte	0
	.uleb128 0x7
	.long	.LASF53
	.byte	0x6
	.byte	0xa2
	.long	0x2e9
	.byte	0x8
	.uleb128 0x7
	.long	.LASF54
	.byte	0x6
	.byte	0xa6
	.long	0x3b
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2b2
	.uleb128 0x8
	.byte	0x8
	.long	0x12b
	.uleb128 0xe
	.long	0x11f
	.long	0x2ff
	.uleb128 0xf
	.long	0xd0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2ab
	.uleb128 0xe
	.long	0x11f
	.long	0x315
	.uleb128 0xf
	.long	0xd0
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	.LASF71
	.uleb128 0x11
	.long	.LASF55
	.byte	0x6
	.value	0x13f
	.long	0x315
	.uleb128 0x11
	.long	.LASF56
	.byte	0x6
	.value	0x140
	.long	0x315
	.uleb128 0x11
	.long	.LASF57
	.byte	0x6
	.value	0x141
	.long	0x315
	.uleb128 0x8
	.byte	0x8
	.long	0x126
	.uleb128 0x12
	.long	0x33e
	.uleb128 0x3
	.long	.LASF58
	.byte	0x7
	.byte	0x87
	.long	0x2e9
	.uleb128 0x3
	.long	.LASF59
	.byte	0x7
	.byte	0x88
	.long	0x2e9
	.uleb128 0x3
	.long	.LASF60
	.byte	0x7
	.byte	0x89
	.long	0x2e9
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x63d
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.long	.LLST13
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.byte	0x25
	.long	0x63d
	.long	.LLST14
	.uleb128 0x15
	.string	"t"
	.byte	0x1
	.byte	0x27
	.long	0xba
	.long	.LLST15
	.uleb128 0x15
	.string	"num"
	.byte	0x1
	.byte	0x28
	.long	0x3b
	.long	.LLST16
	.uleb128 0x16
	.long	0x720
	.quad	.LBB48
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x2c
	.long	0x40c
	.uleb128 0x17
	.long	0x730
	.long	.LLST17
	.uleb128 0x18
	.quad	.LVL24
	.long	0x841
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x720
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.byte	0x1
	.byte	0x2f
	.long	0x44c
	.uleb128 0x17
	.long	0x730
	.long	.LLST18
	.uleb128 0x18
	.quad	.LVL28
	.long	0x85a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x720
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.byte	0x1
	.byte	0x32
	.long	0x497
	.uleb128 0x17
	.long	0x730
	.long	.LLST19
	.uleb128 0x18
	.quad	.LVL30
	.long	0x841
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x643
	.quad	.LBB56
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x35
	.long	0x4e1
	.uleb128 0x17
	.long	0x64f
	.long	.LLST20
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x1c
	.long	0x81c
	.uleb128 0x1c
	.long	0x821
	.uleb128 0x1c
	.long	0x826
	.uleb128 0x18
	.quad	.LVL39
	.long	0x73d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x720
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.byte	0x1
	.byte	0x36
	.long	0x521
	.uleb128 0x17
	.long	0x730
	.long	.LLST21
	.uleb128 0x18
	.quad	.LVL34
	.long	0x85a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x720
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.byte	0x1
	.byte	0x30
	.long	0x561
	.uleb128 0x17
	.long	0x730
	.long	.LLST22
	.uleb128 0x18
	.quad	.LVL37
	.long	0x85a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x720
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.byte	0x1
	.byte	0x2e
	.long	0x5a4
	.uleb128 0x1d
	.long	0x730
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+2191
	.sleb128 0
	.uleb128 0x18
	.quad	.LVL41
	.long	0x85a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL21
	.long	0x89f
	.long	0x5c4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.quad	.LVL25
	.long	0x8aa
	.long	0x622
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x64
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.byte	0
	.uleb128 0x18
	.quad	.LVL31
	.long	0x8b5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x119
	.uleb128 0x1f
	.long	.LASF73
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	0x676
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x16
	.long	0xba
	.uleb128 0x21
	.string	"tmp"
	.byte	0x1
	.byte	0x18
	.long	0xba
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.byte	0x19
	.long	0x29
	.uleb128 0x21
	.string	"y"
	.byte	0x1
	.byte	0x19
	.long	0x29
	.byte	0
	.uleb128 0x22
	.long	.LASF74
	.byte	0x1
	.byte	0x8
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x720
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.byte	0x8
	.long	0xba
	.long	.LLST6
	.uleb128 0x24
	.long	.LASF4
	.byte	0x1
	.byte	0xa
	.long	0xba
	.long	.LLST7
	.uleb128 0x24
	.long	.LASF5
	.byte	0x1
	.byte	0xa
	.long	0xba
	.long	.LLST8
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0xc
	.long	0x29
	.long	.LLST9
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.byte	0xc
	.long	0x29
	.long	.LLST10
	.uleb128 0x16
	.long	0x720
	.quad	.LBB44
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x10
	.long	0x712
	.uleb128 0x17
	.long	0x730
	.long	.LLST11
	.uleb128 0x18
	.quad	.LVL12
	.long	0x841
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL15
	.long	0x676
	.byte	0
	.uleb128 0x26
	.long	.LASF75
	.byte	0x2
	.byte	0x66
	.long	0x3b
	.byte	0x3
	.long	0x73d
	.uleb128 0x27
	.long	.LASF63
	.byte	0x2
	.byte	0x66
	.long	0x344
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.long	0x643
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f8
	.uleb128 0x17
	.long	0x64f
	.long	.LLST0
	.uleb128 0x2a
	.long	0x658
	.long	.LLST1
	.uleb128 0x2a
	.long	0x663
	.long	.LLST2
	.uleb128 0x2a
	.long	0x66c
	.long	.LLST3
	.uleb128 0x16
	.long	0x720
	.quad	.LBB38
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1d
	.long	0x7bd
	.uleb128 0x17
	.long	0x730
	.long	.LLST4
	.uleb128 0x18
	.quad	.LVL3
	.long	0x841
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x720
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x1
	.byte	0x21
	.uleb128 0x17
	.long	0x730
	.long	.LLST5
	.uleb128 0x18
	.quad	.LVL6
	.long	0x841
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x643
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x841
	.uleb128 0x17
	.long	0x64f
	.long	.LLST12
	.uleb128 0x1c
	.long	0x658
	.uleb128 0x1c
	.long	0x663
	.uleb128 0x1c
	.long	0x66c
	.uleb128 0x2c
	.quad	.LVL19
	.long	0x73d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF64
	.long	.LASF64
	.byte	0x2
	.byte	0x57
	.uleb128 0x2e
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xa
	.byte	0x6e
	.byte	0x65
	.byte	0x77
	.byte	0x67
	.byte	0x72
	.byte	0x61
	.byte	0x70
	.byte	0x68
	.byte	0xa
	.byte	0
	.uleb128 0x2f
	.long	.LASF76
	.long	.LASF77
	.byte	0x8
	.byte	0
	.long	.LASF76
	.uleb128 0x2e
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x10
	.byte	0x6c
	.byte	0x69
	.byte	0x6e
	.byte	0x65
	.byte	0x74
	.byte	0x79
	.byte	0x70
	.byte	0x65
	.byte	0x20
	.byte	0x73
	.byte	0x6f
	.byte	0x6c
	.byte	0x69
	.byte	0x64
	.byte	0xa
	.byte	0
	.uleb128 0x2e
	.uleb128 0x10
	.byte	0x9e
	.uleb128 0xe
	.byte	0x6e
	.byte	0x65
	.byte	0x77
	.byte	0x63
	.byte	0x75
	.byte	0x72
	.byte	0x76
	.byte	0x65
	.byte	0x20
	.byte	0x70
	.byte	0x74
	.byte	0x73
	.byte	0xa
	.byte	0
	.uleb128 0x2e
	.uleb128 0xe
	.byte	0x9e
	.uleb128 0xc
	.byte	0x50
	.byte	0x61
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x62
	.byte	0x75
	.byte	0x69
	.byte	0x6c
	.byte	0x64
	.byte	0xa
	.byte	0
	.uleb128 0x2d
	.long	.LASF65
	.long	.LASF65
	.byte	0x3
	.byte	0xb
	.uleb128 0x2d
	.long	.LASF66
	.long	.LASF66
	.byte	0x3
	.byte	0x27
	.uleb128 0x30
	.string	"tsp"
	.string	"tsp"
	.byte	0x3
	.byte	0x2a
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
.LLST13:
	.quad	.LVL20
	.quad	.LVL21-1
	.value	0x1
	.byte	0x55
	.quad	.LVL21-1
	.quad	.LFE14
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL20
	.quad	.LVL21-1
	.value	0x1
	.byte	0x54
	.quad	.LVL21-1
	.quad	.LFE14
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL26
	.quad	.LVL27
	.value	0x1
	.byte	0x50
	.quad	.LVL27
	.quad	.LVL35
	.value	0x1
	.byte	0x53
	.quad	.LVL36
	.quad	.LVL40
	.value	0x1
	.byte	0x53
	.quad	.LVL40
	.quad	.LVL41-1
	.value	0x1
	.byte	0x50
	.quad	.LVL41-1
	.quad	.LFE14
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x1
	.byte	0x50
	.quad	.LVL23
	.quad	.LVL24-1
	.value	0x1
	.byte	0x51
	.quad	.LVL24-1
	.quad	.LVL26
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL22
	.quad	.LVL24
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL27
	.quad	.LVL29
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2124
	.sleb128 0
	.quad	.LVL36
	.quad	.LVL38
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2124
	.sleb128 0
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL29
	.quad	.LVL30
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL32
	.quad	.LVL35
	.value	0x1
	.byte	0x53
	.quad	.LVL38
	.quad	.LVL40
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL33
	.quad	.LVL34
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2153
	.sleb128 0
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL36
	.quad	.LVL38
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2173
	.sleb128 0
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x55
	.quad	.LVL11
	.quad	.LVL17
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL17
	.quad	.LFE12
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL13
	.quad	.LVL15-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL14
	.quad	.LVL16
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL11
	.quad	.LVL12-1
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL11
	.quad	.LVL12-1
	.value	0x2
	.byte	0x73
	.sleb128 16
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL11
	.quad	.LVL12
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL9
	.value	0x1
	.byte	0x56
	.quad	.LVL9
	.quad	.LFE15
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL4
	.quad	.LVL8
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x2
	.byte	0x75
	.sleb128 8
	.quad	.LVL5
	.quad	.LVL6-1
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x2
	.byte	0x75
	.sleb128 16
	.quad	.LVL5
	.quad	.LVL6-1
	.value	0x2
	.byte	0x73
	.sleb128 16
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0
	.quad	.LVL3
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL5
	.quad	.LVL6
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL18
	.quad	.LVL19-1
	.value	0x1
	.byte	0x55
	.quad	.LVL19-1
	.quad	.LVL19
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL19
	.quad	.LFE13
	.value	0x1
	.byte	0x55
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
	.quad	.LFB14
	.quad	.LFE14-.LFB14
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
	.quad	.LBB44
	.quad	.LBE44
	.quad	.LBB47
	.quad	.LBE47
	.quad	0
	.quad	0
	.quad	.LBB48
	.quad	.LBE48
	.quad	.LBB51
	.quad	.LBE51
	.quad	0
	.quad	0
	.quad	.LBB56
	.quad	.LBE56
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB65
	.quad	.LBE65
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB14
	.quad	.LFE14
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_old_offset"
.LASF77:
	.string	"__builtin_puts"
.LASF5:
	.string	"right"
.LASF33:
	.string	"_IO_save_end"
.LASF28:
	.string	"_IO_write_end"
.LASF73:
	.string	"print_list"
.LASF15:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF70:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_offset"
.LASF27:
	.string	"_IO_write_ptr"
.LASF22:
	.string	"_flags"
.LASF29:
	.string	"_IO_buf_base"
.LASF34:
	.string	"_markers"
.LASF24:
	.string	"_IO_read_end"
.LASF60:
	.string	"stderr"
.LASF74:
	.string	"print_tree"
.LASF42:
	.string	"_lock"
.LASF16:
	.string	"long int"
.LASF75:
	.string	"printf"
.LASF39:
	.string	"_cur_column"
.LASF57:
	.string	"_IO_2_1_stderr_"
.LASF20:
	.string	"tree"
.LASF71:
	.string	"_IO_FILE_plus"
.LASF54:
	.string	"_pos"
.LASF26:
	.string	"_IO_write_base"
.LASF62:
	.string	"argv"
.LASF53:
	.string	"_sbuf"
.LASF64:
	.string	"__printf_chk"
.LASF21:
	.string	"_IO_FILE"
.LASF44:
	.string	"__pad1"
.LASF2:
	.string	"NDim"
.LASF11:
	.string	"unsigned char"
.LASF67:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF61:
	.string	"argc"
.LASF14:
	.string	"signed char"
.LASF55:
	.string	"_IO_2_1_stdin_"
.LASF13:
	.string	"unsigned int"
.LASF51:
	.string	"_IO_marker"
.LASF41:
	.string	"_shortbuf"
.LASF76:
	.string	"puts"
.LASF68:
	.string	"../olden/tsp/src/main.c"
.LASF50:
	.string	"_unused2"
.LASF23:
	.string	"_IO_read_ptr"
.LASF12:
	.string	"short unsigned int"
.LASF8:
	.string	"Tree"
.LASF19:
	.string	"char"
.LASF72:
	.string	"main"
.LASF4:
	.string	"left"
.LASF52:
	.string	"_next"
.LASF1:
	.string	"NumNodes"
.LASF45:
	.string	"__pad2"
.LASF46:
	.string	"__pad3"
.LASF47:
	.string	"__pad4"
.LASF48:
	.string	"__pad5"
.LASF63:
	.string	"__fmt"
.LASF65:
	.string	"dealwithargs"
.LASF10:
	.string	"long unsigned int"
.LASF0:
	.string	"double"
.LASF18:
	.string	"__off64_t"
.LASF56:
	.string	"_IO_2_1_stdout_"
.LASF17:
	.string	"__off_t"
.LASF35:
	.string	"_chain"
.LASF32:
	.string	"_IO_backup_base"
.LASF58:
	.string	"stdin"
.LASF66:
	.string	"build_tree"
.LASF37:
	.string	"_flags2"
.LASF49:
	.string	"_mode"
.LASF25:
	.string	"_IO_read_base"
.LASF40:
	.string	"_vtable_offset"
.LASF31:
	.string	"_IO_save_base"
.LASF3:
	.string	"flag"
.LASF36:
	.string	"_fileno"
.LASF7:
	.string	"prev"
.LASF59:
	.string	"stdout"
.LASF6:
	.string	"next"
.LASF69:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
