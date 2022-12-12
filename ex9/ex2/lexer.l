%{
	#include <string.h>
	#include <stdio.h>
	#include "rpn.tab.h"
%}



DEC [0-9]+
HEX 0x[0-9a-fA-F]+
OCT 0[0-7]+
BIN 0b[01]+


NUM ({DEC}|{HEX}|{OCT}|{BIN})

ID [a-zA-Z_][a-zA-Z0-9_]*
OP [*+/-]

SPACE [ ]
SEMICOLON ;



%option noyywrap noinput nounput
%% 

{NUM} { yylval.nr = atoi(yytext); return num; }
{ID} { yylval.str = strdup(yytext); return id; }
{OP} { yylval.str = strdup(yytext); return op; }
{SEMICOLON} { return semicolon; }

(\ |\n) // Ignore spaces and newlines


. {return *yytext;} // Return any other character


%%
