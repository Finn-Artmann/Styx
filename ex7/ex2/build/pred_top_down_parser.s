	.file	"pred_top_down_parser.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction/ex7/ex2" "src/pred_top_down_parser.c"
	.p2align 4
	.globl	s_new
	.type	s_new, @function
s_new:
.LFB51:
	.file 1 "src/pred_top_down_parser.c"
	.loc 1 15 23 view -0
	.cfi_startproc
	endbr64
	.loc 1 16 3 view .LVU1
	.loc 1 16 10 is_stmt 0 view .LVU2
	movl	$16, %esi
	movl	$1, %edi
	jmp	calloc@PLT
.LVL0:
	.cfi_endproc
.LFE51:
	.size	s_new, .-s_new
	.p2align 4
	.globl	s_push
	.type	s_push, @function
s_push:
.LVL1:
.LFB52:
	.loc 1 19 38 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 19 38 is_stmt 0 view .LVU4
	endbr64
	.loc 1 20 3 is_stmt 1 view .LVU5
	.loc 1 19 38 is_stmt 0 view .LVU6
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 20 36 view .LVU7
	movl	8(%rdi), %eax
	.loc 1 20 12 view .LVU8
	movq	(%rdi), %rdi
.LVL2:
	.loc 1 20 36 view .LVU9
	leal	1(%rax), %esi
.LVL3:
	.loc 1 20 36 view .LVU10
	movslq	%esi, %rsi
	.loc 1 20 12 view .LVU11
	salq	$2, %rsi
	call	realloc@PLT
.LVL4:
	.loc 1 21 11 view .LVU12
	movslq	8(%rbx), %rdx
	.loc 1 20 10 view .LVU13
	movq	%rax, (%rbx)
	.loc 1 21 3 is_stmt 1 view .LVU14
	.loc 1 21 17 is_stmt 0 view .LVU15
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbx)
	.loc 1 21 21 view .LVU16
	movl	%ebp, (%rax,%rdx,4)
	.loc 1 22 1 view .LVU17
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL5:
	.loc 1 22 1 view .LVU18
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL6:
	.loc 1 22 1 view .LVU19
	ret
	.cfi_endproc
.LFE52:
	.size	s_push, .-s_push
	.p2align 4
	.globl	s_pop
	.type	s_pop, @function
s_pop:
.LVL7:
.LFB53:
	.loc 1 24 26 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 24 26 is_stmt 0 view .LVU21
	endbr64
	.loc 1 25 3 is_stmt 1 view .LVU22
	.loc 1 25 17 is_stmt 0 view .LVU23
	movl	8(%rdi), %eax
	.loc 1 25 11 view .LVU24
	movq	(%rdi), %rdx
	.loc 1 25 17 view .LVU25
	subl	$1, %eax
	.loc 1 25 16 view .LVU26
	movl	%eax, 8(%rdi)
	.loc 1 25 17 view .LVU27
	cltq
	.loc 1 25 16 view .LVU28
	movl	(%rdx,%rax,4), %eax
	.loc 1 26 1 view .LVU29
	ret
	.cfi_endproc
.LFE53:
	.size	s_pop, .-s_pop
	.p2align 4
	.globl	s_isempty
	.type	s_isempty, @function
s_isempty:
.LVL8:
.LFB54:
	.loc 1 28 28 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 28 28 is_stmt 0 view .LVU31
	endbr64
	.loc 1 29 3 is_stmt 1 view .LVU32
	.loc 1 29 18 is_stmt 0 view .LVU33
	movl	8(%rdi), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	.loc 1 30 1 view .LVU34
	ret
	.cfi_endproc
.LFE54:
	.size	s_isempty, .-s_isempty
	.p2align 4
	.globl	s_peek
	.type	s_peek, @function
s_peek:
.LVL9:
.LFB55:
	.loc 1 32 27 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 32 27 is_stmt 0 view .LVU36
	endbr64
	.loc 1 33 3 is_stmt 1 view .LVU37
.LVL10:
.LBB70:
.LBI70:
	.loc 1 28 5 view .LVU38
.LBB71:
	.loc 1 29 3 view .LVU39
	.loc 1 29 11 is_stmt 0 view .LVU40
	movslq	8(%rdi), %rax
.LVL11:
	.loc 1 29 11 view .LVU41
.LBE71:
.LBE70:
	.loc 1 33 6 view .LVU42
	testl	%eax, %eax
	je	.L7
	.loc 1 35 3 is_stmt 1 view .LVU43
	.loc 1 35 16 is_stmt 0 view .LVU44
	movq	(%rdi), %rdx
	movl	-4(%rdx,%rax,4), %eax
.L7:
	.loc 1 36 1 view .LVU45
	ret
	.cfi_endproc
.LFE55:
	.size	s_peek, .-s_peek
	.p2align 4
	.globl	create_dpda
	.type	create_dpda, @function
create_dpda:
.LVL12:
.LFB56:
	.loc 1 45 34 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 45 34 is_stmt 0 view .LVU47
	endbr64
	.loc 1 46 5 is_stmt 1 view .LVU48
	.loc 1 45 34 is_stmt 0 view .LVU49
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 45 34 view .LVU50
	movl	%edi, %ebx
	.loc 1 46 25 view .LVU51
	movl	$4, %edi
.LVL13:
	.loc 1 46 25 view .LVU52
	call	malloc@PLT
.LVL14:
	.loc 1 48 5 is_stmt 1 view .LVU53
	.loc 1 48 19 is_stmt 0 view .LVU54
	movl	%ebx, (%rax)
	.loc 1 51 5 is_stmt 1 view .LVU55
	.loc 1 52 1 is_stmt 0 view .LVU56
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL15:
	.loc 1 52 1 view .LVU57
	ret
	.cfi_endproc
.LFE56:
	.size	create_dpda, .-create_dpda
	.p2align 4
	.globl	dpda_new_ctx
	.type	dpda_new_ctx, @function
dpda_new_ctx:
.LVL16:
.LFB57:
	.loc 1 62 63 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 62 63 is_stmt 0 view .LVU59
	endbr64
	.loc 1 63 5 is_stmt 1 view .LVU60
	.loc 1 62 63 is_stmt 0 view .LVU61
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
	.loc 1 62 63 view .LVU62
	movq	%rdi, %rbx
	.loc 1 63 28 view .LVU63
	movl	$40, %edi
.LVL17:
	.loc 1 63 28 view .LVU64
	call	malloc@PLT
.LVL18:
	.loc 1 67 18 view .LVU65
	movq	%rbp, %rdi
	.loc 1 65 15 view .LVU66
	movq	%rbx, (%rax)
	.loc 1 63 28 view .LVU67
	movq	%rax, %r12
.LVL19:
	.loc 1 65 5 is_stmt 1 view .LVU68
	.loc 1 66 5 view .LVU69
	.loc 1 66 16 is_stmt 0 view .LVU70
	movl	(%rbx), %eax
.LVL20:
	.loc 1 66 16 view .LVU71
	movl	%eax, 8(%r12)
	.loc 1 67 5 is_stmt 1 view .LVU72
	.loc 1 67 18 is_stmt 0 view .LVU73
	call	strdup@PLT
.LVL21:
.LBB72:
.LBB73:
	.loc 1 16 10 view .LVU74
	movl	$16, %esi
	movl	$1, %edi
.LBE73:
.LBE72:
	.loc 1 67 16 view .LVU75
	movq	%rax, 24(%r12)
	.loc 1 68 5 is_stmt 1 view .LVU76
.LBB75:
.LBI72:
	.loc 1 15 10 view .LVU77
.LBB74:
	.loc 1 16 3 view .LVU78
	.loc 1 16 10 is_stmt 0 view .LVU79
	call	calloc@PLT
.LVL22:
.LBE74:
.LBE75:
	.loc 1 72 1 view .LVU80
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL23:
	.loc 1 72 1 view .LVU81
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL24:
	.loc 1 69 17 view .LVU82
	movl	$0, 32(%r12)
	.loc 1 68 16 view .LVU83
	movq	%rax, 16(%r12)
	.loc 1 69 5 is_stmt 1 view .LVU84
	.loc 1 71 5 view .LVU85
	.loc 1 72 1 is_stmt 0 view .LVU86
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL25:
	.loc 1 72 1 view .LVU87
	ret
	.cfi_endproc
.LFE57:
	.size	dpda_new_ctx, .-dpda_new_ctx
	.p2align 4
	.globl	is_terminal
	.type	is_terminal, @function
is_terminal:
.LVL26:
.LFB58:
	.loc 1 74 27 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 74 27 is_stmt 0 view .LVU89
	endbr64
	.loc 1 75 5 is_stmt 1 view .LVU90
	leal	-40(%rdi), %ecx
	cmpb	$57, %cl
	ja	.L18
	movabsq	$144115188075855883, %rax
	shrq	%cl, %rax
	andl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	.loc 1 74 27 is_stmt 0 view .LVU91
	xorl	%eax, %eax
	.loc 1 76 1 view .LVU92
	ret
	.cfi_endproc
.LFE58:
	.size	is_terminal, .-is_terminal
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"push S"
.LC1:
	.string	"top: %c\n"
.LC2:
	.string	"ch: %c\n"
.LC3:
	.string	"ch == top"
.LC4:
	.string	"pop"
.LC5:
	.string	"top after pop: %c\n"
.LC6:
	.string	"ch at end of while: %c\n"
.LC7:
	.string	"top is terminal: %c\n"
	.text
	.p2align 4
	.globl	run_top_down_parser
	.type	run_top_down_parser, @function
run_top_down_parser:
.LVL27:
.LFB59:
	.loc 1 78 47 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 78 47 is_stmt 0 view .LVU94
	endbr64
	.loc 1 81 2 is_stmt 1 view .LVU95
	.loc 1 78 47 is_stmt 0 view .LVU96
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 81 2 view .LVU97
	movq	16(%rdi), %rbp
.LVL28:
.LBB135:
.LBI135:
	.loc 1 19 6 is_stmt 1 view .LVU98
.LBB136:
	.loc 1 20 3 view .LVU99
	.loc 1 20 36 is_stmt 0 view .LVU100
	movl	8(%rbp), %eax
	.loc 1 20 12 view .LVU101
	movq	0(%rbp), %rdi
.LVL29:
	.loc 1 20 36 view .LVU102
	leal	1(%rax), %esi
	movslq	%esi, %rsi
	.loc 1 20 12 view .LVU103
	salq	$2, %rsi
	call	realloc@PLT
.LVL30:
	.loc 1 21 11 view .LVU104
	movslq	8(%rbp), %rdx
