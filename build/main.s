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
.LBB10:
	.loc 1 13 6 view .LVU3
.LVL1:
	.loc 1 13 19 view .LVU4
.LBE10:
	.loc 1 11 29 is_stmt 0 view .LVU5
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LBB11:
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
.LBE11:
	.loc 1 19 1 view .LVU18
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
.LBB12:
	.loc 1 15 10 view .LVU19
	xorl	%eax, %eax
.LBE12:
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
.LBB13:
.LBB14:
.LBB15:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 79 10 is_stmt 0 view .LVU57
	movq	24(%rsp), %rax
.LVL18:
	.loc 2 79 10 view .LVU58
.LBE15:
.LBE14:
.LBE13:
	.loc 1 34 6 view .LVU59
	movl	$0, 12(%rsp)
.LBB20:
.LBB18:
.LBB16:
	.loc 2 79 10 view .LVU60
	addq	$1, %rax
	movq	%rax, 24(%rsp)
.LBE16:
.LBE18:
.LBE20:
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
.LBB21:
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
.LBE21:
	.loc 1 36 8 is_stmt 1 view .LVU67
	movzbl	0(%r13), %r14d
	testb	%r14b, %r14b
	je	.L25
.LVL22:
.L11:
.LBB22:
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
.LBB19:
.LBI14:
	.loc 2 77 42 view .LVU78
.LBB17:
	.loc 2 79 3 view .LVU79
	.loc 2 79 10 is_stmt 0 view .LVU80
	movq	24(%rsp), %rdx
	movq	40(%rsp), %rsi
	call	memcpy@PLT
.LVL26:
	.loc 2 79 10 view .LVU81
.LBE17:
.LBE19:
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
.LBE22:
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	rules(%rip), %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 59 22 is_stmt 0 view .LVU101
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	.loc 1 62 2 is_stmt 1 view .LVU102
	.loc 1 63 2 view .LVU103
	leaq	16(%rsp), %r13
	movq	%r13, %rdi
	call	init_queue@PLT
.LVL36:
	.loc 1 64 2 view .LVU104
	movq	start_symbol(%rip), %rsi
	movq	%r13, %rdi
	call	enqueue@PLT
.LVL37:
	.loc 1 68 2 view .LVU105
	.loc 1 69 2 view .LVU106
.L27:
	.loc 1 69 40 view .LVU107
	.loc 1 69 22 is_stmt 0 view .LVU108
	movq	%r13, %rdi
	call	dequeue@PLT
.LVL38:
	movq	%rax, %r12
.LVL39:
	.loc 1 69 40 view .LVU109
	testq	%rax, %rax
	je	.L26
.L47:
.LVL40:
.LBB30:
.LBB31:
	.loc 1 13 19 is_stmt 1 view .LVU110
	.loc 1 13 16 is_stmt 0 view .LVU111
	movsbq	(%rax), %rbp
	.loc 1 13 19 view .LVU112
	testb	%bpl, %bpl
	je	.L30
	.loc 1 14 9 view .LVU113
	call	__ctype_b_loc@PLT
.LVL41:
	.loc 1 14 8 view .LVU114
	movq	(%rax), %rdx
	leaq	1(%r12), %rax
	jmp	.L29
.LVL42:
	.p2align 4,,10
	.p2align 3
.L46:
	.loc 1 13 28 is_stmt 1 view .LVU115
	.loc 1 13 19 view .LVU116
	.loc 1 13 16 is_stmt 0 view .LVU117
	movsbq	(%rax), %rbp
	.loc 1 13 19 view .LVU118
	addq	$1, %rax
.LVL43:
	.loc 1 13 19 view .LVU119
	testb	%bpl, %bpl
	je	.L30
.L29:
.LVL44:
	.loc 1 14 3 is_stmt 1 view .LVU120
	.loc 1 14 5 is_stmt 0 view .LVU121
	testb	$2, 1(%rdx,%rbp,2)
	jne	.L46
.LVL45:
.L28:
	.loc 1 14 5 view .LVU122
.LBE31:
.LBE30:
	.loc 1 74 3 is_stmt 1 view .LVU123
