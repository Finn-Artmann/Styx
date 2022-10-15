	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction" "src/main.c"
	.p2align 4
	.globl	is_lower_string
	.type	is_lower_string, @function
is_lower_string:
.LVL0:
.LFB53:
	.file 1 "src/main.c"
	.loc 1 11 29 view -0
	.cfi_startproc
	.loc 1 11 29 is_stmt 0 view .LVU1
	endbr64
	.loc 1 13 2 is_stmt 1 view .LVU2
.LBB11:
	.loc 1 13 6 view .LVU3
.LVL1:
	.loc 1 13 19 view .LVU4
.LBE11:
	.loc 1 11 29 is_stmt 0 view .LVU5
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LBB12:
	.loc 1 13 16 view .LVU6
	movsbq	(%rdi), %rbx
	.loc 1 13 19 view .LVU7
	testb	%bl, %bl
	je	.L4
	movq	%rdi, %rbp
	.loc 1 14 9 view .LVU8
	call	__ctype_b_loc@PLT
.LVL2:
	.loc 1 14 9 view .LVU9
	leaq	1(%rbp), %rdi
	.loc 1 14 8 view .LVU10
	movq	(%rax), %rax
	jmp	.L3
.LVL3:
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 1 13 28 is_stmt 1 discriminator 2 view .LVU11
	.loc 1 13 19 discriminator 2 view .LVU12
	.loc 1 13 16 is_stmt 0 discriminator 2 view .LVU13
	movsbq	(%rdi), %rbx
	.loc 1 13 19 discriminator 2 view .LVU14
	addq	$1, %rdi
.LVL4:
	.loc 1 13 19 discriminator 2 view .LVU15
	testb	%bl, %bl
	je	.L4
.L3:
.LVL5:
	.loc 1 14 3 is_stmt 1 view .LVU16
	.loc 1 14 5 is_stmt 0 view .LVU17
	testb	$2, 1(%rax,%rbx,2)
	jne	.L9
.LBE12:
	.loc 1 19 1 view .LVU18
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LBB13:
	.loc 1 15 10 view .LVU19
	xorl	%eax, %eax
.LBE13:
	.loc 1 19 1 view .LVU20
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL6:
	.loc 1 19 1 view .LVU21
	ret
.LVL7:
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	.loc 1 19 1 view .LVU22
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	.loc 1 18 8 view .LVU23
	movl	$1, %eax
	.loc 1 19 1 view .LVU24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE53:
	.size	is_lower_string, .-is_lower_string
	.p2align 4
	.globl	replace
	.type	replace, @function
replace:
.LVL8:
.LFB54:
	.loc 1 22 86 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 22 86 is_stmt 0 view .LVU26
	endbr64
	.loc 1 25 2 is_stmt 1 view .LVU27
	.loc 1 27 2 view .LVU28
	.loc 1 22 86 is_stmt 0 view .LVU29
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	.loc 1 27 20 view .LVU30
	movq	%rdx, %rdi
.LVL9:
	.loc 1 22 86 view .LVU31
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.loc 1 22 86 view .LVU32
	movq	%rdx, 40(%rsp)
	movl	%ecx, 16(%rsp)
	.loc 1 27 20 view .LVU33
	call	strlen@PLT
.LVL10:
	.loc 1 28 19 view .LVU34
	movq	%rbp, %rdi
	.loc 1 27 20 view .LVU35
	movq	%rax, %r15
	.loc 1 27 6 view .LVU36
	movl	%eax, 32(%rsp)
.LVL11:
	.loc 1 28 2 is_stmt 1 view .LVU37
	.loc 1 28 19 is_stmt 0 view .LVU38
	call	strlen@PLT
.LVL12:
	.loc 1 29 17 view .LVU39
	movq	%r13, %rdi
	.loc 1 28 19 view .LVU40
	movq	%rax, %rbx
	.loc 1 28 6 view .LVU41
	movl	%eax, 36(%rsp)
.LVL13:
	.loc 1 29 2 is_stmt 1 view .LVU42
	.loc 1 29 17 is_stmt 0 view .LVU43
	call	strlen@PLT
.LVL14:
	.loc 1 31 2 is_stmt 1 view .LVU44
	.loc 1 31 35 is_stmt 0 view .LVU45
	movq	%r15, 24(%rsp)
	leal	(%r15,%rax), %edi
	.loc 1 31 49 view .LVU46
	subl	%ebx, %edi
	.loc 1 31 62 view .LVU47
	addl	$1, %edi
	.loc 1 31 19 view .LVU48
	movslq	%edi, %rdi
	call	malloc@PLT