.LBE136:
.LBE135:
.LBB138:
.LBB139:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 112 10 view .LVU105
	leaq	.LC0(%rip), %rdi
.LBE139:
.LBE138:
.LBB141:
.LBB137:
	.loc 1 20 10 view .LVU106
	movq	%rax, 0(%rbp)
	.loc 1 21 3 is_stmt 1 view .LVU107
	.loc 1 21 17 is_stmt 0 view .LVU108
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbp)
	.loc 1 21 21 view .LVU109
	movl	$83, (%rax,%rdx,4)
.LVL31:
	.loc 1 21 21 view .LVU110
.LBE137:
.LBE141:
	.loc 1 82 2 is_stmt 1 view .LVU111
.LBB142:
.LBI138:
	.loc 2 110 1 view .LVU112
.LBB140:
	.loc 2 112 3 view .LVU113
	.loc 2 112 10 is_stmt 0 view .LVU114
	call	puts@PLT
.LVL32:
.LBE140:
.LBE142:
.LBB143:
	.loc 1 88 14 view .LVU115
	movq	16(%rbx), %rax
.LBB144:
.LBB145:
.LBB146:
.LBB147:
	.loc 1 29 11 view .LVU116
	movl	8(%rax), %edx
.LVL33:
.L37:
	.loc 1 29 11 view .LVU117
.LBE147:
.LBE146:
.LBE145:
.LBE144:
.LBE143:
	.loc 1 85 32 is_stmt 1 view .LVU118
	.loc 1 85 22 is_stmt 0 view .LVU119
	movslq	32(%rbx), %rcx
	.loc 1 85 18 view .LVU120
	movq	24(%rbx), %rsi
	.loc 1 85 32 view .LVU121
	cmpb	$0, (%rsi,%rcx)
	je	.L46
.LBB272:
	.loc 1 88 3 is_stmt 1 view .LVU122
.LVL34:
.LBB160:
.LBI144:
	.loc 1 32 7 view .LVU123
.LBB156:
	.loc 1 33 3 view .LVU124
.LBB152:
.LBI146:
	.loc 1 28 5 view .LVU125
.LBB148:
	.loc 1 29 3 view .LVU126
	.loc 1 29 3 is_stmt 0 view .LVU127
.LBE148:
.LBE152:
	xorl	%r15d, %r15d
	.loc 1 33 6 view .LVU128
	testl	%edx, %edx
	je	.L21
	.loc 1 35 3 is_stmt 1 view .LVU129
	.loc 1 35 16 is_stmt 0 view .LVU130
	movq	(%rax), %rax
	.loc 1 35 18 view .LVU131
	movslq	%edx, %rdx
.LBE156:
.LBE160:
	.loc 1 88 8 view .LVU132
	movl	-4(%rax,%rdx,4), %edx
	movl	%edx, %r15d
	.loc 1 89 3 view .LVU133
	movsbl	%dl, %edx
.L21:
.LVL35:
	.loc 1 89 3 is_stmt 1 view .LVU134
.LBB161:
.LBI161:
	.loc 2 110 1 view .LVU135
.LBB162:
	.loc 2 112 3 view .LVU136
	.loc 2 112 10 is_stmt 0 view .LVU137
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL36:
	.loc 2 112 10 view .LVU138
.LBE162:
.LBE161:
	.loc 1 90 3 is_stmt 1 view .LVU139
	.loc 1 90 27 is_stmt 0 view .LVU140
	movslq	32(%rbx), %rax
	.loc 1 90 8 view .LVU141
	movq	24(%rbx), %rdx
.LBB163:
.LBB164:
	.loc 2 112 10 view .LVU142
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
.LBE164:
.LBE163:
.LBB167:
.LBB168:
	leaq	.LC7(%rip), %r12
.LBE168:
.LBE167:
.LBB170:
.LBB171:
	leaq	.LC3(%rip), %r14
.LBE171:
.LBE170:
	.loc 1 90 8 view .LVU143
	movsbl	(%rdx,%rax), %edx
.LBB174:
.LBB165:
	.loc 2 112 10 view .LVU144
	xorl	%eax, %eax
.LBE165:
.LBE174:
.LBB175:
.LBB176:
	leaq	.LC4(%rip), %r13
.LBE176:
.LBE175:
	.loc 1 90 8 view .LVU145
	movl	%edx, %ebp
.LVL37:
	.loc 1 91 3 is_stmt 1 view .LVU146
.LBB179:
.LBI163:
	.loc 2 110 1 view .LVU147
.LBB166:
	.loc 2 112 3 view .LVU148
	.loc 2 112 10 is_stmt 0 view .LVU149
	call	__printf_chk@PLT
.LVL38:
	.loc 2 112 10 view .LVU150
.LBE166:
.LBE179:
	.loc 1 92 9 is_stmt 1 view .LVU151
	leal	-40(%r15), %eax
	movsbl	%r15b, %edx
.LVL39:
	.loc 1 92 9 is_stmt 0 view .LVU152
	cmpb	$57, %al
	ja	.L24
	.p2align 4,,10
	.p2align 3
.L48:
	.loc 1 92 9 view .LVU153
	movabsq	$144115188075855883, %rcx
	btq	%rax, %rcx
	jc	.L47
.LVL40:
	.loc 1 111 3 is_stmt 1 view .LVU154
	cmpb	$80, %r15b
	jne	.L24
	.loc 1 136 5 view .LVU155
	cmpb	$41, %bpl
	je	.L33
	.loc 1 136 5 is_stmt 0 view .LVU156
	cmpb	$43, %bpl
	je	.L32
	testb	%bpl, %bpl
	je	.L33
	.p2align 4,,10
	.p2align 3
.L45:
	.loc 1 101 12 view .LVU157
	xorl	%eax, %eax
.LVL41:
.L19:
	.loc 1 101 12 view .LVU158
.LBE272:
	.loc 1 156 1 view .LVU159
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL42:
	.loc 1 156 1 view .LVU160
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
.LVL43:
	.p2align 4,,10
	.p2align 3
.L47:
	.cfi_restore_state
.LBB273:
	.loc 1 93 4 is_stmt 1 view .LVU161
.LBB180:
.LBI167:
	.loc 2 110 1 view .LVU162
.LBB169:
	.loc 2 112 3 view .LVU163
	.loc 2 112 10 is_stmt 0 view .LVU164
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL44:
	.loc 2 112 10 view .LVU165
.LBE169:
.LBE180:
	.loc 1 94 4 is_stmt 1 view .LVU166
	.loc 1 94 6 is_stmt 0 view .LVU167
	cmpb	%bpl, %r15b
	jne	.L45
	.loc 1 95 5 is_stmt 1 view .LVU168
.LVL45:
.LBB181:
.LBI170:
	.loc 2 110 1 view .LVU169
.LBB172:
	.loc 2 112 3 view .LVU170
	.loc 2 112 10 is_stmt 0 view .LVU171
	movq	%r14, %rdi
.LBE172:
.LBE181:
.LBB182:
.LBB183:
	xorl	%r15d, %r15d
.LVL46:
	.loc 2 112 10 view .LVU172
.LBE183:
.LBE182:
.LBB187:
.LBB173:
	call	puts@PLT
.LVL47:
	.loc 2 112 10 view .LVU173
.LBE173:
.LBE187:
	.loc 1 96 5 is_stmt 1 view .LVU174
	movq	16(%rbx), %rax
.LVL48:
.LBB188:
.LBI188:
	.loc 1 24 7 view .LVU175
.LBB189:
	.loc 1 25 3 view .LVU176
.LBE189:
.LBE188:
.LBB191:
.LBB177:
	.loc 2 112 10 is_stmt 0 view .LVU177
	movq	%r13, %rdi
.LBE177:
.LBE191:
.LBB192:
.LBB190:
	.loc 1 25 17 view .LVU178
	subl	$1, 8(%rax)
.LVL49:
	.loc 1 25 17 view .LVU179
.LBE190:
.LBE192:
	.loc 1 97 5 is_stmt 1 view .LVU180
.LBB193:
.LBI175:
	.loc 2 110 1 view .LVU181
.LBB178:
	.loc 2 112 3 view .LVU182
	.loc 2 112 10 is_stmt 0 view .LVU183
	call	puts@PLT
.LVL50:
	.loc 2 112 10 view .LVU184
.LBE178:
.LBE193:
	.loc 1 98 5 is_stmt 1 view .LVU185
	.loc 1 98 11 is_stmt 0 view .LVU186
	movq	16(%rbx), %rax
.LVL51:
.LBB194:
.LBI182:
	.loc 1 32 7 is_stmt 1 view .LVU187
.LBB186:
	.loc 1 33 3 view .LVU188
.LBB184:
.LBI184:
	.loc 1 28 5 view .LVU189
.LBB185:
	.loc 1 29 3 view .LVU190
	.loc 1 29 11 is_stmt 0 view .LVU191
	movslq	8(%rax), %rdx
.LVL52:
	.loc 1 29 11 view .LVU192
.LBE185:
.LBE184:
	.loc 1 33 6 view .LVU193
	testl	%edx, %edx
	je	.L23
	.loc 1 35 3 is_stmt 1 view .LVU194
	.loc 1 35 16 is_stmt 0 view .LVU195
	movq	(%rax), %rax
.LVL53:
	.loc 1 35 16 view .LVU196
.LBE186:
.LBE194:
	.loc 1 98 9 view .LVU197
	movl	-4(%rax,%rdx,4), %edx
	movl	%edx, %r15d
	.loc 1 99 5 view .LVU198
	movsbl	%dl, %edx
.L23:
.LVL54:
	.loc 1 99 5 is_stmt 1 view .LVU199
.LBB195:
.LBI195:
	.loc 2 110 1 view .LVU200
.LBB196:
	.loc 2 112 3 view .LVU201
	.loc 2 112 10 is_stmt 0 view .LVU202
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL55:
	.loc 2 112 10 view .LVU203
.LBE196:
.LBE195:
	.loc 1 104 4 is_stmt 1 view .LVU204
	.loc 1 104 15 is_stmt 0 view .LVU205
	movl	32(%rbx), %eax
	.loc 1 105 7 view .LVU206
	movq	24(%rbx), %rdx
.LBB197:
.LBB198:
	.loc 2 112 10 view .LVU207
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
.LBE198:
.LBE197:
	.loc 1 104 15 view .LVU208
	addl	$1, %eax
	movl	%eax, 32(%rbx)
	.loc 1 105 4 is_stmt 1 view .LVU209
	.loc 1 105 23 is_stmt 0 view .LVU210
	cltq
	.loc 1 105 7 view .LVU211
	movsbl	(%rdx,%rax), %edx