.LBB32:
	.loc 1 74 7 view .LVU124
	.loc 1 74 20 is_stmt 0 view .LVU125
	movl	$0, 12(%rsp)
	.loc 1 74 27 is_stmt 1 view .LVU126
	movl	12(%rsp), %eax
	cmpl	$3, %eax
	ja	.L27
	.p2align 4,,10
	.p2align 3
.L31:
.LBB33:
	.loc 1 77 8 is_stmt 0 view .LVU127
	xorl	%ecx, %ecx
	jmp	.L34
.LVL46:
	.p2align 4,,10
	.p2align 3
.L33:
	.loc 1 80 5 is_stmt 1 view .LVU128
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	enqueue@PLT
.LVL47:
	.loc 1 81 5 view .LVU129
	movq	%r14, %rdi
	call	free@PLT
.LVL48:
	.loc 1 79 22 is_stmt 0 view .LVU130
	movl	%ebp, %ecx
.LVL49:
.L34:
	.loc 1 79 75 is_stmt 1 view .LVU131
	.loc 1 79 22 is_stmt 0 view .LVU132
	movslq	12(%rsp), %rdx
	movslq	12(%rsp), %rax
	movq	%r12, %rdi
	leal	1(%rcx), %ebp
.LVL50:
	.loc 1 79 44 view .LVU133
	salq	$4, %rax
	.loc 1 79 58 view .LVU134
	salq	$4, %rdx
	.loc 1 79 22 view .LVU135
	movq	8(%rbx,%rdx), %rdx
	movq	(%rbx,%rax), %rsi
	call	replace
.LVL51:
	movq	%rax, %r14
.LVL52:
	.loc 1 79 75 view .LVU136
	testq	%rax, %rax
	jne	.L33
.LBE33:
	.loc 1 74 58 is_stmt 1 discriminator 2 view .LVU137
	movl	12(%rsp), %eax
.LVL53:
	.loc 1 74 58 is_stmt 0 discriminator 2 view .LVU138
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	.loc 1 74 27 is_stmt 1 discriminator 2 view .LVU139
	movl	12(%rsp), %eax
	cmpl	$3, %eax
	jbe	.L31
.LBE32:
	.loc 1 69 40 view .LVU140
	.loc 1 69 22 is_stmt 0 view .LVU141
	movq	%r13, %rdi
	call	dequeue@PLT
.LVL54:
	movq	%rax, %r12
.LVL55:
	.loc 1 69 40 view .LVU142
	testq	%rax, %rax
	jne	.L47
.LVL56:
.L26:
	.loc 1 87 1 view .LVU143
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
.LVL57:
	.loc 1 87 1 view .LVU144
	jne	.L48
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL58:
	.loc 1 87 1 view .LVU145
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.LVL59:
.L30:
	.cfi_restore_state
	.loc 1 71 4 is_stmt 1 view .LVU146
.LBB34:
.LBI34:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 110 1 view .LVU147
.LBB35:
	.loc 3 112 3 view .LVU148
	.loc 3 112 10 is_stmt 0 view .LVU149
	movq	%r12, %rdi
	call	puts@PLT
.LVL60:
	jmp	.L28
.LVL61:
.L48:
	.loc 3 112 10 view .LVU150
.LBE35:
.LBE34:
	.loc 1 87 1 view .LVU151
	call	__stack_chk_fail@PLT
.LVL62:
	.cfi_endproc
.LFE55:
	.size	generate_words, .-generate_words
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL63:
.LFB56:
	.loc 1 93 32 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 93 32 is_stmt 0 view .LVU153
	endbr64
	.loc 1 121 2 is_stmt 1 view .LVU154
	.loc 1 93 32 is_stmt 0 view .LVU155
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 121 2 view .LVU156
	xorl	%eax, %eax
	call	generate_words
.LVL64:
	.loc 1 123 2 is_stmt 1 view .LVU157
	.loc 1 124 1 is_stmt 0 view .LVU158
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.globl	start_symbol
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"X"
	.section	.data.rel.local,"aw"
	.align 8
	.type	start_symbol, @object
	.size	start_symbol, 8
start_symbol:
	.quad	.LC0
	.globl	rules
	.section	.rodata.str1.1
