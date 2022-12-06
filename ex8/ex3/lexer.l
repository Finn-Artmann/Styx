%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#include "parser.tab.h"

#define UTF8_EURO_LEN 3 


void addstr(char ch);
int babylonian_to_decimal(char* str);

char* str_buf;


// Initialize the string buffer before any rules are executed
void init_str_buf();
#define YY_USER_INIT init_str_buf();


%}
%option nounput noinput noyywrap  

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

WHITESPACE [ \t\r\n]+

STRINGSTART "⅜"
STRINGEND "⅜"
STRINGCHAR .
ESCCHAR "E"
NEWLINE "Ω"
ESCAPE_STR {ESCCHAR}({STRINGSTART}|{STRINGEND}|{NEWLINE}|{ESCCHAR})
ASCII {ESCCHAR}({DEC_NUMBER}|{HEX_NUMBER})


HEXSTART {ESCCHAR}x
BABYLONIAN_START {ESCCHAR}B\{
BABYLONIAN_END \}B{ESCCHAR}

IDENTIFIER [ΩŁ€®Ŧ¥↑ıØÞ˚ÆẞÐªŊĦ˙&Ł‹©‚‘’º—@ł¶ŧ←↓→øþ¨æſðđŋħ.ĸł«¢„“”µ]+


LINECOMMENT_START {ESCCHAR}Ł
LINECOMMENT_END {NEWLINE}|\n
LINECOMMENT_CHAR .

BLOCKCOMMENT_START {ESCCHAR}‘
BLOCKCOMMENT_CHAR .|\n|{NEWLINE}|\s|\t
BLOCKCOMMENT_END ‘{ESCCHAR}

/* Datatypes */
INT "ı’Ŧ"
STRING "ẞŦ®ı’Ŋ"
CHAR "©ĦÆ®"
VOID "‚ØıÐ"

/* Operators */
PLUS "¤"
MINUS "¤¤"
MULT "¤¤¤"
DIV "¤¤¤¤"
LE "<§"
GE ">§"
EQ "§§"
NE "¡§"
GT ">"
LT "<"
AND "&&"
OR "||"

/* Keywords */
IF "ıª"
ELSE "€Łẞ€"
FOR "ªØ®"
RETURN "®€Ŧ↑®’"
PRINT "Þ®ı’Ŧ"
SCAN "ẞ©Æ’"

/* Special */
ROUND_OPEN "("
ROUND_CLOSE ")"
CURLY_OPEN "{"
CURLY_CLOSE "}"
SEMICOLON ";"


%x STRING HEX BABYLONIAN LINECOMMENT BLOCKCOMMENT
%%


{STRINGSTART} { BEGIN(STRING); *str_buf = '\0'; }
<STRING>{ESCAPE_STR} {for (int i = UTF8_EURO_LEN; i < yyleng; i++){ addstr(yytext[i]);} } 
<STRING>{STRINGEND} { BEGIN(INITIAL); yylval.str = strdup(str_buf); return str; }
<STRING>{STRINGCHAR} { addstr(*yytext); }
<STRING>{NEWLINE} { addstr('\n'); }
<STRING>{ASCII} { addstr(atoi(yytext + UTF8_EURO_LEN)); }


{DEC_NUMBER} { yylval.num = atoi(yytext); return num; }

{HEXSTART} { BEGIN(HEX); }
<HEX>{HEX_NUMBER} { BEGIN(INITIAL); yylval.num = strtol(yytext, NULL, 16); return num; }

{BABYLONIAN_START} { BEGIN(BABYLONIAN); }
<BABYLONIAN>{BABYLONIAN_END} {BEGIN(INITIAL); }
<BABYLONIAN>{BABYLONIAN_NUMBER} { yylval.num = babylonian_to_decimal(yytext); return num; }


{LINECOMMENT_START} { BEGIN(LINECOMMENT);  *str_buf = '\0';}
<LINECOMMENT>{LINECOMMENT_END} { BEGIN(INITIAL); }
<LINECOMMENT>{LINECOMMENT_CHAR} { addstr(*yytext); /* addstr could be removed here to completely ignore comments */ }

{BLOCKCOMMENT_START} { BEGIN(BLOCKCOMMENT); *str_buf = '\0'; }
<BLOCKCOMMENT>{BLOCKCOMMENT_END} { BEGIN(INITIAL); }
<BLOCKCOMMENT>{BLOCKCOMMENT_CHAR} { addstr(*yytext); /* addstr could be removed here to completly ignore comments */ }

{INT} { yylval.type = strdup(yytext); return type; }
{STRING} { yylval.type = strdup(yytext); return type; }
{CHAR} { yylval.type = strdup(yytext); return type; }
{VOID} { yylval.type = strdup(yytext); return type; }


{PLUS} { yylval.op = strdup(yytext); return op; }
{MINUS} { yylval.op = strdup(yytext); return op; }
{MULT} { yylval.op = strdup(yytext);  return op; }
{DIV} { yylval.op = strdup(yytext);  return op; }
{LE} { yylval.op = strdup(yytext);  return op; }
{GE} { yylval.op = strdup(yytext);  return op; }
{EQ} { yylval.op = strdup(yytext);  return op; }
{NE} { yylval.op = strdup(yytext);  return op; }
{GT} { yylval.op = strdup(yytext);  return op; }
{LT} { yylval.op = strdup(yytext);  return op; }
{AND} { yylval.op = strdup(yytext);  return op; }
{OR} { yylval.op = strdup(yytext);  return op; }

{IF} { yylval.kw = strdup(yytext); return kw; }
{ELSE} { yylval.kw = strdup(yytext); return kw; }
{FOR} { yylval.kw = strdup(yytext); return kw; }
{RETURN} { yylval.kw = strdup(yytext); return kw; }
{PRINT} { yylval.kw = strdup(yytext); return kw; }
{SCAN} { yylval.kw = strdup(yytext); return kw; }
{SEMICOLON} { return semicolon; }

{IDENTIFIER} { yylval.id = strdup(yytext); return id; }

(\ |\n) // Ignore spaces and newlines<STRING>{STRINGCHAR} { addstr(*yytext); }


. { return *yytext; } // Return any other character


%%

//function to convert babylonian string to decimal number; 1 = Y, 10 = <; base is 60 seperated by space
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
