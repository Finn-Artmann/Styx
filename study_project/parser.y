%{
	// Header Code

	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include <time.h>
	#include "vars_interp.h"

	int yylex(void);

	extern FILE *yyin;
	extern int yy_flex_debug;
	extern int yylineno;
	void yyerror(const char *msg){
		fprintf(stderr, "%s\n", msg);
		fprintf(stderr, "Error at line %d\n", yylineno);
	}


	// Abstract Syntax Tree Node
	#define MAXCHILDREN 5

	int astNodeCount = 0;

	enum {
		AST_NONE_T = 10000,
		AST_NUM_T,
		AST_ID_T,
		AST_STR_T
	};

	struct astnode {
		int id;
		char* name;
		int type;
		union{
			int num;
			char *str;

		} val;
		struct astnode* child[MAXCHILDREN];
	};
	typedef struct astnode astnode_t;
	int execute_ast(astnode_t* root);

	// Allocate new node of given type
	astnode_t* new_astnode(const char* name){
		astnode_t* node = calloc(sizeof *node, 1);
		node->id = astNodeCount++;
		node->name = strdup(name);
		node->type = AST_NONE_T;

		for(int i = 0; i < MAXCHILDREN; i++){
			node->child[i] = NULL;
		}

		return node;
	}

	

	void print_ast_console(astnode_t* root){
		printf("AST Node %d: %s\n", root->id, root->name);
		for(int i = 0; i < MAXCHILDREN; i++){
			if(root->child[i] != NULL){
				print_ast_console(root->child[i]);
			}
		}
		printf(") ");
	}


	// node2str funciton required for printing AST
	char* node2str(astnode_t* node){
		char* str = malloc(100);
		if(node->type == AST_NUM_T){
			sprintf(
				str, 
				"id: %d\n %s\n NUM: %d",
				node->id,
				node->name,
				node->val.num
			);
		}
		else if(node->type == AST_ID_T){
			sprintf(
				str, 
				"id: %d\n %s\n ID: %s",
				node->id,
				node->name,
				node->val.str
			);
		}
		else if(node->type == AST_STR_T){
			sprintf(
				str, 
				"id: %d\n %s\n STR: %s",
				node->id,
				node->name,
				node->val.str
			);
		}
		else{
			sprintf(
				str, 
				"id: %d\n %s",
				node->id,
				node->name
			);
		}
		return str;
	}

	// GraphViz visualization
	void print_ast(astnode_t* root, int depth){

		static FILE* dot;
		if(depth == 0){
			dot = fopen("ast.gv", "w");
			fprintf(dot, "digraph ast {\n");
		}

		// Create graph node
		fprintf(dot, "n%d [label=\"%s\"];\n", root->id, node2str(root));
		for(int i = 0; i < MAXCHILDREN; i++){
			if(root->child[i]){
				fprintf(dot, "n%d -> n%d;\n", root->id, root->child[i]->id);
				print_ast(root->child[i], depth + 1);
			}
		}
		if(depth == 0){
			fprintf(dot, "}\n");
			fclose(dot);
		}
	}

	// Global list for pairs of function names and pointers into the AST
	struct funclist {
		char* name;
		astnode_t* node;
		struct funclist* next;
	};
	struct funclist* funclist = NULL;
	
	// Add function to list
	void add_function(char* name, astnode_t* node){
		struct funclist* new = malloc(sizeof *new);
		new->name = strdup(name);
		new->node = node;
		new->next = funclist;
		funclist = new;
	}

	// Find function in list
	astnode_t* find_function(char* name){
		struct funclist* current = funclist;
		while(current){
			if(strcmp(current->name, name) == 0){
				return current->node;
			}
			current = current->next;
		}
		return NULL;
	}

	// Execute AST 
	int exec_ast(astnode_t* root){
		//printf("Executing AST Node %d: %s\n", root->id, root->name);
		if(	strcmp(root->name, "Program") == 0 ||
			strcmp(root->name, "Main") == 0 ||
			strcmp(root->name, "Statements") == 0 ||
			strcmp(root->name, "Statement") == 0 ||
			strcmp(root->name, "Declarations") == 0 ||
			strcmp(root->name, "GlobalDeclarations") == 0 ||
			strcmp(root->name, "Functions") == 0

		){
			for(int i = 0; i < MAXCHILDREN; i++){
				if(root->child[i] != NULL){
					exec_ast(root->child[i]);
				}
			}
		}
		else if(strcmp(root->name, "Body") == 0){
			var_enter_block();
			for(int i = 0; i < MAXCHILDREN; i++){
				if(root->child[i] != NULL){
					exec_ast(root->child[i]);
				}
			}
			var_leave_block();
		}
		else if(strcmp(root->name, "Assignment") == 0){
			int val = exec_ast(root->child[0]);
			var_set(root->val.str, val);
		}
		else if(strcmp(root->name, "ExpressionTerm") == 0){
			return exec_ast(root->child[0]);
		}
		else if(strcmp(root->name, "ExpressionPlus") == 0){
			return exec_ast(root->child[0]) + exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "ExpressionMinus") == 0){
			return exec_ast(root->child[0]) - exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "ExpressionLE") == 0){
			return exec_ast(root->child[0]) <= exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "ExpressionGE") == 0){
			return exec_ast(root->child[0]) >= exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "ExpressionLT") == 0){
			return exec_ast(root->child[0]) < exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "ExpressionGT") == 0){
			return exec_ast(root->child[0]) > exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "ExpressionEQ") == 0){
			return exec_ast(root->child[0]) == exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "ExpressionNE") == 0){
			return exec_ast(root->child[0]) != exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "ExpressionAnd") == 0){
			return exec_ast(root->child[0]) && exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "ExpressionOr") == 0){
			return exec_ast(root->child[0]) || exec_ast(root->child[1]);
		}
		else if(strcmp(root->name, "TermFactor") == 0){	
			
			return exec_ast(root->child[0]);
		}
		else if(strcmp(root->name, "TermMult") == 0	||
			strcmp(root->name, "TermDiv") == 0	||
			strcmp(root->name, "TermMod") == 0	
		){
			        
				int val1 = exec_ast(root->child[0]);
				int val2 = exec_ast(root->child[1]);
				if(strcmp(root->val.str, "*") == 0){
					return val1 * val2;
				}
				else if(strcmp(root->val.str, "/") == 0){
					return val1 / val2;
				}
				else if(strcmp(root->val.str, "%") == 0){
					return val1 % val2;
				}
		}
		else if(strcmp(root->name, "FactorID") == 0){
			return var_get(root->val.str);
		}
		else if(strcmp(root->name, "FactorNUM") == 0){
			return root->val.num;
		}
		else if(strcmp(root->name, "(Factor)") == 0){
			return exec_ast(root->child[0]);
		}
		else if(strcmp(root->name, "FactorRAND") == 0){
			srand(time(NULL));
			return rand() % (root->val.num);
		}
		else if(strcmp(root->name, "If") == 0){
			if(exec_ast(root->child[0])){ exec_ast(root->child[1]); }
		}
		else if(strcmp(root->name, "IfElse") == 0){
			if(exec_ast(root->child[0])){ exec_ast(root->child[1]); }
			else{ exec_ast(root->child[2]); }
		}
		else if(strcmp(root->name, "Print") == 0){
			int val = exec_ast(root->child[0]);
			printf("%d", val);
		}
		else if(strcmp(root->name, "PrintStr") == 0){
			printf("%s", root->val.str);
		}
		else if(strcmp(root->name, "Scan")  == 0){
			
			// Read int from stdin using fgets
			char buf[100];
			printf("<< ");
			char* s = fgets(buf, 100, stdin);
			if(s == NULL){
				printf("EOF\n");
				exit(1);
			}
			var_set(root->val.str, atoi(buf));
		}
		else if(strcmp(root->name, "For") == 0){
			// TODO: Add assignment/declaration in for loop

			for(; exec_ast(root->child[0]); exec_ast(root->child[1])){
				exec_ast(root->child[2]);
			}
		}
		else if(strcmp(root->name, "Declaration") == 0){
			var_declare(root->val.str, 0);
		}
		else if(strcmp(root->name, "GlobalDeclaration") == 0){
			var_declare_global(root->val.str, 0);
		}
		else if(strcmp(root->name, "Return") == 0){
			// return from current function
			// TODO: THIS IS NOT WORKING
			return exec_ast(root->child[0]);


		}
		else if(strcmp(root->name, "FunctionCall") == 0){
			astnode_t* func = find_function(root->val.str);
			if(func == NULL){
				printf("Function %s not found\n", root->val.str);
				exit(1);
			}
			else{
				var_enter_func();
				exec_ast(func->child[1]); // Execute function body
				var_leave_func();
			}
		}
		else if(strcmp(root->name, "Function") == 0){
			// Function definition
			// TODO: Add function arguments
			// Nothing more to do here since we already added the function to the list
		}
		else{
			printf("Error: Unknown node %s\n", root->name);
		}
		
		// Default return value
		return 0;
	}	
