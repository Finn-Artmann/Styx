%{
	// Header Code

	#include <stdio.h>

	int yylex(void);
	void yyerror(const char *msg){
		fprintf(stderr, "%s\n", msg);
	}
%}

%define parse.lac full
%define parse.error verbose

// Definitions



%union{
	char* type;
	char* id;
	char* str;
	char* op;
	char* kw;
	int num;
}
%token str type id op kw num semicolon eoi
%start START
%%






// Rules and Actions

START: DEBUG

DEBUG: num {printf("Number: %d\n", yylval.num);}
	| str {printf("String: %s\n", yylval.str);}
	| id {printf("Identifier: %s\n", yylval.id);}
	| type {printf("Type: %s\n", yylval.type);}
	| op {printf("Operator: %s\n", yylval.op);}
	| kw {printf("Keyword: %s\n", yylval.kw);}
	| semicolon {printf("Semicolon\n");}
	| eoi {printf("End of Input\n");}

	



 



%%

// C Code
int main(void){

	//yylval.type = malloc(1);
	//yylval.id = malloc(1);
	//yylval.str = malloci(1);
	//yylval.op = malloc(1);
	//yylval.kw = malloc(1);
	//yylval.num = 0;
	return yyparse();
}
