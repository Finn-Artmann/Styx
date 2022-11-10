%{
#include <stdio.h>
#include <ctype.h>

long sum = 0;
%}


EVEN    [1-9]*[02468]
ODD     [1-9]*[13579]
EVEN_LETTERS    ([a-zA-Z][a-zA-Z])+
ODD_LETTERS     ([a-zA-Z][a-zA-Z])*[a-zA-Z]
BLANK_OR_NEWLINE [ \t\n]
END	END
  
%%

{END}	{ return 0;}
{EVEN}	{ ECHO; /*printf("Identified even number: %s\n", yytext); sum+= atoi(yytext);*/}
{ODD}	{ ECHO; /*printf("Identified odd number: %s\n", yytext); sum+= atoi(yytext);*/ }
{EVEN_LETTERS}	{ ECHO;/*printf("Identified even letter count: %s\n", yytext);*/ }
{ODD_LETTERS}	{ ECHO; /*printf("Identified odd letter count: %s\n", yytext);*/ }

%%


int yywrap(void) {return 1;}
int main(int argc, char** argv){
	
	//printf("Starting lexing process ... \n");
	yyin = fopen(argv[1], "r");
	yylex();

	//printf("Sum of all even and odd numbers: %ld\n", sum);

}