.LVL15:
	.loc 1 36 8 view .LVU49
	movzbl	0(%r13), %r15d
.LVL16:
	.loc 1 35 6 view .LVU50
	movb	$0, 23(%rsp)
	.loc 1 31 19 view .LVU51
	movq	%rax, %r12
.LVL17:
	.loc 1 33 2 is_stmt 1 view .LVU52
	.loc 1 34 2 view .LVU53
	.loc 1 35 1 view .LVU54
	.loc 1 36 2 view .LVU55
	.loc 1 36 8 view .LVU56
.LBB14:
.LBB15:
.LBB16:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 79 10 is_stmt 0 view .LVU57
	movq	24(%rsp), %rax
.LVL18:
	.loc 2 79 10 view .LVU58
.LBE16:
.LBE15:
.LBE14:
	.loc 1 34 6 view .LVU59
	movl	$0, 12(%rsp)
.LBB21:
.LBB19:
.LBB17:
	.loc 2 79 10 view .LVU60
	addq	$1, %rax
	movq	%rax, 24(%rsp)
.LBE17:
.LBE19:
.LBE21:
	.loc 1 36 8 view .LVU61
	testb	%r15b, %r15b
	je	.L15
	xorl	%r14d, %r14d
	movl	%r15d, %eax
	movl	%r14d, %r15d
	movl	%eax, %r14d
	jmp	.L11
.LVL19:
	.p2align 4,,10
	.p2align 3
.L13:
.LBB22:
	.loc 1 47 4 is_stmt 1 view .LVU62
	.loc 1 47 23 is_stmt 0 view .LVU63
	addq	$1, %r13
.LVL20:
	.loc 1 47 16 view .LVU64
	movb	%r14b, (%rdi)
	.loc 1 47 12 view .LVU65
	addl	$1, %r15d
.LVL21:
	.loc 1 47 12 view .LVU66
.LBE22:
	.loc 1 36 8 is_stmt 1 view .LVU67
	movzbl	0(%r13), %r14d
	testb	%r14b, %r14b
	je	.L25
.LVL22:
.L11:
.LBB23:
	.loc 1 38 3 view .LVU68
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	strncmp@PLT
.LVL23:
	.loc 1 40 3 view .LVU69
	.loc 1 41 4 is_stmt 0 view .LVU70
	movslq	%r15d, %rdi
	addq	%r12, %rdi
	.loc 1 40 5 view .LVU71
	testl	%eax, %eax
	jne	.L13
	.loc 1 40 35 discriminator 1 view .LVU72
	movl	12(%rsp), %eax
	.loc 1 40 18 discriminator 1 view .LVU73
	cmpl	%eax, 16(%rsp)
	.loc 1 40 35 discriminator 1 view .LVU74
	leal	1(%rax), %r9d
.LVL24:
	.loc 1 40 35 discriminator 1 view .LVU75
	movl	%r9d, 12(%rsp)
	.loc 1 40 18 discriminator 1 view .LVU76
	jne	.L13
	.loc 1 41 4 is_stmt 1 view .LVU77
.LVL25:
.LBB20:
.LBI15:
	.loc 2 77 42 view .LVU78
.LBB18:
	.loc 2 79 3 view .LVU79
	.loc 2 79 10 is_stmt 0 view .LVU80
	movq	24(%rsp), %rdx
	movq	40(%rsp), %rsi
	call	memcpy@PLT
.LVL26:
	.loc 2 79 10 view .LVU81
.LBE18:
.LBE20:
	.loc 1 42 4 is_stmt 1 view .LVU82
	.loc 1 43 9 is_stmt 0 view .LVU83
	movslq	36(%rsp), %rax
	.loc 1 44 24 view .LVU84
	movb	$1, 23(%rsp)
.LVL27:
	.loc 1 42 5 view .LVU85
	addl	32(%rsp), %r15d
.LVL28:
	.loc 1 43 4 is_stmt 1 view .LVU86
	.loc 1 43 9 is_stmt 0 view .LVU87
	addq	%rax, %r13
.LVL29:
	.loc 1 44 4 is_stmt 1 view .LVU88
	.loc 1 44 4 is_stmt 0 view .LVU89
.LBE23:
	.loc 1 36 8 is_stmt 1 view .LVU90
	movzbl	0(%r13), %r14d
	testb	%r14b, %r14b
	jne	.L11
	.p2align 4,,10
	.p2align 3