.LBB201:
.LBB199:
	.loc 2 112 10 view .LVU212
	xorl	%eax, %eax
.LBE199:
.LBE201:
	.loc 1 105 7 view .LVU213
	movl	%edx, %ebp
.LVL56:
	.loc 1 106 4 is_stmt 1 view .LVU214
.LBB202:
.LBI197:
	.loc 2 110 1 view .LVU215
.LBB200:
	.loc 2 112 3 view .LVU216
	.loc 2 112 10 is_stmt 0 view .LVU217
	call	__printf_chk@PLT
.LVL57:
	.loc 2 112 10 view .LVU218
.LBE200:
.LBE202:
	.loc 1 92 9 is_stmt 1 view .LVU219
	leal	-40(%r15), %eax
	movsbl	%r15b, %edx
.LVL58:
	.loc 1 92 9 is_stmt 0 view .LVU220
	cmpb	$57, %al
	jbe	.L48
.LVL59:
.L24:
	.loc 1 111 3 view .LVU221
	cmpb	$83, %r15b
	je	.L36
	.loc 1 116 7 view .LVU222
	movq	16(%rbx), %rax
.LBB203:
.LBB204:
	.loc 1 25 20 view .LVU223
	movl	8(%rax), %edx
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L36:
	.loc 1 25 20 view .LVU224
.LBE204:
.LBE203:
	.loc 1 113 5 is_stmt 1 view .LVU225
	cmpb	$40, %bpl
	je	.L27
	.loc 1 113 5 is_stmt 0 view .LVU226
	cmpb	$97, %bpl
	jne	.L45
	.loc 1 125 7 is_stmt 1 view .LVU227
	movq	16(%rbx), %rbp
.LVL60:
.LBB208:
.LBI208:
	.loc 1 24 7 view .LVU228
.LBB209:
	.loc 1 25 3 view .LVU229
	.loc 1 25 20 is_stmt 0 view .LVU230
	movslq	8(%rbp), %rax
.LBE209:
.LBE208:
.LBB212:
.LBB213:
	.loc 1 20 12 view .LVU231
	movq	0(%rbp), %rdi
.LBE213:
.LBE212:
.LBB217:
.LBB210:
	.loc 1 25 17 view .LVU232
	leal	-1(%rax), %edx
.LBE210:
.LBE217:
.LBB218:
.LBB214:
	.loc 1 20 12 view .LVU233
	leaq	0(,%rax,4), %rsi
.LBE214:
.LBE218:
.LBB219:
.LBB211:
	.loc 1 25 17 view .LVU234
	movl	%edx, 8(%rbp)
.LVL61:
	.loc 1 25 17 view .LVU235
.LBE211:
.LBE219:
	.loc 1 126 7 is_stmt 1 view .LVU236
.LBB220:
.LBI212:
	.loc 1 19 6 view .LVU237
.LBB215:
	.loc 1 20 3 view .LVU238
	.loc 1 20 12 is_stmt 0 view .LVU239
	call	realloc@PLT
.LVL62:
	.loc 1 21 11 view .LVU240
	movslq	8(%rbp), %rdx
	.loc 1 20 10 view .LVU241
	movq	%rax, 0(%rbp)
	.loc 1 21 3 is_stmt 1 view .LVU242
	.loc 1 21 17 is_stmt 0 view .LVU243
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbp)
.LBE215:
.LBE220:
	.loc 1 127 7 view .LVU244
	movq	16(%rbx), %rbp
.LVL63:
.LBB221:
.LBB216:
	.loc 1 21 21 view .LVU245
	movl	$80, (%rax,%rdx,4)
.LVL64:
	.loc 1 21 21 view .LVU246
.LBE216:
.LBE221:
	.loc 1 127 7 is_stmt 1 view .LVU247
.LBB222:
.LBI222:
	.loc 1 19 6 view .LVU248
.LBB223:
	.loc 1 20 3 view .LVU249
	.loc 1 20 36 is_stmt 0 view .LVU250
	movl	8(%rbp), %eax
	.loc 1 20 12 view .LVU251
	movq	0(%rbp), %rdi
	.loc 1 20 36 view .LVU252
	leal	1(%rax), %esi
	movslq	%esi, %rsi
	.loc 1 20 12 view .LVU253
	salq	$2, %rsi
	call	realloc@PLT
.LVL65:
	.loc 1 21 11 view .LVU254
	movslq	8(%rbp), %rdx
	.loc 1 20 10 view .LVU255
	movq	%rax, 0(%rbp)
	.loc 1 21 3 is_stmt 1 view .LVU256
	.loc 1 21 17 is_stmt 0 view .LVU257
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbp)
	.loc 1 21 21 view .LVU258
	movl	$97, (%rax,%rdx,4)
.LBE223:
.LBE222:
	.loc 1 88 14 view .LVU259
	movq	16(%rbx), %rax
.LBB225:
.LBB157:
.LBB153:
.LBB149:
	.loc 1 29 11 view .LVU260
	movl	8(%rax), %edx
.LBE149:
.LBE153:
.LBE157:
.LBE225:
.LBB226:
.LBB224:
	.loc 1 22 1 view .LVU261
	jmp	.L37
.LVL66:
	.p2align 4,,10
	.p2align 3
.L33:
	.loc 1 22 1 view .LVU262
.LBE224:
.LBE226:
	.loc 1 146 7 is_stmt 1 view .LVU263
	movq	16(%rbx), %rax
.LVL67:
.LBB227:
.LBI227:
	.loc 1 24 7 view .LVU264
.LBB228:
	.loc 1 25 3 view .LVU265
	.loc 1 25 17 is_stmt 0 view .LVU266
	movl	8(%rax), %ecx
	leal	-1(%rcx), %edx
	.loc 1 25 16 view .LVU267
	movl	%edx, 8(%rax)
	jmp	.L37
.LVL68:
.L27:
	.loc 1 25 16 view .LVU268
.LBE228:
.LBE227:
	.loc 1 116 7 is_stmt 1 view .LVU269
	movq	16(%rbx), %rbp
.LVL69:
.LBB229:
.LBI203:
	.loc 1 24 7 view .LVU270
.LBB205:
	.loc 1 25 3 view .LVU271
	.loc 1 25 20 is_stmt 0 view .LVU272
	movslq	8(%rbp), %rax
.LBE205:
.LBE229:
.LBB230:
.LBB231:
	.loc 1 20 12 view .LVU273
	movq	0(%rbp), %rdi
.LBE231:
.LBE230:
.LBB235:
.LBB206:
	.loc 1 25 17 view .LVU274
	leal	-1(%rax), %edx
.LBE206:
.LBE235:
.LBB236:
.LBB232:
	.loc 1 20 12 view .LVU275
	leaq	0(,%rax,4), %rsi
.LBE232:
.LBE236:
.LBB237:
.LBB207:
	.loc 1 25 17 view .LVU276
	movl	%edx, 8(%rbp)
.LVL70:
	.loc 1 25 17 view .LVU277
.LBE207:
.LBE237:
	.loc 1 117 7 is_stmt 1 view .LVU278
.LBB238:
.LBI230:
	.loc 1 19 6 view .LVU279
.LBB233:
	.loc 1 20 3 view .LVU280
	.loc 1 20 12 is_stmt 0 view .LVU281
	call	realloc@PLT
.LVL71:
	.loc 1 21 11 view .LVU282
	movslq	8(%rbp), %rdx
	.loc 1 20 10 view .LVU283
	movq	%rax, 0(%rbp)
	.loc 1 21 3 is_stmt 1 view .LVU284
	.loc 1 21 17 is_stmt 0 view .LVU285
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbp)
.LBE233:
.LBE238:
	.loc 1 118 7 view .LVU286
	movq	16(%rbx), %rbp
.LVL72:
.LBB239:
.LBB234:
	.loc 1 21 21 view .LVU287
	movl	$80, (%rax,%rdx,4)
.LVL73:
	.loc 1 21 21 view .LVU288
.LBE234:
.LBE239:
	.loc 1 118 7 is_stmt 1 view .LVU289
.LBB240:
.LBI240:
	.loc 1 19 6 view .LVU290
.LBB241:
	.loc 1 20 3 view .LVU291
	.loc 1 20 36 is_stmt 0 view .LVU292
	movl	8(%rbp), %eax
	.loc 1 20 12 view .LVU293
	movq	0(%rbp), %rdi
	.loc 1 20 36 view .LVU294
	leal	1(%rax), %esi
	movslq	%esi, %rsi
	.loc 1 20 12 view .LVU295
	salq	$2, %rsi
	call	realloc@PLT
.LVL74:
	.loc 1 21 11 view .LVU296
	movslq	8(%rbp), %rdx
	.loc 1 20 10 view .LVU297
	movq	%rax, 0(%rbp)
	.loc 1 21 3 is_stmt 1 view .LVU298
	.loc 1 21 17 is_stmt 0 view .LVU299
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbp)
.LBE241:
.LBE240:
	.loc 1 119 7 view .LVU300
	movq	16(%rbx), %rbp
.LVL75:
.LBB243:
.LBB242:
	.loc 1 21 21 view .LVU301
	movl	$41, (%rax,%rdx,4)
.LVL76:
	.loc 1 21 21 view .LVU302
.LBE242:
.LBE243:
	.loc 1 119 7 is_stmt 1 view .LVU303
.LBB244:
.LBI244:
	.loc 1 19 6 view .LVU304
.LBB245:
	.loc 1 20 3 view .LVU305
	.loc 1 20 36 is_stmt 0 view .LVU306
	movl	8(%rbp), %eax
	.loc 1 20 12 view .LVU307
	movq	0(%rbp), %rdi
	.loc 1 20 36 view .LVU308
	leal	1(%rax), %esi
	movslq	%esi, %rsi
	.loc 1 20 12 view .LVU309
	salq	$2, %rsi
	call	realloc@PLT
.LVL77:
	.loc 1 21 11 view .LVU310
	movslq	8(%rbp), %rdx
	.loc 1 20 10 view .LVU311
	movq	%rax, 0(%rbp)
	.loc 1 21 3 is_stmt 1 view .LVU312
	.loc 1 21 17 is_stmt 0 view .LVU313
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbp)
.LBE245:
.LBE244:
	.loc 1 120 7 view .LVU314
	movq	16(%rbx), %rbp
.LVL78:
.LBB247:
.LBB246:
	.loc 1 21 21 view .LVU315
	movl	$83, (%rax,%rdx,4)
