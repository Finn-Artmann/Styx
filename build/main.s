	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction" "src/main.c"
	.p2align 4
	.type	replace.part.0, @function
replace.part.0:
.LVL0:
.LFB57:
	.file 1 "src/main.c"
	.loc 1 22 7 view -0
	.cfi_startproc
	.loc 1 26 2 view .LVU1
	.loc 1 28 2 view .LVU2
	.loc 1 22 7 is_stmt 0 view .LVU3
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
	.loc 1 28 20 view .LVU4
	movq	%rdx, %rdi
.LVL1:
	.loc 1 22 7 view .LVU5
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
	.loc 1 22 7 view .LVU6
	movq	%rdx, 40(%rsp)
	movl	%ecx, 16(%rsp)
	.loc 1 28 20 view .LVU7
	call	strlen@PLT
.LVL2:
	.loc 1 29 19 view .LVU8
	movq	%rbp, %rdi
	.loc 1 28 20 view .LVU9
	movq	%rax, %r14
	.loc 1 28 6 view .LVU10
	movl	%eax, 32(%rsp)
.LVL3:
	.loc 1 29 2 is_stmt 1 view .LVU11
	.loc 1 29 19 is_stmt 0 view .LVU12
	call	strlen@PLT
.LVL4:
	.loc 1 30 17 view .LVU13
	movq	%r13, %rdi
	.loc 1 29 19 view .LVU14
	movq	%rax, %rbx
	.loc 1 29 6 view .LVU15
	movl	%eax, 36(%rsp)
.LVL5:
	.loc 1 30 2 is_stmt 1 view .LVU16
	.loc 1 30 17 is_stmt 0 view .LVU17
	call	strlen@PLT
.LVL6:
	.loc 1 32 2 is_stmt 1 view .LVU18
	.loc 1 32 27 is_stmt 0 view .LVU19
	movq	%r14, 24(%rsp)
	leal	(%r14,%rax), %edi
	.loc 1 32 41 view .LVU20
	subl	%ebx, %edi
	.loc 1 32 54 view .LVU21
	addl	$1, %edi
	.loc 1 32 11 view .LVU22
	movslq	%edi, %rdi
	call	malloc@PLT
.LVL7:
	.loc 1 37 8 view .LVU23
	movzbl	0(%r13), %r14d
.LVL8:
	.loc 1 32 11 view .LVU24
	movq	%rax, %r12
.LVL9:
	.loc 1 34 2 is_stmt 1 view .LVU25
	.loc 1 35 2 view .LVU26
	.loc 1 36 1 view .LVU27
	.loc 1 37 2 view .LVU28
	.loc 1 37 8 view .LVU29
	testb	%r14b, %r14b
	je	.L2
.LBB18:
.LBB19:
.LBB20:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 79 10 is_stmt 0 view .LVU30
	movq	24(%rsp), %rax
.LVL10:
	.loc 2 79 10 view .LVU31
.LBE20:
.LBE19:
.LBE18:
	.loc 1 34 6 view .LVU32
	xorl	%r15d, %r15d
	.loc 1 36 6 view .LVU33
	movb	$0, 23(%rsp)
	.loc 1 35 6 view .LVU34
	movl	$0, 12(%rsp)
.LBB25:
.LBB23:
.LBB21:
	.loc 2 79 10 view .LVU35
	addq	$1, %rax
	movq	%rax, 24(%rsp)
	movl	%r15d, %eax
	movl	%r14d, %r15d
	movl	%eax, %r14d
	jmp	.L5
.LVL11:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 2 79 10 view .LVU36
.LBE21:
.LBE23:
	.loc 1 48 4 is_stmt 1 view .LVU37
	.loc 1 48 23 is_stmt 0 view .LVU38
	addq	$1, %r13
.LVL12:
	.loc 1 48 16 view .LVU39
	movb	%r15b, (%rdi)
	.loc 1 48 12 view .LVU40
	addl	$1, %r14d
.LVL13:
	.loc 1 48 12 view .LVU41
.LBE25:
	.loc 1 37 8 is_stmt 1 view .LVU42
	movzbl	0(%r13), %r15d
	testb	%r15b, %r15b
	je	.L15
.LVL14:
.L5:
.LBB26:
	.loc 1 39 3 view .LVU43
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	strncmp@PLT
.LVL15:
	.loc 1 41 3 view .LVU44
	.loc 1 42 4 is_stmt 0 view .LVU45
	movslq	%r14d, %rdi
	addq	%r12, %rdi
	.loc 1 41 5 view .LVU46
	testl	%eax, %eax
	jne	.L3
	.loc 1 41 35 view .LVU47
	movl	12(%rsp), %eax
	.loc 1 41 18 view .LVU48
	cmpl	%eax, 16(%rsp)
	.loc 1 41 35 view .LVU49
	leal	1(%rax), %r9d
.LVL16:
	.loc 1 41 35 view .LVU50
	movl	%r9d, 12(%rsp)
	.loc 1 41 18 view .LVU51
	jne	.L3
	.loc 1 42 4 is_stmt 1 view .LVU52
.LVL17:
.LBB24:
.LBI19:
	.loc 2 77 42 view .LVU53
.LBB22:
	.loc 2 79 3 view .LVU54
	.loc 2 79 10 is_stmt 0 view .LVU55
	movq	24(%rsp), %rdx
	movq	40(%rsp), %rsi
	call	memcpy@PLT
.LVL18:
	.loc 2 79 10 view .LVU56
