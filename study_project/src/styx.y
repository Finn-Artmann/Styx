%{
	// Header Code

	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include <time.h>

	#include "vars_interp.h"
	#include "ast.h"
	


	int yylex(void);

	extern FILE *yyin;
	extern int yy_flex_debug;
	extern int yylineno;
	void yyerror(const char *msg){
		fprintf(stderr, "%s\n", msg);
		fprintf(stderr, "Error at line %d\n", yylineno);
	}
	const char ** token_table;
	
	
%}

%define parse.lac full
%define parse.error verbose
%token-table

// Definitions



%union{
	char* str;
	char chr;
	int num;
	double real;
	struct astnode* ast;
}

// Keywords
%token IF
%token ELSE
%token FOR
%token RETURN
%token PRINT
%token SCAN
%token RAND_INT
%token GLOBAL
%token SYSTEM
%token <str>MAIN


// Operators
%token PLUS
%token MINUS
%token MULT
%token DIV
%token MOD
%token LE
%token GE
%token EQ
%token NE
%token GT
%token LT
%token AND
%token OR
%token ASSIGN

// Special
%token SEMICOLON
%token COMMA
%token ROUND_OPEN
%token ROUND_CLOSE
%token CURLY_OPEN
%token CURLY_CLOSE


%token <str> STR ID OP 
%token <chr> CHR
%token <num> NUM TYPE
%token <real> REAL
%start start

%type <ast> start program functions function function_call arguments parameters parameter 
%type <ast> main body statements statement declaration 
%type <ast> global_declaration assignment expression if_statement for_statement return_statement 
%type <ast> print_statement scan_statement rand_int_statement term factor

// Other Grammar tokens
%token PROGRAM STATEMENTS STATEMENT DECLARATIONS GLOBAL_DECLARATIONS FUNCTIONS PARAMETERS
%token BODY ASSIGNMENT EXPR_TERM EXPR_FUNCTION_CALL EXPR_PLUS EXPR_MINUS EXPR_LE EXPR_GE
%token EXPR_LT EXPR_GT EXPR_EQ EXPR_NE EXPR_AND EXPR_OR TERM_FACTOR TERM_MUL TERM_DIV
%token TERM_MOD FACTOR_ID FACTOR_NUM FACTOR_REAL FACTOR_PARENTHESIS FACTOR_FUNCTION_CALL
%token FACTOR_RAND IFELSE PRINT_STR DECLARATION GLOBAL_DECLARATION FUNCTION_CALL PARAMETER
%token FUNCTION ARG_EXPR ARGS_EXPR DECLARATION_ASSIGN FACTOR_STRING FACTOR_CHAR PRINT_WIDTH
%token SYSTEM_CALL STATEMENT_BLOCK GLOBAL_DECLARATION_ASSIGN


%%
 

// Rules and Actions

start: program { print_ast($1, 0); printf("\n"); exec_ast($1);} //TODO: Execute AST


program: functions main {
       		printf(">>> [SŦYX parser]: Program syntax is valid\n");
                 
                $$ = new_astnode(PROGRAM);
				$$->name = "PROGRAM";
                $$->child[0] = $1;
                $$->child[1] = $2;

	} 
	| main {
		printf(">>> [SŦYX parser] Program syntax is valid\n");
		
		$$ = new_astnode(PROGRAM);
		$$->name = "PROGRAM";
		$$->child[0] = $1;
	}

functions: function { $$ = new_astnode(FUNCTIONS); $$->name = "FUNCTIONS"; $$->child[0] = $1; }
	 | functions function { $$ = new_astnode(FUNCTIONS); $$->name = "FUNCTIONS"; $$->child[0] = $1; $$->child[1] = $2; }

function: TYPE ID ROUND_OPEN parameters ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE 
	{ 
		$$ = new_astnode(FUNCTION);
		$$->name = "FUNCTION";
		$$->child[0] = $4;
		$$->child[1] = $7;
		$$->val.str = $2;
		$$->data_type = $1;

	}

parameters: parameter { $$ = new_astnode(PARAMETERS); $$->name = "PARAMETERS"; $$->child[0] = $1; }
	 | parameters COMMA parameter { $$ = new_astnode(PARAMETERS); $$->name = "PARAMETERS"; $$->child[0] = $1; $$->child[1] = $3; }
	 | %empty { $$ = NULL; }

parameter: TYPE ID { $$ = new_astnode(PARAMETER); $$->name = "PARAMETER"; $$->val.str = $2; $$->data_type = AST_ID_T; }


main: TYPE MAIN ROUND_OPEN ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE
    {	
	if($1 != AST_INT_T){
		printf("Error: Main function must return ı’Ŧ and must have identifier ºÆı’\n");
		printf("Found: TYPE: %d \n", $1);
		exit(1);
	}
	
	
	$$ = new_astnode(MAIN);
	$$->name = "MAIN";
	$$->val.str = $2;
	$$->data_type = AST_ID_T;
	$$->child[0] = $6;
    }

