%{
	// Header Code

	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>

	int yylex(void);
	void yyerror(const char *msg){
		fprintf(stderr, "%s\n", msg);
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
			sprintf(str, "NUM: %d", node->val.num);
		}
		else if(node->type == AST_ID_T){
			sprintf(str, "ID: %s", node->val.str);
		}
		else if(node->type == AST_STR_T){
			sprintf(str, "STR: %s", node->val.str);
		}
		else{
			sprintf(str, "%s", node->name);
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
%}

%define parse.lac full
%define parse.error verbose

// Definitions



%union{
	char* type;
	char* id;
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
%token <str>MAIN


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
%token COMMA
%token ROUND_OPEN
%token ROUND_CLOSE
%token CURLY_OPEN
%token CURLY_CLOSE



%token <str> STR TYPE ID OP 
%token <num> NUM
%start start

%type <ast> start program functions function parameters parameter main body statements statement declarations declaration assignment expression if_statement for_statement return_statement print_statement scan_statement rand_int_statement term factor


%%
 

// Rules and Actions

start: program {print_ast($1, 0); printf("\n");} //TODO: Execute AST



program: functions main {
		printf("Program is valid\n");
		
		$$ = new_astnode("Program");
		$$->child[0] = $1;
	}
	| main {
		printf("Program is valid\n");
		
		$$ = new_astnode("Program");
		$$->child[0] = $1;
	}

functions: function { $$ = new_astnode("Functions"); $$->child[0] = $1; }
	 | functions function { $$ = new_astnode("Functions"); $$->child[0] = $1; $$->child[1] = $2; }

function: TYPE ID ROUND_OPEN parameters ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode("Function"); $$->child[0] = $4; $$->child[1] = $7; $$->val.str = $2; $$->type= AST_ID_T;}

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
	 | CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode("Statement"); $$->child[0] = $2; }


assignment: ID EQ expression SEMICOLON { $$ = new_astnode("Assignment"); $$->val.str = $1; $$->type = AST_ID_T; $$->child[0] = $3; }

if_statement: IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode("If"); $$->child[0] = $3; $$->child[1] = $6; }
	    | IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE ELSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode("If"); $$->child[0] = $3; $$->child[1] = $6; $$->child[2] = $10; }
	    

for_statement: FOR ROUND_OPEN assignment expression SEMICOLON assignment ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE { $$ = new_astnode("For"); $$->child[0] = $3; $$->child[1] = $4; $$->child[2] = $6; $$->child[3] = $9; }

return_statement: RETURN expression SEMICOLON { $$ = new_astnode("Return"); $$->child[0] = $2; }

print_statement: PRINT ROUND_OPEN expression ROUND_CLOSE SEMICOLON { $$ = new_astnode("Print"); $$->child[0] = $3; }
		| PRINT ROUND_OPEN STR ROUND_CLOSE SEMICOLON { $$ = new_astnode("Print"); $$->val.str = $3; $$->type = AST_STR_T; }

scan_statement: SCAN ROUND_OPEN ID ROUND_CLOSE SEMICOLON { $$ = new_astnode("Scan"); $$->val.str = $3; $$->type = AST_ID_T; }

rand_int_statement: RAND_INT ROUND_OPEN ID ROUND_CLOSE SEMICOLON { $$ = new_astnode("RandInt"); $$->val.str = $3; $$->type = AST_ID_T; }




expression: term { $$ = new_astnode("Expression"); $$->child[0] = $1; }
	| expression PLUS term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression MINUS term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression LE term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression GE term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression EQ term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression NE term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression GT term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression LT term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression AND term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	| expression OR term { $$ = new_astnode("Expression"); $$->child[0] = $1; $$->child[1] = $3; }
	  

term: factor { $$ = new_astnode("Term"); $$->child[0] = $1; }
	| term MULT factor { $$ = new_astnode("Term"); $$->child[0] = $1; $$->child[1] = $3; }
	| term DIV factor { $$ = new_astnode("Term"); $$->child[0] = $1; $$->child[1] = $3; }

factor: ID { $$ = new_astnode("Factor"); $$->val.str = $1; $$->type = AST_ID_T; }
      	| NUM { $$ = new_astnode("Factor"); $$->val.num = $1; $$->type = AST_NUM_T; }
	| ROUND_OPEN expression ROUND_CLOSE { $$ = new_astnode("Factor"); $$->child[0] = $2; }
	| RAND_INT ROUND_OPEN NUM ROUND_CLOSE { $$ = new_astnode("Factor"); $$->val.num = $3; $$->type = AST_NUM_T; }



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