.LC1:
	.string	"aXc"
.LC2:
	.string	"pY"
.LC3:
	.string	"Y"
.LC4:
	.string	"bYc"
.LC5:
	.string	"q"
	.section	.data.rel.local
	.align 32
	.type	rules, @object
	.size	rules, 64
rules:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC0
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC3
	.quad	.LC5
	.text
.Letext0:
	.file 4 "include/queue.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 6 "include/rules.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/include/string.h"
	.file 9 "<built-in>"
	.file 10 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x79e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL25
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x21
	.long	0x67
	.uleb128 0xe
	.long	0x67
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x7
	.long	0x89
	.uleb128 0x13
	.long	0x7f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xe
	.long	0x89
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x7
	.long	0x54
	.uleb128 0x7
	.long	0x90
	.uleb128 0x13
	.long	0xa8
	.uleb128 0x22
	.byte	0x7
	.byte	0x4
	.long	0x3d
	.byte	0xa
	.byte	0x2f
	.byte	0x1
	.long	0x111
	.uleb128 0x6
	.long	.LASF12
	.value	0x100
	.uleb128 0x6
	.long	.LASF13
	.value	0x200
	.uleb128 0x6
	.long	.LASF14
	.value	0x400
	.uleb128 0x6
	.long	.LASF15
	.value	0x800
	.uleb128 0x6
	.long	.LASF16
	.value	0x1000
	.uleb128 0x6
	.long	.LASF17
	.value	0x2000
	.uleb128 0x6
	.long	.LASF18
	.value	0x4000
	.uleb128 0x6
	.long	.LASF19
	.value	0x8000
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.uleb128 0xa
	.long	.LASF23
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF29
	.byte	0x4
	.byte	0x4
	.long	0x141
	.uleb128 0xf
	.long	.LASF24
	.byte	0x5
	.byte	0x9
	.long	0x141
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
	.uleb128 0x7
	.long	0x7f
	.uleb128 0xd
	.long	.LASF28
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.long	0x111
	.uleb128 0x14
	.long	.LASF30
	.byte	0x6
	.byte	0x1
	.long	0x174
	.uleb128 0x15
	.string	"lhs"
	.byte	0x3
	.long	0x7f
	.byte	0
	.uleb128 0x15
	.string	"rhs"
	.byte	0x4
	.long	0x7f
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF30
	.byte	0x6
	.byte	0x6
	.byte	0x3
	.long	0x152
	.uleb128 0x23
	.long	0x174
	.long	0x190
	.uleb128 0x24
	.long	0x36
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.long	.LASF31
	.byte	0x8
	.byte	0x6
	.long	0x180
	.uleb128 0x9
	.byte	0x3
	.quad	rules
	.uleb128 0x16
	.long	.LASF32
	.byte	0x10
	.byte	0x7
	.long	0x7f
	.uleb128 0x9
	.byte	0x3
	.quad	start_symbol
	.uleb128 0x17
	.long	.LASF33
	.byte	0x3
	.byte	0x5f
	.byte	0xc
	.long	0x67
	.long	0x1d6
	.uleb128 0x3
	.long	0x67
	.uleb128 0x3
	.long	0xa8
	.uleb128 0x18
	.byte	0
	.uleb128 0x17
	.long	.LASF34
	.byte	0x4
	.byte	0xd
	.byte	0x7
	.long	0x7f
	.long	0x1ec
	.uleb128 0x3
	.long	0x1ec
	.byte	0
	.uleb128 0x7
	.long	0x146
	.uleb128 0x25
	.long	.LASF35
	.byte	0x7
	.value	0x22b
	.byte	0xd
	.long	0x204
	.uleb128 0x3
	.long	0x44
	.byte	0
	.uleb128 0x19
	.long	.LASF36
	.byte	0xe
	.long	0x219
	.uleb128 0x3
	.long	0x1ec
	.uleb128 0x3
	.long	0x7f
	.byte	0
	.uleb128 0x19
	.long	.LASF37
	.byte	0xa
	.long	0x229
	.uleb128 0x3
	.long	0x1ec
	.byte	0
	.uleb128 0x10
	.long	.LASF38
	.byte	0x8
	.value	0x15e
	.byte	0xe
	.long	0x7f
	.long	0x245
	.uleb128 0x3
	.long	0xa8
	.uleb128 0x3
	.long	0xa8
	.byte	0
	.uleb128 0x10
	.long	.LASF39
	.byte	0x7
	.value	0x21c
	.byte	0xe
	.long	0x44
	.long	0x25c
	.uleb128 0x3
	.long	0x2a
	.byte	0
	.uleb128 0x10
	.long	.LASF40
	.byte	0x8
	.value	0x197
	.byte	0xf
	.long	0x2a
	.long	0x273
	.uleb128 0x3
	.long	0xa8
	.byte	0
	.uleb128 0x26
	.long	.LASF72
	.byte	0xa
	.byte	0x4f
	.byte	0x23
	.long	0x27f
	.uleb128 0x7
	.long	0xa3
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x5d
	.byte	0x5
	.long	0x67
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d9
	.uleb128 0x8
	.long	.LASF41
	.byte	0x5d
	.byte	0xe
	.long	0x67
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x8
	.long	.LASF42
	.byte	0x5d
	.byte	0x1b
	.long	0x141
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x9
	.quad	.LVL64
	.long	0x2d9
	.byte	0
	.uleb128 0x27
	.long	.LASF59
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d9
	.uleb128 0x28
	.long	.LASF44
	.byte	0x1
	.byte	0x3e
	.byte	0xa
	.long	0x146
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.long	.LASF43
	.byte	0x44
	.byte	0x8
	.long	0x7f
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x29
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x3d2
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.byte	0x14
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.byte	0x4c
	.byte	0xa
	.long	0x7f
	.uleb128 0x4
	.long	.LASF45
	.byte	0x4d
	.byte	0x8
	.long	0x67
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x4
	.long	.LASF46
	.byte	0x4e
	.byte	0xa
	.long	0x7f
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x5
	.quad	.LVL47
	.long	0x204
	.long	0x39e
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
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL48
	.long	0x1f1
	.long	0x3b6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.quad	.LVL51
	.long	0x4d9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 -1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x6ba
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.long	0x424
	.uleb128 0x2e
	.long	0x6cb
	.uleb128 0x2f
	.long	0x6d5
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x1b
	.long	0x6d6
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x9
	.quad	.LVL41
	.long	0x273
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x717
	.quad	.LBI34
	.byte	.LVU147
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.byte	0x1
	.byte	0x47
	.byte	0x4
	.long	0x46b
	.uleb128 0xc
	.long	0x727
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0xb
	.quad	.LVL60
	.long	0x77d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL36
	.long	0x219
	.long	0x483
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL37
	.long	0x204
	.long	0x49b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL38
	.long	0x1d6
	.long	0x4b3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL54
	.long	0x1d6
	.long	0x4cb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.quad	.LVL62
	.long	0x786
	.byte	0
	.uleb128 0x1a
	.long	.LASF48
	.byte	0x16
	.byte	0x7
	.long	0x7f
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b3
	.uleb128 0x8
	.long	.LASF49
	.byte	0x16
	.byte	0x1b
	.long	0xa8
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x8
	.long	.LASF50
	.byte	0x16
	.byte	0x2d
	.long	0xa8
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x8
	.long	.LASF48
	.byte	0x16
	.byte	0x41
	.long	0xa8
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.byte	0x16
	.byte	0x54
	.long	0x73
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x4
	.long	.LASF51
	.byte	0x19
	.byte	0x8
	.long	0x7f
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x4
	.long	.LASF52
	.byte	0x1b
	.byte	0x6
	.long	0x67
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x4
	.long	.LASF53
	.byte	0x1c
	.byte	0x6
	.long	0x67
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x4
	.long	.LASF54
	.byte	0x1d
	.byte	0x6
	.long	0x67
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.long	0x67
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x4
	.long	.LASF55
	.byte	0x22
	.byte	0x6
	.long	0x67
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x4
	.long	.LASF56
	.byte	0x23
	.byte	0x6
	.long	0x6b3
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x33
	.long	.LLRL14
	.long	0x63b
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x26
	.byte	0x9
	.long	0x7f
	.uleb128 0x34
	.long	0x6ee
	.quad	.LBI14
	.byte	.LVU78
	.long	.LLRL15
	.byte	0x1
	.byte	0x29
	.byte	0x4
	.uleb128 0xc
	.long	0x70a
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0xc
	.long	0x6fe
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0xb
	.quad	.LVL26
	.long	0x78f
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
	.uleb128 0x5
	.quad	.LVL10
	.long	0x25c
	.long	0x655
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.quad	.LVL12
	.long	0x25c
	.long	0x66d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL14
	.long	0x25c
	.long	0x685
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.quad	.LVL15
	.long	0x245
	.uleb128 0xb
	.quad	.LVL23
	.long	0x798
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
	.long	.LASF57
	.uleb128 0x35
	.long	.LASF58
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.long	0x6b3
	.byte	0x1
	.long	0x6ee
	.uleb128 0x36
	.string	"s"
	.byte	0x1
	.byte	0xb
	.byte	0x1b
	.long	0x7f
	.uleb128 0x37
	.uleb128 0x1c
	.string	"i"
	.byte	0xd
	.byte	0xa
	.long	0x67
	.uleb128 0x9
	.quad	.LVL2
	.long	0x273
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF60
	.byte	0x2
	.byte	0x4d
	.byte	0x2a
	.long	0x7f
	.long	0x717
	.uleb128 0x11
	.long	.LASF61
	.byte	0x2
	.byte	0x4d
	.byte	0x43
	.long	0x84
	.uleb128 0x11
	.long	.LASF62
	.byte	0x2
	.byte	0x4d
	.byte	0x62
	.long	0xad
	.byte	0
	.uleb128 0x1d
	.long	.LASF63
	.byte	0x3
	.byte	0x6e
	.byte	0x1
	.long	0x67
	.long	0x735
	.uleb128 0x11
	.long	.LASF64
	.byte	0x3
	.byte	0x6e
	.byte	0x20
	.long	0xad
	.uleb128 0x18
	.byte	0
	.uleb128 0x38
	.long	0x6ba
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x775
	.uleb128 0xc
	.long	0x6cb
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x39
	.long	0x6d5
	.long	.LLRL1
	.uleb128 0x1b
	.long	0x6d6
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.byte	0x25
	.byte	0x73
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.long	.LASF65
	.long	.LASF67
	.uleb128 0x3b
	.long	.LASF73
	.long	.LASF73
	.uleb128 0x12
	.long	.LASF66
	.long	.LASF68
	.uleb128 0x12
	.long	.LASF69
	.long	.LASF70
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 0
.LLST23:
	.byte	0x6
	.quad	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL64-1-.LVL63
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL64-1-.LVL63
	.uleb128 .LFE56-.LVL63
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 0
.LLST24:
	.byte	0x6
	.quad	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL64-1-.LVL63
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL64-1-.LVL63
	.uleb128 .LFE56-.LVL63
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU109
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 0
.LLST18:
	.byte	0x6
	.quad	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL41-1-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL41-1-.LVL39
	.uleb128 .LVL55-.LVL39
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL55-.LVL39
	.uleb128 .LVL57-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL57-.LVL39
	.uleb128 .LVL58-.LVL39
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL59-.LVL39
	.uleb128 .LFE55-.LVL39
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS20:
	.uleb128 .LVU128
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU143
.LLST20:
	.byte	0x6
	.quad	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL49-.LVL46
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL49-.LVL46
	.uleb128 .LVL50-.LVL46
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL50-.LVL46
	.uleb128 .LVL56-.LVL46
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS21:
	.uleb128 .LVU128
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU131
	.uleb128 .LVU136
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU143
.LLST21:
	.byte	0x6
	.quad	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL47-1-.LVL46
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL47-1-.LVL46
	.uleb128 .LVL49-.LVL46
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL52-.LVL46
	.uleb128 .LVL53-.LVL46
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL53-.LVL46
	.uleb128 .LVL56-.LVL46
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS19:
	.uleb128 .LVU110
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU122
.LLST19:
	.byte	0x6
	.quad	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL42-.LVL40
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.LVL40
	.uleb128 .LVL42-.LVL40
	.uleb128 0x7
	.byte	0x7c
	.sleb128 0
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.LVL40
	.uleb128 .LVL43-.LVL40
	.uleb128 0x6
	.byte	0x70
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.LVL40
	.uleb128 .LVL45-.LVL40
	.uleb128 0x7
	.byte	0x7c
	.sleb128 0
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU147
	.uleb128 .LVU150
