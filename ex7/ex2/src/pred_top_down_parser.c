#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <stdbool.h>

/* Stack implementation */

typedef int val_t;
typedef struct {
  val_t *val;
  int size;
} stack_t;

stack_t *s_new (void) {
  return calloc(1, sizeof (stack_t));
}

void s_push (stack_t *s, val_t elem) {
  s->val = realloc(s->val, (s->size+1)*sizeof elem);
  s->val[s->size++] = elem;
}

val_t s_pop (stack_t *s) {
  return s->val[--s->size];
}

int s_isempty (stack_t *s) {
  return s->size == 0;
}

val_t s_peek (stack_t *s) {
  if (s_isempty(s))
    return 0;
  return s->val[s->size-1];
}

/* Generic DPDA implementation */

struct dpda {
  int initial;
  //int (*transition)(int state, char ch, stack_t *stack);
};

struct dpda *create_dpda (int i) {
    struct dpda *dpda = malloc(sizeof *dpda);

    dpda->initial = i;
    //dpda->transition = t;

    return dpda;
}

struct dpda_ctx {
    struct dpda *dpda;
    int state;
    stack_t *stack;
    char *input;
    int offset;
};

struct dpda_ctx *dpda_new_ctx (struct dpda *dpda, char *word) {
    struct dpda_ctx *ctx = malloc (sizeof *ctx);

    ctx->dpda = dpda;
    ctx->state = dpda->initial;
    ctx->input = strdup(word);
    ctx->stack = s_new();
    ctx->offset = 0;

    return ctx;
}

bool is_terminal (char ch) {
    return ch == 'a' || ch == '(' || ch == ')' || ch == '+';
}

int run_top_down_parser(struct dpda_ctx *ctx) {
   
	// Start with start symbol on the stack
	s_push(ctx->stack, 'S');
	printf("push S\n");


	while(ctx->input[ctx->offset] != '\0') {

		// Look at the top of the stack. If there is a terminal, compare it to the next input symbol
		char top = s_peek(ctx->stack);
		printf("top: %c\n", top);
		char ch = ctx->input[ctx->offset];
		printf("ch: %c\n", ch);
		while(is_terminal(top)){ 
			printf("top is terminal: %c\n", top);
			if(ch == top){
				printf("ch == top\n");
				s_pop(ctx->stack);
				printf("pop\n");
				top = s_peek(ctx->stack);
				printf("top after pop: %c\n", top);
			}else{
				return 0;
			}

			ctx->offset++;
			ch = ctx->input[ctx->offset];
			printf("ch at end of while: %c\n", ch);
		}

	
		//top is a non-terminal
		switch (top) {
			case 'S':
				switch(ch) {
					// S -> (S)P
					case '(':
						s_pop(ctx->stack);
						s_push(ctx->stack, 'P');
						s_push(ctx->stack, ')');
						s_push(ctx->stack, 'S');
						s_push(ctx->stack, '(');

						break;
					// S -> aP
					case 'a':
						s_pop(ctx->stack);
						s_push(ctx->stack, 'P');
						s_push(ctx->stack, 'a');
						break;
					default:
						return 0;
				}
				break;
		
			case 'P':
				// P -> +S
				switch(ch) {
					case ')':
						s_pop(ctx->stack);
						break;
					case '+':
						s_pop(ctx->stack);
						s_push(ctx->stack, 'S');
						s_push(ctx->stack, '+');
						break;
					case '\0':
						s_pop(ctx->stack);
						break;
					default:
						return 0;
				}
		}
   	}

   	// If the stack is empty, the input word has been fully consumed and the parsing is successful
   	return s_isempty(ctx->stack);
}


/* Transition function for Exercise 7 */


/* GRAMMAR
 * S -> (S)P
 * S -> aP
 * P -> +S
 * P -> eps
 * */

// END dpda implementation

int main (int argc, char **argv) {
    struct dpda *dpda1 = create_dpda(1);
    
    struct dpda_ctx *dpda1_ctx = dpda_new_ctx(dpda1, argv[1]);
    int result = run_top_down_parser(dpda1_ctx);

    printf("Word %s was %saccepted\n", dpda1_ctx->input, result ? "" : "NOT ");
}
