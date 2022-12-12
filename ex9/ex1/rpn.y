%{
	// Header Code

	#include <stdio.h>
	int yydebug = 0;
	int yylex(void);
	void yyerror(const char *msg){
		fprintf(stderr, "%s\n", msg);
	}

	int result;
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
%start START
%%

// Rules and Actions
// Define Grammar Rules for calculations in postfix notation (example: 3 4 +  (= 7))


ASSIGN: id ':' '=' TERM

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
				break;
		}
	}
	| num { $$ = $1; }
	| id  { $$ = 0; }

START: ASSIGN
     | START TERM semicolon{ printf("Result: %d\n", $2); }
     | %empty
	 


%%

// C Code
int main(void){
	return yyparse();
}
