%{
#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>

long sum_even = 0;
long sum_odd = 0;


char* replace(const char* word, const char* search, const char* replace, const int n){
	
	if(word == NULL || search == NULL || replace == NULL) {return NULL;}

	char* result;

	int replace_len = strlen(replace);
	int search_len = strlen(search);
	int word_len = strlen(word);
	
	result = malloc(word_len + replace_len - search_len +1);

	int i=0;
	int occurence=0;
	bool found_nth_occurence = false;
	while(*word){
		
		char* tmp = strstr(word, search);

		if(tmp == word && n == occurence++){
			strcpy(&result[i], replace);
			i+= replace_len;
			word += search_len;
			found_nth_occurence = true;
		}
		else{
			result[i++] = *word++;
		}
	}
	
	result[i] = '\0';

	// Return NULL if ther is there is no n'th occurence of the search string 
	if(!found_nth_occurence) { return NULL;}


	return result;
}

%}

%x OCTAL

EVEN    [1-9]*[02468]
ODD     [1-9]*[13579]
EVEN_LETTERS    ([a-zA-Z][a-zA-Z])+
ODD_LETTERS     ([a-zA-Z][a-zA-Z])*[a-zA-Z]
BLANK_OR_NEWLINE [ \t\n]
OCTAL [1-7][0-7]*
END	END
  
%%

{END}	{ return 3;}
{EVEN}	{ ECHO; sum_even+= atoi(yytext); return 1;}
{ODD}	{ ECHO; sum_odd+= atoi(yytext); return 2;}
{EVEN_LETTERS}	{ for(int i=0;i<yyleng;i++){
                            if(isupper(yytext[i])){
                                    yytext[i]= tolower(yytext[i]);       
                            }                                  
                    }  
                    ECHO;
                    } 
{ODD_LETTERS}	{ for(int i=0;i<yyleng;i++){
			if(islower(yytext[i])){
				yytext[i]= toupper(yytext[i]);
			} 
		   } 
		   ECHO;
		}

"/o"	{ BEGIN(OCTAL); }
<OCTAL>"o/"	{ BEGIN(INITIAL); }
<OCTAL>{OCTAL} {

	// printf("OCTAL FOUND: %s\n", yytext);
	long dec = strtol(yytext, NULL, 8);
	// printf("DEC: %ld\n", dec);
	char dec_str[100 + sizeof(char)];
	sprintf(dec_str, "%ld", dec);
	// printf("DECSTR: %s\n", dec_str);
	yytext = replace(yytext, yytext, dec_str, 0);
	ECHO;
}
%%


int yywrap(void) {return 1;}
int main(int argc, char** argv){
	
	//printf("Starting lexing process ... \n");
	yyin = fopen(argv[1], "r");
	

	for(int res=yylex(); res != 0 && res!=3; res=yylex()){
		
		switch(res){
			
			case 1:
				printf("Sum even: %ld\n", sum_even);
				break;

			case 2:
				printf("Sum odd: %ld\n", sum_odd);
				break;
			default:
				break;
		}
	}

	//printf("Sum of all even and odd numbers: %ld\n", sum);

}