.LVL79:
	.loc 1 21 21 view .LVU316
.LBE246:
.LBE247:
	.loc 1 120 7 is_stmt 1 view .LVU317
.LBB248:
.LBI248:
	.loc 1 19 6 view .LVU318
.LBB249:
	.loc 1 20 3 view .LVU319
	.loc 1 20 36 is_stmt 0 view .LVU320
	movl	8(%rbp), %eax
	.loc 1 20 12 view .LVU321
	movq	0(%rbp), %rdi
	.loc 1 20 36 view .LVU322
	leal	1(%rax), %esi
	movslq	%esi, %rsi
	.loc 1 20 12 view .LVU323
	salq	$2, %rsi
	call	realloc@PLT
.LVL80:
	.loc 1 21 11 view .LVU324
	movslq	8(%rbp), %rdx
	.loc 1 20 10 view .LVU325
	movq	%rax, 0(%rbp)
	.loc 1 21 3 is_stmt 1 view .LVU326
	.loc 1 21 17 is_stmt 0 view .LVU327
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbp)
	.loc 1 21 21 view .LVU328
	movl	$40, (%rax,%rdx,4)
.LBE249:
.LBE248:
	.loc 1 88 14 view .LVU329
	movq	16(%rbx), %rax
.LBB251:
.LBB158:
.LBB154:
.LBB150:
	.loc 1 29 11 view .LVU330
	movl	8(%rax), %edx
.LBE150:
.LBE154:
.LBE158:
.LBE251:
.LBB252:
.LBB250:
	.loc 1 22 1 view .LVU331
	jmp	.L37
.LVL81:
.L32:
	.loc 1 22 1 view .LVU332
.LBE250:
.LBE252:
	.loc 1 141 7 is_stmt 1 view .LVU333
	movq	16(%rbx), %rbp
.LVL82:
.LBB253:
.LBI253:
	.loc 1 24 7 view .LVU334
.LBB254:
	.loc 1 25 3 view .LVU335
	.loc 1 25 20 is_stmt 0 view .LVU336
	movslq	8(%rbp), %rax
.LBE254:
.LBE253:
.LBB257:
.LBB258:
	.loc 1 20 12 view .LVU337
	movq	0(%rbp), %rdi
.LBE258:
.LBE257:
.LBB262:
.LBB255:
	.loc 1 25 17 view .LVU338
	leal	-1(%rax), %edx
.LBE255:
.LBE262:
.LBB263:
.LBB259:
	.loc 1 20 12 view .LVU339
	leaq	0(,%rax,4), %rsi
.LBE259:
.LBE263:
.LBB264:
.LBB256:
	.loc 1 25 17 view .LVU340
	movl	%edx, 8(%rbp)
.LVL83:
	.loc 1 25 17 view .LVU341
.LBE256:
.LBE264:
	.loc 1 142 7 is_stmt 1 view .LVU342
.LBB265:
.LBI257:
	.loc 1 19 6 view .LVU343
.LBB260:
	.loc 1 20 3 view .LVU344
	.loc 1 20 12 is_stmt 0 view .LVU345
	call	realloc@PLT
.LVL84:
	.loc 1 21 11 view .LVU346
	movslq	8(%rbp), %rdx
	.loc 1 20 10 view .LVU347
	movq	%rax, 0(%rbp)
	.loc 1 21 3 is_stmt 1 view .LVU348
	.loc 1 21 17 is_stmt 0 view .LVU349
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbp)
.LBE260:
.LBE265:
	.loc 1 143 7 view .LVU350
	movq	16(%rbx), %rbp
.LVL85:
.LBB266:
.LBB261:
	.loc 1 21 21 view .LVU351
	movl	$83, (%rax,%rdx,4)
.LVL86:
	.loc 1 21 21 view .LVU352
.LBE261:
.LBE266:
	.loc 1 143 7 is_stmt 1 view .LVU353
.LBB267:
.LBI267:
	.loc 1 19 6 view .LVU354
.LBB268:
	.loc 1 20 3 view .LVU355
	.loc 1 20 36 is_stmt 0 view .LVU356
	movl	8(%rbp), %eax
	.loc 1 20 12 view .LVU357
	movq	0(%rbp), %rdi
	.loc 1 20 36 view .LVU358
	leal	1(%rax), %esi
	movslq	%esi, %rsi
	.loc 1 20 12 view .LVU359
	salq	$2, %rsi
	call	realloc@PLT
.LVL87:
	.loc 1 21 11 view .LVU360
	movslq	8(%rbp), %rdx
	.loc 1 20 10 view .LVU361
	movq	%rax, 0(%rbp)
	.loc 1 21 3 is_stmt 1 view .LVU362
	.loc 1 21 17 is_stmt 0 view .LVU363
	leal	1(%rdx), %ecx
	movl	%ecx, 8(%rbp)
	.loc 1 21 21 view .LVU364
	movl	$43, (%rax,%rdx,4)
.LBE268:
.LBE267:
	.loc 1 88 14 view .LVU365
	movq	16(%rbx), %rax
.LBB270:
.LBB159:
.LBB155:
.LBB151:
	.loc 1 29 11 view .LVU366
	movl	8(%rax), %edx
.LBE151:
.LBE155:
.LBE159:
.LBE270:
.LBB271:
.LBB269:
	.loc 1 22 1 view .LVU367
	jmp	.L37
.LVL88:
.L46:
	.loc 1 22 1 view .LVU368
.LBE269:
.LBE271:
.LBE273:
	.loc 1 155 5 is_stmt 1 view .LVU369
.LBB274:
.LBI274:
	.loc 1 28 5 view .LVU370
.LBB275:
	.loc 1 29 3 view .LVU371
	.loc 1 29 18 is_stmt 0 view .LVU372
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
.LVL89:
	.loc 1 29 18 view .LVU373
.LBE275:
.LBE274:
	.loc 1 155 12 view .LVU374
	jmp	.L19
	.cfi_endproc
.LFE59:
	.size	run_top_down_parser, .-run_top_down_parser
	.section	.rodata.str1.1
.LC8:
	.string	""
.LC9:
	.string	"NOT "
.LC10:
	.string	"Word %s was %saccepted\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL90:
.LFB60:
	.loc 1 171 34 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 171 34 is_stmt 0 view .LVU376
	endbr64
	.loc 1 172 5 is_stmt 1 view .LVU377
.LVL91:
.LBB276:
.LBI276:
	.loc 1 45 14 view .LVU378
.LBB277:
	.loc 1 46 5 view .LVU379
.LBE277:
.LBE276:
	.loc 1 171 34 is_stmt 0 view .LVU380
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LBB281:
.LBB278:
	.loc 1 46 25 view .LVU381
	movl	$4, %edi
.LVL92:
	.loc 1 46 25 view .LVU382
.LBE278:
.LBE281:
	.loc 1 171 34 view .LVU383
	movq	%rsi, %rbx
.LBB282:
.LBB279:
	.loc 1 46 25 view .LVU384
	call	malloc@PLT
.LVL93:
	.loc 1 46 25 view .LVU385
.LBE279:
.LBE282:
	.loc 1 174 34 view .LVU386
	movq	8(%rbx), %rsi
.LBB283:
.LBB280:
	.loc 1 48 19 view .LVU387
	movl	$1, (%rax)
	.loc 1 46 25 view .LVU388
	movq	%rax, %rdi
.LVL94:
	.loc 1 48 5 is_stmt 1 view .LVU389
	.loc 1 51 5 view .LVU390
	.loc 1 51 5 is_stmt 0 view .LVU391
.LBE280:
.LBE283:
	.loc 1 174 5 is_stmt 1 view .LVU392
	.loc 1 174 34 is_stmt 0 view .LVU393
	call	dpda_new_ctx
.LVL95:
	.loc 1 175 18 view .LVU394
	movq	%rax, %rdi
	.loc 1 174 34 view .LVU395
	movq	%rax, %rbx
.LVL96:
	.loc 1 175 5 is_stmt 1 view .LVU396
	.loc 1 175 18 is_stmt 0 view .LVU397
	call	run_top_down_parser
.LVL97:
	.loc 1 177 5 is_stmt 1 view .LVU398
	leaq	.LC8(%rip), %rcx
.LBB284:
.LBB285:
	.loc 2 112 10 is_stmt 0 view .LVU399
	movq	24(%rbx), %rdx
	leaq	.LC10(%rip), %rsi
.LBE285:
.LBE284:
	.loc 1 177 5 view .LVU400
	testl	%eax, %eax
	leaq	.LC9(%rip), %rax
.LVL98:
.LBB288:
.LBB286:
	.loc 2 112 10 view .LVU401
	movl	$1, %edi
.LBE286:
.LBE288:
	.loc 1 177 5 view .LVU402
	cmove	%rax, %rcx
.LVL99:
.LBB289:
.LBI284:
	.loc 2 110 1 is_stmt 1 view .LVU403
.LBB287:
	.loc 2 112 3 view .LVU404
	.loc 2 112 10 is_stmt 0 view .LVU405
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL100:
	.loc 2 112 10 view .LVU406
.LBE287:
.LBE289:
	.loc 1 178 1 view .LVU407
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL101:
	.loc 1 178 1 view .LVU408
	ret
	.cfi_endproc
