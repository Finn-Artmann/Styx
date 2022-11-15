	.file	"generic_pda.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction/ex6/ex1" "src/generic_pda.c"
	.p2align 4
	.globl	create_dfa
	.type	create_dfa, @function
create_dfa:
.LVL0:
.LFB51:
	.file 1 "src/generic_pda.c"
	.loc 1 11 53 view -0
	.cfi_startproc
	.loc 1 11 53 is_stmt 0 view .LVU1
	endbr64
	.loc 1 12 5 is_stmt 1 view .LVU2
	.loc 1 11 53 is_stmt 0 view .LVU3
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edi, %ebp
	.loc 1 12 23 view .LVU4
	movl	$16, %edi
.LVL1:
	.loc 1 11 53 view .LVU5
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 12 23 view .LVU6
	call	malloc@PLT
.LVL2:
	.loc 1 14 5 is_stmt 1 view .LVU7
	.loc 1 14 18 is_stmt 0 view .LVU8
	movl	%ebp, (%rax)
	.loc 1 15 5 is_stmt 1 view .LVU9
	.loc 1 15 21 is_stmt 0 view .LVU10
	movq	%rbx, 8(%rax)
	.loc 1 17 5 is_stmt 1 view .LVU11
	.loc 1 18 1 is_stmt 0 view .LVU12
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL3:
	.loc 1 18 1 view .LVU13
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL4:
	.loc 1 18 1 view .LVU14
	ret
	.cfi_endproc
.LFE51:
	.size	create_dfa, .-create_dfa
	.p2align 4
	.globl	dfa_new_ctx
	.type	dfa_new_ctx, @function
dfa_new_ctx:
.LVL5:
.LFB52:
	.loc 1 20 59 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 20 59 is_stmt 0 view .LVU16
	endbr64
	.loc 1 21 5 is_stmt 1 view .LVU17
	.loc 1 20 59 is_stmt 0 view .LVU18
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 20 59 view .LVU19
	movq	%rdi, %rbx
	.loc 1 21 27 view .LVU20
	movl	$40, %edi
.LVL6:
	.loc 1 21 27 view .LVU21
	call	malloc@PLT
.LVL7:
	.loc 1 25 18 view .LVU22
	movq	%rbp, %rdi
	.loc 1 23 14 view .LVU23
	movq	%rbx, (%rax)
	.loc 1 21 27 view .LVU24
	movq	%rax, %r12
.LVL8:
	.loc 1 23 5 is_stmt 1 view .LVU25
	.loc 1 24 5 view .LVU26
	.loc 1 24 16 is_stmt 0 view .LVU27
	movl	(%rbx), %eax
.LVL9:
	.loc 1 24 16 view .LVU28
	movl	%eax, 8(%r12)
	.loc 1 25 5 is_stmt 1 view .LVU29
	.loc 1 25 18 is_stmt 0 view .LVU30
	call	strdup@PLT
.LVL10:
	.loc 1 29 1 view .LVU31
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL11:
	.loc 1 29 1 view .LVU32
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL12:
	.loc 1 26 17 view .LVU33
	movl	$0, 24(%r12)
	.loc 1 25 16 view .LVU34
	movq	%rax, 16(%r12)
	.loc 1 26 5 is_stmt 1 view .LVU35
	.loc 1 28 5 view .LVU36
	.loc 1 29 1 is_stmt 0 view .LVU37
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL13:
	.loc 1 29 1 view .LVU38
	ret
	.cfi_endproc
.LFE52:
	.size	dfa_new_ctx, .-dfa_new_ctx
	.p2align 4
	.globl	run_dfa
	.type	run_dfa, @function
run_dfa:
.LVL14:
.LFB53:
	.loc 1 31 35 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 31 35 is_stmt 0 view .LVU40
	endbr64
	.loc 1 32 5 is_stmt 1 view .LVU41
	.loc 1 31 35 is_stmt 0 view .LVU42
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 31 35 view .LVU43
	movq	%rdi, %rbx
