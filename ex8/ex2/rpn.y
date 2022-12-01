%{
	// Header Code

	#include <stdio.h>

	int yylex(void);
	void yyerror(char *msg){
		fprintf(stderr, "%s\n", msg);
	}
%}


// Definitions
%union{
	int nr;
	char *str;
}
%token id op num
%start START
%%

// Rules and Actions
// Define Grammar Rules for calculations in postfix notation (example: 3 4 +  (= 7))


ASSIGN: id ':' '=' TERM

TERM: TERM TERM op
	| num
	| id

START: ASSIGN
     | TERM
	 


%%

// C Code
int main(void){
	return yyparse();
}