.LFE60:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 4 "/usr/include/string.h"
	.file 5 "/usr/include/stdlib.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcba
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL81
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0xf
	.long	.LASF12
	.byte	0x3
	.byte	0xd1
	.byte	0x1b
	.long	0x36
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x1f
	.byte	0x8
	.uleb128 0x8
	.long	0x7c
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x20
	.long	0x7c
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x8
	.long	0x83
	.uleb128 0x21
	.long	0x8f
	.uleb128 0xf
	.long	.LASF13
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.long	0x3d
	.uleb128 0x22
	.byte	0x10
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.long	0xc8
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.byte	0xb
	.byte	0xa
	.long	0xc8
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0xc
	.byte	0x7
	.long	0x3d
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x99
	.uleb128 0xf
	.long	.LASF15
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.long	0xa5
	.uleb128 0x17
	.long	.LASF17
	.byte	0x4
	.byte	0x28
	.long	0xf1
	.uleb128 0x9
	.long	.LASF16
	.byte	0x29
	.byte	0x7
	.long	0x3d
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF18
	.byte	0x28
	.byte	0x36
	.long	0x139
	.uleb128 0x9
	.long	.LASF17
	.byte	0x37
	.byte	0x12
	.long	0x139
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x38
	.byte	0x9
	.long	0x3d
	.byte	0x8
	.uleb128 0x9
	.long	.LASF20
	.byte	0x39
	.byte	0xe
	.long	0x13e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF21
	.byte	0x3a
	.byte	0xb
	.long	0x77
	.byte	0x18
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3b
	.byte	0x9
	.long	0x3d
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	0xd9
	.uleb128 0x8
	.long	0xcd
	.uleb128 0x18
	.long	.LASF23
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x3d
	.long	0x15f
	.uleb128 0x7
	.long	0x3d
	.uleb128 0x7
	.long	0x8f
	.uleb128 0x19
	.byte	0
	.uleb128 0x18
	.long	.LASF24
	.byte	0x4
	.byte	0xbb
	.byte	0xe
	.long	0x77
	.long	0x175
	.uleb128 0x7
	.long	0x8f
	.byte	0
	.uleb128 0x10
	.long	.LASF25
	.value	0x21c
	.long	0x75
	.long	0x18a
	.uleb128 0x7
	.long	0x2a
	.byte	0
	.uleb128 0x10
	.long	.LASF26
	.value	0x227
	.long	0x75
	.long	0x1a4
	.uleb128 0x7
	.long	0x75
	.uleb128 0x7
	.long	0x2a
	.byte	0
	.uleb128 0x10
	.long	.LASF27
	.value	0x21f
	.long	0x75
	.long	0x1be
	.uleb128 0x7
	.long	0x2a
	.uleb128 0x7
	.long	0x2a
	.byte	0
	.uleb128 0x11
	.long	.LASF33
	.byte	0xab
	.byte	0x5
	.long	0x3d
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f4
	.uleb128 0xd
	.long	.LASF28
	.byte	0xab
	.byte	0xf
	.long	0x3d
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0xd
	.long	.LASF29
	.byte	0xab
	.byte	0x1c
	.long	0x2f4
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0x12
	.long	.LASF30
	.byte	0xac
	.byte	0x12
	.long	0x139
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0x12
	.long	.LASF31
	.byte	0xae
	.byte	0x16
	.long	0x2f9
	.long	.LLST74
	.long	.LVUS74
	.uleb128 0x12
	.long	.LASF32
	.byte	0xaf
	.byte	0x9
	.long	0x3d
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0x3
	.long	0xa56
	.quad	.LBI276
	.value	.LVU378
	.long	.LLRL76
	.byte	0xac
	.byte	0x1a
	.long	0x28b
	.uleb128 0x1
	.long	0xa65
	.long	.LLST77
	.long	.LVUS77
	.uleb128 0x24
	.long	.LLRL76
	.uleb128 0x1a
	.long	0xa6e
	.long	.LLST78
	.long	.LVUS78
	.uleb128 0x4
	.quad	.LVL93
	.long	0x175
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xaf5
	.quad	.LBI284
	.value	.LVU403
	.long	.LLRL79
	.byte	0xb1
	.byte	0x5
	.long	0x2d2
	.uleb128 0x1
	.long	0xb06
	.long	.LLST80
	.long	.LVUS80
	.uleb128 0x4
	.quad	.LVL100
	.long	0x143
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.byte	0
	.uleb128 0x6
	.quad	.LVL95
	.long	0x99d
	.uleb128 0x4
	.quad	.LVL97
	.long	0x2fe
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x77
	.uleb128 0x8
	.long	0xf1
	.uleb128 0x11
	.long	.LASF34
	.byte	0x4e
	.byte	0x5
	.long	0x3d
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x97c
	.uleb128 0x25
	.string	"ctx"
	.byte	0x1
	.byte	0x4e
	.byte	0x2a
	.long	0x2f9
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x26
	.long	.LLRL15
	.long	0x8c9
	.uleb128 0x13
	.string	"top"
	.byte	0x58
	.byte	0x8
	.long	0x7c
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x13
	.string	"ch"
	.byte	0x5a
	.byte	0x8
	.long	0x7c
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x3
	.long	0xa7b
	.quad	.LBI144
	.value	.LVU123
	.long	.LLRL18
	.byte	0x58
	.byte	0xe
	.long	0x3aa
	.uleb128 0x1
	.long	0xa8a
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x1b
	.long	0xa94
	.quad	.LBI146
	.value	.LVU125
	.long	.LLRL20
	.byte	0x21
	.uleb128 0x1
	.long	0xaa3
	.long	.LLST21
	.long	.LVUS21
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xaf5
	.quad	.LBI161
	.value	.LVU135
	.quad	.LBB161
	.quad	.LBE161-.LBB161
	.byte	0x59
	.byte	0x3
	.long	0x3fd
	.uleb128 0x1
	.long	0xb06
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x4
	.quad	.LVL36
	.long	0x143
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xaf5
	.quad	.LBI163
	.value	.LVU147
	.long	.LLRL23
	.byte	0x5b
	.byte	0x3
	.long	0x44a
	.uleb128 0x1
	.long	0xb06
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x4
	.quad	.LVL38
	.long	0x143
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xaf5
	.quad	.LBI167
	.value	.LVU162
	.long	.LLRL25
	.byte	0x5d
	.byte	0x4
	.long	0x48a
	.uleb128 0x1
	.long	0xb06
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x4
	.quad	.LVL44
	.long	0x143
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xaf5
	.quad	.LBI170
	.value	.LVU169
	.long	.LLRL27
	.byte	0x5f
	.byte	0x5
	.long	0x4c5
	.uleb128 0x1
	.long	0xb06
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x4
	.quad	.LVL47
	.long	0xc9d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xaf5
	.quad	.LBI175
	.value	.LVU181
	.long	.LLRL29
	.byte	0x61
	.byte	0x5
	.long	0x500
	.uleb128 0x1
	.long	0xb06
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x4
	.quad	.LVL50
	.long	0xc9d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xa7b
	.quad	.LBI182
	.value	.LVU187
	.long	.LLRL31
	.byte	0x62
	.byte	0xb
	.long	0x556
	.uleb128 0x1
	.long	0xa8a
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x15
	.long	0xa94
	.quad	.LBI184
	.value	.LVU189
	.quad	.LBB184
	.quad	.LBE184-.LBB184
	.byte	0x21
	.byte	0x7
	.uleb128 0x1
	.long	0xaa3
	.long	.LLST33
	.long	.LVUS33
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xaad
	.quad	.LBI188
	.value	.LVU175
	.long	.LLRL34
	.byte	0x60
	.byte	0x5
	.long	0x57d
	.uleb128 0x1
	.long	0xabc
	.long	.LLST35
	.long	.LVUS35
	.byte	0
	.uleb128 0x14
	.long	0xaf5
	.quad	.LBI195
	.value	.LVU200
	.quad	.LBB195
	.quad	.LBE195-.LBB195
	.byte	0x63
	.byte	0x5
	.long	0x5d0
	.uleb128 0x1
	.long	0xb06
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x4
	.quad	.LVL55
	.long	0x143
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xaf5
	.quad	.LBI197
	.value	.LVU215
	.long	.LLRL37
	.byte	0x6a
	.byte	0x4
	.long	0x61d
	.uleb128 0x1
	.long	0xb06
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x4
	.quad	.LVL57
	.long	0x143
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xaad
	.quad	.LBI203
	.value	.LVU270
	.long	.LLRL39
	.byte	0x74
	.byte	0x7
	.long	0x644
	.uleb128 0x1
	.long	0xabc
	.long	.LLST40
	.long	.LVUS40
	.byte	0
	.uleb128 0x3
	.long	0xaad
	.quad	.LBI208
	.value	.LVU228
	.long	.LLRL41
	.byte	0x7d
	.byte	0x7
	.long	0x66b
	.uleb128 0x1
	.long	0xabc
	.long	.LLST42
	.long	.LVUS42
	.byte	0
	.uleb128 0x3
	.long	0xac6
	.quad	.LBI212
	.value	.LVU237
	.long	.LLRL43
	.byte	0x7e
	.byte	0x7
	.long	0x6ac
	.uleb128 0x1
	.long	0xadc
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x1
	.long	0xad3
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x6
	.quad	.LVL62
	.long	0x18a
	.byte	0
	.uleb128 0x3
	.long	0xac6
	.quad	.LBI222
	.value	.LVU248
	.long	.LLRL46
	.byte	0x7f
	.byte	0x7
	.long	0x6ed
	.uleb128 0x1
	.long	0xadc
	.long	.LLST47
	.long	.LVUS47
	.uleb128 0x1
	.long	0xad3
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x6
	.quad	.LVL65
	.long	0x18a
	.byte	0
	.uleb128 0x14
	.long	0xaad
	.quad	.LBI227
	.value	.LVU264
	.quad	.LBB227
	.quad	.LBE227-.LBB227
	.byte	0x92
	.byte	0x7
	.long	0x720
	.uleb128 0x1
	.long	0xabc
	.long	.LLST49
	.long	.LVUS49
	.byte	0
	.uleb128 0x3
	.long	0xac6
	.quad	.LBI230
	.value	.LVU279
	.long	.LLRL50
	.byte	0x75
	.byte	0x7
	.long	0x761
	.uleb128 0x1
	.long	0xadc
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x1
	.long	0xad3
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x6
	.quad	.LVL71
	.long	0x18a
	.byte	0
	.uleb128 0x3
	.long	0xac6
	.quad	.LBI240
	.value	.LVU290
	.long	.LLRL53
	.byte	0x76
	.byte	0x7
	.long	0x7a2
	.uleb128 0x1
	.long	0xadc
	.long	.LLST54
	.long	.LVUS54
	.uleb128 0x1
	.long	0xad3
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x6
	.quad	.LVL74
	.long	0x18a
	.byte	0
	.uleb128 0x3
	.long	0xac6
	.quad	.LBI244
	.value	.LVU304
	.long	.LLRL56
	.byte	0x77
	.byte	0x7
	.long	0x7e3
	.uleb128 0x1
	.long	0xadc
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x1
	.long	0xad3
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x6
	.quad	.LVL77
	.long	0x18a
	.byte	0
	.uleb128 0x3
	.long	0xac6
	.quad	.LBI248
	.value	.LVU318
	.long	.LLRL59
	.byte	0x78
	.byte	0x7
	.long	0x824
	.uleb128 0x1
	.long	0xadc
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x1
	.long	0xad3
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x6
	.quad	.LVL80
	.long	0x18a
	.byte	0
	.uleb128 0x3
	.long	0xaad
	.quad	.LBI253
	.value	.LVU334
	.long	.LLRL62
	.byte	0x8d
	.byte	0x7
	.long	0x84b
	.uleb128 0x1
	.long	0xabc
	.long	.LLST63
	.long	.LVUS63
	.byte	0
	.uleb128 0x3
	.long	0xac6
	.quad	.LBI257
	.value	.LVU343
	.long	.LLRL64
	.byte	0x8e
	.byte	0x7
	.long	0x88c
	.uleb128 0x1
	.long	0xadc
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x1
	.long	0xad3
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x6
	.quad	.LVL84
	.long	0x18a
	.byte	0
	.uleb128 0x1b
	.long	0xac6
	.quad	.LBI267
	.value	.LVU354
	.long	.LLRL67
	.byte	0x8f
	.uleb128 0x1
	.long	0xadc
	.long	.LLST68
	.long	.LVUS68
	.uleb128 0x1
	.long	0xad3
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x6
	.quad	.LVL87
	.long	0x18a
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xac6
	.quad	.LBI135
	.value	.LVU98
	.long	.LLRL10
	.byte	0x51
	.byte	0x2
	.long	0x90a
	.uleb128 0x1
	.long	0xadc
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x1
	.long	0xad3
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x6
	.quad	.LVL30
	.long	0x18a
	.byte	0
	.uleb128 0x3
	.long	0xaf5
	.quad	.LBI138
	.value	.LVU112
	.long	.LLRL13
	.byte	0x52
	.byte	0x2
	.long	0x94c
	.uleb128 0x1
	.long	0xb06
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x4
	.quad	.LVL32
	.long	0xc9d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xa94
	.quad	.LBI274
	.value	.LVU370
	.quad	.LBB274
	.quad	.LBE274-.LBB274
	.byte	0x9b
	.byte	0xc
	.uleb128 0x1
	.long	0xaa3
	.long	.LLST70
	.long	.LVUS70
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x4a
	.byte	0x5
	.long	0x996
	.long	0x996
	.uleb128 0xb
	.string	"ch"
	.byte	0x4a
	.byte	0x17
	.long	0x7c
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.long	.LASF36
	.uleb128 0x11
	.long	.LASF37
	.byte	0x3e
	.byte	0x12
	.long	0x2f9
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xa56
	.uleb128 0xd
	.long	.LASF17
	.byte	0x3e
	.byte	0x2d
	.long	0x139
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0xd
	.long	.LASF38
	.byte	0x3e
	.byte	0x39
	.long	0x77
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x13
	.string	"ctx"
	.byte	0x3f
	.byte	0x16
	.long	0x2f9
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x3
	.long	0xae8
	.quad	.LBI72
	.value	.LVU77
	.long	.LLRL8
	.byte	0x44
	.byte	0x12
	.long	0xa29
	.uleb128 0x4
	.quad	.LVL22
	.long	0x1a4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL18
	.long	0x175
	.long	0xa41
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.quad	.LVL21
	.long	0x15f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x2d
	.byte	0xe
	.long	0x139
	.long	0xa7b
	.uleb128 0xb
	.string	"i"
	.byte	0x2d
	.byte	0x1f
	.long	0x3d
	.uleb128 0x28
	.long	.LASF17
	.byte	0x1
	.byte	0x2e
	.byte	0x12
	.long	0x139
	.byte	0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x20
	.byte	0x7
	.long	0x99
	.long	0xa94
	.uleb128 0xb
	.string	"s"
	.byte	0x20
	.byte	0x18
	.long	0x13e
	.byte	0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x1c
	.byte	0x5
	.long	0x3d
	.long	0xaad
	.uleb128 0xb
	.string	"s"
	.byte	0x1c
	.byte	0x19
	.long	0x13e
	.byte	0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x18
	.byte	0x7
	.long	0x99
	.long	0xac6
	.uleb128 0xb
	.string	"s"
	.byte	0x18
	.byte	0x17
	.long	0x13e
	.byte	0
	.uleb128 0x29
	.long	.LASF46
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.byte	0x1
	.long	0xae8
	.uleb128 0xb
	.string	"s"
	.byte	0x13
	.byte	0x17
	.long	0x13e
	.uleb128 0x1c
	.long	.LASF43
	.byte	0x1
	.byte	0x13
	.long	0x99
	.byte	0
	.uleb128 0x2a
	.long	.LASF47
	.byte	0x1
	.byte	0xf
	.byte	0xa
	.long	0x13e
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF48
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.long	0x3d
	.byte	0x3
	.long	0xb13
	.uleb128 0x1c
	.long	.LASF44
	.byte	0x2
	.byte	0x6e
	.long	0x94
	.uleb128 0x19
	.byte	0
	.uleb128 0xa
	.long	0xae8
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xb47
	.uleb128 0x2c
	.quad	.LVL0
	.long	0x1a4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xac6
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xb8a
	.uleb128 0x1
	.long	0xad3
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1
	.long	0xadc
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x6
	.quad	.LVL4
	.long	0x18a
	.byte	0
	.uleb128 0xa
	.long	0xaad
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xbad
	.uleb128 0xe
	.long	0xabc
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0xa
	.long	0xa94
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd0
	.uleb128 0xe
	.long	0xaa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0xa
	.long	0xa7b
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xc22
	.uleb128 0xe
	.long	0xa8a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.long	0xa94
	.quad	.LBI70
	.value	.LVU38
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.byte	0x21
	.byte	0x7
	.uleb128 0x1
	.long	0xaa3
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xa56
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xc6b
	.uleb128 0x1
	.long	0xa65
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1a
	.long	0xa6e
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x4
	.quad	.LVL14
	.long	0x175
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x97c
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xc8e
	.uleb128 0xe
	.long	0x98b
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xb
	.byte	0x63
	.byte	0x68
	.byte	0x20
	.byte	0x3d
	.byte	0x3d
	.byte	0x20
	.byte	0x74
	.byte	0x6f
	.byte	0x70
	.byte	0xa
	.byte	0
	.uleb128 0x2d
	.long	.LASF49
	.long	.LASF50
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.uleb128 0x7
	.byte	0x9e
	.uleb128 0x5
	.byte	0x70
	.byte	0x6f
	.byte	0x70
	.byte	0xa
	.byte	0
	.uleb128 0x16
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.byte	0x70
	.byte	0x75
	.byte	0x73
	.byte	0x68
	.byte	0x20
	.byte	0x53
	.byte	0xa
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x4
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS71:
	.uleb128 0
	.uleb128 .LVU382
	.uleb128 .LVU382
	.uleb128 0
