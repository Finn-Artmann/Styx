%{
	// Header Code

	#include <stdio.h>

	int yylex(void);
	void yyerror(const char *msg){
		fprintf(stderr, "%s\n", msg);
	}
%}

%define parse.lac full
%define parse.error verbose

// Definitions



%union{
	char* type;
	char* id;
	char* str;
	char* op;
	int num;
}

// Keywords
%token IF
%token ELSE
%token FOR
%token RETURN
%token PRINT
%token SCAN
%token RAND_INT


// Operators
%token PLUS
%token MINUS
%token MULT
%token DIV
%token LE
%token GE
%token EQ
%token NE
%token GT
%token LT
%token AND
%token OR

// Special
%token SEMICOLON
%token ROUND_OPEN
%token ROUND_CLOSE
%token CURLY_OPEN
%token CURLY_CLOSE



%token <str>STR <str>TYPE <str>ID <str>OP <int>NUM EOI
%start start
%%
 

// Rules and Actions

start: main ROUND_OPEN ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE
	{
		printf("Program is valid\n");
	}

main: TYPE ID {	printf("Main function is valid\n"); }

body: body body { printf("Body is valid\n"); }
	| statement { printf("Body is valid\n"); }
	| { printf("Body is valid\n"); }

statement: assignment { printf("Assignment is valid\n"); }
	| if_statement { printf("If statement is valid\n"); }
	| for_statement { printf("For statement is valid\n"); }
	| return_statement { printf("Return statement is valid\n"); }
	| print_statement { printf("Print statement is valid\n"); }
	| scan_statement { printf("Scan statement is valid\n"); }
	| rand_int_statement { printf("Rand int statement is valid\n"); }



assignment: ID EQ expression SEMICOLON { printf("Assignment is valid\n"); }

if_statement: IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { printf("If statement is valid\n"); }
	| IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE ELSE CURLY_OPEN body CURLY_CLOSE { printf("If statement is valid\n"); }

for_statement: FOR ROUND_OPEN assignment expression SEMICOLON assignment ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { printf("For statement is valid\n"); }

return_statement: RETURN expression SEMICOLON { printf("Return statement is valid\n"); }

print_statement: PRINT ROUND_OPEN expression ROUND_CLOSE SEMICOLON { printf("Print statement is valid\n"); }

scan_statement: SCAN ROUND_OPEN ID ROUND_CLOSE SEMICOLON { printf("Scan statement is valid\n"); }

rand_int_statement: RAND_INT ROUND_OPEN ID ROUND_CLOSE SEMICOLON { printf("Rand int statement is valid\n"); }




expression: term { printf("Expression is valid\n"); }
	  

term: term PLUS factor { printf("Term is valid\n"); }
	| term MINUS factor { printf("Term is valid\n"); }
	| factor { printf("Term is valid\n"); }

factor: factor MULT primary { printf("Factor is valid\n"); }
	| factor DIV primary { printf("Factor is valid\n"); }
	| primary { printf("Factor is valid\n"); }

primary: ID { printf("Primary is valid\n"); }
	| NUM { printf("Primary is valid\n"); }
	| ROUND_OPEN expression ROUND_CLOSE { printf("Primary is valid\n"); }





%%

// C Code
int main(void){

	//yylval.type = malloc(1);
	//yylval.id = malloc(1);
	//yylval.str = malloci(1);
	//yylval.op = malloc(1);
	//yylval.kw = malloc(1);
	//yylval.num = 0;
	return yyparse();
}
