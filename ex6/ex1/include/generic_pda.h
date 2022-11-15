#ifndef __GENERIC_PDA_H_
#define __GENERIC_PDA_H_

#include "stack.h"

struct dfa {
	int initial;
	int (*transition)(int state, char ch, stack_t* stack);
};

struct dfa *create_dfa (int i, int (*t)(int, char));

struct dfa_ctx {
	struct dfa *dfa;
	int state;
	char *input;
	int offset;
	stack_t* stack;
};

struct dfa_ctx *dfa_new_ctx (struct dfa *dfa, char *word);


int run_dfa (struct dfa_ctx *ctx);

char *generate_word (void);


#endif // __GENERIC_PDA_H