.LLST71:
	.byte	0x6
	.quad	.LVL90
	.byte	0x4
	.uleb128 .LVL90-.LVL90
	.uleb128 .LVL92-.LVL90
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL92-.LVL90
	.uleb128 .LFE60-.LVL90
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS72:
	.uleb128 0
	.uleb128 .LVU385
	.uleb128 .LVU385
	.uleb128 .LVU396
	.uleb128 .LVU396
	.uleb128 0
.LLST72:
	.byte	0x6
	.quad	.LVL90
	.byte	0x4
	.uleb128 .LVL90-.LVL90
	.uleb128 .LVL93-1-.LVL90
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL93-1-.LVL90
	.uleb128 .LVL96-.LVL90
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL96-.LVL90
	.uleb128 .LFE60-.LVL90
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS73:
	.uleb128 .LVU391
	.uleb128 .LVU394
.LLST73:
	.byte	0x8
	.quad	.LVL94
	.uleb128 .LVL95-1-.LVL94
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS74:
	.uleb128 .LVU396
	.uleb128 .LVU398
	.uleb128 .LVU398
	.uleb128 .LVU408
.LLST74:
	.byte	0x6
	.quad	.LVL96
	.byte	0x4
	.uleb128 .LVL96-.LVL96
	.uleb128 .LVL97-1-.LVL96
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL97-1-.LVL96
	.uleb128 .LVL101-.LVL96
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS75:
	.uleb128 .LVU398
	.uleb128 .LVU401
.LLST75:
	.byte	0x8
	.quad	.LVL97
	.uleb128 .LVL98-.LVL97
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS77:
	.uleb128 .LVU378
	.uleb128 .LVU391
.LLST77:
	.byte	0x8
	.quad	.LVL91
	.uleb128 .LVL94-.LVL91
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS78:
	.uleb128 .LVU389
	.uleb128 .LVU391
.LLST78:
	.byte	0x8
	.quad	.LVL94
	.uleb128 .LVL94-.LVL94
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS80:
	.uleb128 .LVU403
	.uleb128 .LVU406
.LLST80:
	.byte	0x8
	.quad	.LVL99
	.uleb128 .LVL100-.LVL99
	.uleb128 0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 0
.LLST9:
	.byte	0x6
	.quad	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL29-.LVL27
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL29-.LVL27
	.uleb128 .LVL42-.LVL27
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL42-.LVL27
	.uleb128 .LVL43-.LVL27
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL27
	.uleb128 .LFE59-.LVL27
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS16:
	.uleb128 .LVU150
	.uleb128 .LVU158
	.uleb128 .LVU161
	.uleb128 .LVU172
	.uleb128 .LVU218
	.uleb128 .LVU368
.LLST16:
	.byte	0x6
	.quad	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL41-.LVL38
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL43-.LVL38
	.uleb128 .LVL46-.LVL38
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL57-.LVL38
	.uleb128 .LVL88-.LVL38
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS17:
	.uleb128 .LVU146
	.uleb128 .LVU158
	.uleb128 .LVU161
	.uleb128 .LVU228
	.uleb128 .LVU262
	.uleb128 .LVU270
	.uleb128 .LVU332
	.uleb128 .LVU334
.LLST17:
	.byte	0x6
	.quad	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL41-.LVL37
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL43-.LVL37
	.uleb128 .LVL60-.LVL37
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL66-.LVL37
	.uleb128 .LVL69-.LVL37
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL81-.LVL37
	.uleb128 .LVL82-.LVL37
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS19:
	.uleb128 .LVU123
	.uleb128 .LVU134
.LLST19:
	.byte	0x8
	.quad	.LVL34
	.uleb128 .LVL35-.LVL34
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
.LVUS21:
	.uleb128 .LVU125
	.uleb128 .LVU127
.LLST21:
	.byte	0x8
	.quad	.LVL34
	.uleb128 .LVL34-.LVL34
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
.LVUS22:
	.uleb128 .LVU135
	.uleb128 .LVU138
.LLST22:
	.byte	0x8
	.quad	.LVL35
	.uleb128 .LVL36-.LVL35
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU147
	.uleb128 .LVU150
.LLST24:
	.byte	0x8
	.quad	.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU162
	.uleb128 .LVU165
.LLST26:
	.byte	0x8
	.quad	.LVL43
	.uleb128 .LVL44-.LVL43
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 .LVU169
	.uleb128 .LVU173
