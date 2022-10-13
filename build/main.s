	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction" "src/main.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"test"
.LC1:
	.string	"hallo"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL0:
.LFB39:
	.file 1 "src/main.c"
	.loc 1 6 32 view -0
	.cfi_startproc
	.loc 1 6 32 is_stmt 0 view .LVU1
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 6 32 view .LVU2
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 8 2 is_stmt 1 view .LVU3
	.loc 1 9 2 view .LVU4
.LVL1:
	.loc 1 10 2 view .LVU5
	.loc 1 12 2 view .LVU6
	movq	%rsp, %rbp
	movq	%rbp, %rdi
.LVL2:
	.loc 1 12 2 is_stmt 0 view .LVU7
	call	init_queue@PLT
.LVL3:
	.loc 1 14 2 is_stmt 1 view .LVU8
	leaq	.LC0(%rip), %rsi
	movq	%rbp, %rdi
	call	enqueue@PLT
.LVL4:
	.loc 1 15 2 view .LVU9
	leaq	.LC1(%rip), %rsi
	movq	%rbp, %rdi
	call	enqueue@PLT
.LVL5:
	.loc 1 17 2 view .LVU10
	movq	%rbp, %rdi
	call	print_queue@PLT
.LVL6:
	.loc 1 19 2 view .LVU11
	movq	%rbp, %rdi
	call	dequeue@PLT
.LVL7:
	.loc 1 21 2 view .LVU12
	movq	%rbp, %rdi
	call	print_queue@PLT
.LVL8:
	.loc 1 23 2 view .LVU13
	movq	%rbp, %rdi
	call	free_queue@PLT
.LVL9:
	.loc 1 25 2 view .LVU14
	.loc 1 26 1 is_stmt 0 view .LVU15
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L5
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL10:
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "include/queue.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x275
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL2
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	0x67
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0xc
	.long	.LASF25
	.byte	0x10
	.byte	0x2
	.byte	0x4
	.byte	0x10
	.long	0xae
	.uleb128 0x7
	.long	.LASF12
	.byte	0x5
	.byte	0x9
	.long	0xae
	.byte	0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x6
	.byte	0x6
	.long	0x54
	.byte	0x8
	.uleb128 0x7
	.long	.LASF14
	.byte	0x7
	.byte	0x6
	.long	0x54
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	0x62
	.uleb128 0xd
	.long	.LASF26
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.long	0x7c
	.uleb128 0x5
	.long	.LASF15
	.byte	0xb
	.long	0xcf
	.uleb128 0x4
	.long	0xcf
	.byte	0
	.uleb128 0x6
	.long	0xb3
	.uleb128 0xe
	.long	.LASF27
	.byte	0x2
	.byte	0xd
	.byte	0x7
	.long	0x62
	.long	0xea
	.uleb128 0x4
	.long	0xcf
	.byte	0
	.uleb128 0x5
	.long	.LASF16
	.byte	0xc
	.long	0xfa
	.uleb128 0x4
	.long	0xcf
	.byte	0
	.uleb128 0x5
	.long	.LASF17
	.byte	0xe
	.long	0x10f
	.uleb128 0x4
	.long	0xcf
	.uleb128 0x4
	.long	0x62
	.byte	0
	.uleb128 0x5
	.long	.LASF18
	.byte	0xa
	.long	0x11f
	.uleb128 0x4
	.long	0xcf
	.byte	0
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.long	0x54
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x26f
	.uleb128 0x9
	.long	.LASF19
	.byte	0xe
	.long	0x54
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1b
	.long	0xae
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x8
	.long	.LASF21
	.byte	0x8
	.byte	0xa
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF22
	.byte	0x9
	.byte	0x8
	.long	0x62
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x8
	.long	.LASF23
	.byte	0xa
	.byte	0x8
	.long	0x62
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.uleb128 0x3
	.quad	.LVL3
	.long	0x10f
	.long	0x1b7
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL4
	.long	0xfa
	.long	0x1dc
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x3
	.quad	.LVL5
	.long	0xfa
	.long	0x201
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x3
	.quad	.LVL6
	.long	0xea
	.long	0x219
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL7
	.long	0xd4
	.long	0x231
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL8
	.long	0xea
	.long	0x249
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL9
	.long	0xbf
	.long	0x261
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.quad	.LVL10
	.long	0x26f
	.byte	0
	.uleb128 0x11
	.long	.LASF29
	.long	.LASF29
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE39-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LFE39-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL2:
	.byte	0x7
	.quad	.LFB39
	.uleb128 .LFE39-.LFB39
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"long long int"
.LASF3:
	.string	"unsigned int"
.LASF23:
	.string	"word1"
.LASF28:
	.string	"main"
.LASF14:
	.string	"head"
.LASF2:
	.string	"long unsigned int"
.LASF21:
	.string	"queue"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"tail"
.LASF25:
	.string	"Queue"
.LASF26:
	.string	"queue_t"
.LASF15:
	.string	"free_queue"
.LASF16:
	.string	"print_queue"
.LASF4:
	.string	"unsigned char"
.LASF12:
	.string	"data"
.LASF18:
	.string	"init_queue"
.LASF27:
	.string	"dequeue"
.LASF8:
	.string	"long int"
.LASF20:
	.string	"argv"
.LASF22:
	.string	"word0"
.LASF19:
	.string	"argc"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF29:
	.string	"__stack_chk_fail"
.LASF24:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"char"
.LASF17:
	.string	"enqueue"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/finn/Documents/OTH/CC/CompilerConstruction"
.LASF0:
	.string	"src/main.c"
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