.LBB2:
	.loc 1 37 22 view .LVU44
	movl	8(%rdi), %edi
.LVL15:
	.loc 1 37 22 view .LVU45
.LBE2:
	.loc 1 32 11 view .LVU46
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L9:
.LBB3:
	.loc 1 35 9 is_stmt 1 view .LVU47
	.loc 1 35 41 is_stmt 0 view .LVU48
	addl	$1, %edx
	movl	%edx, 24(%rbx)
.LVL16:
	.loc 1 37 9 is_stmt 1 view .LVU49
	.loc 1 37 22 is_stmt 0 view .LVU50
	movsbl	(%rax), %esi
	.loc 1 37 30 view .LVU51
	movq	(%rbx), %rax
.LVL17:
	.loc 1 37 22 view .LVU52
	call	*8(%rax)
.LVL18:
	.loc 1 37 20 view .LVU53
	movl	%eax, 8(%rbx)
	.loc 1 38 9 is_stmt 1 view .LVU54
	.loc 1 37 22 is_stmt 0 view .LVU55
	movl	%eax, %edi
	.loc 1 38 12 view .LVU56
	testl	%eax, %eax
	je	.L6
.L7:
	.loc 1 38 12 view .LVU57
.LBE3:
	.loc 1 32 36 is_stmt 1 view .LVU58
	.loc 1 32 26 is_stmt 0 view .LVU59
	movslq	24(%rbx), %rax
	movq	%rax, %rdx
	.loc 1 32 22 view .LVU60
	addq	16(%rbx), %rax
	.loc 1 32 36 view .LVU61
	cmpb	$0, (%rax)
	jne	.L9
	.loc 1 42 5 is_stmt 1 view .LVU62
	.loc 1 42 23 is_stmt 0 view .LVU63
	shrl	$31, %edi
.L6:
	.loc 1 43 1 view .LVU64
	movl	%edi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL19:
	.loc 1 43 1 view .LVU65
	ret
	.cfi_endproc
.LFE53:
	.size	run_dfa, .-run_dfa
	.p2align 4
	.globl	generate_word
	.type	generate_word, @function
generate_word:
.LFB54:
	.loc 1 46 28 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	.loc 1 47 3 view .LVU67
	.loc 1 46 28 is_stmt 0 view .LVU68
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 47 13 view .LVU69
	call	random@PLT
.LVL20:
	.loc 1 47 22 view .LVU70
	movabsq	$7378697629483820647, %rdx
	.loc 1 47 13 view .LVU71
	movq	%rax, %rcx
	.loc 1 47 22 view .LVU72
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$3, %rdx
	movq	%rdx, %rbx
	subq	%rax, %rbx
	leaq	(%rbx,%rbx,4), %rax
	salq	$2, %rax
	subq	%rax, %rcx
	.loc 1 48 26 view .LVU73
	leal	1(%rcx), %edi
	.loc 1 47 22 view .LVU74
	movq	%rcx, %rbx
.LVL21:
	.loc 1 48 3 is_stmt 1 view .LVU75
	.loc 1 48 16 is_stmt 0 view .LVU76
	movslq	%edi, %rdi
	call	malloc@PLT
.LVL22:
	.loc 1 48 16 view .LVU77
	movq	%rax, %r12
.LVL23:
	.loc 1 50 3 is_stmt 1 view .LVU78
	.loc 1 50 10 view .LVU79
	.loc 1 50 10 is_stmt 0 view .LVU80
	testq	%rbx, %rbx
	je	.L15
	leal	-1(%rbx), %ebp
	.loc 1 48 32 view .LVU81
	movq	%r12, %r13
	movl	%ebp, %eax
.LVL24:
	.loc 1 48 32 view .LVU82
	leaq	1(%r12,%rax), %rbx
.LVL25:
	.p2align 4,,10
	.p2align 3
.L16:
	.loc 1 51 5 is_stmt 1 view .LVU83
	.loc 1 51 20 is_stmt 0 view .LVU84
	call	rand@PLT
