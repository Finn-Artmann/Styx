#include <stdio.h>
#include <stdint.h>

#include "generic_pda.h"


int pda_transition(int st, char ch, struct dfa_ctx* ctx){
	switch(st){
		case 1: switch(ch){
			case 'a': s_push(ctx->stack, 'a'); return 1;
			case 'b': s_push(ctx->stack, 'b'); return 1;
			case '.': return 2;
			default: return 0;
			}
		case 2: switch(ch){
			case 'a': if(s_peek(ctx->stack) == 'a'){
					  s_pop(ctx->stack);
					  return 2;
				  }
				  break;
			case 'b': if(s_peek(ctx->stack) == 'b'){
					  s_pop(ctx->stack);
					  return 2;
				  }
				  break;
			case '\0': if(s_isempty(ctx->stack)){
					   return -1;
				   }
				   break;
			default: return 0;
			}
	}
}


int main(int argc, char** argv){
	
	struct dfa* pda = create_dfa(1, pda_transition);
	
	char* test_word = "ab.ba";
	struct dfa_ctx* pda_ctx = dfa_new_ctx(pda, test_word);

	if(run_dfa(pda_ctx))
		printf("Word accepted.\n");
	else
		printf("Word declined.\n");

	
	return 0;
}
