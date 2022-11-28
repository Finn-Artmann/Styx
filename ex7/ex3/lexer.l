%{
#include <stdlib.h>
#include <math.h>

#define UTF8_EURO_LEN 3 

char* str;
long long int num;

enum {
    EOI = 0,
    STR,
    NUM,
    ID,
    LINCOM,
    BLKCOM,
};

void addstr(char ch);
void addstrlen(int len, char* str);
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

%x STRING HEX BABYLONIAN LINECOMMENT BLOCKCOMMENT
%%

<STRING>{ESCAPE_STR} {for (int i = UTF8_EURO_LEN; i < yyleng; i++){ addstr(yytext[i]);} } 
{STRINGSTART} { BEGIN(STR); *str= '\0'; }
<STRING>{STRINGEND} { BEGIN(INITIAL); return STR; }
<STRING>{STRINGCHAR} { addstr(*yytext); }
<STRING>{NEWLINE} { addstr('\n'); }
<STRING>{ASCII} { addstr(atoi(yytext + UTF8_EURO_LEN)); }


{DEC_NUMBER} { num = atoi(yytext); return NUM; }

{HEXSTART} { BEGIN(HEX); }
<HEX>{HEX_NUMBER} { BEGIN(INITIAL); num = strtol(yytext, NULL, 16); return NUM; }

{BABYLONIAN_START} { BEGIN(BABYLONIAN); }
<BABYLONIAN>{BABYLONIAN_END} {BEGIN(INITIAL); }
<BABYLONIAN>{BABYLONIAN_NUMBER} { num = babylonian_to_decimal(yytext); return NUM; }

{LINECOMMENT_START} { BEGIN(LINECOMMENT);  *str='\0';}
<LINECOMMENT>{LINECOMMENT_END} { BEGIN(INITIAL); return LINCOM; }
<LINECOMMENT>{LINECOMMENT_CHAR} { addstr(*yytext); }

{BLOCKCOMMENT_START} { BEGIN(BLOCKCOMMENT); *str='\0'; }
<BLOCKCOMMENT>{BLOCKCOMMENT_END} { BEGIN(INITIAL); return BLKCOM; }
<BLOCKCOMMENT>{BLOCKCOMMENT_CHAR} { addstr(*yytext); }

{IDENTIFIER} { *str='\0'; addstrlen(yyleng, yytext); return ID; }


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
    int l = strlen(str);
    str = realloc(str, l+2);
    str[l] = ch;
    str[l+1] = '\0';
}

void addstrlen(int len, char* ch){
	
	for(int i = 0; i < len; i++){
		addstr(ch[i]);
	}
}

int main (void){

    int token;
    str = malloc(1);
    
    do{
        token = yylex();
	switch(token){
		case STR:
			printf("String: %s\n", str);
			break;
		case NUM:
			printf("Number: %lld\n", num);
			break;

		case ID:
			printf("Identifier: %s\n", str);
			break;
		
		case LINCOM:
			printf("Line Comment: %s\n", str);
			break;

		case BLKCOM:
			printf("Block Comment: %s\n", str);
			break;

	}
    } while (token != EOI);
    exit(EXIT_SUCCESS);
}