.LBE22:
.LBE24:
	.loc 1 43 4 is_stmt 1 view .LVU57
	.loc 1 44 9 is_stmt 0 view .LVU58
	movslq	36(%rsp), %rax
	.loc 1 45 24 view .LVU59
	movb	$1, 23(%rsp)
.LVL19:
	.loc 1 43 5 view .LVU60
	addl	32(%rsp), %r14d
.LVL20:
	.loc 1 44 4 is_stmt 1 view .LVU61
	.loc 1 44 9 is_stmt 0 view .LVU62
	addq	%rax, %r13
.LVL21:
	.loc 1 45 4 is_stmt 1 view .LVU63
	.loc 1 45 4 is_stmt 0 view .LVU64
.LBE26:
	.loc 1 37 8 is_stmt 1 view .LVU65
	movzbl	0(%r13), %r15d
	testb	%r15b, %r15b
	jne	.L5
	.p2align 4,,10
	.p2align 3
.L15:
	.loc 1 37 8 is_stmt 0 view .LVU66
	movslq	%r14d, %rcx
	.loc 1 52 2 is_stmt 1 view .LVU67
	.loc 1 55 4 is_stmt 0 view .LVU68
	cmpb	$0, 23(%rsp)
	.loc 1 52 12 view .LVU69
	movb	$0, (%r12,%rcx)
	.loc 1 55 2 is_stmt 1 view .LVU70
	.loc 1 55 4 is_stmt 0 view .LVU71
	je	.L7
.LVL22:
.L1:
	.loc 1 59 1 view .LVU72
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL23:
	.loc 1 59 1 view .LVU73
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL24:
	.loc 1 59 1 view .LVU74
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
.LVL25:
	.loc 1 59 1 view .LVU75
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.LVL26:
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	.loc 1 52 2 is_stmt 1 view .LVU76
	.loc 1 52 12 is_stmt 0 view .LVU77
	movb	$0, (%rax)
	.loc 1 55 2 is_stmt 1 view .LVU78
.LVL27:
.L7:
	.loc 1 55 29 view .LVU79
	.loc 1 55 35 is_stmt 0 view .LVU80
	xorl	%r12d, %r12d
.LVL28:
	.loc 1 55 35 view .LVU81
	jmp	.L1
	.cfi_endproc
.LFE57:
	.size	replace.part.0, .-replace.part.0
	.p2align 4
	.globl	is_lower_string
	.type	is_lower_string, @function
is_lower_string:
.LVL29:
.LFB53:
	.loc 1 11 29 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 11 29 is_stmt 0 view .LVU83
	endbr64
	.loc 1 13 2 is_stmt 1 view .LVU84
.LBB28:
	.loc 1 13 6 view .LVU85
.LVL30:
	.loc 1 13 23 view .LVU86
	testq	%rdi, %rdi
	je	.L20
.LBE28:
	.loc 1 11 29 is_stmt 0 view .LVU87
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	jmp	.L18
.LVL31:
	.p2align 4,,10
	.p2align 3
.L19:
.LBB29:
	.loc 1 14 3 is_stmt 1 view .LVU88
	.loc 1 14 9 is_stmt 0 view .LVU89
	call	__ctype_b_loc@PLT
.LVL32:
	.loc 1 14 5 view .LVU90
	addq	$1, %rbp
.LVL33:
	.loc 1 14 26 view .LVU91
	movq	(%rax), %rax
	.loc 1 14 5 view .LVU92
	testb	$2, 1(%rax,%rbx,2)
	je	.L21
.L18:
.LVL34:
	.loc 1 13 27 discriminator 3 view .LVU93
	movsbq	0(%rbp), %rbx
	.loc 1 13 23 discriminator 3 view .LVU94
	testb	%bl, %bl
	jne	.L19
.LBE29:
	.loc 1 19 1 view .LVU95
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	.loc 1 18 8 view .LVU96
	movl	$1, %eax
	.loc 1 19 1 view .LVU97
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL35:
	.loc 1 19 1 view .LVU98
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
.LBB30:
	.loc 1 15 10 view .LVU99
	xorl	%eax, %eax
.LBE30:
	.loc 1 19 1 view .LVU100
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL36:
.L20:
	.cfi_restore 3
	.cfi_restore 6
	.loc 1 18 8 view .LVU101
	movl	$1, %eax
	.loc 1 19 1 view .LVU102
	ret
	.cfi_endproc
.LFE53:
	.size	is_lower_string, .-is_lower_string
	.p2align 4
	.globl	replace
	.type	replace, @function
replace:
.LVL37:
.LFB54:
	.loc 1 22 86 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 22 86 is_stmt 0 view .LVU104
	endbr64
	.loc 1 24 2 is_stmt 1 view .LVU105
	.loc 1 24 27 is_stmt 0 view .LVU106
	testq	%rsi, %rsi
	sete	%al
	.loc 1 24 35 view .LVU107
	testq	%rdx, %rdx
	sete	%r8b
	orb	%r8b, %al
	jne	.L27
	testq	%rdi, %rdi
	je	.L27
	jmp	replace.part.0
.LVL38:
	.p2align 4,,10
	.p2align 3
.L27:
	.loc 1 59 1 view .LVU108
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE54:
	.size	replace, .-replace
	.p2align 4
	.globl	generate_words
	.type	generate_words, @function