.L25:
	.loc 1 52 2 view .LVU91
	.loc 1 52 4 is_stmt 0 view .LVU92
	cmpb	$0, 23(%rsp)
	je	.L15
.LVL30:
.L10:
	.loc 1 56 1 view .LVU93
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL31:
	.loc 1 56 1 view .LVU94
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL32:
	.loc 1 56 1 view .LVU95
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL33:
	.loc 1 56 1 view .LVU96
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL34:
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
	.loc 1 52 29 is_stmt 1 view .LVU97
	.loc 1 52 35 is_stmt 0 view .LVU98
	xorl	%r12d, %r12d
.LVL35:
	.loc 1 52 35 view .LVU99
	jmp	.L10
	.cfi_endproc
.LFE54:
	.size	replace, .-replace
	.p2align 4
	.globl	generate_words
	.type	generate_words, @function
generate_words:
.LFB55:
	.loc 1 59 22 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 59 22 is_stmt 0 view .LVU101
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 62 2 is_stmt 1 view .LVU102
	.loc 1 63 2 view .LVU103
	movq	%rsp, %rbp
	movq	%rbp, %rdi
	call	init_queue@PLT
.LVL36:
	.loc 1 64 2 view .LVU104
	movq	start_symbol(%rip), %rsi
	movq	%rbp, %rdi
	call	enqueue@PLT
.LVL37:
	.loc 1 67 2 view .LVU105
	.loc 1 67 15 is_stmt 0 view .LVU106
	movq	%rbp, %rdi
	call	dequeue@PLT
.LVL38:
.LBB29:
.LBB30:
	.loc 1 13 16 view .LVU107
	movsbq	(%rax), %rbx
.LBE30:
.LBE29:
	.loc 1 67 15 view .LVU108
	movq	%rax, %rbp
.LVL39:
	.loc 1 68 2 is_stmt 1 view .LVU109
.LBB32:
.LBI29:
	.loc 1 11 5 view .LVU110
.LBB31:
	.loc 1 13 19 view .LVU111
	testb	%bl, %bl
	je	.L27
	.loc 1 14 9 is_stmt 0 view .LVU112
	call	__ctype_b_loc@PLT
.LVL40:
	.loc 1 14 9 view .LVU113
	leaq	1(%rbp), %rdx
	.loc 1 14 8 view .LVU114
	movq	(%rax), %rcx
	jmp	.L29
.LVL41:
	.p2align 4,,10
	.p2align 3
.L39:
	.loc 1 13 28 is_stmt 1 view .LVU115
	.loc 1 13 19 view .LVU116
	.loc 1 13 16 is_stmt 0 view .LVU117
	movsbq	(%rdx), %rbx
	.loc 1 13 19 view .LVU118
	addq	$1, %rdx
.LVL42:
	.loc 1 13 19 view .LVU119
	testb	%bl, %bl
	je	.L27
.L29:
.LVL43:
	.loc 1 14 3 is_stmt 1 view .LVU120
	.loc 1 14 5 is_stmt 0 view .LVU121
	testb	$2, 1(%rcx,%rbx,2)
	jne	.L39
.LVL44:
.L26:
	.loc 1 14 5 view .LVU122
.LBE31:
.LBE32:
	.loc 1 75 1 view .LVU123
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L40
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL45:
	.loc 1 75 1 view .LVU124
	ret
.LVL46:
	.p2align 4,,10
	.p2align 3
.L27:
	.cfi_restore_state
	.loc 1 69 3 is_stmt 1 view .LVU125
.LBB33:
.LBI33:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 110 1 view .LVU126
.LBB34:
	.loc 3 112 3 view .LVU127
	.loc 3 112 10 is_stmt 0 view .LVU128
	movq	%rbp, %rdi
	call	puts@PLT
.LVL47:
	jmp	.L26
.LVL48:
.L40:
	.loc 3 112 10 view .LVU129
.LBE34:
.LBE33:
	.loc 1 75 1 view .LVU130
	call	__stack_chk_fail@PLT
.LVL49:
	.cfi_endproc
.LFE55:
	.size	generate_words, .-generate_words
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"12345"
.LC1:
	.string	"test"
.LC2:
	.string	"einstestzweitestdrei"
.LC3:
	.string	"%s"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL50:
.LFB56:
	.loc 1 81 32 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 81 32 is_stmt 0 view .LVU132
	endbr64
	.loc 1 101 2 is_stmt 1 view .LVU133
