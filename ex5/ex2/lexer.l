%{
#include <stdio.h>
#include <ctype.h>

int file_num = 1;
char** argv_global;
int argc_global;

unsigned long line_count = 0;
unsigned long word_count = 0;
unsigned long char_count = 0;
%}

LINE \n
WORD [^ \n\t]+
CHAR .

%%
{LINE} 	{ line_count++; }
{WORD}  { word_count++; char_count+=yyleng;}
{CHAR}	{ char_count++; }	
%%
int yywrap(void){

	//printf("argc_global: %d\n", argc_global);
	//printf("file_num: %d\n", file_num);	
	if(argc_global > file_num){
		yyin = fopen(argv_global[file_num++], "r");
		return 0;
	}
	return 1;
}

int main(int argc, char** argv){
	printf("Starting lexing process ... \n");
	argv_global = argv;
	argc_global = argc;
	yyin = fopen(argv[file_num++], "r");
	yylex();
	printf("Lines: %lu\n" , line_count);
	printf("Words: %lu\n" , word_count);
	printf("Chars: %lu\n" , char_count);
}
