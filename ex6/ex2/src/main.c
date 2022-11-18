#include <stdio.h>
#include <stdint.h>

#include "generic_pda.h"


int pda_transition(int st, char ch, struct dfa_ctx* ctx){
	switch(st){
		case 1: switch(ch){
			case 'a': s_push(ctx->stack, 'a'); return 1;
			case 'p': return 2;
			default: return 0;
			}
		case 2: switch(ch){
			case 'b': s_push(ctx->stack, 'b'); return 2;
			case 'q': return 3;
			default: return 0;
			}
		case 3: switch(ch){
			case 'c': s_pop(ctx->stack); return 3;
			case '\0': if(s_isempty(ctx->stack)){
					return -1;
				   }
				   else{
					return 0;
				   }
			default : return 0;
			}
	}
}


int main(int argc, char** argv){
	
	struct dfa* pda = create_dfa(1, pda_transition);
	
	char* test_word = "aaapbbqcccc";
	struct dfa_ctx* pda_ctx = dfa_new_ctx(pda, test_word);

	if(run_dfa(pda_ctx))
		printf("Word accepted.\n");
	else
		printf("Word declined.\n");

	
	return 0;
}