.LVL51:
	.loc 1 102 2 view .LVU134
	.loc 1 103 2 view .LVU135
	.loc 1 105 2 view .LVU136
	.loc 1 81 32 is_stmt 0 view .LVU137
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 105 2 view .LVU138
	movl	$1, %ecx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rsi
.LVL52:
	.loc 1 105 2 view .LVU139
	leaq	.LC2(%rip), %rdi
.LVL53:
	.loc 1 105 2 view .LVU140
	call	replace
.LVL54:
.LBB35:
.LBB36:
	.loc 3 112 10 view .LVU141
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
.LBE36:
.LBE35:
	.loc 1 105 2 view .LVU142
	movq	%rax, %rdx
.LVL55:
.LBB38:
.LBI35:
	.loc 3 110 1 is_stmt 1 view .LVU143
.LBB37:
	.loc 3 112 3 view .LVU144
	.loc 3 112 10 is_stmt 0 view .LVU145
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL56:
	.loc 3 112 10 view .LVU146
.LBE37:
.LBE38:
	.loc 1 107 2 is_stmt 1 view .LVU147
	.loc 1 108 1 is_stmt 0 view .LVU148
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.globl	start_symbol
	.section	.rodata.str1.1
.LC4:
	.string	"X"
	.section	.data.rel.local,"aw"
	.align 8
	.type	start_symbol, @object
	.size	start_symbol, 8
start_symbol:
	.quad	.LC4
	.globl	rules
	.section	.rodata.str1.1
.LC5:
	.string	"aXc"
.LC6:
	.string	"pY"
.LC7:
	.string	"Y"
.LC8:
	.string	"bYc"
.LC9:
	.string	"q"
	.section	.data.rel.local
	.align 32
	.type	rules, @object
	.size	rules, 64
rules:
	.quad	.LC4
	.quad	.LC5
	.quad	.LC4
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC7
	.quad	.LC9
	.text