.LVL26:
	.loc 1 51 9 view .LVU85
	addq	$1, %r13
.LVL27:
	.loc 1 51 26 view .LVU86
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	.loc 1 51 18 view .LVU87
	addl	$48, %eax
	movb	%al, -1(%r13)
	.loc 1 50 10 is_stmt 1 view .LVU88
	.loc 1 50 10 is_stmt 0 view .LVU89
	cmpq	%rbx, %r13
	jne	.L16
	.loc 1 51 9 view .LVU90
	leaq	1(%r12,%rbp), %rax
.LVL28:
.L15:
	.loc 1 53 3 is_stmt 1 view .LVU91
	.loc 1 53 8 is_stmt 0 view .LVU92
	movb	$0, (%rax)
	.loc 1 55 3 is_stmt 1 view .LVU93
	.loc 1 56 1 is_stmt 0 view .LVU94
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL29:
	.loc 1 56 1 view .LVU95
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE54:
	.size	generate_word, .-generate_word
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 3 "include/stack.h"
	.file 4 "include/generic_pda.h"
	.file 5 "/usr/include/stdlib.h"
	.file 6 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x38f
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x10
	.long	.LASF32
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x2
	.byte	0xd1
	.byte	0x1b
	.long	0x3a
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x12
	.byte	0x8
	.uleb128 0x2
	.long	0x80
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x13
	.long	0x80
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.long	0x87
	.uleb128 0x8
	.long	.LASF13
	.byte	0x3
	.byte	0x5
	.byte	0xd
	.long	0x41
	.uleb128 0x9
	.long	.LASF16
	.byte	0x10
	.byte	0x3
	.byte	0x7
	.byte	0x10
	.long	0xcc
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x9
	.byte	0x9
	.long	0xcc
	.byte	0
	.uleb128 0xa
	.string	"top"
	.byte	0x3
	.byte	0xa
	.byte	0x6
	.long	0x41
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	0x98
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0xc
	.byte	0x3
	.long	0xa4
	.uleb128 0x14
	.string	"dfa"
	.byte	0x10
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.long	0x105
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x7
	.byte	0x6
	.long	0x41
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.long	0x119
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	0x41
	.long	0x119
	.uleb128 0x5
	.long	0x41
	.uleb128 0x5
	.long	0x80
	.byte	0
	.uleb128 0x2
	.long	0x105
	.uleb128 0x9
	.long	.LASF19
	.byte	0x28
	.byte	0x4
	.byte	0xd
	.byte	0x8
	.long	0x16d
	.uleb128 0xa
	.string	"dfa"
	.byte	0x4
	.byte	0xe
	.byte	0xe
	.long	0x16d
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0xf
	.byte	0x6
	.long	0x41
	.byte	0x8
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x10
	.byte	0x8
	.long	0x7b
	.byte	0x10
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x11
	.byte	0x6
	.long	0x41
	.byte	0x18
	.uleb128 0x3
	.long	.LASF23
	.byte	0x4
	.byte	0x12
	.byte	0xb
	.long	0x172
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	0xdd
	.uleb128 0x2
	.long	0xd1
	.uleb128 0xb
	.long	.LASF24
	.value	0x1c6
	.byte	0xc
	.long	0x41
	.uleb128 0xb
	.long	.LASF25
	.value	0x192
	.byte	0x11
	.long	0x48
	.uleb128 0x16
	.long	.LASF26
	.byte	0x6
	.byte	0xbb
	.byte	0xe
	.long	0x7b
	.long	0x1a5
	.uleb128 0x5
	.long	0x93
	.byte	0
	.uleb128 0x17
	.long	.LASF27
	.byte	0x5
	.value	0x21c
	.byte	0xe
	.long	0x79
	.long	0x1bc
	.uleb128 0x5
	.long	0x2e
	.byte	0
	.uleb128 0xc
	.long	.LASF29
	.byte	0x2e
	.byte	0x7
	.long	0x7b
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x250
	.uleb128 0x4
	.string	"len"
	.byte	0x2f
	.byte	0x7
	.long	0x41
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.long	0x7b
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x4
	.string	"ptr"
	.byte	0x30
	.byte	0x20
	.long	0x7b
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xd
	.quad	.LVL20
	.long	0x183
	.uleb128 0xe
	.quad	.LVL22
	.long	0x1a5
	.long	0x242
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x8
	.byte	0x73
	.sleb128 1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.uleb128 0xd
	.quad	.LVL26
	.long	0x177
	.byte	0
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x1f
	.byte	0x5
	.long	0x41
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x29e
	.uleb128 0x7
	.string	"ctx"
	.byte	0x1f
	.byte	0x1e
	.long	0x29e
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1a
	.long	.LLRL7
	.uleb128 0x4
	.string	"ch"
	.byte	0x23
	.byte	0xe
	.long	0x80
	.long	.LLST8
	.long	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	0x11e
	.uleb128 0xc
	.long	.LASF31
	.byte	0x14
	.byte	0x11
	.long	0x29e
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x32b
	.uleb128 0x7
	.string	"dfa"
	.byte	0x14
	.byte	0x2a
	.long	0x16d
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1b
	.long	.LASF28
	.byte	0x1
	.byte	0x14
	.byte	0x35
	.long	0x7b
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x4
	.string	"ctx"
	.byte	0x15
	.byte	0x15
	.long	0x29e
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0xe
	.quad	.LVL7
	.long	0x1a5
	.long	0x316
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.quad	.LVL10
	.long	0x18f
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x1
	.byte	0xb
	.byte	0xd
	.long	0x16d
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"i"
	.byte	0xb
	.byte	0x1d
	.long	0x41
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x7
	.string	"t"
	.byte	0xb
	.byte	0x26
	.long	0x119
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x4
	.string	"dfa"
	.byte	0xc
	.byte	0x11
	.long	0x16d
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xf
	.quad	.LVL2
	.long	0x1a5
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xd
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
.LVUS9:
	.uleb128 .LVU75
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU83
.LLST9:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL22-1-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU78
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LFE54-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS11:
	.uleb128 .LVU78
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU91
.LLST11:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU49
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
.LLST8:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL7-1-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU25
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LFE51-.Ltext0
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE51-.Ltext0
	.uleb128 0x2
	.byte	0x70
	.sleb128 8
	.byte	0
