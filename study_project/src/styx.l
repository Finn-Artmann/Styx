%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#include "styx.tab.h"

#define UTF8_ESCCHAR_LEN 1 


void addstr(char ch);
int babylonian_to_decimal(char* str);

char* str_buf;


// Initialize the string buffer before any rules are executed
void init_str_buf();
#define YY_USER_INIT init_str_buf();


%}
%option nounput noinput noyywrap yylineno 

DEC_DIGIT [1-9]
DEC_DIGIT0 [0-9]

HEX_DIGIT [1-9a-fA-F]
HEX_DIGIT0 [0-9a-fA-F]


BABYLONIAN_DIGIT1TO9 (YYYYYYYYY|YYYYYYYY|YYYYYYY|YYYYYY|YYYYY|YYYY|YYY|YY|Y)
BABYLONIAN_DIGIT10TO50 (<<<<<|<<<<|<<<|<<|<)
BABYLONIAN_DIGIT1TO59 ({BABYLONIAN_DIGIT10TO50}{BABYLONIAN_DIGIT1TO9}|{BABYLONIAN_DIGIT10TO50}|{BABYLONIAN_DIGIT1TO9})


BABYLONIAN_NUMBER (({BABYLONIAN_DIGIT1TO59}[ ])*{BABYLONIAN_DIGIT1TO59})
DEC_NUMBER {DEC_DIGIT0}|({DEC_DIGIT}{DEC_DIGIT0}*)
HEX_NUMBER {HEX_DIGIT0}|({HEX_DIGIT}{HEX_DIGIT0}*)

REAL {DEC_DIGIT0}(\.{DEC_DIGIT0}*)|({DEC_DIGIT}{DEC_DIGIT0}*\.{DEC_DIGIT0}*)|({DEC_DIGIT}{DEC_DIGIT0}*\.{DEC_DIGIT0}+)

WHITESPACE [ \t\r\n]+

STRINGSTART "⅜"
STRINGEND "⅜"
STRINGCHAR .
ESCCHAR "E"
NEWLINE "Ω"
ESCAPE_STR {ESCCHAR}({STRINGSTART}|{STRINGEND}|{NEWLINE}|{ESCCHAR})
ASCII {ESCCHAR}({DEC_NUMBER}|x{HEX_NUMBER})


HEXSTART {ESCCHAR}x
BABYLONIAN_START {ESCCHAR}B\{
BABYLONIAN_END \}B{ESCCHAR}

