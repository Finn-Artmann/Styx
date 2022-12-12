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

body: statements
    | declarations statements
	{
		printf("Body is valid\n");
	}

declarations: declaration
	    | declarations declaration

declaration: TYPE ID SEMICOLON
	{
		printf("Declaration is valid\n");
	}

statements: statement
	  | statements statement

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
		| PRINT ROUND_OPEN STR ROUND_CLOSE SEMICOLON { printf("Print statement is valid\n"); }

scan_statement: SCAN ROUND_OPEN ID ROUND_CLOSE SEMICOLON { printf("Scan statement is valid\n"); }

rand_int_statement: RAND_INT ROUND_OPEN ID ROUND_CLOSE SEMICOLON { printf("Rand int statement is valid\n"); }




expression: term { printf("Expression is valid\n"); }
	| expression PLUS term { printf("Expression is valid\n"); }
	| expression MINUS term { printf("Expression is valid\n"); }
	| expression LE term { printf("Expression is valid\n"); }
	| expression GE term { printf("Expression is valid\n"); }
	| expression EQ term { printf("Expression is valid\n"); }
	| expression NE term { printf("Expression is valid\n"); }
	| expression GT term { printf("Expression is valid\n"); }
	| expression LT term { printf("Expression is valid\n"); }
	| expression AND term { printf("Expression is valid\n"); }
	| expression OR term { printf("Expression is valid\n"); }	
	  

term: factor { printf("Term is valid\n"); }
	| term MULT factor { printf("Term is valid\n"); }
	| term DIV factor { printf("Term is valid\n"); }

factor: ID { printf("Factor is valid\n"); }
      	| NUM { printf("Factor is valid\n"); }
	| ROUND_OPEN expression ROUND_CLOSE { printf("Factor is valid\n"); }
	| RAND_INT ROUND_OPEN NUM ROUND_CLOSE { printf("Factor is valid\n"); }



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
