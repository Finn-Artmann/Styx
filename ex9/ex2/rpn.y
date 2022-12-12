%{
	// Header Code
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>

	int yydebug = 0;
	extern int yylineno;
	int yylex(void);
	void yyerror(const char *msg){
		printf("Line %d: %s\n", yylineno, msg);
	}

	// Stack implementation

	typedef struct{
		char* id;
		int nr;
	} val_t;

	typedef struct {
  		val_t *val;
  		int size;
	} stack_t;

	stack_t	 *s_new (void) {
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

	stack_t *stack;
	// end of stack implementation


	val_t* s_lookup(stack_t *s, char* id){
		int i;
		for(i = 0; i < s->size; i++){

			//printf("Comparing %s with %s\n", s->val[i].id, id);
			if(strcmp(s->val[i].id, id) == 0){
				return &s->val[i];
			}
		}
		return NULL;
	}


%}
%define parse.error verbose

// Definitions
%union{
	int nr;
	char *str;
}
%token <str>id <str>op <nr>num
%token semicolon
%type <nr>TERM
%type <nr>ASSIGN
%start START
%%

// Rules and Actions
// Define Grammar Rules for calculations in postfix notation (example: 3 4 +  (= 7))


ASSIGN: id ':' '=' TERM {

	// Print id
	//printf("id: %s\n", $1);

	// Check if variable is already defined
	val_t* v = s_lookup(stack, $1);
	if(v != NULL){
		v->nr = $4;
	} else {
		val_t* v = malloc(sizeof(val_t));
		v->id = $1;
		v->nr = $4;
		s_push(stack, *v);
		//printf("Pushing %s with value %d to stack.\n", $1, $4);
	}

	$$ = $4;
}

TERM: TERM TERM op {
	    	int val1 = $1;
	    	int val2 = $2;
		char *op = $3;
	    	switch(op[0]){
			case '+':
				$$ = val1 + val2;
				break;
			case '-':
				$$ = val1 - val2;
				break;
			case '*':
				$$ = val1 * val2;
				break;
			case '/':
				$$ = val1 / val2;
				break;
			default:
				yyerror("Unknown operator");
				YYERROR;
				break;
		}
	}
	| num { $$ = $1; }
	| id  { 
		val_t* v = s_lookup(stack, $1);
		if(v != NULL){
			$$ = v->nr;
		} else {
			yyerror("Variable not defined");
			$$ = 0;
			// Throw error and go to next semicolon
			YYERROR;
		}
	}

START: START ASSIGN semicolon { printf("Result: %d\n", $2); }
     | START TERM semicolon{ printf("Result: %d\n", $2); }
     | %empty
     | error semicolon
	 


%%

// C Code
int main(void){
	stack = s_new();
	return yyparse();
}
