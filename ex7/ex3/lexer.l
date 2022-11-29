%{
#include <stdlib.h>
#include <math.h>

#define UTF8_EURO_LEN 3 

// struct for storing data of a token
struct YYVAL {
    char* type;
    char* id;
    char* str;
    int num;
    char* op;
};
struct YYVAL yyval;

// enum for the types of tokens
enum {
    EOI = 0,
    STR,
    NUM,
    ID,
    LINCOM,
    BLKCOM,
    WHITESPC,
    TYPE,
    OP,
};

void addstr(char ch);
void addid(int len, char* str);
void addtype(int len, char* str);
int babylonian_to_decimal(char* str);


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



%x STRING HEX BABYLONIAN LINECOMMENT BLOCKCOMMENT
%%

<STRING>{ESCAPE_STR} {for (int i = UTF8_EURO_LEN; i < yyleng; i++){ addstr(yytext[i]);} } 
{STRINGSTART} { BEGIN(STR); *yyval.str= '\0'; }
<STRING>{STRINGEND} { BEGIN(INITIAL); return STR; }
<STRING>{STRINGCHAR} { addstr(*yytext); }
<STRING>{NEWLINE} { addstr('\n'); }
<STRING>{ASCII} { addstr(atoi(yytext + UTF8_EURO_LEN)); }


{DEC_NUMBER} { yyval.num = atoi(yytext); return NUM; }

{HEXSTART} { BEGIN(HEX); }
<HEX>{HEX_NUMBER} { BEGIN(INITIAL); yyval.num = strtol(yytext, NULL, 16); return NUM; }

{BABYLONIAN_START} { BEGIN(BABYLONIAN); }
<BABYLONIAN>{BABYLONIAN_END} {BEGIN(INITIAL); }
<BABYLONIAN>{BABYLONIAN_NUMBER} { yyval.num = babylonian_to_decimal(yytext); return NUM; }

{LINECOMMENT_START} { BEGIN(LINECOMMENT);  *yyval.str='\0';}
<LINECOMMENT>{LINECOMMENT_END} { BEGIN(INITIAL); return LINCOM; }
<LINECOMMENT>{LINECOMMENT_CHAR} { addstr(*yytext); }

{BLOCKCOMMENT_START} { BEGIN(BLOCKCOMMENT); *yyval.str='\0'; }
<BLOCKCOMMENT>{BLOCKCOMMENT_END} { BEGIN(INITIAL); return BLKCOM; }
<BLOCKCOMMENT>{BLOCKCOMMENT_CHAR} { addstr(*yytext); }

{INT} { *yyval.type='\0'; addtype(yyleng, yytext); return TYPE; }
{STRING} { *yyval.type='\0'; addtype(yyleng, yytext); return TYPE; }
{CHAR} { *yyval.type='\0'; addtype(yyleng, yytext); return TYPE; }
{VOID} { *yyval.type='\0'; addtype(yyleng, yytext); return TYPE; }

{IDENTIFIER} { *yyval.id='\0'; addid(yyleng, yytext); return ID; }
{WHITESPACE} { *yyval.str='\0'; addstr(' '); return WHITESPC; }




(.|\n)


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
    int l = strlen(yyval.str);
    yyval.str = realloc(yyval.str, l+2);
    yyval.str[l] = ch;
    yyval.str[l+1] = '\0';
}


void addid(int len, char* str){
    int l = strlen(yyval.id);
    yyval.id = realloc(yyval.id, l+len+1);
    strncat(yyval.id, str, len);
    yyval.id[l+len] = '\0';
}

void addtype(int len, char* str){
    int l = strlen(yyval.type);
    yyval.type = realloc(yyval.type, l+len+1);
    strncat(yyval.type, str, len);
    yyval.type[l+len] = '\0';
}

int main (void){

    int token;

    yyval.type = malloc(1);
    yyval.id = malloc(1);
    yyval.str = malloc(1);
    yyval.op = malloc(1);

    do{
        token = yylex();
	switch(token){
		case STR:
			printf("String: %s\n", yyval.str);
			break;
		case NUM:
			printf("Number: %d\n", yyval.num);
			break;

		case ID:
			printf("Identifier: %s\n", yyval.id);
			break;
		
		case LINCOM:
			printf("Line Comment: %s\n", yyval.str);
			break;

		case BLKCOM:
			printf("Block Comment: %s\n", yyval.str);
			break;

		case WHITESPC:
			printf("Whitespace: %s\n", yyval.str);
			break;

		case TYPE:
			printf("Type: %s\n", yyval.type);
			break;

	}
    } while (token != EOI);
    exit(EXIT_SUCCESS);
}
