	.file	"main.cpp"
	.text
.Ltext0:
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"before replace : "
.LC1:
	.string	"after replace : "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1021:
	.file 1 "main.cpp"
	.loc 1 8 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	.loc 1 8 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 9 0
	movabsq	$2334397743343431545, %rax
	movq	%rax, -208(%rbp)
	movabsq	$9415553540192621, %rax
	movq	%rax, -200(%rbp)
	leaq	-192(%rbp), %rdx
	movl	$0, %eax
	movl	$23, %ecx
	movq	%rdx, %rdi
	rep stosq
	.loc 1 10 0
	movl	$.LC0, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	leaq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	.loc 1 11 0
	leaq	-208(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	ReplaceSpace
	.loc 1 12 0
	movl	$.LC1, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	leaq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	.loc 1 13 0
	movl	$0, %eax
	.loc 1 14 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1021:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1030:
	.loc 1 14 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 1 14 0
	cmpl	$1, -4(%rbp)
	jne	.L6
	.loc 1 14 0 is_stmt 0 discriminator 1
	cmpl	$65535, -8(%rbp)
	jne	.L6
	.file 2 "/usr/include/c++/5/iostream"
	.loc 2 74 0 is_stmt 1
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L6:
	.loc 1 14 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1030:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1031:
	.loc 1 14 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 14 0
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1031:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.text
.Letext0:
	.file 3 "/usr/include/c++/5/cwchar"
	.file 4 "/usr/include/x86_64-linux-gnu/c++/5/bits/c++config.h"
	.file 5 "/usr/include/c++/5/debug/debug.h"
	.file 6 "/usr/include/c++/5/bits/char_traits.h"
	.file 7 "/usr/include/c++/5/clocale"
	.file 8 "/usr/include/c++/5/bits/ios_base.h"
	.file 9 "/usr/include/c++/5/cwctype"
	.file 10 "/usr/include/c++/5/iosfwd"
	.file 11 "/usr/include/c++/5/bits/predefined_ops.h"
	.file 12 "/usr/include/c++/5/ext/new_allocator.h"
	.file 13 "/usr/include/c++/5/ext/numeric_traits.h"
	.file 14 "/usr/include/stdio.h"
	.file 15 "<built-in>"
	.file 16 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 17 "/usr/include/wchar.h"
	.file 18 "/usr/include/time.h"
	.file 19 "/usr/include/locale.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 21 "/usr/include/x86_64-linux-gnu/c++/5/bits/atomic_word.h"
	.file 22 "/usr/include/wctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x15e6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF264
	.byte	0x4
	.long	.LASF265
	.long	.LASF266
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"std"
	.byte	0xf
	.byte	0
	.long	0x82d
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0xda
	.uleb128 0x4
	.byte	0x4
	.byte	0xda
	.long	0x38
	.uleb128 0x5
	.byte	0x3
	.byte	0x40
	.long	0xaa1
	.uleb128 0x5
	.byte	0x3
	.byte	0x8b
	.long	0xa28
	.uleb128 0x5
	.byte	0x3
	.byte	0x8d
	.long	0xac3
	.uleb128 0x5
	.byte	0x3
	.byte	0x8e
	.long	0xad9
	.uleb128 0x5
	.byte	0x3
	.byte	0x8f
	.long	0xaf5
	.uleb128 0x5
	.byte	0x3
	.byte	0x90
	.long	0xb22
	.uleb128 0x5
	.byte	0x3
	.byte	0x91
	.long	0xb3d
	.uleb128 0x5
	.byte	0x3
	.byte	0x92
	.long	0xb63
	.uleb128 0x5
	.byte	0x3
	.byte	0x93
	.long	0xb7e
	.uleb128 0x5
	.byte	0x3
	.byte	0x94
	.long	0xb9a
	.uleb128 0x5
	.byte	0x3
	.byte	0x95
	.long	0xbb6
	.uleb128 0x5
	.byte	0x3
	.byte	0x96
	.long	0xbcc
	.uleb128 0x5
	.byte	0x3
	.byte	0x97
	.long	0xbd8
	.uleb128 0x5
	.byte	0x3
	.byte	0x98
	.long	0xbfe
	.uleb128 0x5
	.byte	0x3
	.byte	0x99
	.long	0xc23
	.uleb128 0x5
	.byte	0x3
	.byte	0x9a
	.long	0xc44
	.uleb128 0x5
	.byte	0x3
	.byte	0x9b
	.long	0xc6f
	.uleb128 0x5
	.byte	0x3
	.byte	0x9c
	.long	0xc8a
	.uleb128 0x5
	.byte	0x3
	.byte	0x9e
	.long	0xca0
	.uleb128 0x5
	.byte	0x3
	.byte	0xa0
	.long	0xcc1
	.uleb128 0x5
	.byte	0x3
	.byte	0xa1
	.long	0xcdd
	.uleb128 0x5
	.byte	0x3
	.byte	0xa2
	.long	0xcf8
	.uleb128 0x5
	.byte	0x3
	.byte	0xa4
	.long	0xd1e
	.uleb128 0x5
	.byte	0x3
	.byte	0xa7
	.long	0xd3e
	.uleb128 0x5
	.byte	0x3
	.byte	0xaa
	.long	0xd63
	.uleb128 0x5
	.byte	0x3
	.byte	0xac
	.long	0xd83
	.uleb128 0x5
	.byte	0x3
	.byte	0xae
	.long	0xd9e
	.uleb128 0x5
	.byte	0x3
	.byte	0xb0
	.long	0xdb9
	.uleb128 0x5
	.byte	0x3
	.byte	0xb1
	.long	0xddf
	.uleb128 0x5
	.byte	0x3
	.byte	0xb2
	.long	0xdf9
	.uleb128 0x5
	.byte	0x3
	.byte	0xb3
	.long	0xe13
	.uleb128 0x5
	.byte	0x3
	.byte	0xb4
	.long	0xe2d
	.uleb128 0x5
	.byte	0x3
	.byte	0xb5
	.long	0xe47
	.uleb128 0x5
	.byte	0x3
	.byte	0xb6
	.long	0xe61
	.uleb128 0x5
	.byte	0x3
	.byte	0xb7
	.long	0xf21
	.uleb128 0x5
	.byte	0x3
	.byte	0xb8
	.long	0xf37
	.uleb128 0x5
	.byte	0x3
	.byte	0xb9
	.long	0xf56
	.uleb128 0x5
	.byte	0x3
	.byte	0xba
	.long	0xf75
	.uleb128 0x5
	.byte	0x3
	.byte	0xbb
	.long	0xf94
	.uleb128 0x5
	.byte	0x3
	.byte	0xbc
	.long	0xfbf
	.uleb128 0x5
	.byte	0x3
	.byte	0xbd
	.long	0xfda
	.uleb128 0x5
	.byte	0x3
	.byte	0xbf
	.long	0x1002
	.uleb128 0x5
	.byte	0x3
	.byte	0xc1
	.long	0x1024
	.uleb128 0x5
	.byte	0x3
	.byte	0xc2
	.long	0x1044
	.uleb128 0x5
	.byte	0x3
	.byte	0xc3
	.long	0x106b
	.uleb128 0x5
	.byte	0x3
	.byte	0xc4
	.long	0x108b
	.uleb128 0x5
	.byte	0x3
	.byte	0xc5
	.long	0x10aa
	.uleb128 0x5
	.byte	0x3
	.byte	0xc6
	.long	0x10c0
	.uleb128 0x5
	.byte	0x3
	.byte	0xc7
	.long	0x10e0
	.uleb128 0x5
	.byte	0x3
	.byte	0xc8
	.long	0x1100
	.uleb128 0x5
	.byte	0x3
	.byte	0xc9
	.long	0x1120
	.uleb128 0x5
	.byte	0x3
	.byte	0xca
	.long	0x1140
	.uleb128 0x5
	.byte	0x3
	.byte	0xcb
	.long	0x1157
	.uleb128 0x5
	.byte	0x3
	.byte	0xcc
	.long	0x116e
	.uleb128 0x5
	.byte	0x3
	.byte	0xcd
	.long	0x118c
	.uleb128 0x5
	.byte	0x3
	.byte	0xce
	.long	0x11ab
	.uleb128 0x5
	.byte	0x3
	.byte	0xcf
	.long	0x11c9
	.uleb128 0x5
	.byte	0x3
	.byte	0xd0
	.long	0x11e8
	.uleb128 0x6
	.byte	0x3
	.value	0x108
	.long	0x120c
	.uleb128 0x6
	.byte	0x3
	.value	0x109
	.long	0x122e
	.uleb128 0x6
	.byte	0x3
	.value	0x10a
	.long	0x1255
	.uleb128 0x3
	.long	.LASF1
	.byte	0x5
	.byte	0x30
	.uleb128 0x7
	.long	.LASF106
	.byte	0x1
	.byte	0x6
	.byte	0xe9
	.long	0x3c3
	.uleb128 0x8
	.long	.LASF2
	.byte	0x6
	.byte	0xeb
	.long	0xa88
	.uleb128 0x8
	.long	.LASF3
	.byte	0x6
	.byte	0xec
	.long	0xa8f
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.byte	0xf2
	.long	.LASF267
	.long	0x237
	.uleb128 0xa
	.long	0x12a4
	.uleb128 0xa
	.long	0x12aa
	.byte	0
	.uleb128 0xb
	.long	0x207
	.uleb128 0xc
	.string	"eq"
	.byte	0x6
	.byte	0xf6
	.long	.LASF4
	.long	0x12b0
	.long	0x259
	.uleb128 0xa
	.long	0x12aa
	.uleb128 0xa
	.long	0x12aa
	.byte	0
	.uleb128 0xc
	.string	"lt"
	.byte	0x6
	.byte	0xfa
	.long	.LASF5
	.long	0x12b0
	.long	0x276
	.uleb128 0xa
	.long	0x12aa
	.uleb128 0xa
	.long	0x12aa
	.byte	0
	.uleb128 0xd
	.long	.LASF6
	.byte	0x6
	.value	0x102
	.long	.LASF8
	.long	0xa8f
	.long	0x29a
	.uleb128 0xa
	.long	0x12b7
	.uleb128 0xa
	.long	0x12b7
	.uleb128 0xa
	.long	0x3c3
	.byte	0
	.uleb128 0xd
	.long	.LASF7
	.byte	0x6
	.value	0x10a
	.long	.LASF9
	.long	0x3c3
	.long	0x2b4
	.uleb128 0xa
	.long	0x12b7
	.byte	0
	.uleb128 0xd
	.long	.LASF10
	.byte	0x6
	.value	0x10e
	.long	.LASF11
	.long	0x12b7
	.long	0x2d8
	.uleb128 0xa
	.long	0x12b7
	.uleb128 0xa
	.long	0x3c3
	.uleb128 0xa
	.long	0x12aa
	.byte	0
	.uleb128 0xd
	.long	.LASF12
	.byte	0x6
	.value	0x116
	.long	.LASF13
	.long	0x12bd
	.long	0x2fc
	.uleb128 0xa
	.long	0x12bd
	.uleb128 0xa
	.long	0x12b7
	.uleb128 0xa
	.long	0x3c3
	.byte	0
	.uleb128 0xd
	.long	.LASF14
	.byte	0x6
	.value	0x11e
	.long	.LASF15
	.long	0x12bd
	.long	0x320
	.uleb128 0xa
	.long	0x12bd
	.uleb128 0xa
	.long	0x12b7
	.uleb128 0xa
	.long	0x3c3
	.byte	0
	.uleb128 0xd
	.long	.LASF16
	.byte	0x6
	.value	0x126
	.long	.LASF17
	.long	0x12bd
	.long	0x344
	.uleb128 0xa
	.long	0x12bd
	.uleb128 0xa
	.long	0x3c3
	.uleb128 0xa
	.long	0x207
	.byte	0
	.uleb128 0xd
	.long	.LASF18
	.byte	0x6
	.value	0x12e
	.long	.LASF19
	.long	0x207
	.long	0x35e
	.uleb128 0xa
	.long	0x12c3
	.byte	0
	.uleb128 0xb
	.long	0x212
	.uleb128 0xd
	.long	.LASF20
	.byte	0x6
	.value	0x134
	.long	.LASF21
	.long	0x212
	.long	0x37d
	.uleb128 0xa
	.long	0x12aa
	.byte	0
	.uleb128 0xd
	.long	.LASF22
	.byte	0x6
	.value	0x138
	.long	.LASF23
	.long	0x12b0
	.long	0x39c
	.uleb128 0xa
	.long	0x12c3
	.uleb128 0xa
	.long	0x12c3
	.byte	0
	.uleb128 0xe
	.string	"eof"
	.byte	0x6
	.value	0x13c
	.long	.LASF268
	.long	0x212
	.uleb128 0xf
	.long	.LASF24
	.byte	0x6
	.value	0x140
	.long	.LASF269
	.long	0x212
	.uleb128 0xa
	.long	0x12c3
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0xc4
	.long	0xa21
	.uleb128 0x5
	.byte	0x7
	.byte	0x35
	.long	0x12c9
	.uleb128 0x5
	.byte	0x7
	.byte	0x36
	.long	0x13f6
	.uleb128 0x5
	.byte	0x7
	.byte	0x37
	.long	0x1410
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0xc5
	.long	0x1064
	.uleb128 0x10
	.long	.LASF48
	.byte	0x4
	.long	0xa8f
	.byte	0x8
	.byte	0x39
	.long	0x48f
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.uleb128 0x11
	.long	.LASF28
	.byte	0x2
	.uleb128 0x11
	.long	.LASF29
	.byte	0x4
	.uleb128 0x11
	.long	.LASF30
	.byte	0x8
	.uleb128 0x11
	.long	.LASF31
	.byte	0x10
	.uleb128 0x11
	.long	.LASF32
	.byte	0x20
	.uleb128 0x11
	.long	.LASF33
	.byte	0x40
	.uleb128 0x11
	.long	.LASF34
	.byte	0x80
	.uleb128 0x12
	.long	.LASF35
	.value	0x100
	.uleb128 0x12
	.long	.LASF36
	.value	0x200
	.uleb128 0x12
	.long	.LASF37
	.value	0x400
	.uleb128 0x12
	.long	.LASF38
	.value	0x800
	.uleb128 0x12
	.long	.LASF39
	.value	0x1000
	.uleb128 0x12
	.long	.LASF40
	.value	0x2000
	.uleb128 0x12
	.long	.LASF41
	.value	0x4000
	.uleb128 0x11
	.long	.LASF42
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF43
	.byte	0x4a
	.uleb128 0x12
	.long	.LASF44
	.value	0x104
	.uleb128 0x13
	.long	.LASF45
	.long	0x10000
	.uleb128 0x13
	.long	.LASF46
	.long	0x7fffffff
	.uleb128 0x14
	.long	.LASF47
	.sleb128 -2147483648
	.byte	0
	.uleb128 0x10
	.long	.LASF49
	.byte	0x4
	.long	0xa8f
	.byte	0x8
	.byte	0x6f
	.long	0x4e0
	.uleb128 0x11
	.long	.LASF50
	.byte	0x1
	.uleb128 0x11
	.long	.LASF51
	.byte	0x2
	.uleb128 0x11
	.long	.LASF52
	.byte	0x4
	.uleb128 0x11
	.long	.LASF53
	.byte	0x8
	.uleb128 0x11
	.long	.LASF54
	.byte	0x10
	.uleb128 0x11
	.long	.LASF55
	.byte	0x20
	.uleb128 0x13
	.long	.LASF56
	.long	0x10000
	.uleb128 0x13
	.long	.LASF57
	.long	0x7fffffff
	.uleb128 0x14
	.long	.LASF58
	.sleb128 -2147483648
	.byte	0
	.uleb128 0x10
	.long	.LASF59
	.byte	0x4
	.long	0xa8f
	.byte	0x8
	.byte	0x99
	.long	0x525
	.uleb128 0x11
	.long	.LASF60
	.byte	0
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.uleb128 0x11
	.long	.LASF62
	.byte	0x2
	.uleb128 0x11
	.long	.LASF63
	.byte	0x4
	.uleb128 0x13
	.long	.LASF64
	.long	0x10000
	.uleb128 0x13
	.long	.LASF65
	.long	0x7fffffff
	.uleb128 0x14
	.long	.LASF66
	.sleb128 -2147483648
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x4
	.long	0xa0d
	.byte	0x8
	.byte	0xc1
	.long	0x551
	.uleb128 0x11
	.long	.LASF68
	.byte	0
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.uleb128 0x11
	.long	.LASF70
	.byte	0x2
	.uleb128 0x13
	.long	.LASF71
	.long	0x10000
	.byte	0
	.uleb128 0x15
	.long	.LASF101
	.long	0x7ba
	.uleb128 0x16
	.long	.LASF270
	.byte	0x1
	.byte	0x8
	.value	0x259
	.byte	0x1
	.long	0x5b8
	.uleb128 0x17
	.long	.LASF72
	.byte	0x8
	.value	0x261
	.long	0x142c
	.uleb128 0x17
	.long	.LASF73
	.byte	0x8
	.value	0x262
	.long	0x12b0
	.uleb128 0x18
	.long	.LASF270
	.byte	0x8
	.value	0x25d
	.long	.LASF271
	.byte	0x1
	.long	0x595
	.long	0x59b
	.uleb128 0x19
	.long	0x1441
	.byte	0
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x8
	.value	0x25e
	.long	.LASF75
	.byte	0x1
	.long	0x5ac
	.uleb128 0x19
	.long	0x1441
	.uleb128 0x19
	.long	0xa8f
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF91
	.byte	0x8
	.value	0x143
	.long	0x3ee
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF76
	.byte	0x8
	.value	0x146
	.long	0x5d3
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x5b8
	.uleb128 0x1d
	.string	"dec"
	.byte	0x8
	.value	0x149
	.long	0x5d3
	.byte	0x1
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF77
	.byte	0x8
	.value	0x14c
	.long	0x5d3
	.byte	0x1
	.byte	0x4
	.uleb128 0x1d
	.string	"hex"
	.byte	0x8
	.value	0x14f
	.long	0x5d3
	.byte	0x1
	.byte	0x8
	.uleb128 0x1c
	.long	.LASF78
	.byte	0x8
	.value	0x154
	.long	0x5d3
	.byte	0x1
	.byte	0x10
	.uleb128 0x1c
	.long	.LASF79
	.byte	0x8
	.value	0x158
	.long	0x5d3
	.byte	0x1
	.byte	0x20
	.uleb128 0x1d
	.string	"oct"
	.byte	0x8
	.value	0x15b
	.long	0x5d3
	.byte	0x1
	.byte	0x40
	.uleb128 0x1c
	.long	.LASF80
	.byte	0x8
	.value	0x15f
	.long	0x5d3
	.byte	0x1
	.byte	0x80
	.uleb128 0x1e
	.long	.LASF81
	.byte	0x8
	.value	0x162
	.long	0x5d3
	.byte	0x1
	.value	0x100
	.uleb128 0x1e
	.long	.LASF82
	.byte	0x8
	.value	0x166
	.long	0x5d3
	.byte	0x1
	.value	0x200
	.uleb128 0x1e
	.long	.LASF83
	.byte	0x8
	.value	0x16a
	.long	0x5d3
	.byte	0x1
	.value	0x400
	.uleb128 0x1e
	.long	.LASF84
	.byte	0x8
	.value	0x16d
	.long	0x5d3
	.byte	0x1
	.value	0x800
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x8
	.value	0x170
	.long	0x5d3
	.byte	0x1
	.value	0x1000
	.uleb128 0x1e
	.long	.LASF86
	.byte	0x8
	.value	0x173
	.long	0x5d3
	.byte	0x1
	.value	0x2000
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x8
	.value	0x177
	.long	0x5d3
	.byte	0x1
	.value	0x4000
	.uleb128 0x1c
	.long	.LASF88
	.byte	0x8
	.value	0x17a
	.long	0x5d3
	.byte	0x1
	.byte	0xb0
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x8
	.value	0x17d
	.long	0x5d3
	.byte	0x1
	.byte	0x4a
	.uleb128 0x1e
	.long	.LASF90
	.byte	0x8
	.value	0x180
	.long	0x5d3
	.byte	0x1
	.value	0x104
	.uleb128 0x1b
	.long	.LASF92
	.byte	0x8
	.value	0x18e
	.long	0x4e0
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x8
	.value	0x192
	.long	0x6e9
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x6ce
	.uleb128 0x1c
	.long	.LASF94
	.byte	0x8
	.value	0x195
	.long	0x6e9
	.byte	0x1
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x8
	.value	0x19a
	.long	0x6e9
	.byte	0x1
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF96
	.byte	0x8
	.value	0x19d
	.long	0x6e9
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.long	.LASF97
	.byte	0x8
	.value	0x1ad
	.long	0x48f
	.byte	0x1
	.uleb128 0x1d
	.string	"app"
	.byte	0x8
	.value	0x1b0
	.long	0x733
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x718
	.uleb128 0x1d
	.string	"ate"
	.byte	0x8
	.value	0x1b3
	.long	0x733
	.byte	0x1
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF98
	.byte	0x8
	.value	0x1b8
	.long	0x733
	.byte	0x1
	.byte	0x4
	.uleb128 0x1d
	.string	"in"
	.byte	0x8
	.value	0x1bb
	.long	0x733
	.byte	0x1
	.byte	0x8
	.uleb128 0x1d
	.string	"out"
	.byte	0x8
	.value	0x1be
	.long	0x733
	.byte	0x1
	.byte	0x10
	.uleb128 0x1c
	.long	.LASF99
	.byte	0x8
	.value	0x1c1
	.long	0x733
	.byte	0x1
	.byte	0x20
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x8
	.value	0x1cd
	.long	0x525
	.byte	0x1
	.uleb128 0x1d
	.string	"beg"
	.byte	0x8
	.value	0x1d0
	.long	0x798
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x77d
	.uleb128 0x1d
	.string	"cur"
	.byte	0x8
	.value	0x1d3
	.long	0x798
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.string	"end"
	.byte	0x8
	.value	0x1d6
	.long	0x798
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x9
	.byte	0x52
	.long	0x1452
	.uleb128 0x5
	.byte	0x9
	.byte	0x53
	.long	0x1447
	.uleb128 0x5
	.byte	0x9
	.byte	0x54
	.long	0xa28
	.uleb128 0x5
	.byte	0x9
	.byte	0x5c
	.long	0x1468
	.uleb128 0x5
	.byte	0x9
	.byte	0x65
	.long	0x1482
	.uleb128 0x5
	.byte	0x9
	.byte	0x68
	.long	0x149c
	.uleb128 0x5
	.byte	0x9
	.byte	0x69
	.long	0x14b1
	.uleb128 0x15
	.long	.LASF102
	.long	0x807
	.uleb128 0x1f
	.long	.LASF112
	.long	0xa88
	.uleb128 0x20
	.long	.LASF272
	.long	0x1fb
	.byte	0
	.uleb128 0x8
	.long	.LASF103
	.byte	0xa
	.byte	0x8d
	.long	0x7eb
	.uleb128 0x21
	.long	.LASF273
	.byte	0x2
	.byte	0x3d
	.long	.LASF274
	.long	0x807
	.uleb128 0x22
	.long	.LASF252
	.byte	0x2
	.byte	0x4a
	.long	0x55a
	.byte	0
	.uleb128 0x23
	.long	.LASF104
	.byte	0x4
	.byte	0xdd
	.long	0x9b9
	.uleb128 0x3
	.long	.LASF0
	.byte	0x4
	.byte	0xde
	.uleb128 0x4
	.byte	0x4
	.byte	0xde
	.long	0x838
	.uleb128 0x5
	.byte	0x3
	.byte	0xf8
	.long	0x120c
	.uleb128 0x6
	.byte	0x3
	.value	0x101
	.long	0x122e
	.uleb128 0x6
	.byte	0x3
	.value	0x102
	.long	0x1255
	.uleb128 0x3
	.long	.LASF105
	.byte	0xb
	.byte	0x24
	.uleb128 0x5
	.byte	0xc
	.byte	0x2c
	.long	0x3c3
	.uleb128 0x5
	.byte	0xc
	.byte	0x2d
	.long	0x3e3
	.uleb128 0x7
	.long	.LASF107
	.byte	0x1
	.byte	0xd
	.byte	0x37
	.long	0x8b4
	.uleb128 0x24
	.long	.LASF108
	.byte	0xd
	.byte	0x3a
	.long	0xab3
	.uleb128 0x24
	.long	.LASF109
	.byte	0xd
	.byte	0x3b
	.long	0xab3
	.uleb128 0x24
	.long	.LASF110
	.byte	0xd
	.byte	0x3f
	.long	0x1437
	.uleb128 0x24
	.long	.LASF111
	.byte	0xd
	.byte	0x40
	.long	0xab3
	.uleb128 0x1f
	.long	.LASF113
	.long	0xa8f
	.byte	0
	.uleb128 0x7
	.long	.LASF114
	.byte	0x1
	.byte	0xd
	.byte	0x37
	.long	0x8f6
	.uleb128 0x24
	.long	.LASF108
	.byte	0xd
	.byte	0x3a
	.long	0x143c
	.uleb128 0x24
	.long	.LASF109
	.byte	0xd
	.byte	0x3b
	.long	0x143c
	.uleb128 0x24
	.long	.LASF110
	.byte	0xd
	.byte	0x3f
	.long	0x1437
	.uleb128 0x24
	.long	.LASF111
	.byte	0xd
	.byte	0x40
	.long	0xab3
	.uleb128 0x1f
	.long	.LASF113
	.long	0xa21
	.byte	0
	.uleb128 0x7
	.long	.LASF115
	.byte	0x1
	.byte	0xd
	.byte	0x37
	.long	0x938
	.uleb128 0x24
	.long	.LASF108
	.byte	0xd
	.byte	0x3a
	.long	0xabe
	.uleb128 0x24
	.long	.LASF109
	.byte	0xd
	.byte	0x3b
	.long	0xabe
	.uleb128 0x24
	.long	.LASF110
	.byte	0xd
	.byte	0x3f
	.long	0x1437
	.uleb128 0x24
	.long	.LASF111
	.byte	0xd
	.byte	0x40
	.long	0xab3
	.uleb128 0x1f
	.long	.LASF113
	.long	0xa88
	.byte	0
	.uleb128 0x7
	.long	.LASF116
	.byte	0x1
	.byte	0xd
	.byte	0x37
	.long	0x97a
	.uleb128 0x24
	.long	.LASF108
	.byte	0xd
	.byte	0x3a
	.long	0x14c6
	.uleb128 0x24
	.long	.LASF109
	.byte	0xd
	.byte	0x3b
	.long	0x14c6
	.uleb128 0x24
	.long	.LASF110
	.byte	0xd
	.byte	0x3f
	.long	0x1437
	.uleb128 0x24
	.long	.LASF111
	.byte	0xd
	.byte	0x40
	.long	0xab3
	.uleb128 0x1f
	.long	.LASF113
	.long	0x128a
	.byte	0
	.uleb128 0x25
	.long	.LASF275
	.byte	0x1
	.byte	0xd
	.byte	0x37
	.uleb128 0x24
	.long	.LASF108
	.byte	0xd
	.byte	0x3a
	.long	0x14cb
	.uleb128 0x24
	.long	.LASF109
	.byte	0xd
	.byte	0x3b
	.long	0x14cb
	.uleb128 0x24
	.long	.LASF110
	.byte	0xd
	.byte	0x3f
	.long	0x1437
	.uleb128 0x24
	.long	.LASF111
	.byte	0xd
	.byte	0x40
	.long	0xab3
	.uleb128 0x1f
	.long	.LASF113
	.long	0x1064
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF276
	.uleb128 0x8
	.long	.LASF117
	.byte	0xe
	.byte	0x40
	.long	0x9b9
	.uleb128 0x27
	.byte	0x8
	.byte	0x7
	.long	.LASF123
	.uleb128 0x7
	.long	.LASF118
	.byte	0x18
	.byte	0xf
	.byte	0
	.long	0xa0d
	.uleb128 0x28
	.long	.LASF119
	.byte	0xf
	.byte	0
	.long	0xa0d
	.byte	0
	.uleb128 0x28
	.long	.LASF120
	.byte	0xf
	.byte	0
	.long	0xa0d
	.byte	0x4
	.uleb128 0x28
	.long	.LASF121
	.byte	0xf
	.byte	0
	.long	0xa14
	.byte	0x8
	.uleb128 0x28
	.long	.LASF122
	.byte	0xf
	.byte	0
	.long	0xa14
	.byte	0x10
	.byte	0
	.uleb128 0x27
	.byte	0x4
	.byte	0x7
	.long	.LASF124
	.uleb128 0x29
	.byte	0x8
	.uleb128 0x8
	.long	.LASF25
	.byte	0x10
	.byte	0xd8
	.long	0xa21
	.uleb128 0x27
	.byte	0x8
	.byte	0x7
	.long	.LASF125
	.uleb128 0x2a
	.long	.LASF126
	.byte	0x10
	.value	0x165
	.long	0xa0d
	.uleb128 0x2b
	.byte	0x8
	.byte	0x11
	.byte	0x53
	.long	.LASF277
	.long	0xa78
	.uleb128 0x2c
	.byte	0x4
	.byte	0x11
	.byte	0x56
	.long	0xa5f
	.uleb128 0x2d
	.long	.LASF127
	.byte	0x11
	.byte	0x58
	.long	0xa0d
	.uleb128 0x2d
	.long	.LASF128
	.byte	0x11
	.byte	0x5c
	.long	0xa78
	.byte	0
	.uleb128 0x28
	.long	.LASF129
	.byte	0x11
	.byte	0x54
	.long	0xa8f
	.byte	0
	.uleb128 0x28
	.long	.LASF130
	.byte	0x11
	.byte	0x5d
	.long	0xa40
	.byte	0x4
	.byte	0
	.uleb128 0x2e
	.long	0xa88
	.long	0xa88
	.uleb128 0x2f
	.long	0x9c9
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.byte	0x6
	.long	.LASF131
	.uleb128 0x30
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	.LASF132
	.byte	0x11
	.byte	0x5e
	.long	0xa34
	.uleb128 0x8
	.long	.LASF133
	.byte	0x11
	.byte	0x6a
	.long	0xa96
	.uleb128 0x27
	.byte	0x2
	.byte	0x7
	.long	.LASF134
	.uleb128 0xb
	.long	0xa8f
	.uleb128 0x31
	.byte	0x8
	.long	0xabe
	.uleb128 0xb
	.long	0xa88
	.uleb128 0x32
	.long	.LASF135
	.byte	0x11
	.value	0x164
	.long	0xa28
	.long	0xad9
	.uleb128 0xa
	.long	0xa8f
	.byte	0
	.uleb128 0x32
	.long	.LASF136
	.byte	0x11
	.value	0x2ec
	.long	0xa28
	.long	0xaef
	.uleb128 0xa
	.long	0xaef
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0x9be
	.uleb128 0x32
	.long	.LASF137
	.byte	0x11
	.value	0x309
	.long	0xb15
	.long	0xb15
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xa8f
	.uleb128 0xa
	.long	0xaef
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0xb1b
	.uleb128 0x27
	.byte	0x4
	.byte	0x5
	.long	.LASF138
	.uleb128 0x32
	.long	.LASF139
	.byte	0x11
	.value	0x2fa
	.long	0xa28
	.long	0xb3d
	.uleb128 0xa
	.long	0xb1b
	.uleb128 0xa
	.long	0xaef
	.byte	0
	.uleb128 0x32
	.long	.LASF140
	.byte	0x11
	.value	0x310
	.long	0xa8f
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xaef
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0xb5e
	.uleb128 0xb
	.long	0xb1b
	.uleb128 0x32
	.long	.LASF141
	.byte	0x11
	.value	0x24e
	.long	0xa8f
	.long	0xb7e
	.uleb128 0xa
	.long	0xaef
	.uleb128 0xa
	.long	0xa8f
	.byte	0
	.uleb128 0x32
	.long	.LASF142
	.byte	0x11
	.value	0x255
	.long	0xa8f
	.long	0xb9a
	.uleb128 0xa
	.long	0xaef
	.uleb128 0xa
	.long	0xb58
	.uleb128 0x33
	.byte	0
	.uleb128 0x32
	.long	.LASF143
	.byte	0x11
	.value	0x27e
	.long	0xa8f
	.long	0xbb6
	.uleb128 0xa
	.long	0xaef
	.uleb128 0xa
	.long	0xb58
	.uleb128 0x33
	.byte	0
	.uleb128 0x32
	.long	.LASF144
	.byte	0x11
	.value	0x2ed
	.long	0xa28
	.long	0xbcc
	.uleb128 0xa
	.long	0xaef
	.byte	0
	.uleb128 0x34
	.long	.LASF242
	.byte	0x11
	.value	0x2f3
	.long	0xa28
	.uleb128 0x32
	.long	.LASF145
	.byte	0x11
	.value	0x17b
	.long	0xa16
	.long	0xbf8
	.uleb128 0xa
	.long	0xab8
	.uleb128 0xa
	.long	0xa16
	.uleb128 0xa
	.long	0xbf8
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0xaa1
	.uleb128 0x32
	.long	.LASF146
	.byte	0x11
	.value	0x170
	.long	0xa16
	.long	0xc23
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xab8
	.uleb128 0xa
	.long	0xa16
	.uleb128 0xa
	.long	0xbf8
	.byte	0
	.uleb128 0x32
	.long	.LASF147
	.byte	0x11
	.value	0x16c
	.long	0xa8f
	.long	0xc39
	.uleb128 0xa
	.long	0xc39
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0xc3f
	.uleb128 0xb
	.long	0xaa1
	.uleb128 0x32
	.long	.LASF148
	.byte	0x11
	.value	0x19b
	.long	0xa16
	.long	0xc69
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xc69
	.uleb128 0xa
	.long	0xa16
	.uleb128 0xa
	.long	0xbf8
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0xab8
	.uleb128 0x32
	.long	.LASF149
	.byte	0x11
	.value	0x2fb
	.long	0xa28
	.long	0xc8a
	.uleb128 0xa
	.long	0xb1b
	.uleb128 0xa
	.long	0xaef
	.byte	0
	.uleb128 0x32
	.long	.LASF150
	.byte	0x11
	.value	0x301
	.long	0xa28
	.long	0xca0
	.uleb128 0xa
	.long	0xb1b
	.byte	0
	.uleb128 0x32
	.long	.LASF151
	.byte	0x11
	.value	0x25f
	.long	0xa8f
	.long	0xcc1
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xa16
	.uleb128 0xa
	.long	0xb58
	.uleb128 0x33
	.byte	0
	.uleb128 0x32
	.long	.LASF152
	.byte	0x11
	.value	0x288
	.long	0xa8f
	.long	0xcdd
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.uleb128 0x33
	.byte	0
	.uleb128 0x32
	.long	.LASF153
	.byte	0x11
	.value	0x318
	.long	0xa28
	.long	0xcf8
	.uleb128 0xa
	.long	0xa28
	.uleb128 0xa
	.long	0xaef
	.byte	0
	.uleb128 0x32
	.long	.LASF154
	.byte	0x11
	.value	0x267
	.long	0xa8f
	.long	0xd18
	.uleb128 0xa
	.long	0xaef
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xd18
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0x9d0
	.uleb128 0x32
	.long	.LASF155
	.byte	0x11
	.value	0x2b4
	.long	0xa8f
	.long	0xd3e
	.uleb128 0xa
	.long	0xaef
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xd18
	.byte	0
	.uleb128 0x32
	.long	.LASF156
	.byte	0x11
	.value	0x274
	.long	0xa8f
	.long	0xd63
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xa16
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xd18
	.byte	0
	.uleb128 0x32
	.long	.LASF157
	.byte	0x11
	.value	0x2c0
	.long	0xa8f
	.long	0xd83
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xd18
	.byte	0
	.uleb128 0x32
	.long	.LASF158
	.byte	0x11
	.value	0x26f
	.long	0xa8f
	.long	0xd9e
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xd18
	.byte	0
	.uleb128 0x32
	.long	.LASF159
	.byte	0x11
	.value	0x2bc
	.long	0xa8f
	.long	0xdb9
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xd18
	.byte	0
	.uleb128 0x32
	.long	.LASF160
	.byte	0x11
	.value	0x175
	.long	0xa16
	.long	0xdd9
	.uleb128 0xa
	.long	0xdd9
	.uleb128 0xa
	.long	0xb1b
	.uleb128 0xa
	.long	0xbf8
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0xa88
	.uleb128 0x35
	.long	.LASF161
	.byte	0x11
	.byte	0x9d
	.long	0xb15
	.long	0xdf9
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xb58
	.byte	0
	.uleb128 0x35
	.long	.LASF162
	.byte	0x11
	.byte	0xa6
	.long	0xa8f
	.long	0xe13
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.byte	0
	.uleb128 0x35
	.long	.LASF163
	.byte	0x11
	.byte	0xc3
	.long	0xa8f
	.long	0xe2d
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.byte	0
	.uleb128 0x35
	.long	.LASF164
	.byte	0x11
	.byte	0x93
	.long	0xb15
	.long	0xe47
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xb58
	.byte	0
	.uleb128 0x35
	.long	.LASF165
	.byte	0x11
	.byte	0xff
	.long	0xa16
	.long	0xe61
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.byte	0
	.uleb128 0x32
	.long	.LASF166
	.byte	0x11
	.value	0x35a
	.long	0xa16
	.long	0xe86
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xa16
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xe86
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0xf1c
	.uleb128 0x36
	.string	"tm"
	.byte	0x38
	.byte	0x12
	.byte	0x85
	.long	0xf1c
	.uleb128 0x28
	.long	.LASF167
	.byte	0x12
	.byte	0x87
	.long	0xa8f
	.byte	0
	.uleb128 0x28
	.long	.LASF168
	.byte	0x12
	.byte	0x88
	.long	0xa8f
	.byte	0x4
	.uleb128 0x28
	.long	.LASF169
	.byte	0x12
	.byte	0x89
	.long	0xa8f
	.byte	0x8
	.uleb128 0x28
	.long	.LASF170
	.byte	0x12
	.byte	0x8a
	.long	0xa8f
	.byte	0xc
	.uleb128 0x28
	.long	.LASF171
	.byte	0x12
	.byte	0x8b
	.long	0xa8f
	.byte	0x10
	.uleb128 0x28
	.long	.LASF172
	.byte	0x12
	.byte	0x8c
	.long	0xa8f
	.byte	0x14
	.uleb128 0x28
	.long	.LASF173
	.byte	0x12
	.byte	0x8d
	.long	0xa8f
	.byte	0x18
	.uleb128 0x28
	.long	.LASF174
	.byte	0x12
	.byte	0x8e
	.long	0xa8f
	.byte	0x1c
	.uleb128 0x28
	.long	.LASF175
	.byte	0x12
	.byte	0x8f
	.long	0xa8f
	.byte	0x20
	.uleb128 0x28
	.long	.LASF176
	.byte	0x12
	.byte	0x92
	.long	0x1064
	.byte	0x28
	.uleb128 0x28
	.long	.LASF177
	.byte	0x12
	.byte	0x93
	.long	0xab8
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	0xe8c
	.uleb128 0x32
	.long	.LASF178
	.byte	0x11
	.value	0x122
	.long	0xa16
	.long	0xf37
	.uleb128 0xa
	.long	0xb58
	.byte	0
	.uleb128 0x35
	.long	.LASF179
	.byte	0x11
	.byte	0xa1
	.long	0xb15
	.long	0xf56
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xa16
	.byte	0
	.uleb128 0x35
	.long	.LASF180
	.byte	0x11
	.byte	0xa9
	.long	0xa8f
	.long	0xf75
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xa16
	.byte	0
	.uleb128 0x35
	.long	.LASF181
	.byte	0x11
	.byte	0x98
	.long	0xb15
	.long	0xf94
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xa16
	.byte	0
	.uleb128 0x32
	.long	.LASF182
	.byte	0x11
	.value	0x1a1
	.long	0xa16
	.long	0xfb9
	.uleb128 0xa
	.long	0xdd9
	.uleb128 0xa
	.long	0xfb9
	.uleb128 0xa
	.long	0xa16
	.uleb128 0xa
	.long	0xbf8
	.byte	0
	.uleb128 0x31
	.byte	0x8
	.long	0xb58
	.uleb128 0x32
	.long	.LASF183
	.byte	0x11
	.value	0x103
	.long	0xa16
	.long	0xfda
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.byte	0
	.uleb128 0x32
	.long	.LASF184
	.byte	0x11
	.value	0x1c5
	.long	0xff5
	.long	0xff5
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xffc
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.byte	0x4
	.long	.LASF185
	.uleb128 0x31
	.byte	0x8
	.long	0xb15
	.uleb128 0x32
	.long	.LASF186
	.byte	0x11
	.value	0x1cc
	.long	0x101d
	.long	0x101d
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xffc
	.byte	0
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.long	.LASF187
	.uleb128 0x32
	.long	.LASF188
	.byte	0x11
	.value	0x11d
	.long	0xb15
	.long	0x1044
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xffc
	.byte	0
	.uleb128 0x32
	.long	.LASF189
	.byte	0x11
	.value	0x1d7
	.long	0x1064
	.long	0x1064
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xffc
	.uleb128 0xa
	.long	0xa8f
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.byte	0x5
	.long	.LASF190
	.uleb128 0x32
	.long	.LASF191
	.byte	0x11
	.value	0x1dc
	.long	0xa21
	.long	0x108b
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xffc
	.uleb128 0xa
	.long	0xa8f
	.byte	0
	.uleb128 0x35
	.long	.LASF192
	.byte	0x11
	.byte	0xc7
	.long	0xa16
	.long	0x10aa
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xa16
	.byte	0
	.uleb128 0x32
	.long	.LASF193
	.byte	0x11
	.value	0x168
	.long	0xa8f
	.long	0x10c0
	.uleb128 0xa
	.long	0xa28
	.byte	0
	.uleb128 0x32
	.long	.LASF194
	.byte	0x11
	.value	0x148
	.long	0xa8f
	.long	0x10e0
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xa16
	.byte	0
	.uleb128 0x32
	.long	.LASF195
	.byte	0x11
	.value	0x14c
	.long	0xb15
	.long	0x1100
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xa16
	.byte	0
	.uleb128 0x32
	.long	.LASF196
	.byte	0x11
	.value	0x151
	.long	0xb15
	.long	0x1120
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xa16
	.byte	0
	.uleb128 0x32
	.long	.LASF197
	.byte	0x11
	.value	0x155
	.long	0xb15
	.long	0x1140
	.uleb128 0xa
	.long	0xb15
	.uleb128 0xa
	.long	0xb1b
	.uleb128 0xa
	.long	0xa16
	.byte	0
	.uleb128 0x32
	.long	.LASF198
	.byte	0x11
	.value	0x25c
	.long	0xa8f
	.long	0x1157
	.uleb128 0xa
	.long	0xb58
	.uleb128 0x33
	.byte	0
	.uleb128 0x32
	.long	.LASF199
	.byte	0x11
	.value	0x285
	.long	0xa8f
	.long	0x116e
	.uleb128 0xa
	.long	0xb58
	.uleb128 0x33
	.byte	0
	.uleb128 0x37
	.long	.LASF200
	.byte	0x11
	.byte	0xe3
	.long	.LASF200
	.long	0xb58
	.long	0x118c
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb1b
	.byte	0
	.uleb128 0xd
	.long	.LASF201
	.byte	0x11
	.value	0x109
	.long	.LASF201
	.long	0xb58
	.long	0x11ab
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.byte	0
	.uleb128 0x37
	.long	.LASF202
	.byte	0x11
	.byte	0xed
	.long	.LASF202
	.long	0xb58
	.long	0x11c9
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb1b
	.byte	0
	.uleb128 0xd
	.long	.LASF203
	.byte	0x11
	.value	0x114
	.long	.LASF203
	.long	0xb58
	.long	0x11e8
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb58
	.byte	0
	.uleb128 0xd
	.long	.LASF204
	.byte	0x11
	.value	0x13f
	.long	.LASF204
	.long	0xb58
	.long	0x120c
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xb1b
	.uleb128 0xa
	.long	0xa16
	.byte	0
	.uleb128 0x32
	.long	.LASF205
	.byte	0x11
	.value	0x1ce
	.long	0x1227
	.long	0x1227
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xffc
	.byte	0
	.uleb128 0x27
	.byte	0x10
	.byte	0x4
	.long	.LASF206
	.uleb128 0x32
	.long	.LASF207
	.byte	0x11
	.value	0x1e6
	.long	0x124e
	.long	0x124e
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xffc
	.uleb128 0xa
	.long	0xa8f
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.byte	0x5
	.long	.LASF208
	.uleb128 0x32
	.long	.LASF209
	.byte	0x11
	.value	0x1ed
	.long	0x1275
	.long	0x1275
	.uleb128 0xa
	.long	0xb58
	.uleb128 0xa
	.long	0xffc
	.uleb128 0xa
	.long	0xa8f
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.byte	0x7
	.long	.LASF210
	.uleb128 0x27
	.byte	0x1
	.byte	0x8
	.long	.LASF211
	.uleb128 0x27
	.byte	0x1
	.byte	0x6
	.long	.LASF212
	.uleb128 0x27
	.byte	0x2
	.byte	0x5
	.long	.LASF213
	.uleb128 0x23
	.long	.LASF214
	.byte	0x5
	.byte	0x37
	.long	0x12a4
	.uleb128 0x4
	.byte	0x5
	.byte	0x38
	.long	0x1f4
	.byte	0
	.uleb128 0x38
	.byte	0x8
	.long	0x207
	.uleb128 0x38
	.byte	0x8
	.long	0x237
	.uleb128 0x27
	.byte	0x1
	.byte	0x2
	.long	.LASF215
	.uleb128 0x31
	.byte	0x8
	.long	0x237
	.uleb128 0x31
	.byte	0x8
	.long	0x207
	.uleb128 0x38
	.byte	0x8
	.long	0x35e
	.uleb128 0x7
	.long	.LASF216
	.byte	0x60
	.byte	0x13
	.byte	0x35
	.long	0x13f6
	.uleb128 0x28
	.long	.LASF217
	.byte	0x13
	.byte	0x39
	.long	0xdd9
	.byte	0
	.uleb128 0x28
	.long	.LASF218
	.byte	0x13
	.byte	0x3a
	.long	0xdd9
	.byte	0x8
	.uleb128 0x28
	.long	.LASF219
	.byte	0x13
	.byte	0x40
	.long	0xdd9
	.byte	0x10
	.uleb128 0x28
	.long	.LASF220
	.byte	0x13
	.byte	0x46
	.long	0xdd9
	.byte	0x18
	.uleb128 0x28
	.long	.LASF221
	.byte	0x13
	.byte	0x47
	.long	0xdd9
	.byte	0x20
	.uleb128 0x28
	.long	.LASF222
	.byte	0x13
	.byte	0x48
	.long	0xdd9
	.byte	0x28
	.uleb128 0x28
	.long	.LASF223
	.byte	0x13
	.byte	0x49
	.long	0xdd9
	.byte	0x30
	.uleb128 0x28
	.long	.LASF224
	.byte	0x13
	.byte	0x4a
	.long	0xdd9
	.byte	0x38
	.uleb128 0x28
	.long	.LASF225
	.byte	0x13
	.byte	0x4b
	.long	0xdd9
	.byte	0x40
	.uleb128 0x28
	.long	.LASF226
	.byte	0x13
	.byte	0x4c
	.long	0xdd9
	.byte	0x48
	.uleb128 0x28
	.long	.LASF227
	.byte	0x13
	.byte	0x4d
	.long	0xa88
	.byte	0x50
	.uleb128 0x28
	.long	.LASF228
	.byte	0x13
	.byte	0x4e
	.long	0xa88
	.byte	0x51
	.uleb128 0x28
	.long	.LASF229
	.byte	0x13
	.byte	0x50
	.long	0xa88
	.byte	0x52
	.uleb128 0x28
	.long	.LASF230
	.byte	0x13
	.byte	0x52
	.long	0xa88
	.byte	0x53
	.uleb128 0x28
	.long	.LASF231
	.byte	0x13
	.byte	0x54
	.long	0xa88
	.byte	0x54
	.uleb128 0x28
	.long	.LASF232
	.byte	0x13
	.byte	0x56
	.long	0xa88
	.byte	0x55
	.uleb128 0x28
	.long	.LASF233
	.byte	0x13
	.byte	0x5d
	.long	0xa88
	.byte	0x56
	.uleb128 0x28
	.long	.LASF234
	.byte	0x13
	.byte	0x5e
	.long	0xa88
	.byte	0x57
	.uleb128 0x28
	.long	.LASF235
	.byte	0x13
	.byte	0x61
	.long	0xa88
	.byte	0x58
	.uleb128 0x28
	.long	.LASF236
	.byte	0x13
	.byte	0x63
	.long	0xa88
	.byte	0x59
	.uleb128 0x28
	.long	.LASF237
	.byte	0x13
	.byte	0x65
	.long	0xa88
	.byte	0x5a
	.uleb128 0x28
	.long	.LASF238
	.byte	0x13
	.byte	0x67
	.long	0xa88
	.byte	0x5b
	.uleb128 0x28
	.long	.LASF239
	.byte	0x13
	.byte	0x6e
	.long	0xa88
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF240
	.byte	0x13
	.byte	0x6f
	.long	0xa88
	.byte	0x5d
	.byte	0
	.uleb128 0x35
	.long	.LASF241
	.byte	0x13
	.byte	0x7c
	.long	0xdd9
	.long	0x1410
	.uleb128 0xa
	.long	0xa8f
	.uleb128 0xa
	.long	0xab8
	.byte	0
	.uleb128 0x39
	.long	.LASF243
	.byte	0x13
	.byte	0x7f
	.long	0x141b
	.uleb128 0x31
	.byte	0x8
	.long	0x12c9
	.uleb128 0x8
	.long	.LASF244
	.byte	0x14
	.byte	0x28
	.long	0xa8f
	.uleb128 0x8
	.long	.LASF245
	.byte	0x15
	.byte	0x20
	.long	0xa8f
	.uleb128 0xb
	.long	0x12b0
	.uleb128 0xb
	.long	0xa21
	.uleb128 0x31
	.byte	0x8
	.long	0x55a
	.uleb128 0x8
	.long	.LASF246
	.byte	0x16
	.byte	0x34
	.long	0xa21
	.uleb128 0x8
	.long	.LASF247
	.byte	0x16
	.byte	0xba
	.long	0x145d
	.uleb128 0x31
	.byte	0x8
	.long	0x1463
	.uleb128 0xb
	.long	0x1421
	.uleb128 0x35
	.long	.LASF248
	.byte	0x16
	.byte	0xaf
	.long	0xa8f
	.long	0x1482
	.uleb128 0xa
	.long	0xa28
	.uleb128 0xa
	.long	0x1447
	.byte	0
	.uleb128 0x35
	.long	.LASF249
	.byte	0x16
	.byte	0xdd
	.long	0xa28
	.long	0x149c
	.uleb128 0xa
	.long	0xa28
	.uleb128 0xa
	.long	0x1452
	.byte	0
	.uleb128 0x35
	.long	.LASF250
	.byte	0x16
	.byte	0xda
	.long	0x1452
	.long	0x14b1
	.uleb128 0xa
	.long	0xab8
	.byte	0
	.uleb128 0x35
	.long	.LASF251
	.byte	0x16
	.byte	0xab
	.long	0x1447
	.long	0x14c6
	.uleb128 0xa
	.long	0xab8
	.byte	0
	.uleb128 0xb
	.long	0x128a
	.uleb128 0xb
	.long	0x1064
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.long	0x2d
	.uleb128 0x3a
	.long	.LASF278
	.byte	0x1
	.byte	0x7
	.long	0xa8f
	.quad	.LFB1021
	.quad	.LFE1021-.LFB1021
	.uleb128 0x1
	.byte	0x9c
	.long	0x1508
	.uleb128 0x3b
	.string	"str"
	.byte	0x1
	.byte	0x9
	.long	0x1508
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x2e
	.long	0xa88
	.long	0x1518
	.uleb128 0x2f
	.long	0x9c9
	.byte	0xc7
	.byte	0
	.uleb128 0x3c
	.long	.LASF279
	.quad	.LFB1030
	.quad	.LFE1030-.LFB1030
	.uleb128 0x1
	.byte	0x9c
	.long	0x1550
	.uleb128 0x3d
	.long	.LASF253
	.byte	0x1
	.byte	0xe
	.long	0xa8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3d
	.long	.LASF254
	.byte	0x1
	.byte	0xe
	.long	0xa8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3e
	.long	.LASF280
	.quad	.LFB1031
	.quad	.LFE1031-.LFB1031
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3f
	.long	.LASF255
	.long	0xa14
	.uleb128 0x40
	.long	0x821
	.uleb128 0x9
	.byte	0x3
	.quad	_ZStL8__ioinit
	.uleb128 0x41
	.long	0x87e
	.long	.LASF256
	.sleb128 -2147483648
	.uleb128 0x42
	.long	0x889
	.long	.LASF257
	.long	0x7fffffff
	.uleb128 0x43
	.long	0x8e1
	.long	.LASF258
	.byte	0x40
	.uleb128 0x43
	.long	0x90d
	.long	.LASF259
	.byte	0x7f
	.uleb128 0x41
	.long	0x944
	.long	.LASF260
	.sleb128 -32768
	.uleb128 0x44
	.long	0x94f
	.long	.LASF261
	.value	0x7fff
	.uleb128 0x41
	.long	0x982
	.long	.LASF262
	.sleb128 -9223372036854775808
	.uleb128 0x45
	.long	0x98d
	.long	.LASF263
	.quad	0x7fffffffffffffff
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
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
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
	.uleb128 0x9
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1e
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x17
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
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x37
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3a
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.byte	0
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
.LASF280:
	.string	"_GLOBAL__sub_I_main"
.LASF70:
	.string	"_S_end"
.LASF25:
	.string	"size_t"
.LASF123:
	.string	"sizetype"
.LASF169:
	.string	"tm_hour"
.LASF110:
	.string	"__is_signed"
.LASF264:
	.string	"GNU C++ 5.4.0 20160609 -mtune=generic -march=x86-64 -g -fstack-protector-strong"
.LASF107:
	.string	"__numeric_traits_integer<int>"
.LASF257:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__maxE"
.LASF76:
	.string	"boolalpha"
.LASF81:
	.string	"scientific"
.LASF109:
	.string	"__max"
.LASF165:
	.string	"wcscspn"
.LASF243:
	.string	"localeconv"
.LASF47:
	.string	"_S_ios_fmtflags_min"
.LASF228:
	.string	"frac_digits"
.LASF65:
	.string	"_S_ios_iostate_max"
.LASF220:
	.string	"int_curr_symbol"
.LASF96:
	.string	"goodbit"
.LASF200:
	.string	"wcschr"
.LASF27:
	.string	"_S_boolalpha"
.LASF61:
	.string	"_S_badbit"
.LASF95:
	.string	"failbit"
.LASF231:
	.string	"n_cs_precedes"
.LASF146:
	.string	"mbrtowc"
.LASF192:
	.string	"wcsxfrm"
.LASF227:
	.string	"int_frac_digits"
.LASF68:
	.string	"_S_beg"
.LASF163:
	.string	"wcscoll"
.LASF85:
	.string	"skipws"
.LASF127:
	.string	"__wch"
.LASF13:
	.string	"_ZNSt11char_traitsIcE4moveEPcPKcm"
.LASF87:
	.string	"uppercase"
.LASF43:
	.string	"_S_basefield"
.LASF21:
	.string	"_ZNSt11char_traitsIcE11to_int_typeERKc"
.LASF222:
	.string	"mon_decimal_point"
.LASF190:
	.string	"long int"
.LASF115:
	.string	"__numeric_traits_integer<char>"
.LASF158:
	.string	"vwprintf"
.LASF49:
	.string	"_Ios_Openmode"
.LASF3:
	.string	"int_type"
.LASF278:
	.string	"main"
.LASF237:
	.string	"int_n_cs_precedes"
.LASF58:
	.string	"_S_ios_openmode_min"
.LASF249:
	.string	"towctrans"
.LASF14:
	.string	"copy"
.LASF5:
	.string	"_ZNSt11char_traitsIcE2ltERKcS2_"
.LASF252:
	.string	"__ioinit"
.LASF73:
	.string	"_S_synced_with_stdio"
.LASF113:
	.string	"_Value"
.LASF62:
	.string	"_S_eofbit"
.LASF265:
	.string	"main.cpp"
.LASF174:
	.string	"tm_yday"
.LASF212:
	.string	"signed char"
.LASF276:
	.string	"_IO_FILE"
.LASF102:
	.string	"basic_ostream<char, std::char_traits<char> >"
.LASF130:
	.string	"__value"
.LASF246:
	.string	"wctype_t"
.LASF136:
	.string	"fgetwc"
.LASF242:
	.string	"getwchar"
.LASF137:
	.string	"fgetws"
.LASF34:
	.string	"_S_right"
.LASF2:
	.string	"char_type"
.LASF211:
	.string	"unsigned char"
.LASF232:
	.string	"n_sep_by_space"
.LASF204:
	.string	"wmemchr"
.LASF60:
	.string	"_S_goodbit"
.LASF261:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__maxE"
.LASF52:
	.string	"_S_bin"
.LASF162:
	.string	"wcscmp"
.LASF24:
	.string	"not_eof"
.LASF151:
	.string	"swprintf"
.LASF201:
	.string	"wcspbrk"
.LASF54:
	.string	"_S_out"
.LASF131:
	.string	"char"
.LASF50:
	.string	"_S_app"
.LASF133:
	.string	"mbstate_t"
.LASF251:
	.string	"wctype"
.LASF97:
	.string	"openmode"
.LASF180:
	.string	"wcsncmp"
.LASF240:
	.string	"int_n_sign_posn"
.LASF234:
	.string	"n_sign_posn"
.LASF75:
	.string	"_ZNSt8ios_base4InitD4Ev"
.LASF196:
	.string	"wmemmove"
.LASF108:
	.string	"__min"
.LASF135:
	.string	"btowc"
.LASF199:
	.string	"wscanf"
.LASF223:
	.string	"mon_thousands_sep"
.LASF153:
	.string	"ungetwc"
.LASF120:
	.string	"fp_offset"
.LASF26:
	.string	"ptrdiff_t"
.LASF256:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIiE5__minE"
.LASF247:
	.string	"wctrans_t"
.LASF145:
	.string	"mbrlen"
.LASF226:
	.string	"negative_sign"
.LASF30:
	.string	"_S_hex"
.LASF235:
	.string	"int_p_cs_precedes"
.LASF142:
	.string	"fwprintf"
.LASF66:
	.string	"_S_ios_iostate_min"
.LASF273:
	.string	"cout"
.LASF209:
	.string	"wcstoull"
.LASF31:
	.string	"_S_internal"
.LASF6:
	.string	"compare"
.LASF170:
	.string	"tm_mday"
.LASF89:
	.string	"basefield"
.LASF164:
	.string	"wcscpy"
.LASF112:
	.string	"_CharT"
.LASF77:
	.string	"fixed"
.LASF156:
	.string	"vswprintf"
.LASF197:
	.string	"wmemset"
.LASF100:
	.string	"seekdir"
.LASF141:
	.string	"fwide"
.LASF79:
	.string	"left"
.LASF167:
	.string	"tm_sec"
.LASF175:
	.string	"tm_isdst"
.LASF181:
	.string	"wcsncpy"
.LASF150:
	.string	"putwchar"
.LASF194:
	.string	"wmemcmp"
.LASF51:
	.string	"_S_ate"
.LASF15:
	.string	"_ZNSt11char_traitsIcE4copyEPcPKcm"
.LASF10:
	.string	"find"
.LASF29:
	.string	"_S_fixed"
.LASF238:
	.string	"int_n_sep_by_space"
.LASF254:
	.string	"__priority"
.LASF12:
	.string	"move"
.LASF36:
	.string	"_S_showbase"
.LASF53:
	.string	"_S_in"
.LASF214:
	.string	"__gnu_debug"
.LASF154:
	.string	"vfwprintf"
.LASF157:
	.string	"vswscanf"
.LASF230:
	.string	"p_sep_by_space"
.LASF22:
	.string	"eq_int_type"
.LASF72:
	.string	"_S_refcount"
.LASF19:
	.string	"_ZNSt11char_traitsIcE12to_char_typeERKi"
.LASF55:
	.string	"_S_trunc"
.LASF253:
	.string	"__initialize_p"
.LASF80:
	.string	"right"
.LASF38:
	.string	"_S_showpos"
.LASF132:
	.string	"__mbstate_t"
.LASF195:
	.string	"wmemcpy"
.LASF171:
	.string	"tm_mon"
.LASF28:
	.string	"_S_dec"
.LASF48:
	.string	"_Ios_Fmtflags"
.LASF189:
	.string	"wcstol"
.LASF185:
	.string	"double"
.LASF11:
	.string	"_ZNSt11char_traitsIcE4findEPKcmRS1_"
.LASF260:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIsE5__minE"
.LASF266:
	.string	"/home/zhangkc/mytools/CppUseClib"
.LASF193:
	.string	"wctob"
.LASF37:
	.string	"_S_showpoint"
.LASF39:
	.string	"_S_skipws"
.LASF119:
	.string	"gp_offset"
.LASF42:
	.string	"_S_adjustfield"
.LASF258:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerImE8__digitsE"
.LASF187:
	.string	"float"
.LASF78:
	.string	"internal"
.LASF274:
	.string	"_ZSt4cout"
.LASF168:
	.string	"tm_min"
.LASF32:
	.string	"_S_left"
.LASF124:
	.string	"unsigned int"
.LASF262:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIlE5__minE"
.LASF106:
	.string	"char_traits<char>"
.LASF225:
	.string	"positive_sign"
.LASF56:
	.string	"_S_ios_openmode_end"
.LASF183:
	.string	"wcsspn"
.LASF233:
	.string	"p_sign_posn"
.LASF23:
	.string	"_ZNSt11char_traitsIcE11eq_int_typeERKiS2_"
.LASF41:
	.string	"_S_uppercase"
.LASF245:
	.string	"_Atomic_word"
.LASF82:
	.string	"showbase"
.LASF121:
	.string	"overflow_arg_area"
.LASF45:
	.string	"_S_ios_fmtflags_end"
.LASF270:
	.string	"Init"
.LASF103:
	.string	"ostream"
.LASF217:
	.string	"decimal_point"
.LASF129:
	.string	"__count"
.LASF104:
	.string	"__gnu_cxx"
.LASF215:
	.string	"bool"
.LASF17:
	.string	"_ZNSt11char_traitsIcE6assignEPcmc"
.LASF206:
	.string	"long double"
.LASF149:
	.string	"putwc"
.LASF275:
	.string	"__numeric_traits_integer<long int>"
.LASF84:
	.string	"showpos"
.LASF44:
	.string	"_S_floatfield"
.LASF33:
	.string	"_S_oct"
.LASF128:
	.string	"__wchb"
.LASF98:
	.string	"binary"
.LASF279:
	.string	"__static_initialization_and_destruction_0"
.LASF8:
	.string	"_ZNSt11char_traitsIcE7compareEPKcS2_m"
.LASF210:
	.string	"long long unsigned int"
.LASF122:
	.string	"reg_save_area"
.LASF205:
	.string	"wcstold"
.LASF236:
	.string	"int_p_sep_by_space"
.LASF71:
	.string	"_S_ios_seekdir_end"
.LASF7:
	.string	"length"
.LASF207:
	.string	"wcstoll"
.LASF203:
	.string	"wcsstr"
.LASF59:
	.string	"_Ios_Iostate"
.LASF125:
	.string	"long unsigned int"
.LASF259:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIcE5__maxE"
.LASF182:
	.string	"wcsrtombs"
.LASF88:
	.string	"adjustfield"
.LASF173:
	.string	"tm_wday"
.LASF40:
	.string	"_S_unitbuf"
.LASF4:
	.string	"_ZNSt11char_traitsIcE2eqERKcS2_"
.LASF90:
	.string	"floatfield"
.LASF152:
	.string	"swscanf"
.LASF111:
	.string	"__digits"
.LASF184:
	.string	"wcstod"
.LASF186:
	.string	"wcstof"
.LASF188:
	.string	"wcstok"
.LASF0:
	.string	"__cxx11"
.LASF99:
	.string	"trunc"
.LASF117:
	.string	"__FILE"
.LASF83:
	.string	"showpoint"
.LASF241:
	.string	"setlocale"
.LASF202:
	.string	"wcsrchr"
.LASF143:
	.string	"fwscanf"
.LASF126:
	.string	"wint_t"
.LASF57:
	.string	"_S_ios_openmode_max"
.LASF101:
	.string	"ios_base"
.LASF93:
	.string	"badbit"
.LASF250:
	.string	"wctrans"
.LASF218:
	.string	"thousands_sep"
.LASF271:
	.string	"_ZNSt8ios_base4InitC4Ev"
.LASF94:
	.string	"eofbit"
.LASF178:
	.string	"wcslen"
.LASF92:
	.string	"iostate"
.LASF46:
	.string	"_S_ios_fmtflags_max"
.LASF20:
	.string	"to_int_type"
.LASF18:
	.string	"to_char_type"
.LASF1:
	.string	"__debug"
.LASF176:
	.string	"tm_gmtoff"
.LASF221:
	.string	"currency_symbol"
.LASF213:
	.string	"short int"
.LASF9:
	.string	"_ZNSt11char_traitsIcE6lengthEPKc"
.LASF166:
	.string	"wcsftime"
.LASF224:
	.string	"mon_grouping"
.LASF69:
	.string	"_S_cur"
.LASF267:
	.string	"_ZNSt11char_traitsIcE6assignERcRKc"
.LASF161:
	.string	"wcscat"
.LASF277:
	.string	"11__mbstate_t"
.LASF239:
	.string	"int_p_sign_posn"
.LASF177:
	.string	"tm_zone"
.LASF159:
	.string	"vwscanf"
.LASF64:
	.string	"_S_ios_iostate_end"
.LASF160:
	.string	"wcrtomb"
.LASF216:
	.string	"lconv"
.LASF86:
	.string	"unitbuf"
.LASF268:
	.string	"_ZNSt11char_traitsIcE3eofEv"
.LASF179:
	.string	"wcsncat"
.LASF116:
	.string	"__numeric_traits_integer<short int>"
.LASF255:
	.string	"__dso_handle"
.LASF208:
	.string	"long long int"
.LASF139:
	.string	"fputwc"
.LASF140:
	.string	"fputws"
.LASF74:
	.string	"~Init"
.LASF148:
	.string	"mbsrtowcs"
.LASF63:
	.string	"_S_failbit"
.LASF229:
	.string	"p_cs_precedes"
.LASF114:
	.string	"__numeric_traits_integer<long unsigned int>"
.LASF172:
	.string	"tm_year"
.LASF134:
	.string	"short unsigned int"
.LASF272:
	.string	"_Traits"
.LASF105:
	.string	"__ops"
.LASF155:
	.string	"vfwscanf"
.LASF67:
	.string	"_Ios_Seekdir"
.LASF91:
	.string	"fmtflags"
.LASF244:
	.string	"__int32_t"
.LASF144:
	.string	"getwc"
.LASF147:
	.string	"mbsinit"
.LASF248:
	.string	"iswctype"
.LASF16:
	.string	"assign"
.LASF219:
	.string	"grouping"
.LASF198:
	.string	"wprintf"
.LASF263:
	.string	"_ZN9__gnu_cxx24__numeric_traits_integerIlE5__maxE"
.LASF269:
	.string	"_ZNSt11char_traitsIcE7not_eofERKi"
.LASF35:
	.string	"_S_scientific"
.LASF138:
	.string	"wchar_t"
.LASF118:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF191:
	.string	"wcstoul"
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
