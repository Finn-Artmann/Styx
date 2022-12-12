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

%}
%define parse.error verbose

// Definitions
%union{
	int nr;
	char *str;
}

%left XOR
%left AND OR
%right NOT

%token SEMICOLON

%token AND
%token OR
%token NOT
%token XOR
%token <nr>BOOL_TRUE <nr>BOOL_FALSE
%type <nr>expr
%start start
%%

// Rules and Actions



start: expr SEMICOLON { printf("Result: %d\n", $1); }
     | start expr SEMICOLON { printf("Result: %d\n", $2); }
     | %empty
     
expr: expr AND expr     { $$ = $1 && $3; }
    | expr OR expr	{ $$ = $1 || $3; }
    | expr XOR expr	{ $$ = $1 ^ $3; }
    | NOT expr		{ $$ = !$2; }
    | BOOL_TRUE		{ $$ = 1; }
    | BOOL_FALSE	{ $$ = 0; }
    | '(' expr ')'	{ $$ = $2; }
    
	 



%%

// C Code
int main(void){
	return yyparse();
}
