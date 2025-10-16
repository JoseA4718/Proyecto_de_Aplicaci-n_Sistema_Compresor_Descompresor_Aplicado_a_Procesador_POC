	.file	"poisson.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	my_rand
	.type	my_rand, @function
my_rand:
.LFB22:
	.file 1 "../olden/health/src/poisson.c"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
	.loc 1 16 0
	xorq	$123459876, %rdi
.LVL1:
	.loc 1 17 0
	movabsq	$4730756183288445817, %rdx
	movq	%rdi, %rax
	.loc 1 22 0
	pxor	%xmm0, %xmm0
	.loc 1 17 0
	imulq	%rdx
	movq	%rdi, %rax
	sarq	$63, %rax
	sarq	$15, %rdx
	subq	%rax, %rdx
.LVL2:
	.loc 1 18 0
	imulq	$-127773, %rdx, %rax
	addq	%rax, %rdi
.LVL3:
	imulq	$16807, %rdi, %rdi
	imulq	$-2836, %rdx, %rax
	addq	%rdi, %rax
.LVL4:
	.loc 1 19 0
	xorq	$123459876, %rax
.LVL5:
	.loc 1 21 0
	leaq	2147483647(%rax), %rdx
.LVL6:
	testq	%rax, %rax
	cmovs	%rdx, %rax
.LVL7:
	.loc 1 22 0
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	.loc 1 24 0
	ret
	.cfi_endproc
.LFE22:
	.size	my_rand, .-my_rand
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	2097152
	.long	1040187392
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "../olden/health/src/health.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x35e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF59
	.byte	0xc
	.long	.LASF60
	.long	.LASF61
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF10
	.byte	0x2
	.byte	0xd8
	.long	0x42
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x8c
	.long	0x34
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x8d
	.long	0x34
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x22a
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xf6
	.long	0x7e
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfb
	.long	0x9d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfc
	.long	0x9d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xfd
	.long	0x9d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xfe
	.long	0x9d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0xff
	.long	0x9d
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x100
	.long	0x9d
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x101
	.long	0x9d
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x102
	.long	0x9d
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x104
	.long	0x9d
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x105
	.long	0x9d
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x106
	.long	0x9d
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x108
	.long	0x262
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10a
	.long	0x268
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x10c
	.long	0x7e
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x110
	.long	0x7e
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x112
	.long	0x85
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x116
	.long	0x62
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x117
	.long	0x70
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x118
	.long	0x26e
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x11c
	.long	0x27e
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x125
	.long	0x90
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x12d
	.long	0x9b
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x12e
	.long	0x9b
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x12f
	.long	0x9b
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x130
	.long	0x9b
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x132
	.long	0x50
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x133
	.long	0x7e
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.value	0x135
	.long	0x284
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF62
	.byte	0x4
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x262
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa1
	.long	0x262
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
	.byte	0xa2
	.long	0x268
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x4
	.byte	0xa6
	.long	0x7e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x231
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0xb
	.long	0xa3
	.long	0x27e
	.uleb128 0xc
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a
	.uleb128 0xb
	.long	0xa3
	.long	0x294
	.uleb128 0xc
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF63
	.uleb128 0xe
	.long	.LASF48
	.byte	0x4
	.value	0x13f
	.long	0x294
	.uleb128 0xe
	.long	.LASF49
	.byte	0x4
	.value	0x140
	.long	0x294
	.uleb128 0xe
	.long	.LASF50
	.byte	0x4
	.value	0x141
	.long	0x294
	.uleb128 0xf
	.long	.LASF51
	.byte	0x5
	.byte	0x87
	.long	0x268
	.uleb128 0xf
	.long	.LASF52
	.byte	0x5
	.byte	0x88
	.long	0x268
	.uleb128 0xf
	.long	.LASF53
	.byte	0x5
	.byte	0x89
	.long	0x268
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0xf
	.long	.LASF55
	.byte	0x6
	.byte	0x17
	.long	0x7e
	.uleb128 0xf
	.long	.LASF56
	.byte	0x6
	.byte	0x18
	.long	0x34
	.uleb128 0xf
	.long	.LASF57
	.byte	0x6
	.byte	0x19
	.long	0x2de
	.uleb128 0x10
	.long	.LASF64
	.byte	0x1
	.byte	0xb
	.long	0x49
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0xb
	.long	0x2de
	.long	.LLST0
	.uleb128 0x12
	.string	"k"
	.byte	0x1
	.byte	0xd
	.long	0x2de
	.long	.LLST1
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0xe
	.long	0x49
	.uleb128 0x15
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0x3b
	.byte	0xf4
	.uleb128 0x3b
	.byte	0x8
	.long	0x200000
	.long	0x3e000000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x49
	.byte	0x9f
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xc
	.long	0x75bd924
	.byte	0x27
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL2-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL6-.Ltext0
	.quad	.LFE22-.Ltext0
	.value	0x33
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xc
	.long	0x75bd924
	.byte	0x27
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0x2d
	.byte	0x10
	.uleb128 0x41a705af1fe3fb79
	.byte	0xf7
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x8
	.byte	0x40
	.byte	0xf7
	.uleb128 0x2d
	.byte	0x25
	.byte	0xf7
	.uleb128 0x42
	.byte	0xf7
	.uleb128 0
	.byte	0x3f
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xc
	.long	0x75bd924
	.byte	0x27
	.byte	0x8
	.byte	0x3f
	.byte	0x26
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_old_offset"
.LASF2:
	.string	"double"