body: statements { $$ = new_astnode(BODY); $$->name = "BODY"; $$->child[0] = $1; }
    | %empty { $$ = NULL; }



global_declaration: GLOBAL TYPE ID SEMICOLON { $$ = new_astnode(GLOBAL_DECLARATION); $$->name = "GLOBAL_DECLARATION"; $$->val.str = $3; $$->data_type = $2; }
		| GLOBAL TYPE ID ASSIGN expression SEMICOLON { $$ = new_astnode(GLOBAL_DECLARATION_ASSIGN); $$->name = "GLOBAL_DECLARATION_ASSIGN"; $$->val.str = $3; $$->data_type = $2; $$->child[0] = $5; }


declaration: TYPE ID SEMICOLON { $$ = new_astnode(DECLARATION); $$->name = "DECLARATION"; $$->val.str = $2; $$->data_type = $1; }
		| TYPE ID ASSIGN expression SEMICOLON { $$ = new_astnode(DECLARATION_ASSIGN); $$->name = "DECLARATION_ASSIGN"; $$->val.str = $2; $$->data_type = $1; $$->child[0] = $4; }

statements: statement { $$ = new_astnode(STATEMENTS); $$->name = "STATEMENTS"; $$->child[0] = $1; }
	  | statements statement { $$ = new_astnode(STATEMENTS); $$->name = "STATEMENTS"; $$->child[0] = $1; $$->child[1] = $2; }