generate_words:
.LFB55:
	.loc 1 62 26 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	64+rules(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 62 26 is_stmt 0 view .LVU110
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 65 2 is_stmt 1 view .LVU111
	.loc 1 66 2 view .LVU112
	movq	%rsp, %r12
	movq	%r12, %rdi
	call	init_queue@PLT
.LVL39:
	.loc 1 67 2 view .LVU113
	movq	start_symbol(%rip), %rsi
	movq	%r12, %rdi
	call	enqueue@PLT
.LVL40:
	.loc 1 71 2 view .LVU114
	.loc 1 72 2 view .LVU115
	.loc 1 72 40 view .LVU116
	.loc 1 72 22 is_stmt 0 view .LVU117
	movq	%r12, %rdi
	call	dequeue@PLT
.LVL41:
	movq	%rax, %rbx
.LVL42:
	.loc 1 72 40 view .LVU118
	testq	%rax, %rax
	je	.L28
	.p2align 4,,10
	.p2align 3
.L50:
.LVL43:
.LBB40:
.LBB41:
	.loc 1 13 23 is_stmt 1 view .LVU119
	.loc 1 13 27 is_stmt 0 view .LVU120
	movsbq	(%rax), %rbp
	.loc 1 13 23 view .LVU121
	testb	%bpl, %bpl
	je	.L32
	.loc 1 14 9 view .LVU122
	call	__ctype_b_loc@PLT
.LVL44:
	.loc 1 14 8 view .LVU123
	movq	(%rax), %rdx
	leaq	1(%rbx), %rax
	jmp	.L31
.LVL45:
	.p2align 4,,10
	.p2align 3
.L49:
	.loc 1 13 39 is_stmt 1 view .LVU124
	.loc 1 13 23 view .LVU125
	.loc 1 13 27 is_stmt 0 view .LVU126
	movsbq	(%rax), %rbp
	.loc 1 13 23 view .LVU127
	addq	$1, %rax
.LVL46:
	.loc 1 13 23 view .LVU128
	testb	%bpl, %bpl
	je	.L32
.L31:
.LVL47:
	.loc 1 14 3 is_stmt 1 view .LVU129
	.loc 1 14 5 is_stmt 0 view .LVU130
	testb	$2, 1(%rdx,%rbp,2)
	jne	.L49
.LVL48:
.L30:
	.loc 1 14 5 view .LVU131
	leaq	rules(%rip), %r15
	.p2align 4,,10
	.p2align 3
.L35:
.LVL49:
	.loc 1 14 5 view .LVU132
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.loc 1 82 75 is_stmt 1 view .LVU133
	.loc 1 82 58 is_stmt 0 view .LVU134
	movq	8(%r15), %rdx
	.loc 1 82 44 view .LVU135
	movq	(%r15), %rsi
.LVL50:
.LBB44:
.LBI44:
	.loc 1 22 7 is_stmt 1 view .LVU136
.LBB45:
	.loc 1 24 2 view .LVU137
	.loc 1 24 35 is_stmt 0 view .LVU138
	testq	%rdx, %rdx
	je	.L37
	testq	%rsi, %rsi
	je	.L37
	xorl	%r14d, %r14d
.LVL51:
.L33:
	.loc 1 24 35 view .LVU139
	movl	%r14d, %ecx
	movq	%rbx, %rdi
	call	replace.part.0
.LVL52:
	.loc 1 24 35 view .LVU140
	movq	%rax, %rbp
.LVL53:
	.loc 1 24 35 view .LVU141
.LBE45:
.LBE44:
	.loc 1 82 75 view .LVU142
	testq	%rax, %rax
	je	.L37
	.loc 1 83 5 is_stmt 1 view .LVU143
	movq	%rbp, %rsi
	movq	%r12, %rdi
.LBB48:
.LBB46:
	.loc 1 24 35 is_stmt 0 view .LVU144
	addl	$1, %r14d
.LVL54:
	.loc 1 24 35 view .LVU145
.LBE46:
.LBE48:
	.loc 1 83 5 view .LVU146
	call	enqueue@PLT
.LVL55:
	.loc 1 84 5 is_stmt 1 view .LVU147
	movq	%rbp, %rdi
	call	free@PLT
.LVL56:
	.loc 1 82 75 view .LVU148
	.loc 1 82 44 is_stmt 0 view .LVU149
	movq	(%r15), %rsi
.LVL57:
	.loc 1 82 58 view .LVU150
	movq	8(%r15), %rdx
.LVL58:
.LBB49:
	.loc 1 22 7 is_stmt 1 view .LVU151
.LBB47:
	.loc 1 24 2 view .LVU152
	.loc 1 24 35 is_stmt 0 view .LVU153
	testq	%rsi, %rsi
	je	.L37
	testq	%rdx, %rdx
	jne	.L33
.LVL59:
.L37:
	.loc 1 24 35 view .LVU154
.LBE47:
.LBE49:
.LBE43:
	.loc 1 77 49 is_stmt 1 view .LVU155
	.loc 1 77 18 view .LVU156
	addq	$16, %r15
.LVL60:
	.loc 1 77 18 is_stmt 0 view .LVU157
	cmpq	%r15, %r13
	jne	.L35
.LBE42:
	.loc 1 72 40 is_stmt 1 view .LVU158
	.loc 1 72 22 is_stmt 0 view .LVU159
	movq	%r12, %rdi
	call	dequeue@PLT
.LVL61:
	movq	%rax, %rbx
.LVL62:
	.loc 1 72 40 view .LVU160
	testq	%rax, %rax
	jne	.L50
.LVL63:
.L28:
	.loc 1 90 1 view .LVU161
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
.LVL64:
	.loc 1 90 1 view .LVU162
	jne	.L51
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL65:
	.loc 1 90 1 view .LVU163
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
.LVL66:
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore_state
	.loc 1 74 4 is_stmt 1 view .LVU164
.LBB50:
.LBI50:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 110 1 view .LVU165
.LBB51:
	.loc 3 112 3 view .LVU166
	.loc 3 112 10 is_stmt 0 view .LVU167
	movq	%rbx, %rdi
	call	puts@PLT
.LVL67:
	.loc 3 112 10 view .LVU168
.LBE51:
.LBE50:
.LBB52:
	.loc 1 77 18 is_stmt 1 view .LVU169
	jmp	.L30
.LVL68:
.L51:
	.loc 1 77 18 is_stmt 0 view .LVU170
.LBE52:
	.loc 1 90 1 view .LVU171
	call	__stack_chk_fail@PLT
.LVL69:
	.cfi_endproc
.LFE55:
	.size	generate_words, .-generate_words
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL70:
.LFB56:
	.loc 1 95 32 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 95 32 is_stmt 0 view .LVU173
	endbr64
	.loc 1 123 2 is_stmt 1 view .LVU174
	.loc 1 95 32 is_stmt 0 view .LVU175
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 123 2 view .LVU176
	call	generate_words
.LVL71:
	.loc 1 125 2 is_stmt 1 view .LVU177
	.loc 1 126 1 is_stmt 0 view .LVU178
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
	.long	0x8eb
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x23
	.long	.LASF68
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL36
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0xf
	.long	.LASF27
	.byte	0x5
	.byte	0xd1
	.byte	0x1b
	.long	0x36
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x24
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x10
	.long	0x4d
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.long	0x67
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xa
	.long	0x84
	.uleb128 0x17
	.long	0x7a
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x10
	.long	0x84
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0xa
	.long	0x54
	.uleb128 0xa
	.long	0x8b
	.uleb128 0x17
	.long	0xa3
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x3d
	.byte	0xa
	.byte	0x2f
	.byte	0x1
	.long	0x10c
	.uleb128 0x7
	.long	.LASF12
	.value	0x100
	.uleb128 0x7
	.long	.LASF13
	.value	0x200
	.uleb128 0x7
	.long	.LASF14
	.value	0x400
	.uleb128 0x7
	.long	.LASF15
	.value	0x800
	.uleb128 0x7
	.long	.LASF16
	.value	0x1000
	.uleb128 0x7
	.long	.LASF17
	.value	0x2000
	.uleb128 0x7
	.long	.LASF18
	.value	0x4000
	.uleb128 0x7
	.long	.LASF19
	.value	0x8000
	.uleb128 0xe
	.long	.LASF20
	.byte	0x1
	.uleb128 0xe
	.long	.LASF21
	.byte	0x2
	.uleb128 0xe
	.long	.LASF22
	.byte	0x4
	.uleb128 0xe
	.long	.LASF23
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF29
	.byte	0x4
	.byte	0x4
	.long	0x13c
	.uleb128 0x11
	.long	.LASF24
	.byte	0x5
	.byte	0x9
	.long	0x13c
	.byte	0
	.uleb128 0x11
	.long	.LASF25
	.byte	0x6
	.byte	0x6
	.long	0x67
	.byte	0x8
	.uleb128 0x11
	.long	.LASF26
	.byte	0x7
	.byte	0x6
	.long	0x67
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.long	0x7a
	.uleb128 0xf
	.long	.LASF28
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.long	0x10c
	.uleb128 0x18
	.long	.LASF30
	.byte	0x6
	.byte	0x1
	.long	0x16f
	.uleb128 0x19
	.string	"lhs"
	.byte	0x3
	.long	0x7a
	.byte	0
	.uleb128 0x19
	.string	"rhs"
	.byte	0x4
	.long	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF30
	.byte	0x6
	.byte	0x6
	.byte	0x3
	.long	0x14d
	.uleb128 0x27
	.long	0x16f
	.long	0x18b
	.uleb128 0x28
	.long	0x36
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x8
	.byte	0x6
	.long	0x17b
	.uleb128 0x9
	.byte	0x3
	.quad	rules
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x10
	.byte	0x7
	.long	0x7a
	.uleb128 0x9
	.byte	0x3
	.quad	start_symbol
	.uleb128 0x1b
	.long	.LASF33
	.byte	0x3
	.byte	0x5f
	.byte	0xc
	.long	0x67
	.long	0x1d1
	.uleb128 0x5
	.long	0x67
	.uleb128 0x5
	.long	0xa3
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.long	.LASF34
	.byte	0x4
	.byte	0xd
	.byte	0x7
	.long	0x7a
	.long	0x1e7
	.uleb128 0x5
	.long	0x1e7
	.byte	0
	.uleb128 0xa
	.long	0x141
	.uleb128 0x29
	.long	.LASF35
	.byte	0x7
	.value	0x22b
	.byte	0xd
	.long	0x1ff
	.uleb128 0x5
	.long	0x44
	.byte	0
	.uleb128 0x1d
	.long	.LASF36
	.byte	0xe
	.long	0x214
	.uleb128 0x5
	.long	0x1e7
	.uleb128 0x5
	.long	0x7a
	.byte	0
	.uleb128 0x1d
	.long	.LASF37
	.byte	0xa
	.long	0x224
	.uleb128 0x5
	.long	0x1e7
	.byte	0
	.uleb128 0x12
	.long	.LASF38
	.byte	0x8
	.value	0x15e
	.byte	0xe
	.long	0x7a
	.long	0x240
	.uleb128 0x5
	.long	0xa3
	.uleb128 0x5
	.long	0xa3
	.byte	0
	.uleb128 0x12
	.long	.LASF39
	.byte	0x7
	.value	0x21c
	.byte	0xe
	.long	0x44
	.long	0x257
	.uleb128 0x5
	.long	0x2a
	.byte	0
	.uleb128 0x12
	.long	.LASF40
	.byte	0x8
	.value	0x197
	.byte	0xf
	.long	0x2a
	.long	0x26e
	.uleb128 0x5
	.long	0xa3
	.byte	0
	.uleb128 0x2a
	.long	.LASF69
	.byte	0xa
	.byte	0x4f
	.byte	0x23
	.long	0x27a
	.uleb128 0xa
	.long	0x9e
	.uleb128 0x2b
	.long	.LASF70
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.long	0x67
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d5
	.uleb128 0x1e
	.long	.LASF41
	.byte	0x5f
	.byte	0xe
	.long	0x67
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x1e
	.long	.LASF42
	.byte	0x5f
	.byte	0x1b
	.long	0x13c
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0xc
	.quad	.LVL71
	.long	0x2d5
	.byte	0
	.uleb128 0x2c
	.long	.LASF71
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x53f
	.uleb128 0x2d
	.long	.LASF72
	.byte	0x1
	.byte	0x41
	.byte	0xa
	.long	0x141
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x13
	.long	.LASF43
	.byte	0x47
	.byte	0x8
	.long	0x7a
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x2e
	.long	.LLRL24
	.long	0x438
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.byte	0xb
	.long	0x67
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x30
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x9
	.long	.LASF47
	.byte	0x4f
	.byte	0xa
	.long	0x7a
	.uleb128 0x13
	.long	.LASF44
	.byte	0x50
	.byte	0x8
	.long	0x67
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x13
	.long	.LASF45
	.byte	0x51
	.byte	0xa
	.long	0x7a
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x31
	.long	0x53f
	.quad	.LBI44
	.byte	.LVU136
	.long	.LLRL28
	.byte	0x1
	.byte	0x52
	.byte	0x16
	.long	0x404
	.uleb128 0x2
	.long	0x572
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x2
	.long	0x566
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x2
	.long	0x55a
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x2
	.long	0x54e
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x32
	.long	.LLRL28
	.uleb128 0x3
	.long	0x57b
	.uleb128 0x3
	.long	0x586
	.uleb128 0x3
	.long	0x591
	.uleb128 0x3
	.long	0x59c
	.uleb128 0x3
	.long	0x5a7
	.uleb128 0x3
	.long	0x5b0
	.uleb128 0x3
	.long	0x5bb
	.uleb128 0xd
	.quad	.LVL52
	.long	0x653
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL55
	.long	0x1ff
	.long	0x422
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.quad	.LVL56
	.long	0x1ec
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x5db
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x1
	.byte	0x49
	.byte	0x6
	.long	0x48a
	.uleb128 0x34
	.long	0x5ea
	.uleb128 0x35
	.long	0x5f3
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x6
	.long	0x5f4
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0xc
	.quad	.LVL44
	.long	0x26e
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x635
	.quad	.LBI50
	.byte	.LVU165
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0x1
	.byte	0x4a
	.byte	0x4
	.long	0x4d1
	.uleb128 0x2
	.long	0x645
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0xd
	.quad	.LVL67
	.long	0x8ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LVL39
	.long	0x214
	.long	0x4e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL40
	.long	0x1ff
	.long	0x501
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL41
	.long	0x1d1
	.long	0x519
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL61
	.long	0x1d1
	.long	0x531
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL69
	.long	0x8d3
	.byte	0
	.uleb128 0x1f
	.long	.LASF46
	.byte	0x16
	.byte	0x7
	.long	0x7a
	.long	0x5d4
	.uleb128 0xb
	.long	.LASF47
	.byte	0x1
	.byte	0x16
	.byte	0x1b
	.long	0xa3
	.uleb128 0xb
	.long	.LASF48
	.byte	0x1
	.byte	0x16
	.byte	0x2d
	.long	0xa3
	.uleb128 0xb
	.long	.LASF46
	.byte	0x1
	.byte	0x16
	.byte	0x41
	.long	0xa3
	.uleb128 0x20
	.string	"n"
	.byte	0x16
	.byte	0x54
	.long	0x6e
	.uleb128 0x9
	.long	.LASF49
	.byte	0x1a
	.byte	0x8
	.long	0x7a
	.uleb128 0x9
	.long	.LASF50
	.byte	0x1c
	.byte	0x6
	.long	0x67
	.uleb128 0x9
	.long	.LASF51
	.byte	0x1d
	.byte	0x6
	.long	0x67
	.uleb128 0x9
	.long	.LASF52
	.byte	0x1e
	.byte	0x6
	.long	0x67
	.uleb128 0x14
	.string	"i"
	.byte	0x22
	.byte	0x6
	.long	0x67
	.uleb128 0x9
	.long	.LASF53
	.byte	0x23
	.byte	0x6
	.long	0x67
	.uleb128 0x9
	.long	.LASF54
	.byte	0x24
	.byte	0x6
	.long	0x5d4
	.uleb128 0x21
	.uleb128 0x14
	.string	"tmp"
	.byte	0x27
	.byte	0x9
	.long	0x7a
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF55
	.uleb128 0x1f
	.long	.LASF56
	.byte	0xb
	.byte	0x5
	.long	0x5d4
	.long	0x60c
	.uleb128 0x20
	.string	"s"
	.byte	0xb
	.byte	0x1b
	.long	0x7a
	.uleb128 0x21
	.uleb128 0x14
	.string	"i"
	.byte	0xd
	.byte	0xa
	.long	0x67
	.uleb128 0xc
	.quad	.LVL32
	.long	0x26e
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF59
	.byte	0x2
	.byte	0x4d
	.byte	0x2a
	.long	0x7a
	.long	0x635
	.uleb128 0xb
	.long	.LASF57
	.byte	0x2
	.byte	0x4d
	.byte	0x43
	.long	0x7f
	.uleb128 0xb
	.long	.LASF58
	.byte	0x2
	.byte	0x4d
	.byte	0x62
	.long	0xa8
	.byte	0
	.uleb128 0x22
	.long	.LASF60
	.byte	0x3
	.byte	0x6e
	.byte	0x1
	.long	0x67
	.long	0x653
	.uleb128 0xb
	.long	.LASF61
	.byte	0x3
	.byte	0x6e
	.byte	0x20
	.long	0xa8
	.uleb128 0x1c
	.byte	0
	.uleb128 0x15
	.long	0x53f
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e5
	.uleb128 0x2
	.long	0x54e
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x2
	.long	0x55a
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x2
	.long	0x566
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x2
	.long	0x572
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x6
	.long	0x57b
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x6
	.long	0x586
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x6
	.long	0x591
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x6
	.long	0x59c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x6
	.long	0x5a7
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x6
	.long	0x5b0
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x6
	.long	0x5bb
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x37
	.long	0x5c6
	.long	.LLRL11
	.long	0x76d
	.uleb128 0x3
	.long	0x5c7
	.uleb128 0x38
	.long	0x60c
	.quad	.LBI19
	.byte	.LVU53
	.long	.LLRL12
	.byte	0x1
	.byte	0x2a
	.byte	0x4
	.uleb128 0x2
	.long	0x628
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x2
	.long	0x61c
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0xd
	.quad	.LVL18
	.long	0x8dc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xb
	.byte	0x7e
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
	.quad	.LVL2
	.long	0x257
	.long	0x787
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.quad	.LVL4
	.long	0x257
	.long	0x79f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.quad	.LVL6
	.long	0x257
	.long	0x7b7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL7
	.long	0x240
	.uleb128 0xd
	.quad	.LVL15
	.long	0x8e5
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
	.uleb128 0x15
	.long	0x5db
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x825
	.uleb128 0x2
	.long	0x5ea
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x39
	.long	0x5f3
	.long	.LLRL16
	.uleb128 0x6
	.long	0x5f4
	.long	.LLST17
	.long	.LVUS17
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x53f
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c2
	.uleb128 0x2
	.long	0x54e
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x2
	.long	0x55a
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x2
	.long	0x566
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x2
	.long	0x572
	.long	.LLST21
	.long	.LVUS21
	.uleb128 0x3
	.long	0x57b
	.uleb128 0x3
	.long	0x586
	.uleb128 0x3
	.long	0x591
	.uleb128 0x3
	.long	0x59c
	.uleb128 0x3
	.long	0x5a7
	.uleb128 0x3
	.long	0x5b0
	.uleb128 0x3
	.long	0x5bb
	.uleb128 0x3a
	.quad	.LVL38
	.long	0x653
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.byte	0x25
	.byte	0x73
	.byte	0xa
	.byte	0
	.uleb128 0x16
	.long	.LASF62
	.long	.LASF64
	.uleb128 0x3c
	.long	.LASF73
	.long	.LASF73
	.uleb128 0x16
	.long	.LASF63
	.long	.LASF65
	.uleb128 0x16
	.long	.LASF66
	.long	.LASF67
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
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xe
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
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
.LVUS34:
	.uleb128 0
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 0
.LLST34:
	.byte	0x6
	.quad	.LVL70
	.byte	0x4
	.uleb128 .LVL70-.LVL70
	.uleb128 .LVL71-1-.LVL70
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL71-1-.LVL70
	.uleb128 .LFE56-.LVL70
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 0
.LLST35:
	.byte	0x6
	.quad	.LVL70
	.byte	0x4
	.uleb128 .LVL70-.LVL70
	.uleb128 .LVL71-1-.LVL70
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL71-1-.LVL70
	.uleb128 .LFE56-.LVL70
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU115
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU163
	.uleb128 .LVU164
	.uleb128 0
.LLST22:
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
	.uleb128 .LVL44-1-.LVL40
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL44-1-.LVL40
	.uleb128 .LVL62-.LVL40
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL62-.LVL40
	.uleb128 .LVL64-.LVL40
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL64-.LVL40
	.uleb128 .LVL65-.LVL40
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL66-.LVL40
	.uleb128 .LFE55-.LVL40
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS25:
	.uleb128 .LVU156
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU161
	.uleb128 .LVU168
	.uleb128 .LVU170
.LLST25:
	.byte	0x6
	.quad	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL60-.LVL59
	.uleb128 0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.quad	rules
	.byte	0x1c
	.byte	0x34
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL60-.LVL59
	.uleb128 .LVL63-.LVL59
	.uleb128 0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.quad	rules+16
	.byte	0x1c
	.byte	0x34
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL59
	.uleb128 .LVL68-.LVL59
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU132
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU149
.LLST26:
	.byte	0x6
	.quad	.LVL49
	.byte	0x4
	.uleb128 .LVL49-.LVL49
	.uleb128 .LVL49-.LVL49
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.LVL49
	.uleb128 .LVL51-.LVL49
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.LVL49
	.uleb128 .LVL54-.LVL49
	.uleb128 0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.LVL49
	.uleb128 .LVL56-.LVL49
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS27:
	.uleb128 .LVU141
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU148
.LLST27:
	.byte	0x6
	.quad	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL55-1-.LVL53
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL55-1-.LVL53
	.uleb128 .LVL56-.LVL53
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS29:
	.uleb128 .LVU136
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU141
	.uleb128 .LVU151
	.uleb128 .LVU154
.LLST29:
	.byte	0x6
	.quad	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL51-.LVL50
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.LVL50
	.uleb128 .LVL53-.LVL50
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL58-.LVL50
	.uleb128 .LVL59-.LVL50
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS30:
	.uleb128 .LVU136
	.uleb128 .LVU140
	.uleb128 .LVU151
	.uleb128 .LVU154
.LLST30:
	.byte	0x6
	.quad	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL52-1-.LVL50
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL58-.LVL50
	.uleb128 .LVL59-.LVL50
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS31:
	.uleb128 .LVU136
	.uleb128 .LVU140
	.uleb128 .LVU150
	.uleb128 .LVU154
.LLST31:
	.byte	0x6
	.quad	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL52-1-.LVL50
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL57-.LVL50
	.uleb128 .LVL59-.LVL50
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS32:
	.uleb128 .LVU136
	.uleb128 .LVU141
	.uleb128 .LVU150
	.uleb128 .LVU154
.LLST32:
	.byte	0x6
	.quad	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL53-.LVL50
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL57-.LVL50
	.uleb128 .LVL59-.LVL50
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS23:
	.uleb128 .LVU119
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU128
	.uleb128 .LVU129
	.uleb128 .LVU131
.LLST23:
	.byte	0x6
	.quad	.LVL43
	.byte	0x4
	.uleb128 .LVL43-.LVL43
	.uleb128 .LVL45-.LVL43
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-.LVL43
	.uleb128 .LVL45-.LVL43
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-.LVL43
	.uleb128 .LVL46-.LVL43
	.uleb128 0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.LVL43
	.uleb128 .LVL48-.LVL43
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 .LVU165
	.uleb128 .LVU168
.LLST33:
	.byte	0x8
	.quad	.LVL66
	.uleb128 .LVL67-.LVL66
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2242
	.sleb128 0
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU75
	.uleb128 .LVU76
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL25-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL26-.LVL0
	.uleb128 .LFE57-.LVL0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LVL24-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL24-.LVL0
	.uleb128 .LVL26-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL0
	.uleb128 .LFE57-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST2:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LFE57-.LVL0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LFE57-.LVL0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
.LVUS4:
	.uleb128 .LVU25
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU72
	.uleb128 .LVU76
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU81
.LLST4:
	.byte	0x6
	.quad	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL10-.LVL9
	.uleb128 .LVL22-.LVL9
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL26-.LVL9
	.uleb128 .LVL27-.LVL9
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL27-.LVL9
	.uleb128 .LVL28-.LVL9
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS5:
	.uleb128 .LVU11
	.uleb128 .LVU24
.LLST5:
	.byte	0x8
	.quad	.LVL3
	.uleb128 .LVL8-.LVL3
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS6:
	.uleb128 .LVU16
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL23-.LVL5
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL26-.LVL5
	.uleb128 .LFE57-.LVL5
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 .LVU18
	.uleb128 .LVU23
.LLST7:
	.byte	0x8
	.quad	.LVL6
	.uleb128 .LVL7-1-.LVL6
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS8:
	.uleb128 .LVU26
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU72
	.uleb128 .LVU76
	.uleb128 .LVU79
.LLST8:
	.byte	0x6
	.quad	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL11-.LVL9
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL9
	.uleb128 .LVL22-.LVL9
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL26-.LVL9
	.uleb128 .LVL27-.LVL9
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU27
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU72
	.uleb128 .LVU76
	.uleb128 .LVU79
.LLST9:
	.byte	0x6
	.quad	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL11-.LVL9
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL9
	.uleb128 .LVL16-.LVL9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x4
	.uleb128 .LVL16-.LVL9
	.uleb128 .LVL18-1-.LVL9
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL18-1-.LVL9
	.uleb128 .LVL22-.LVL9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0x4
	.uleb128 .LVL26-.LVL9
	.uleb128 .LVL27-.LVL9
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU28
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU60
	.uleb128 .LVU64
	.uleb128 .LVU72
	.uleb128 .LVU76
	.uleb128 .LVU79
.LLST10:
	.byte	0x6
	.quad	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL11-.LVL9
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL9
	.uleb128 .LVL19-.LVL9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.byte	0x4
	.uleb128 .LVL21-.LVL9
	.uleb128 .LVL22-.LVL9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.byte	0x4
	.uleb128 .LVL26-.LVL9
	.uleb128 .LVL27-.LVL9
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU53
	.uleb128 .LVU56
.LLST13:
	.byte	0x8
	.quad	.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS14:
	.uleb128 .LVU53
	.uleb128 .LVU56
.LLST14:
	.byte	0x8
	.quad	.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0xc
	.byte	0x7e
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
.LVUS15:
	.uleb128 0
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 0
.LLST15:
	.byte	0x6
	.quad	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL31-.LVL29
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL31-.LVL29
	.uleb128 .LVL36-.LVL29
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.LVL29
	.uleb128 .LFE53-.LVL29
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS17:
	.uleb128 .LVU86
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU98
	.uleb128 .LVU101
	.uleb128 0
.LLST17:
	.byte	0x6
	.quad	.LVL30
	.byte	0x4
	.uleb128 .LVL30-.LVL30
	.uleb128 .LVL31-.LVL30
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.LVL30
	.uleb128 .LVL33-.LVL30
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL30
	.uleb128 .LVL35-.LVL30
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.LVL30
	.uleb128 .LFE53-.LVL30
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST18:
	.byte	0x6
	.quad	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-1-.LVL37
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL38-1-.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.LVL37
	.uleb128 .LFE54-.LVL37
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST19:
	.byte	0x6
	.quad	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-1-.LVL37
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL38-1-.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.LVL37
	.uleb128 .LFE54-.LVL37
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST20:
	.byte	0x6
	.quad	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-1-.LVL37
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL38-1-.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.LVL37
	.uleb128 .LFE54-.LVL37
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST21:
	.byte	0x6
	.quad	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-1-.LVL37
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL38-1-.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.LVL37
	.uleb128 .LFE54-.LVL37
	.uleb128 0x1
	.byte	0x52
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
.LLRL11:
	.byte	0x5
	.quad	.LBB18
	.byte	0x4
	.uleb128 .LBB18-.LBB18
	.uleb128 .LBE18-.LBB18
	.byte	0x4
	.uleb128 .LBB25-.LBB18
	.uleb128 .LBE25-.LBB18
	.byte	0x4
	.uleb128 .LBB26-.LBB18
	.uleb128 .LBE26-.LBB18
	.byte	0
.LLRL12:
	.byte	0x5
	.quad	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB23-.LBB19
	.uleb128 .LBE23-.LBB19
	.byte	0x4
	.uleb128 .LBB24-.LBB19
	.uleb128 .LBE24-.LBB19
	.byte	0
.LLRL16:
	.byte	0x5
	.quad	.LBB28
	.byte	0x4
	.uleb128 .LBB28-.LBB28
	.uleb128 .LBE28-.LBB28
	.byte	0x4
	.uleb128 .LBB29-.LBB28
	.uleb128 .LBE29-.LBB28
	.byte	0x4
	.uleb128 .LBB30-.LBB28
	.uleb128 .LBE30-.LBB28
	.byte	0
.LLRL24:
	.byte	0x5
	.quad	.LBB42
	.byte	0x4
	.uleb128 .LBB42-.LBB42
	.uleb128 .LBE42-.LBB42
	.byte	0x4
	.uleb128 .LBB52-.LBB42
	.uleb128 .LBE52-.LBB42
	.byte	0
.LLRL28:
	.byte	0x5
	.quad	.LBB44
	.byte	0x4
	.uleb128 .LBB44-.LBB44
	.uleb128 .LBE44-.LBB44
	.byte	0x4
	.uleb128 .LBB48-.LBB44
	.uleb128 .LBE48-.LBB44
	.byte	0x4
	.uleb128 .LBB49-.LBB44
	.uleb128 .LBE49-.LBB44
	.byte	0
.LLRL36:
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
.LASF60:
	.string	"printf"
.LASF19:
	.string	"_ISgraph"
.LASF39:
	.string	"malloc"
.LASF53:
	.string	"occurence"
.LASF27:
	.string	"size_t"
.LASF38:
	.string	"strstr"
.LASF17:
	.string	"_ISspace"
.LASF51:
	.string	"search_len"
.LASF50:
	.string	"replace_len"
.LASF13:
	.string	"_ISlower"
.LASF36:
	.string	"enqueue"
.LASF11:
	.string	"long long unsigned int"
.LASF58:
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
.LASF63:
	.string	"memcpy"
.LASF67:
	.string	"__builtin_strncmp"
.LASF49:
	.string	"result"
.LASF72:
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
.LASF52:
	.string	"word_len"
.LASF48:
	.string	"search"
.LASF59:
	.string	"strcpy"
.LASF65:
	.string	"__builtin_memcpy"
.LASF32:
	.string	"start_symbol"
.LASF64:
	.string	"__builtin_puts"
.LASF68:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -Og -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF62:
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
.LASF44:
	.string	"occrnc"
.LASF28:
	.string	"queue_t"
.LASF55:
	.string	"_Bool"
.LASF4:
	.string	"unsigned char"
.LASF66:
	.string	"strncmp"
.LASF7:
	.string	"short int"
.LASF37:
	.string	"init_queue"
.LASF73:
	.string	"__stack_chk_fail"
.LASF26:
	.string	"head"
.LASF54:
	.string	"found_nth_occurence"
.LASF9:
	.string	"char"
.LASF69:
	.string	"__ctype_b_loc"
.LASF21:
	.string	"_IScntrl"
.LASF16:
	.string	"_ISxdigit"
.LASF46:
	.string	"replace"
.LASF47:
	.string	"word"
.LASF29:
	.string	"Queue"
.LASF61:
	.string	"__fmt"
.LASF42:
	.string	"argv"
.LASF12:
	.string	"_ISupper"
.LASF71:
	.string	"generate_words"
.LASF56:
	.string	"is_lower_string"
.LASF41:
	.string	"argc"
.LASF45:
	.string	"new_word"
.LASF70:
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