.LASF0:
	.string	"__int128 unsigned"
.LASF25:
	.string	"_IO_save_end"
.LASF9:
	.string	"short int"
.LASF10:
	.string	"size_t"
.LASF62:
	.string	"_IO_lock_t"
.LASF35:
	.string	"_offset"
.LASF19:
	.string	"_IO_write_ptr"
.LASF14:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_base"
.LASF26:
	.string	"_markers"
.LASF16:
	.string	"_IO_read_end"
.LASF4:
	.string	"float"
.LASF53:
	.string	"stderr"
.LASF54:
	.string	"long long int"
.LASF34:
	.string	"_lock"
.LASF1:
	.string	"long int"
.LASF31:
	.string	"_cur_column"
.LASF50:
	.string	"_IO_2_1_stderr_"
.LASF63:
	.string	"_IO_FILE_plus"
.LASF47:
	.string	"_pos"
.LASF46:
	.string	"_sbuf"
.LASF43:
	.string	"_IO_FILE"
.LASF5:
	.string	"unsigned char"
.LASF59:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -g -O2 -fstack-protector-strong"
.LASF8:
	.string	"signed char"
.LASF48:
	.string	"_IO_2_1_stdin_"
.LASF7:
	.string	"unsigned int"
.LASF44:
	.string	"_IO_marker"
.LASF33:
	.string	"_shortbuf"
.LASF18:
	.string	"_IO_write_base"
.LASF42:
	.string	"_unused2"
.LASF15:
	.string	"_IO_read_ptr"
.LASF55:
	.string	"max_level"
.LASF6:
	.string	"short unsigned int"
.LASF60:
	.string	"../olden/health/src/poisson.c"
.LASF13:
	.string	"char"
.LASF57:
	.string	"seed"
.LASF56:
	.string	"max_time"
.LASF45:
	.string	"_next"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF58:
	.string	"answer"
.LASF64:
	.string	"my_rand"
.LASF3:
	.string	"long unsigned int"
.LASF20:
	.string	"_IO_write_end"
.LASF12:
	.string	"__off64_t"
.LASF11:
	.string	"__off_t"
.LASF27:
	.string	"_chain"
.LASF24:
	.string	"_IO_backup_base"
.LASF51:
	.string	"stdin"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF17:
	.string	"_IO_read_base"
.LASF32:
	.string	"_vtable_offset"
.LASF23:
	.string	"_IO_save_base"
.LASF28:
	.string	"_fileno"
.LASF65:
	.string	"idum"
.LASF52:
	.string	"stdout"
.LASF49:
	.string	"_IO_2_1_stdout_"
.LASF61:
	.string	"/home/leonardo/Documents/Maestria/Tesis/sodden/build"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
