%{
#include <stdio.h>
#include <ctype.h>
%}

LINE \n
WORD [^ \n\t]+
CHAR .

%%

%%
int yywrap(void){ return 1;}
int main(int argc, char** argv){
	printf("Starting lexing process ... \n");
	yyin = fopen(argv[1], "r");
	yylex();
}
