#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#include "generic_pda.h"

/* Generic DFA implementation */


struct dfa *create_dfa (int i, int (*t)(int, char)) {
    struct dfa *dfa = malloc(sizeof *dfa);

    dfa->initial = i;
    dfa->transition = t;

    return dfa;
}

struct dfa_ctx *dfa_new_ctx (struct dfa *dfa, char *word, stack_t* stack) {
    struct dfa_ctx *ctx = malloc (sizeof *ctx);

	ctx->dfa = dfa;
	ctx->state = dfa->initial;
	ctx->input = strdup(word);
	ctx->offset = 0;
	ctx->stack  = stack;

    return ctx;
}

int run_dfa (struct dfa_ctx *ctx) {
    while (ctx->input[ctx->offset] != '\0') {
        // Input word not fully consumed yet
        // Get next character and advance offset
        char ch = ctx->input[ctx->offset++];
        // Call the transition function of the dfa
        ctx->state = ctx->dfa->transition(ctx->state, ch);
        if (ctx->state == 0)
            return 0; // We hit an invalid state, bail out
    }

    return ctx->state < 0;
}


char *generate_word (void) {
  int len = random() % 20;
  char *word = malloc(len+1), *ptr = word;

  while (len--) {
    *ptr++ = '0' + rand()%2;
  }
  *ptr = '\0';

  return word;
}
