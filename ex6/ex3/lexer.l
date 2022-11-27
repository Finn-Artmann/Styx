%{
#include <stdlib.h>

char* str;
int num;

enum {
    EOI = 0,
    STR,
    NUM
};

void addstr(char ch);

%}
%option nounput noinput noyywrap  


DIGIT [1-9]
DIGIT0 [0-9]
NUMBER {DIGIT0}|({DIGIT}{DIGIT0}*)

STRINGSTART "\""
STRINGEND "\""
DOUBLEQUOTE "\"\""
CHAR .
NEWLINE "~Ω"
ESCAPE "~~"

COMMENT "~©"
COMMENT_END "©~"

%x STRING COMMENT


%%

{NUMBER}                { num = atoi(yytext); return NUM; } 
{STRINGSTART}           { BEGIN(STR); *str = '\0';}
<STRING>{DOUBLEQUOTE}   { addstr('"'); }
<STRING>{NEWLINE}       { addstr('\n'); }
<STRING>{COMMENT}       { addstr('~'); }
<STRING>{STRINGEND}     { BEGIN(INITIAL); return STR;}
<STRING>{CHAR}          { addstr(*yytext); }
<STRING>\n              

{COMMENT}               { BEGIN(COMMENT); }
<COMMENT>{COMMENT_END}  { BEGIN(INITIAL); }        

(.|\n)


%%

void addstr(char ch){
    int l = strlen(str);
    str = realloc(str, l+2);
    str[l] = ch;
    str[l+1] = '\0';
}

int main (void){

    int token;
    str = malloc(1);
    
    do{
        token = yylex();
        switch(token){
            case STR:
                printf("String found: '%s'\n", str);
                break;
            case NUM:
                printf("Number found: '%d'\n", num);
                break;
        }
    } while (token != EOI);
    
    exit(EXIT_SUCCESS);
}