.Letext0:
	.file 4 "include/queue.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 6 "include/rules.h"
	.file 7 "/usr/include/string.h"
	.file 8 "/usr/include/stdlib.h"
	.file 9 "<built-in>"
	.file 10 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x771
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL27
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0xd
	.long	.LASF27
	.byte	0x5
	.byte	0xd1
	.byte	0x1b
	.long	0x36
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x22
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0xe
	.long	0x4d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.long	0x67
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	0x84
	.uleb128 0x15
	.long	0x7a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xe
	.long	0x84
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x6
	.long	0x54
	.uleb128 0x6
	.long	0x8b
	.uleb128 0x15
	.long	0xa3
	.uleb128 0x24
	.byte	0x7
	.byte	0x4
	.long	0x3d
	.byte	0xa
	.byte	0x2f
	.byte	0x1
	.long	0x10c
	.uleb128 0x4
	.long	.LASF12
	.value	0x100
	.uleb128 0x4
	.long	.LASF13
	.value	0x200
	.uleb128 0x4
	.long	.LASF14
	.value	0x400
	.uleb128 0x4
	.long	.LASF15
	.value	0x800
	.uleb128 0x4
	.long	.LASF16
	.value	0x1000
	.uleb128 0x4
	.long	.LASF17
	.value	0x2000
	.uleb128 0x4
	.long	.LASF18
	.value	0x4000
	.uleb128 0x4
	.long	.LASF19
	.value	0x8000
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.uleb128 0xb
	.long	.LASF21
	.byte	0x2
	.uleb128 0xb
	.long	.LASF22
	.byte	0x4
	.uleb128 0xb
	.long	.LASF23
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.long	.LASF29
	.byte	0x4
	.byte	0x4
	.long	0x13c
	.uleb128 0xf
	.long	.LASF24
	.byte	0x5
	.byte	0x9
	.long	0x13c
	.byte	0
	.uleb128 0xf
	.long	.LASF25
	.byte	0x6
	.byte	0x6
	.long	0x67
	.byte	0x8
	.uleb128 0xf
	.long	.LASF26
	.byte	0x7
	.byte	0x6
	.long	0x67
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	0x7a
	.uleb128 0xd
	.long	.LASF28
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.long	0x10c
	.uleb128 0x16
	.long	.LASF30
	.byte	0x6
	.byte	0x1
	.long	0x16f
	.uleb128 0x17
	.string	"lhs"
	.byte	0x3
	.long	0x7a
	.byte	0
	.uleb128 0x17
	.string	"rhs"
	.byte	0x4
	.long	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF30
	.byte	0x6
	.byte	0x6
	.byte	0x3
	.long	0x14d
	.uleb128 0x25
	.long	0x16f
	.long	0x18b
	.uleb128 0x26
	.long	0x36
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.long	.LASF31
	.byte	0x8
	.byte	0x6
	.long	0x17b
	.uleb128 0x9
	.byte	0x3
	.quad	rules
	.uleb128 0x18
	.long	.LASF32
	.byte	0x10
	.byte	0x7
	.long	0x7a
	.uleb128 0x9
	.byte	0x3
	.quad	start_symbol
	.uleb128 0x19
	.long	.LASF33
	.byte	0x3
	.byte	0x5f
	.byte	0xc
	.long	0x67
	.long	0x1d1
	.uleb128 0x3
	.long	0x67
	.uleb128 0x3
	.long	0xa3
	.uleb128 0x1a
	.byte	0
	.uleb128 0x19
	.long	.LASF34
	.byte	0x4
	.byte	0xd
	.byte	0x7
	.long	0x7a
	.long	0x1e7
	.uleb128 0x3
	.long	0x1e7
	.byte	0
	.uleb128 0x6
	.long	0x141
	.uleb128 0x1b
	.long	.LASF35
	.byte	0xe
	.long	0x201
	.uleb128 0x3
	.long	0x1e7
	.uleb128 0x3
	.long	0x7a
	.byte	0
	.uleb128 0x1b
	.long	.LASF36
	.byte	0xa
	.long	0x211
	.uleb128 0x3
	.long	0x1e7
	.byte	0
	.uleb128 0x10
	.long	.LASF37
	.byte	0x7
	.value	0x15e
	.byte	0xe
	.long	0x7a
	.long	0x22d
	.uleb128 0x3
	.long	0xa3
	.uleb128 0x3
	.long	0xa3
	.byte	0
	.uleb128 0x10
	.long	.LASF38
	.byte	0x8
	.value	0x21c
	.byte	0xe
	.long	0x44
	.long	0x244
	.uleb128 0x3
	.long	0x2a
	.byte	0
	.uleb128 0x10
	.long	.LASF39
	.byte	0x7
	.value	0x197
	.byte	0xf
	.long	0x2a
	.long	0x25b
	.uleb128 0x3
	.long	0xa3
	.byte	0
	.uleb128 0x27
	.long	.LASF68
	.byte	0xa
	.byte	0x4f
	.byte	0x23
	.long	0x267
	.uleb128 0x6
	.long	0x9e
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x51
	.byte	0x5
	.long	0x67
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x377
	.uleb128 0x9
	.long	.LASF40
	.byte	0x51
	.byte	0xe
	.long	0x67
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x9
	.long	.LASF41
	.byte	0x51
	.byte	0x1b
	.long	0x13c
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x11
	.long	.LASF42
	.byte	0x65
	.byte	0x8
	.long	0x7a
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.uleb128 0x11
	.long	.LASF43
	.byte	0x66
	.byte	0x8
	.long	0x7a
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.uleb128 0x28
	.string	"rep"
	.byte	0x1
	.byte	0x67
	.byte	0x8
	.long	0x7a
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x1d
	.long	0x6ea
	.quad	.LBI35
	.byte	.LVU143
	.long	.LLRL25
	.byte	0x69
	.byte	0x2
	.long	0x33c
	.uleb128 0x7
	.long	0x6fa
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0xa
	.quad	.LVL56
	.long	0x1b5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0xa
	.quad	.LVL54
	.long	0x4ac
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF55
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ac
	.uleb128 0x11
	.long	.LASF44
	.byte	0x3e
	.byte	0xa
	.long	0x141
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF42
	.byte	0x43
	.byte	0x8
	.long	0x7a
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x2a
	.long	0x3c5
	.uleb128 0x12
	.string	"i"
	.byte	0x48
	.byte	0xa
	.long	0x67
	.byte	0
	.uleb128 0x1d
	.long	0x68d
	.quad	.LBI29
	.byte	.LVU110
	.long	.LLRL19
	.byte	0x44
	.byte	0x5
	.long	0x40f
	.uleb128 0x7
	.long	0x69e
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x1e
	.long	0x6a8
	.long	.LLRL19
	.uleb128 0x1f
	.long	0x6a9
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0xc
	.quad	.LVL40
	.long	0x25b
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x6ea
	.quad	.LBI33
	.byte	.LVU126
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0x1
	.byte	0x45
	.byte	0x3
	.long	0x456
	.uleb128 0x7
	.long	0x6fa
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0xa
	.quad	.LVL47
	.long	0x750
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL36
	.long	0x201
	.long	0x46e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL37
	.long	0x1ec
	.long	0x486
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL38
	.long	0x1d1
	.long	0x49e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL49
	.long	0x759
	.byte	0
	.uleb128 0x1c
	.long	.LASF46
	.byte	0x16
	.byte	0x7
	.long	0x7a
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x686
	.uleb128 0x9
	.long	.LASF42
	.byte	0x16
	.byte	0x1b
	.long	0xa3
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x9
	.long	.LASF43
	.byte	0x16
	.byte	0x2d
	.long	0xa3
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x9
	.long	.LASF46
	.byte	0x16
	.byte	0x41
	.long	0xa3
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x2c
	.string	"n"
	.byte	0x1
	.byte	0x16
	.byte	0x54
	.long	0x6e
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x5
	.long	.LASF47
	.byte	0x19
	.byte	0x8
	.long	0x7a
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x5
	.long	.LASF48
	.byte	0x1b
	.byte	0x6
	.long	0x67
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x5
	.long	.LASF49
	.byte	0x1c
	.byte	0x6
	.long	0x67
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x5
	.long	.LASF50
	.byte	0x1d
	.byte	0x6
	.long	0x67
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.long	0x67
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x5
	.long	.LASF51
	.byte	0x22
	.byte	0x6
	.long	0x67
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x5
	.long	.LASF52
	.byte	0x23
	.byte	0x6
	.long	0x686
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x2e
	.long	.LLRL14
	.long	0x60e
	.uleb128 0x12
	.string	"tmp"
	.byte	0x26
	.byte	0x9
	.long	0x7a
	.uleb128 0x2f
	.long	0x6c1
	.quad	.LBI15
	.byte	.LVU78
	.long	.LLRL15
	.byte	0x1
	.byte	0x29
	.byte	0x4
	.uleb128 0x7
	.long	0x6dd
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x7
	.long	0x6d1
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0xa
	.quad	.LVL26
	.long	0x762
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL10
	.long	0x244
	.long	0x628
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.quad	.LVL12
	.long	0x244
	.long	0x640
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL14
	.long	0x244
	.long	0x658
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL15
	.long	0x22d
	.uleb128 0xa
	.quad	.LVL23
	.long	0x76b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF53
	.uleb128 0x30
	.long	.LASF54
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.long	0x686
	.byte	0x1
	.long	0x6c1
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.byte	0xb
	.byte	0x1b
	.long	0x7a
	.uleb128 0x32
	.uleb128 0x12
	.string	"i"
	.byte	0xd
	.byte	0xa
	.long	0x67
	.uleb128 0xc
	.quad	.LVL2
	.long	0x25b
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF56
	.byte	0x2
	.byte	0x4d
	.byte	0x2a
	.long	0x7a
	.long	0x6ea
	.uleb128 0x13
	.long	.LASF57
	.byte	0x2
	.byte	0x4d
	.byte	0x43
	.long	0x7f
	.uleb128 0x13
	.long	.LASF58
	.byte	0x2
	.byte	0x4d
	.byte	0x62
	.long	0xa8
	.byte	0
	.uleb128 0x20
	.long	.LASF59
	.byte	0x3
	.byte	0x6e
	.byte	0x1
	.long	0x67
	.long	0x708
	.uleb128 0x13
	.long	.LASF60
	.byte	0x3
	.byte	0x6e
	.byte	0x20
	.long	0xa8
	.uleb128 0x1a
	.byte	0
	.uleb128 0x33
	.long	0x68d
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x748
	.uleb128 0x7
	.long	0x69e
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1e
	.long	0x6a8
	.long	.LLRL1
	.uleb128 0x1f
	.long	0x6a9
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.byte	0x25
	.byte	0x73
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.long	.LASF61
	.long	.LASF63
	.uleb128 0x35
	.long	.LASF69
	.long	.LASF69
	.uleb128 0x14
	.long	.LASF62
	.long	.LASF64
	.uleb128 0x14
	.long	.LASF65
	.long	.LASF66
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0x39
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
	.uleb128 0x31
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
.LVUS23:
	.uleb128 0
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 0
.LLST23:
	.byte	0x6
	.quad	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL53-.LVL50
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL53-.LVL50
	.uleb128 .LFE56-.LVL50
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 0
.LLST24:
	.byte	0x6
	.quad	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL52-.LVL50
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL52-.LVL50
	.uleb128 .LFE56-.LVL50
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU143
	.uleb128 .LVU146