DELIMITER [#\n]+

IDENTIFIER (Ω|Ł|€|®|Ŧ|¥|↑|ı|Ø|Þ|˚|Æ|ẞ|Ð|ª|Ŋ|Ħ|˙|&|Ł|‹|›|©|‚|‘|’|º|—|@|ł|¶|ŧ|←|↓|→|ø|þ|¨|æ|ſ|ð|đ|ŋ|ħ|ĸ|ł|«|¢|„|“|”|µ)+


LINECOMMENT_START {ESCCHAR}Ł
LINECOMMENT_END {NEWLINE}|\n
LINECOMMENT_CHAR .

BLOCKCOMMENT_START {ESCCHAR}‘
BLOCKCOMMENT_CHAR .|\n|{NEWLINE}|\s|\t
BLOCKCOMMENT_END ‘{ESCCHAR}

/* Datatypes */
INT "ı’Ŧ"
DOUBLE "ÐØ↑‘Ł€"
STRING "ẞŦ®ı’Ŋ"
CHAR "©ĦÆ®"
VOID "‚ØıÐ"

/* Operators */
PLUS "¤"
MINUS "¤¤"
MULT "¤¤¤"
DIV "¤¤¤¤"
MOD "¤¤¤¤¤"
LE "<§"
GE ">§"
EQ "§§"
NE "¡§"
GT ">"
LT "<"
AND "&&"
OR "||"
ASSIGN "§"

/* Keywords */
IF "ıª"
ELSE "€Łẞ€"
FOR "ªØ®"
RETURN "®€Ŧ↑®’"
PRINT "Þ®ı’Ŧ"
SCAN "ẞ©Æ’"
MAIN "ºÆı’"
RAND_INT "®Æ’Ðı’Ŧ"
GLOBAL "ŊŁØ‘ÆŁ"

/* Special */
ROUND_OPEN "("
ROUND_CLOSE ")"
CURLY_OPEN "{"
CURLY_CLOSE "}"
SEMICOLON ";"
COMMA "?"


%x STRING HEX BABYLONIAN LINECOMMENT BLOCKCOMMENT
%%


{STRINGSTART} { BEGIN(STRING); *str_buf = '\0'; }
<STRING>{ESCAPE_STR} {for (int i = UTF8_ESCCHAR_LEN; i < yyleng; i++){ addstr(yytext[i]);} } 
<STRING>{STRINGEND} { BEGIN(INITIAL); yylval.str = strdup(str_buf); return STR; }
<STRING>{STRINGCHAR} { addstr(*yytext); }
<STRING>{NEWLINE} { addstr('\n'); }
<STRING>{ASCII} { addstr(atoi(yytext + UTF8_ESCCHAR_LEN)); }


{DEC_NUMBER} { yylval.num = atoi(yytext); return NUM; }
{REAL} { yylval.num = atof(yytext); return REAL; }

{HEXSTART} { BEGIN(HEX); }
<HEX>{HEX_NUMBER} { BEGIN(INITIAL); yylval.num = strtol(yytext, NULL, 16); return NUM; }

{BABYLONIAN_START} { BEGIN(BABYLONIAN); }
<BABYLONIAN>{BABYLONIAN_END} {BEGIN(INITIAL); }
<BABYLONIAN>{BABYLONIAN_NUMBER} { yylval.num = babylonian_to_decimal(yytext); return NUM; }


{LINECOMMENT_START} { BEGIN(LINECOMMENT);  *str_buf = '\0';}
<LINECOMMENT>{LINECOMMENT_END} { BEGIN(INITIAL); }
<LINECOMMENT>{LINECOMMENT_CHAR} { addstr(*yytext); /* addstr could be removed here to completely ignore comments */ }

{BLOCKCOMMENT_START} { BEGIN(BLOCKCOMMENT); *str_buf = '\0'; }
<BLOCKCOMMENT>{BLOCKCOMMENT_END} { BEGIN(INITIAL); }
<BLOCKCOMMENT>{BLOCKCOMMENT_CHAR} { addstr(*yytext); /* addstr could be removed here to completly ignore comments */ }

{INT} { yylval.str = strdup(yytext); return TYPE; }
{DOUBLE} { yylval.str = strdup(yytext); return TYPE; }
{STRING} { yylval.str = strdup(yytext); return TYPE; }
{CHAR} { yylval.str = strdup(yytext); return TYPE; }
{VOID} { yylval.str = strdup(yytext); return TYPE; }



{PLUS} { return PLUS; }
{MINUS} { return MINUS; }
{MULT} { return MULT; }
{DIV} { return DIV; }
{MOD} { return MOD; }
{LE} { return LE; }
{GE} { return GE; }
{EQ} { return EQ; }
{NE} { return NE; }
{GT} { return GT; }
{LT} { return LT; }
{AND} { return AND; }
{OR} { return OR; }
{ASSIGN} { return ASSIGN; }

{IF} { return IF; }
{ELSE} { return ELSE; }
{FOR} { return FOR; }
{RETURN} { return RETURN; }
{PRINT} { return PRINT; }
{SCAN} { return SCAN; }
{RAND_INT} { yylval.num = rand(); return RAND_INT; }
{GLOBAL} { return GLOBAL; }
{MAIN} { yylval.str = strdup(yytext); return MAIN; }

{IDENTIFIER} { yylval.str = strdup(yytext); return ID; }


{SEMICOLON} { return SEMICOLON; }
{COMMA} { return COMMA; }
{ROUND_OPEN} { return ROUND_OPEN; }
{ROUND_CLOSE} { return ROUND_CLOSE; }
{CURLY_OPEN} { return CURLY_OPEN; }
{CURLY_CLOSE} { return CURLY_CLOSE; }

{DELIMITER} { } // Ignore delimiter

. { return *yytext; } // Return any other character


%%

int babylonian_to_decimal(char* str){
    int num = 0;
    int base = 60;
    int digit = 0;
    int i = 0;

    
    // count number of digits
    while(str[i] != '\0'){
            if(str[i] == ' '){
                    digit++;
            }
            i++;
    }

    // convert to decimal
    i=0;
    while(str[i] != '\0'){
        
        if(str[i] == 'Y'){
                num += 1 * pow(base, digit);
        }
        else if(str[i] == '<'){
                num += 10 * pow(base, digit);
        }
        else if(str[i] == ' '){
                digit--;
        }
        i++;
    }
    return num;
}

char* decimal_to_babylonian(int num){
    int base = 60;
    int digit = 0;
    int i = 0;
    int temp = num;
    char* str = malloc(1);
    *str = '\0';

    // count number of digits
    while(temp != 0){
            temp /= base;
            digit++;
    }

    // convert to babylonian
    while(num != 0){
        if(num % base == 1){
                str = realloc(str, strlen(str) + 2);
                str[i] = 'Y';
                str[i+1] = '\0';
                i++;
        }
        else if(num % base == 10){
                str = realloc(str, strlen(str) + 2);
                str[i] = '<';
                str[i+1] = '\0';
                i++;
        }
        else{
                str = realloc(str, strlen(str) + 2);
                str[i] = ' ';
                str[i+1] = '\0';
                i++;
        }
        num /= base;
        digit--;
    }
    return str;
}

void addstr(char ch){
    int l = strlen(str_buf);
    str_buf = realloc(str_buf, l+2);
    str_buf[l] = ch;
    str_buf[l+1] = '\0';
}

void init_str_buf(){
    str_buf = malloc(1);
}

/*
 
int main (void){

    int token;

    yylval.type = malloc(1);
    yylval.id = malloc(1);
    yylval.str = malloc(1);
    yylval.op = malloc(1);

    do{
        token = yylex();
	switch(token){
		case str:
			printf("String: %s\n", yylval.str);
			break;
		case num:
			printf("Number: %d\n", yylval.num);
			break;

		case id:
			printf("Identifier: %s\n", yylval.id);
			break;
		
		case lincom:
			printf("Line Comment: %s\n", yylval.str);
			break;

		case blkcom:
			printf("Block Comment: %s\n", yylval.str);
			break;

		case whitespc:
			printf("Whitespace: %s\n", yylval.str);
			break;

		case type:
			printf("Type: %s\n", yylval.type);
			break;

	}
    } while (token != eoi);
    exit(EXIT_SUCCESS);
}

*/