%}

%define parse.lac full
%define parse.error verbose

// Definitions



%union{
	char* str;
	int num;
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

// Special
%token SEMICOLON
%token COMMA
%token ROUND_OPEN
%token ROUND_CLOSE
%token CURLY_OPEN
%token CURLY_CLOSE



%token <str> STR TYPE ID OP 
%token <num> NUM
%start start

%type <ast> start program functions function function_call arguments parameters parameter main body statements statement declarations declaration global_declarations global_declaration assignment expression if_statement for_statement return_statement print_statement scan_statement rand_int_statement term factor


%%
 

// Rules and Actions

start: program { print_ast($1, 0); printf("\n"); exec_ast($1);} //TODO: Execute AST



program: global_declarations functions main {
       		printf(">>> [SŦYX parser]: Program syntax is valid\n");
                 
                $$ = new_astnode("Program");
                $$->child[0] = $1;
                $$->child[1] = $2;
		$$->child[2] = $3;

	} 
        |functions main {
		printf(">>> [SŦYX parser]: Program syntax is valid\n");
		
		$$ = new_astnode("Program");
		$$->child[0] = $1;
		$$->child[1] = $2;
	}
	| main {
		printf(">>> [SŦYX parser] Program syntax is valid\n");
		
		$$ = new_astnode("Program");
		$$->child[0] = $1;
	}

functions: function { $$ = new_astnode("Functions"); $$->child[0] = $1; }
	 | functions function { $$ = new_astnode("Functions"); $$->child[0] = $1; $$->child[1] = $2; }

function: TYPE ID ROUND_OPEN parameters ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE 
	{ 
		$$ = new_astnode("Function");
		$$->child[0] = $4; 
		$$->child[1] = $7; 
		$$->val.str = $2; 
		$$->type= AST_ID_T;
		add_function($2, $$);
	}

parameters: parameter { $$ = new_astnode("Parameters"); $$->child[0] = $1; }
	 | parameters COMMA parameter { $$ = new_astnode("Parameters"); $$->child[0] = $1; $$->child[1] = $3; }
	 | { $$ = new_astnode("Parameters"); }

parameter: TYPE ID { $$ = new_astnode("Parameter"); $$->val.str = $2; $$->type = AST_ID_T; }


main: TYPE MAIN ROUND_OPEN ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE
    {	
	if(strcmp($1, "ı’Ŧ") != 0){
		printf("Error: Main function must return ı’Ŧ and must have identifier ºÆı’\n");
		printf("Found: TYPE: %s \n", $1);
		exit(1);
	}
	
	
	$$ = new_astnode("Main");
	$$->val.str = $2;
	$$->type = AST_ID_T;
	$$->child[0] = $6;
    }

body: statements { $$ = new_astnode("Body"); $$->child[0] = $1; }
    | declarations statements { $$ = new_astnode("Body"); $$->child[0] = $1; $$->child[1] = $2; }
    | declarations { $$ = new_astnode("Body"); $$->child[0] = $1; }
    | { $$ = new_astnode("Body"); }

global_declarations: global_declaration { $$ = new_astnode("GlobalDeclarations"); $$->child[0] = $1; }
	 | global_declarations global_declaration { $$ = new_astnode("GlobalDeclarations"); $$->child[0] = $1; $$->child[1] = $2; }

global_declaration: GLOBAL TYPE ID SEMICOLON { $$ = new_astnode("GlobalDeclaration"); $$->val.str = $3; $$->type = AST_ID_T; }

declarations: declaration { $$ = new_astnode("Declarations"); $$->child[0] = $1; }
	    | declarations declaration { $$ = new_astnode("Declarations"); $$->child[0] = $1; $$->child[1] = $2; }

declaration: TYPE ID SEMICOLON { $$ = new_astnode("Declaration"); $$->val.str = $2; $$->type = AST_ID_T; }

statements: statement { $$ = new_astnode("Statements"); $$->child[0] = $1; }
	  | statements statement { $$ = new_astnode("Statements"); $$->child[0] = $1; $$->child[1] = $2; }

statement: assignment { $$ = new_astnode("Statement"); $$->child[0] = $1; }
	 | if_statement { $$ = new_astnode("Statement"); $$->child[0] = $1; }
	 | for_statement { $$ = new_astnode("Statement"); $$->child[0] = $1; }
	 | return_statement { $$ = new_astnode("Statement"); $$->child[0] = $1; }
	 | print_statement { $$ = new_astnode("Statement"); $$->child[0] = $1; }
	 | scan_statement { $$ = new_astnode("Statement"); $$->child[0] = $1; }
	 | rand_int_statement { $$ = new_astnode("Statement"); $$->child[0] = $1; }
	 | function_call { $$ = new_astnode("Statement"); $$->child[0] = $1; }
	 | CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode("Statement"); $$->child[0] = $2; }