.LLST26:
	.byte	0x8
	.quad	.LVL55
	.uleb128 .LVL56-.LVL55
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU109
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU124
	.uleb128 .LVU125
	.uleb128 0
.LLST18:
	.byte	0x6
	.quad	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL40-1-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL40-1-.LVL39
	.uleb128 .LVL45-.LVL39
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL46-.LVL39
	.uleb128 .LFE55-.LVL39
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS20:
	.uleb128 .LVU110
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU122
.LLST20:
	.byte	0x6
	.quad	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL40-1-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL40-1-.LVL39
	.uleb128 .LVL44-.LVL39
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS21:
	.uleb128 .LVU111
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU122
.LLST21:
	.byte	0x6
	.quad	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL41-.LVL39
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.LVL39
	.uleb128 .LVL41-.LVL39
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.LVL39
	.uleb128 .LVL42-.LVL39
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL39
	.uleb128 .LVL44-.LVL39
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU126
	.uleb128 .LVU129
.LLST22:
	.byte	0x8
	.quad	.LVL46
	.uleb128 .LVL48-.LVL46
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+1864
	.sleb128 0
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL9-.LVL8
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL9-.LVL8
	.uleb128 .LVL33-.LVL8
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL34-.LVL8
	.uleb128 .LFE54-.LVL8
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL10-1-.LVL8
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL10-1-.LVL8
	.uleb128 .LVL32-.LVL8
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL32-.LVL8
	.uleb128 .LVL34-.LVL8
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL8
	.uleb128 .LFE54-.LVL8
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL10-1-.LVL8
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL10-1-.LVL8
	.uleb128 .LFE54-.LVL8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL10-1-.LVL8
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL10-1-.LVL8
	.uleb128 .LFE54-.LVL8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