.LLST22:
	.byte	0x8
	.quad	.LVL59
	.uleb128 .LVL61-.LVL59
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+1909
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
	.quad	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB11-.LBB10
	.uleb128 .LBE11-.LBB10
	.byte	0x4
	.uleb128 .LBB12-.LBB10
	.uleb128 .LBE12-.LBB10
	.byte	0
.LLRL14:
	.byte	0x5
	.quad	.LBB13
	.byte	0x4
	.uleb128 .LBB13-.LBB13
	.uleb128 .LBE13-.LBB13
	.byte	0x4
	.uleb128 .LBB20-.LBB13
	.uleb128 .LBE20-.LBB13
	.byte	0x4
	.uleb128 .LBB21-.LBB13
	.uleb128 .LBE21-.LBB13
	.byte	0x4
	.uleb128 .LBB22-.LBB13
	.uleb128 .LBE22-.LBB13
	.byte	0
.LLRL15:
	.byte	0x5
	.quad	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB18-.LBB14
	.uleb128 .LBE18-.LBB14
	.byte	0x4
	.uleb128 .LBB19-.LBB14
	.uleb128 .LBE19-.LBB14
	.byte	0
.LLRL25:
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
.LASF63:
	.string	"printf"
.LASF19:
	.string	"_ISgraph"
