%{
#include <stdio.h>
#include <ctype.h>
%}

ALL .|\n

%%
{ALL} { for(int i=0; i<yyleng; i++){ if(islower(yytext[i])){ yytext[i] =  toupper(yytext[i]);  } } printf("%s", yytext); } 
%%
int yywrap (void) { return 1; }
int main (int argc, char** argv){
	yyin = fopen(argv[1], "r");
	yylex();
}