.LVUS7:
	.uleb128 .LVU52
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU93
	.uleb128 .LVU97
	.uleb128 .LVU99
.LLST7:
	.byte	0x6
	.quad	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL18-.LVL17
	.uleb128 .LVL30-.LVL17
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL34-.LVL17
	.uleb128 .LVL35-.LVL17
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS8:
	.uleb128 .LVU37
	.uleb128 .LVU50
.LLST8:
	.byte	0x8
	.quad	.LVL11
	.uleb128 .LVL16-.LVL11
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS9:
	.uleb128 .LVU42
	.uleb128 .LVU94
	.uleb128 .LVU97
	.uleb128 0
.LLST9:
	.byte	0x6
	.quad	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL31-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL34-.LVL13
	.uleb128 .LFE54-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS10:
	.uleb128 .LVU44
	.uleb128 .LVU49
.LLST10:
	.byte	0x8
	.quad	.LVL14
	.uleb128 .LVL15-1-.LVL14
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS11:
	.uleb128 .LVU53
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU93
.LLST11:
	.byte	0x6
	.quad	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL19-.LVL17
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL17
	.uleb128 .LVL30-.LVL17
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS12:
	.uleb128 .LVU54
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU93
.LLST12:
	.byte	0x6
	.quad	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL19-.LVL17
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL17
	.uleb128 .LVL24-.LVL17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x4
	.uleb128 .LVL24-.LVL17
	.uleb128 .LVL26-1-.LVL17
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL26-1-.LVL17
	.uleb128 .LVL30-.LVL17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
.LVUS13:
	.uleb128 .LVU55
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU85
	.uleb128 .LVU89
	.uleb128 .LVU93
.LLST13:
	.byte	0x6
	.quad	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL19-.LVL17
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL17
	.uleb128 .LVL27-.LVL17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.byte	0x4
	.uleb128 .LVL29-.LVL17
	.uleb128 .LVL30-.LVL17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.byte	0
.LVUS16:
	.uleb128 .LVU78
	.uleb128 .LVU81
.LLST16:
	.byte	0x8
	.quad	.LVL25
	.uleb128 .LVL26-.LVL25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS17:
	.uleb128 .LVU78
	.uleb128 .LVU81
.LLST17:
	.byte	0x8
	.quad	.LVL25
	.uleb128 .LVL26-.LVL25
	.uleb128 0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LFE53-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
.LLST2:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x20
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL4-.LVL1
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL1
	.uleb128 .LVL6-.LVL1
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x20
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL1
	.uleb128 .LVL7-.LVL1
	.uleb128 0x8
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x20
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
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
	.quad	.LFB56
	.quad	.LFE56-.LFB56
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
.LLRL1:
	.byte	0x5
	.quad	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB12-.LBB11
	.uleb128 .LBE12-.LBB11
	.byte	0x4
	.uleb128 .LBB13-.LBB11
	.uleb128 .LBE13-.LBB11
	.byte	0