.LVUS2:
	.uleb128 .LVU7
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LFE51-.Ltext0
	.uleb128 0x1
	.byte	0x50
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
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
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
.LLRL7:
	.byte	0x4
	.uleb128 .LBB2-.Ltext0
	.uleb128 .LBE2-.Ltext0
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"word"
.LASF29:
	.string	"generate_word"
.LASF33:
	.string	"create_dfa"
.LASF20:
	.string	"state"
.LASF6:
	.string	"short unsigned int"
.LASF25:
	.string	"random"
.LASF26:
	.string	"strdup"
.LASF23:
	.string	"stack"
.LASF14:
	.string	"data"
.LASF32:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -Og -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF5:
	.string	"unsigned char"
.LASF21:
	.string	"input"
.LASF18:
	.string	"transition"
.LASF2:
	.string	"long unsigned int"
.LASF31:
	.string	"dfa_new_ctx"
.LASF12:
	.string	"size_t"
.LASF30:
	.string	"run_dfa"
.LASF16:
	.string	"Stack"
.LASF19:
	.string	"dfa_ctx"
.LASF7:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"val_t"
.LASF4:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF22:
	.string	"offset"
.LASF9:
	.string	"short int"
.LASF15:
	.string	"stack_t"
.LASF17:
	.string	"initial"
.LASF3:
	.string	"long int"
.LASF8:
	.string	"signed char"
.LASF27:
	.string	"malloc"
.LASF24:
	.string	"rand"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/generic_pda.c"
.LASF1:
	.string	"/home/finn/Documents/OTH/CC/CompilerConstruction/ex6/ex1"
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