assignment: ID EQ expression SEMICOLON { $$ = new_astnode("Assignment"); $$->val.str = $1; $$->type = AST_ID_T; $$->child[0] = $3; }

if_statement: IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode("If"); $$->child[0] = $3; $$->child[1] = $6; }
	    | IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE ELSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode("IfElse"); $$->child[0] = $3; $$->child[1] = $6; $$->child[2] = $10; }
	    

for_statement: FOR ROUND_OPEN expression SEMICOLON assignment ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode("For"); $$->child[0] = $3; $$->child[1] = $5; $$->child[2] = $8; }

return_statement: RETURN expression SEMICOLON { $$ = new_astnode("Return"); $$->child[0] = $2; }

print_statement: PRINT ROUND_OPEN expression ROUND_CLOSE SEMICOLON { $$ = new_astnode("Print"); $$->child[0] = $3; }
		| PRINT ROUND_OPEN STR ROUND_CLOSE SEMICOLON { $$ = new_astnode("PrintStr"); $$->val.str = $3; $$->type = AST_STR_T; }

scan_statement: SCAN ROUND_OPEN ID ROUND_CLOSE SEMICOLON { $$ = new_astnode("Scan"); $$->val.str = $3; $$->type = AST_ID_T; }

rand_int_statement: RAND_INT ROUND_OPEN ID ROUND_CLOSE SEMICOLON { $$ = new_astnode("RandInt"); $$->val.str = $3; $$->type = AST_ID_T; }