.LLST28:
	.byte	0x8
	.quad	.LVL45
	.uleb128 .LVL47-.LVL45
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+3214
	.sleb128 0
	.byte	0
.LVUS30:
	.uleb128 .LVU181
	.uleb128 .LVU184
.LLST30:
	.byte	0x8
	.quad	.LVL49
	.uleb128 .LVL50-.LVL49
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+3240
	.sleb128 0
	.byte	0
.LVUS32:
	.uleb128 .LVU187
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU199
.LLST32:
	.byte	0x6
	.quad	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL53-.LVL51
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL53-.LVL51
	.uleb128 .LVL54-.LVL51
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
.LVUS33:
	.uleb128 .LVU189
	.uleb128 .LVU192
.LLST33:
	.byte	0x8
	.quad	.LVL51
	.uleb128 .LVL52-.LVL51
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS35:
	.uleb128 .LVU175
	.uleb128 .LVU179
.LLST35:
	.byte	0x8
	.quad	.LVL48
	.uleb128 .LVL49-.LVL48
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS36:
	.uleb128 .LVU200
	.uleb128 .LVU203
.LLST36:
	.byte	0x8
	.quad	.LVL54
	.uleb128 .LVL55-.LVL54
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU215
	.uleb128 .LVU218
.LLST38:
	.byte	0x8
	.quad	.LVL56
	.uleb128 .LVL57-.LVL56
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.byte	0
.LVUS40:
	.uleb128 .LVU270
	.uleb128 .LVU277
.LLST40:
	.byte	0x8
	.quad	.LVL69
	.uleb128 .LVL70-.LVL69
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS42:
	.uleb128 .LVU228
	.uleb128 .LVU235
.LLST42:
	.byte	0x8
	.quad	.LVL60
	.uleb128 .LVL61-.LVL60
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS44:
	.uleb128 .LVU237
	.uleb128 .LVU246
.LLST44:
	.byte	0x8
	.quad	.LVL61
	.uleb128 .LVL64-.LVL61
	.uleb128 0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS45:
	.uleb128 .LVU237
	.uleb128 .LVU245
.LLST45:
	.byte	0x8
	.quad	.LVL61
	.uleb128 .LVL63-.LVL61
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS47:
	.uleb128 .LVU248
	.uleb128 .LVU262
.LLST47:
	.byte	0x8
	.quad	.LVL64
	.uleb128 .LVL66-.LVL64
	.uleb128 0x3
	.byte	0x8
	.byte	0x61
	.byte	0x9f
	.byte	0
.LVUS48:
	.uleb128 .LVU248
	.uleb128 .LVU262
.LLST48:
	.byte	0x8
	.quad	.LVL64
	.uleb128 .LVL66-.LVL64
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS49:
	.uleb128 .LVU264
	.uleb128 .LVU268
.LLST49:
	.byte	0x8
	.quad	.LVL67
	.uleb128 .LVL68-.LVL67
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS51:
	.uleb128 .LVU279
	.uleb128 .LVU288
.LLST51:
	.byte	0x8
	.quad	.LVL70
	.uleb128 .LVL73-.LVL70
	.uleb128 0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS52:
	.uleb128 .LVU279
	.uleb128 .LVU287
.LLST52:
	.byte	0x8
	.quad	.LVL70
	.uleb128 .LVL72-.LVL70
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS54:
	.uleb128 .LVU290
	.uleb128 .LVU302
.LLST54:
	.byte	0x8
	.quad	.LVL73
	.uleb128 .LVL76-.LVL73
	.uleb128 0x3
	.byte	0x8
	.byte	0x29
	.byte	0x9f
	.byte	0
.LVUS55:
	.uleb128 .LVU290
	.uleb128 .LVU301
.LLST55:
	.byte	0x8
	.quad	.LVL73
	.uleb128 .LVL75-.LVL73
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS57:
	.uleb128 .LVU304
	.uleb128 .LVU316
.LLST57:
	.byte	0x8
	.quad	.LVL76
	.uleb128 .LVL79-.LVL76
	.uleb128 0x3
	.byte	0x8
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS58:
	.uleb128 .LVU304
	.uleb128 .LVU315
.LLST58:
	.byte	0x8
	.quad	.LVL76
	.uleb128 .LVL78-.LVL76
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS60:
	.uleb128 .LVU318
	.uleb128 .LVU332
.LLST60:
	.byte	0x8
	.quad	.LVL79
	.uleb128 .LVL81-.LVL79
	.uleb128 0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.byte	0
.LVUS61:
	.uleb128 .LVU318
	.uleb128 .LVU332
.LLST61:
	.byte	0x8
	.quad	.LVL79
	.uleb128 .LVL81-.LVL79
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS63:
	.uleb128 .LVU334
	.uleb128 .LVU341
.LLST63:
	.byte	0x8
	.quad	.LVL82
	.uleb128 .LVL83-.LVL82
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS65:
	.uleb128 .LVU343
	.uleb128 .LVU352
.LLST65:
	.byte	0x8
	.quad	.LVL83
	.uleb128 .LVL86-.LVL83
	.uleb128 0x3
	.byte	0x8
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS66:
	.uleb128 .LVU343
	.uleb128 .LVU351
.LLST66:
	.byte	0x8
	.quad	.LVL83
	.uleb128 .LVL85-.LVL83
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS68:
	.uleb128 .LVU354
	.uleb128 .LVU368
.LLST68:
	.byte	0x8
	.quad	.LVL86
	.uleb128 .LVL88-.LVL86
	.uleb128 0x3
	.byte	0x8
	.byte	0x2b
	.byte	0x9f
	.byte	0
.LVUS69:
	.uleb128 .LVU354
	.uleb128 .LVU368
.LLST69:
	.byte	0x8
	.quad	.LVL86
	.uleb128 .LVL88-.LVL86
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS11:
	.uleb128 .LVU98
	.uleb128 .LVU110
.LLST11:
	.byte	0x8
	.quad	.LVL28
	.uleb128 .LVL31-.LVL28
	.uleb128 0x3
	.byte	0x8
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU98
	.uleb128 .LVU110
.LLST12:
	.byte	0x8
	.quad	.LVL28
	.uleb128 .LVL31-.LVL28
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS14:
	.uleb128 .LVU112
	.uleb128 .LVU117
.LLST14:
	.byte	0x8
	.quad	.LVL31
	.uleb128 .LVL33-.LVL31
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+3249
	.sleb128 0
	.byte	0
.LVUS70:
	.uleb128 .LVU370
	.uleb128 .LVU373
.LLST70:
	.byte	0x8
	.quad	.LVL88
	.uleb128 .LVL89-.LVL88
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL17-.LVL16
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL17-.LVL16
	.uleb128 .LVL23-.LVL16
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL23-.LVL16
	.uleb128 .LFE57-.LVL16
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL18-1-.LVL16
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL18-1-.LVL16
	.uleb128 .LVL24-.LVL16
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL24-.LVL16
	.uleb128 .LFE57-.LVL16
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU68
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST7:
	.byte	0x6
	.quad	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL20-.LVL19
	.uleb128 .LVL25-.LVL19
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL25-.LVL19
	.uleb128 .LFE57-.LVL19
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.LVL1
	.uleb128 .LFE52-.LVL1
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL6-.LVL1
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL6-.LVL1
	.uleb128 .LFE52-.LVL1
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0
.LVUS2:
	.uleb128 .LVU38
	.uleb128 .LVU41
.LLST2:
	.byte	0x8
	.quad	.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LVL15-.LVL12
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL15-.LVL12
	.uleb128 .LFE56-.LVL12
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
.LVUS4:
	.uleb128 .LVU53
	.uleb128 0
.LLST4:
	.byte	0x8
	.quad	.LVL14
	.uleb128 .LFE56-.LVL14
	.uleb128 0x1
	.byte	0x50
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
	.quad	.LFB60
	.quad	.LFE60-.LFB60
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
.LLRL8:
	.byte	0x5
	.quad	.LBB72
	.byte	0x4
	.uleb128 .LBB72-.LBB72
	.uleb128 .LBE72-.LBB72
	.byte	0x4
	.uleb128 .LBB75-.LBB72
	.uleb128 .LBE75-.LBB72
	.byte	0
.LLRL10:
	.byte	0x5
	.quad	.LBB135
	.byte	0x4
	.uleb128 .LBB135-.LBB135
	.uleb128 .LBE135-.LBB135
	.byte	0x4
	.uleb128 .LBB141-.LBB135
	.uleb128 .LBE141-.LBB135
	.byte	0
.LLRL13:
	.byte	0x5
	.quad	.LBB138
	.byte	0x4
	.uleb128 .LBB138-.LBB138
	.uleb128 .LBE138-.LBB138
	.byte	0x4
	.uleb128 .LBB142-.LBB138
	.uleb128 .LBE142-.LBB138
	.byte	0
.LLRL15:
	.byte	0x5
	.quad	.LBB143
	.byte	0x4
	.uleb128 .LBB143-.LBB143
	.uleb128 .LBE143-.LBB143
	.byte	0x4
	.uleb128 .LBB272-.LBB143
	.uleb128 .LBE272-.LBB143
	.byte	0x4
	.uleb128 .LBB273-.LBB143
	.uleb128 .LBE273-.LBB143
	.byte	0
.LLRL18:
	.byte	0x5
	.quad	.LBB144
	.byte	0x4
	.uleb128 .LBB144-.LBB144
	.uleb128 .LBE144-.LBB144
	.byte	0x4
	.uleb128 .LBB160-.LBB144
	.uleb128 .LBE160-.LBB144
	.byte	0x4
	.uleb128 .LBB225-.LBB144
	.uleb128 .LBE225-.LBB144
	.byte	0x4
	.uleb128 .LBB251-.LBB144
	.uleb128 .LBE251-.LBB144
	.byte	0x4
	.uleb128 .LBB270-.LBB144
	.uleb128 .LBE270-.LBB144
	.byte	0
.LLRL20:
	.byte	0x5
	.quad	.LBB146
	.byte	0x4
	.uleb128 .LBB146-.LBB146
	.uleb128 .LBE146-.LBB146
	.byte	0x4
	.uleb128 .LBB152-.LBB146
	.uleb128 .LBE152-.LBB146
	.byte	0x4
	.uleb128 .LBB153-.LBB146
	.uleb128 .LBE153-.LBB146
	.byte	0x4
	.uleb128 .LBB154-.LBB146
	.uleb128 .LBE154-.LBB146
	.byte	0x4
	.uleb128 .LBB155-.LBB146
	.uleb128 .LBE155-.LBB146
	.byte	0