.LLRL14:
	.byte	0x5
	.quad	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB21-.LBB14
	.uleb128 .LBE21-.LBB14
	.byte	0x4
	.uleb128 .LBB22-.LBB14
	.uleb128 .LBE22-.LBB14
	.byte	0x4
	.uleb128 .LBB23-.LBB14
	.uleb128 .LBE23-.LBB14
	.byte	0
.LLRL15:
	.byte	0x5
	.quad	.LBB15
	.byte	0x4
	.uleb128 .LBB15-.LBB15
	.uleb128 .LBE15-.LBB15
	.byte	0x4
	.uleb128 .LBB19-.LBB15
	.uleb128 .LBE19-.LBB15
	.byte	0x4
	.uleb128 .LBB20-.LBB15
	.uleb128 .LBE20-.LBB15
	.byte	0
.LLRL19:
	.byte	0x5
	.quad	.LBB29
	.byte	0x4
	.uleb128 .LBB29-.LBB29
	.uleb128 .LBE29-.LBB29
	.byte	0x4
	.uleb128 .LBB32-.LBB29
	.uleb128 .LBE32-.LBB29
	.byte	0
.LLRL25:
	.byte	0x5
	.quad	.LBB35
	.byte	0x4
	.uleb128 .LBB35-.LBB35
	.uleb128 .LBE35-.LBB35
	.byte	0x4
	.uleb128 .LBB38-.LBB35
	.uleb128 .LBE38-.LBB35
	.byte	0
.LLRL27:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB56
	.uleb128 .LFE56-.LFB56
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"printf"
.LASF19:
	.string	"_ISgraph"
.LASF38:
	.string	"malloc"
.LASF51:
	.string	"occurence"
.LASF27:
	.string	"size_t"
.LASF37:
	.string	"strstr"
.LASF17:
	.string	"_ISspace"
.LASF49:
	.string	"search_len"
.LASF48:
	.string	"replace_len"
.LASF13:
	.string	"_ISlower"
.LASF35:
	.string	"enqueue"
.LASF11:
	.string	"long long unsigned int"
.LASF58:
	.string	"__src"
.LASF14:
	.string	"_ISalpha"
.LASF15:
	.string	"_ISdigit"
.LASF10:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF8:
	.string	"long int"
.LASF23:
	.string	"_ISalnum"
.LASF62:
	.string	"memcpy"
.LASF66:
	.string	"__builtin_strncmp"
.LASF47:
	.string	"result"
.LASF44:
	.string	"queue"
.LASF33:
	.string	"__printf_chk"
.LASF20:
	.string	"_ISblank"
.LASF22:
	.string	"_ISpunct"
.LASF3:
	.string	"unsigned int"
.LASF39:
	.string	"strlen"
.LASF2:
	.string	"long unsigned int"
.LASF24:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF50:
	.string	"word_len"
.LASF43:
	.string	"search"
.LASF56:
	.string	"strcpy"
.LASF64:
	.string	"__builtin_memcpy"
.LASF32:
	.string	"start_symbol"
.LASF63:
	.string	"__builtin_puts"
.LASF61:
	.string	"puts"
.LASF30:
	.string	"rule"
.LASF25:
	.string	"tail"
.LASF31:
	.string	"rules"
.LASF57:
	.string	"__dest"
.LASF34:
	.string	"dequeue"
.LASF28:
	.string	"queue_t"
.LASF53:
	.string	"_Bool"
.LASF4:
	.string	"unsigned char"
.LASF65:
	.string	"strncmp"
.LASF7:
	.string	"short int"
.LASF36:
	.string	"init_queue"
.LASF69:
	.string	"__stack_chk_fail"
.LASF26:
	.string	"head"
.LASF52:
	.string	"found_nth_occurence"
.LASF9:
	.string	"char"
.LASF68:
	.string	"__ctype_b_loc"
.LASF21:
	.string	"_IScntrl"
.LASF16:
	.string	"_ISxdigit"
.LASF46:
	.string	"replace"
.LASF67:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF42:
	.string	"word"
.LASF29:
	.string	"Queue"
.LASF60:
	.string	"__fmt"
.LASF41:
	.string	"argv"
.LASF12:
	.string	"_ISupper"
.LASF55:
	.string	"generate_words"
.LASF54:
	.string	"is_lower_string"
.LASF40:
	.string	"argc"
.LASF45:
	.string	"main"
.LASF18:
	.string	"_ISprint"
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