statement: assignment SEMICOLON { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 | if_statement { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 | for_statement { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 | return_statement { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 | print_statement { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 | scan_statement { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 | rand_int_statement { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 | CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode(STATEMENT_BLOCK); $$->name = "STATEMENT_BLOCK"; $$->child[0] = $2; }
	 | expression SEMICOLON { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 | declaration { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 | global_declaration { $$ = new_astnode(STATEMENT); $$->name = "STATEMENT"; $$->child[0] = $1; }
	 

assignment: ID ASSIGN expression { $$ = new_astnode(ASSIGNMENT); $$->name = "ASSIGNMENT"; $$->val.str = $1; $$->data_type = AST_ID_T; $$->child[0] = $3; }

if_statement: IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode(IF); $$->name = "IF"; $$->child[0] = $3; $$->child[1] = $6; }
	    | IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE ELSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode(IFELSE); $$->name = "IFELSE"; $$->child[0] = $3; $$->child[1] = $6; $$->child[2] = $10; }
	    

for_statement: FOR ROUND_OPEN declaration expression SEMICOLON assignment ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode(FOR); $$->name = "FOR"; $$->child[0] = $3; $$->child[1] = $4; $$->child[2] = $6; $$->child[3] = $9; }

return_statement: RETURN expression SEMICOLON { $$ = new_astnode(RETURN); $$->name = "RETURN"; $$->child[0] = $2; }

print_statement: PRINT ROUND_OPEN expression ROUND_CLOSE SEMICOLON { $$ = new_astnode(PRINT); $$->name = "PRINT"; $$->child[0] = $3; }
				| PRINT ROUND_OPEN expression COMMA expression ROUND_CLOSE SEMICOLON { $$ = new_astnode(PRINT_WIDTH); $$->name = "PRINT_WIDTH"; $$->child[0] = $3; $$->child[1] = $5; }

scan_statement: SCAN ROUND_OPEN TYPE ROUND_CLOSE ROUND_OPEN ID ROUND_CLOSE SEMICOLON { $$ = new_astnode(SCAN); $$->name = "SCAN"; $$->val.str = $6; $$->data_type = $3; }

rand_int_statement: RAND_INT ROUND_OPEN ID ROUND_CLOSE SEMICOLON { $$ = new_astnode(RAND_INT); $$->name = "RAND_INT";  $$->val.str = $3; $$->data_type = AST_ID_T; }

function_call: ID ROUND_OPEN arguments ROUND_CLOSE { $$ = new_astnode(FUNCTION_CALL); $$->name = "FUNCTION_CALL";  $$->val.str = $1; $$->data_type = AST_ID_T; $$->child[0] = $3; }
			| SYSTEM ROUND_OPEN STR ROUND_CLOSE { $$ = new_astnode(SYSTEM_CALL); $$->name = "SYSTEM_CALL";  $$->data_type = AST_INT_T; $$->val.str = $3; }

arguments: expression { $$ = new_astnode(ARG_EXPR); $$->name = "ARG_EXPR";  $$->child[0] = $1; }
	 | arguments COMMA expression { $$ = new_astnode(ARGS_EXPR); $$->name = "ARGS_EXPR"; $$->child[0] = $1; $$->child[1] = $3; }
	 | %empty { $$ = NULL; }

expression: term { $$ = new_astnode(EXPR_TERM); $$->name = "EXPR_TERM"; $$->child[0] = $1; $$->data_type = $$->child[0]->data_type; }
	| expression PLUS term { $$ = new_astnode(EXPR_PLUS); $$->name = "EXPR_PLUS"; $$->child[0] = $1; $$->child[1] = $3; }
	| expression MINUS term { $$ = new_astnode(EXPR_MINUS); $$->name = "EXPR_MINUS";  $$->child[0] = $1; $$->child[1] = $3; }
	| expression LE term { $$ = new_astnode(EXPR_LE); $$->name = "EXPR_LE"; $$->child[0] = $1; $$->child[1] = $3; }
	| expression GE term { $$ = new_astnode(EXPR_GE); $$->name = "EXPR_GE"; $$->child[0] = $1; $$->child[1] = $3; }
	| expression EQ term { $$ = new_astnode(EXPR_EQ); $$->name = "EXPR_EQ"; $$->child[0] = $1; $$->child[1] = $3; }
	| expression NE term { $$ = new_astnode(EXPR_NE); $$->name = "EXPR_NE"; $$->child[0] = $1; $$->child[1] = $3; }
	| expression GT term { $$ = new_astnode(EXPR_GT); $$->name = "EXPR_GT"; $$->child[0] = $1; $$->child[1] = $3; }
	| expression LT term { $$ = new_astnode(EXPR_LT); $$->name = "EXPR_LT"; $$->child[0] = $1; $$->child[1] = $3; }
	| expression AND term { $$ = new_astnode(EXPR_AND); $$->name = "EXPR_AND"; $$->child[0] = $1; $$->child[1] = $3; }
	| expression OR term { $$ = new_astnode(EXPR_OR); $$->name = "EXPR_OR"; $$->child[0] = $1; $$->child[1] = $3; }
	  

term: factor { $$ = new_astnode(TERM_FACTOR); $$->name = "TERM_FACTOR"; $$->child[0] = $1; $$->data_type = $$->child[0]->data_type; }
	| term MULT factor { $$ = new_astnode(TERM_MUL); $$->name = "TERM_MUL"; $$->child[0] = $1; $$->child[1] = $3; $$->val.str = "*"; $$->data_type = AST_STR_T; }
	| term DIV factor { $$ = new_astnode(TERM_DIV); $$->name = "TERM_DIV"; $$->child[0] = $1; $$->child[1] = $3; $$->val.str = "/"; $$->data_type = AST_STR_T; }
	| term MOD factor { $$ = new_astnode(TERM_MOD); $$->name = "TERM_MOD"; $$->child[0] = $1; $$->child[1] = $3; $$->val.str = "%"; $$->data_type = AST_STR_T; }

factor: ID { $$ = new_astnode(FACTOR_ID); $$->name = "FACTOR_ID"; $$->val.str = $1; $$->data_type = AST_INT_T; }
    | NUM { $$ = new_astnode(FACTOR_NUM); $$->name = "FACTOR_NUM"; $$->val.num = $1; $$->data_type = AST_INT_T; }
	| REAL { $$ = new_astnode(FACTOR_REAL); $$->name = "FACTOR_REAL"; $$->val.real = $1; $$->data_type = AST_DOUBLE_T; }
	| STR { $$ = new_astnode(FACTOR_STRING); $$->name = "FACTOR_STRING"; $$->val.str = $1; $$->data_type = AST_STR_T; }
	| CHR { $$ = new_astnode(FACTOR_CHAR); $$->name = "FACTOR_CHAR"; $$->val.chr = $1; $$->data_type = AST_CHAR_T; }
	| function_call { $$ = new_astnode(FACTOR_FUNCTION_CALL); $$->name = "FACTOR_FUNCTION_CALL"; $$->child[0] = $1; }
	| ROUND_OPEN expression ROUND_CLOSE { $$ = new_astnode(FACTOR_PARENTHESIS); $$->name = "FACTOR_PARENTHESIS"; $$->child[0] = $2; $$->val.str = "(expr)"; $$->data_type = AST_STR_T; }
	| RAND_INT ROUND_OPEN NUM ROUND_CLOSE { $$ = new_astnode(FACTOR_RAND); $$->name = "FACTOR_RAND"; $$->val.num = $3; $$->data_type = AST_INT_T; }



%%

// C Code
const char* token_name(int t) {
    return yysymbol_name(YYTRANSLATE(t));
}


int main(int arc, char **argv)
{
    yy_flex_debug = 0;
    yydebug = 0;
	token_table = yytname;
    yyin = fopen(argv[1], "r");
    return yyparse();
}