.LLRL23:
	.byte	0x5
	.quad	.LBB163
	.byte	0x4
	.uleb128 .LBB163-.LBB163
	.uleb128 .LBE163-.LBB163
	.byte	0x4
	.uleb128 .LBB174-.LBB163
	.uleb128 .LBE174-.LBB163
	.byte	0x4
	.uleb128 .LBB179-.LBB163
	.uleb128 .LBE179-.LBB163
	.byte	0
.LLRL25:
	.byte	0x5
	.quad	.LBB167
	.byte	0x4
	.uleb128 .LBB167-.LBB167
	.uleb128 .LBE167-.LBB167
	.byte	0x4
	.uleb128 .LBB180-.LBB167
	.uleb128 .LBE180-.LBB167
	.byte	0
.LLRL27:
	.byte	0x5
	.quad	.LBB170
	.byte	0x4
	.uleb128 .LBB170-.LBB170
	.uleb128 .LBE170-.LBB170
	.byte	0x4
	.uleb128 .LBB181-.LBB170
	.uleb128 .LBE181-.LBB170
	.byte	0x4
	.uleb128 .LBB187-.LBB170
	.uleb128 .LBE187-.LBB170
	.byte	0
.LLRL29:
	.byte	0x5
	.quad	.LBB175
	.byte	0x4
	.uleb128 .LBB175-.LBB175
	.uleb128 .LBE175-.LBB175
	.byte	0x4
	.uleb128 .LBB191-.LBB175
	.uleb128 .LBE191-.LBB175
	.byte	0x4
	.uleb128 .LBB193-.LBB175
	.uleb128 .LBE193-.LBB175
	.byte	0
.LLRL31:
	.byte	0x5
	.quad	.LBB182
	.byte	0x4
	.uleb128 .LBB182-.LBB182
	.uleb128 .LBE182-.LBB182
	.byte	0x4
	.uleb128 .LBB194-.LBB182
	.uleb128 .LBE194-.LBB182
	.byte	0
.LLRL34:
	.byte	0x5
	.quad	.LBB188
	.byte	0x4
	.uleb128 .LBB188-.LBB188
	.uleb128 .LBE188-.LBB188
	.byte	0x4
	.uleb128 .LBB192-.LBB188
	.uleb128 .LBE192-.LBB188
	.byte	0
.LLRL37:
	.byte	0x5
	.quad	.LBB197
	.byte	0x4
	.uleb128 .LBB197-.LBB197
	.uleb128 .LBE197-.LBB197
	.byte	0x4
	.uleb128 .LBB201-.LBB197
	.uleb128 .LBE201-.LBB197
	.byte	0x4
	.uleb128 .LBB202-.LBB197
	.uleb128 .LBE202-.LBB197
	.byte	0
.LLRL39:
	.byte	0x5
	.quad	.LBB203
	.byte	0x4
	.uleb128 .LBB203-.LBB203
	.uleb128 .LBE203-.LBB203
	.byte	0x4
	.uleb128 .LBB229-.LBB203
	.uleb128 .LBE229-.LBB203
	.byte	0x4
	.uleb128 .LBB235-.LBB203
	.uleb128 .LBE235-.LBB203
	.byte	0x4
	.uleb128 .LBB237-.LBB203
	.uleb128 .LBE237-.LBB203
	.byte	0
.LLRL41:
	.byte	0x5
	.quad	.LBB208
	.byte	0x4
	.uleb128 .LBB208-.LBB208
	.uleb128 .LBE208-.LBB208
	.byte	0x4
	.uleb128 .LBB217-.LBB208
	.uleb128 .LBE217-.LBB208
	.byte	0x4
	.uleb128 .LBB219-.LBB208
	.uleb128 .LBE219-.LBB208
	.byte	0
.LLRL43:
	.byte	0x5
	.quad	.LBB212
	.byte	0x4
	.uleb128 .LBB212-.LBB212
	.uleb128 .LBE212-.LBB212
	.byte	0x4
	.uleb128 .LBB218-.LBB212
	.uleb128 .LBE218-.LBB212
	.byte	0x4
	.uleb128 .LBB220-.LBB212
	.uleb128 .LBE220-.LBB212
	.byte	0x4
	.uleb128 .LBB221-.LBB212
	.uleb128 .LBE221-.LBB212
	.byte	0
.LLRL46:
	.byte	0x5
	.quad	.LBB222
	.byte	0x4
	.uleb128 .LBB222-.LBB222
	.uleb128 .LBE222-.LBB222
	.byte	0x4
	.uleb128 .LBB226-.LBB222
	.uleb128 .LBE226-.LBB222
	.byte	0
.LLRL50:
	.byte	0x5
	.quad	.LBB230
	.byte	0x4
	.uleb128 .LBB230-.LBB230
	.uleb128 .LBE230-.LBB230
	.byte	0x4
	.uleb128 .LBB236-.LBB230
	.uleb128 .LBE236-.LBB230
	.byte	0x4
	.uleb128 .LBB238-.LBB230
	.uleb128 .LBE238-.LBB230
	.byte	0x4
	.uleb128 .LBB239-.LBB230
	.uleb128 .LBE239-.LBB230
	.byte	0
.LLRL53:
	.byte	0x5
	.quad	.LBB240
	.byte	0x4
	.uleb128 .LBB240-.LBB240
	.uleb128 .LBE240-.LBB240
	.byte	0x4
	.uleb128 .LBB243-.LBB240
	.uleb128 .LBE243-.LBB240
	.byte	0
.LLRL56:
	.byte	0x5
	.quad	.LBB244
	.byte	0x4
	.uleb128 .LBB244-.LBB244
	.uleb128 .LBE244-.LBB244
	.byte	0x4
	.uleb128 .LBB247-.LBB244
	.uleb128 .LBE247-.LBB244
	.byte	0
.LLRL59:
	.byte	0x5
	.quad	.LBB248
	.byte	0x4
	.uleb128 .LBB248-.LBB248
	.uleb128 .LBE248-.LBB248
	.byte	0x4
	.uleb128 .LBB252-.LBB248
	.uleb128 .LBE252-.LBB248
	.byte	0
.LLRL62:
	.byte	0x5
	.quad	.LBB253
	.byte	0x4
	.uleb128 .LBB253-.LBB253
	.uleb128 .LBE253-.LBB253
	.byte	0x4
	.uleb128 .LBB262-.LBB253
	.uleb128 .LBE262-.LBB253
	.byte	0x4
	.uleb128 .LBB264-.LBB253
	.uleb128 .LBE264-.LBB253
	.byte	0
.LLRL64:
	.byte	0x5
	.quad	.LBB257
	.byte	0x4
	.uleb128 .LBB257-.LBB257
	.uleb128 .LBE257-.LBB257
	.byte	0x4
	.uleb128 .LBB263-.LBB257
	.uleb128 .LBE263-.LBB257
	.byte	0x4
	.uleb128 .LBB265-.LBB257
	.uleb128 .LBE265-.LBB257
	.byte	0x4
	.uleb128 .LBB266-.LBB257
	.uleb128 .LBE266-.LBB257
	.byte	0
.LLRL67:
	.byte	0x5
	.quad	.LBB267
	.byte	0x4
	.uleb128 .LBB267-.LBB267
	.uleb128 .LBE267-.LBB267
	.byte	0x4
	.uleb128 .LBB271-.LBB267
	.uleb128 .LBE271-.LBB267
	.byte	0
.LLRL76:
	.byte	0x5
	.quad	.LBB276
	.byte	0x4
	.uleb128 .LBB276-.LBB276
	.uleb128 .LBE276-.LBB276
	.byte	0x4
	.uleb128 .LBB281-.LBB276
	.uleb128 .LBE281-.LBB276
	.byte	0x4
	.uleb128 .LBB282-.LBB276
	.uleb128 .LBE282-.LBB276
	.byte	0x4
	.uleb128 .LBB283-.LBB276
	.uleb128 .LBE283-.LBB276
	.byte	0
.LLRL79:
	.byte	0x5
	.quad	.LBB284
	.byte	0x4
	.uleb128 .LBB284-.LBB284
	.uleb128 .LBE284-.LBB284
	.byte	0x4
	.uleb128 .LBB288-.LBB284
	.uleb128 .LBE288-.LBB284
	.byte	0x4
	.uleb128 .LBB289-.LBB284
	.uleb128 .LBE289-.LBB284
	.byte	0
.LLRL81:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB60
	.uleb128 .LFE60-.LFB60
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"dpda_new_ctx"
.LASF38:
	.string	"word"
.LASF30:
	.string	"dpda1"
.LASF17:
	.string	"dpda"
.LASF12:
	.string	"size_t"
.LASF19:
	.string	"state"
.LASF27:
	.string	"calloc"
.LASF20:
	.string	"stack"
.LASF23:
	.string	"__printf_chk"
.LASF42:
	.string	"s_pop"
.LASF24:
	.string	"strdup"
.LASF50:
	.string	"__builtin_puts"
.LASF45:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -ggdb -O0 -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF14:
	.string	"size"
.LASF40:
	.string	"s_peek"
.LASF47:
	.string	"s_new"
.LASF22:
	.string	"offset"
.LASF2:
	.string	"long unsigned int"
.LASF18:
	.string	"dpda_ctx"
.LASF6:
	.string	"short unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF46:
	.string	"s_push"
.LASF31:
	.string	"dpda1_ctx"
.LASF33:
	.string	"main"
.LASF39:
	.string	"create_dpda"
.LASF26:
	.string	"realloc"
.LASF7:
	.string	"unsigned int"
.LASF43:
	.string	"elem"
.LASF34:
	.string	"run_top_down_parser"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"val_t"
.LASF32:
	.string	"result"
.LASF28:
	.string	"argc"
.LASF4:
	.string	"long long int"
.LASF41:
	.string	"s_isempty"
.LASF48:
	.string	"printf"
.LASF35:
	.string	"is_terminal"
.LASF9:
	.string	"short int"
.LASF15:
	.string	"stack_t"
.LASF29:
	.string	"argv"
.LASF16:
	.string	"initial"
.LASF3:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF21:
	.string	"input"
.LASF49:
	.string	"puts"
.LASF8:
	.string	"signed char"
.LASF44:
	.string	"__fmt"
.LASF36:
	.string	"_Bool"
.LASF25:
	.string	"malloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/finn/Documents/OTH/CC/CompilerConstruction/ex7/ex2"
.LASF0:
	.string	"src/pred_top_down_parser.c"
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