.LASF39:
	.string	"malloc"
.LASF55:
	.string	"occurence"
.LASF27:
	.string	"size_t"
.LASF38:
	.string	"strstr"
.LASF17:
	.string	"_ISspace"
.LASF53:
	.string	"search_len"
.LASF52:
	.string	"replace_len"
.LASF13:
	.string	"_ISlower"
.LASF36:
	.string	"enqueue"
.LASF11:
	.string	"long long unsigned int"
.LASF62:
	.string	"__src"
.LASF14:
	.string	"_ISalpha"
.LASF35:
	.string	"free"
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
.LASF66:
	.string	"memcpy"
.LASF70:
	.string	"__builtin_strncmp"
.LASF51:
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
.LASF40:
	.string	"strlen"
.LASF43:
	.string	"next_word"
.LASF2:
	.string	"long unsigned int"
.LASF24:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF54:
	.string	"word_len"
.LASF50:
	.string	"search"
.LASF60:
	.string	"strcpy"
.LASF68:
	.string	"__builtin_memcpy"
.LASF32:
	.string	"start_symbol"
.LASF67:
	.string	"__builtin_puts"
.LASF71:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -Og -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF65:
	.string	"puts"
.LASF30:
	.string	"rule"
.LASF25:
	.string	"tail"
.LASF31:
	.string	"rules"
.LASF61:
	.string	"__dest"
.LASF34:
	.string	"dequeue"
.LASF45:
	.string	"occrnc"
.LASF28:
	.string	"queue_t"
.LASF57:
	.string	"_Bool"
.LASF4:
	.string	"unsigned char"
.LASF69:
	.string	"strncmp"
.LASF7:
	.string	"short int"
.LASF37:
	.string	"init_queue"
.LASF73:
	.string	"__stack_chk_fail"
.LASF26:
	.string	"head"
.LASF56:
	.string	"found_nth_occurence"
.LASF9:
	.string	"char"
.LASF72:
	.string	"__ctype_b_loc"
.LASF21:
	.string	"_IScntrl"
.LASF16:
	.string	"_ISxdigit"
.LASF48:
	.string	"replace"
.LASF49:
	.string	"word"
.LASF29:
	.string	"Queue"
.LASF64:
	.string	"__fmt"
.LASF42:
	.string	"argv"
.LASF12:
	.string	"_ISupper"
.LASF59:
	.string	"generate_words"
.LASF58:
	.string	"is_lower_string"
.LASF41:
	.string	"argc"
.LASF46:
	.string	"new_word"
.LASF47:
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
