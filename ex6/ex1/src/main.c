#include <stdio.h>
#include <stdint.h>

#include "generic_pda.h"


int pda_transition(int st, char ch, stack_t* stack){
	switch(st){
		case 1: switch(ch){
			case 'a': stack.s_push('a'); return 1;
			case 'b': stack.s_push('b'); return 1;
			case '.': return 2;
			default: return 0;
			}
		case 2: switch(ch){
			case 'a': //TODO: Continue here 
			case 'b':
			default: return 0;
			}
	}
}


int main(int argc, char** argv){
	
	struct dfa* pda = create_dfa(1, pda_transition);
	
	char* test_word = "test";

	struct dfa_ctx* pda_ctx = dfa_new_ctx(pda, test_word);
	int result = run_dfa(pda_ctx);

	
	return 0;
}
