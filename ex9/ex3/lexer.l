%{
	#include <string.h>
	#include <stdio.h>
	#include "bool.tab.h"
%}

TRUE 1|true|True|TRUE
FALSE 0|false|False|FALSE

AND "&&" 
OR "||"
XOR "^"
NOT "!"



SEMICOLON ;



%option noyywrap noinput nounput
%% 

{TRUE} { yylval.nr = 1; return BOOL_TRUE;}
{FALSE} { yylval.nr = 0; return BOOL_FALSE;}
{AND} { yylval.str = strdup(yytext); return AND; }
{OR} { yylval.str = strdup(yytext); return OR; }
{XOR} { yylval.str = strdup(yytext); return XOR; }
{NOT} { yylval.str = strdup(yytext); return NOT; }
{SEMICOLON} { return SEMICOLON; }

(\ |\n) // Ignore spaces and newlines


. {return *yytext;} // Return any other character


%%