function_call: ID ROUND_OPEN ROUND_CLOSE SEMICOLON { $$ = new_astnode("FunctionCall"); $$->val.str = $1; $$->type = AST_ID_T; }
	     | ID ROUND_OPEN arguments ROUND_CLOSE SEMICOLON { $$ = new_astnode("FunctionCall"); $$->val.str = $1; $$->type = AST_ID_T; $$->child[0] = $3; }

arguments: expression { $$ = new_astnode("Arguments"); $$->child[0] = $1; }
	 | arguments COMMA expression { $$ = new_astnode("Arguments"); $$->child[0] = $1; $$->child[1] = $3; }

expression: term { $$ = new_astnode("ExpressionTerm"); $$->child[0] = $1; }
	| expression PLUS term { $$ = new_astnode("ExpressionPlus"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression MINUS term { $$ = new_astnode("ExpressionMinus"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression LE term { $$ = new_astnode("ExpressionLE"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression GE term { $$ = new_astnode("ExpressionGE"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression EQ term { $$ = new_astnode("ExpressionEQ"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression NE term { $$ = new_astnode("ExpressionNE"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression GT term { $$ = new_astnode("ExpressionGT"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression LT term { $$ = new_astnode("ExpressionLT"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression AND term { $$ = new_astnode("ExpressionAND"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression OR term { $$ = new_astnode("ExpressionOR"); $$->child[0] = $1; $$->child[1] = $3; }
	  

term: factor { $$ = new_astnode("TermFactor"); $$->child[0] = $1; }
	| term MULT factor { $$ = new_astnode("TermMult"); $$->child[0] = $1; $$->child[1] = $3; $$->val.str = "*"; $$->type = AST_STR_T; }
	| term DIV factor { $$ = new_astnode("TermDiv"); $$->child[0] = $1; $$->child[1] = $3; $$->val.str = "/"; $$->type = AST_STR_T; }
	| term MOD factor { $$ = new_astnode("TermMod"); $$->child[0] = $1; $$->child[1] = $3; $$->val.str = "%"; $$->type = AST_STR_T; }

factor: ID { $$ = new_astnode("FactorID"); $$->val.str = $1; $$->type = AST_ID_T; }
      	| NUM { $$ = new_astnode("FactorNUM"); $$->val.num = $1; $$->type = AST_NUM_T; }
	| ROUND_OPEN expression ROUND_CLOSE { $$ = new_astnode("(Factor)"); $$->child[0] = $2; $$->val.str = "(expr)"; $$->type = AST_STR_T; }
	| RAND_INT ROUND_OPEN NUM ROUND_CLOSE { $$ = new_astnode("FactorRAND"); $$->val.num = $3; $$->type = AST_NUM_T; }



%%

// C Code
int main(int arc, char** argv){
	yy_flex_debug = 0;
	yyin = fopen(argv[1], "r");
	return yyparse();
}
