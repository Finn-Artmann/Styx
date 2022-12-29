/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser.y"

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
				int val2 = exec_ast(root->child[2]);
				if(strcmp(root->child[1]->name, "*") == 0){
					return val1 * val2;
				}
				else if(strcmp(root->child[1]->name, "/") == 0){
					return val1 / val2;
				}
				else if(strcmp(root->child[1]->name, "%") == 0){
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

#line 406 "parser.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "parser.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_IF = 3,                         /* IF  */
  YYSYMBOL_ELSE = 4,                       /* ELSE  */
  YYSYMBOL_FOR = 5,                        /* FOR  */
  YYSYMBOL_RETURN = 6,                     /* RETURN  */
  YYSYMBOL_PRINT = 7,                      /* PRINT  */
  YYSYMBOL_SCAN = 8,                       /* SCAN  */
  YYSYMBOL_RAND_INT = 9,                   /* RAND_INT  */
  YYSYMBOL_GLOBAL = 10,                    /* GLOBAL  */
  YYSYMBOL_MAIN = 11,                      /* MAIN  */
  YYSYMBOL_PLUS = 12,                      /* PLUS  */
  YYSYMBOL_MINUS = 13,                     /* MINUS  */
  YYSYMBOL_MULT = 14,                      /* MULT  */
  YYSYMBOL_DIV = 15,                       /* DIV  */
  YYSYMBOL_MOD = 16,                       /* MOD  */
  YYSYMBOL_LE = 17,                        /* LE  */
  YYSYMBOL_GE = 18,                        /* GE  */
  YYSYMBOL_EQ = 19,                        /* EQ  */
  YYSYMBOL_NE = 20,                        /* NE  */
  YYSYMBOL_GT = 21,                        /* GT  */
  YYSYMBOL_LT = 22,                        /* LT  */
  YYSYMBOL_AND = 23,                       /* AND  */
  YYSYMBOL_OR = 24,                        /* OR  */
  YYSYMBOL_SEMICOLON = 25,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 26,                     /* COMMA  */
  YYSYMBOL_ROUND_OPEN = 27,                /* ROUND_OPEN  */
  YYSYMBOL_ROUND_CLOSE = 28,               /* ROUND_CLOSE  */
  YYSYMBOL_CURLY_OPEN = 29,                /* CURLY_OPEN  */
  YYSYMBOL_CURLY_CLOSE = 30,               /* CURLY_CLOSE  */
  YYSYMBOL_STR = 31,                       /* STR  */
  YYSYMBOL_TYPE = 32,                      /* TYPE  */
  YYSYMBOL_ID = 33,                        /* ID  */
  YYSYMBOL_OP = 34,                        /* OP  */
  YYSYMBOL_NUM = 35,                       /* NUM  */
  YYSYMBOL_YYACCEPT = 36,                  /* $accept  */
  YYSYMBOL_start = 37,                     /* start  */
  YYSYMBOL_program = 38,                   /* program  */
  YYSYMBOL_functions = 39,                 /* functions  */
  YYSYMBOL_function = 40,                  /* function  */
  YYSYMBOL_parameters = 41,                /* parameters  */
  YYSYMBOL_parameter = 42,                 /* parameter  */
  YYSYMBOL_main = 43,                      /* main  */
  YYSYMBOL_body = 44,                      /* body  */
  YYSYMBOL_global_declarations = 45,       /* global_declarations  */
  YYSYMBOL_global_declaration = 46,        /* global_declaration  */
  YYSYMBOL_declarations = 47,              /* declarations  */
  YYSYMBOL_declaration = 48,               /* declaration  */
  YYSYMBOL_statements = 49,                /* statements  */
  YYSYMBOL_statement = 50,                 /* statement  */
  YYSYMBOL_assignment = 51,                /* assignment  */
  YYSYMBOL_if_statement = 52,              /* if_statement  */
  YYSYMBOL_for_statement = 53,             /* for_statement  */
  YYSYMBOL_return_statement = 54,          /* return_statement  */
  YYSYMBOL_print_statement = 55,           /* print_statement  */
  YYSYMBOL_scan_statement = 56,            /* scan_statement  */
  YYSYMBOL_rand_int_statement = 57,        /* rand_int_statement  */
  YYSYMBOL_function_call = 58,             /* function_call  */
  YYSYMBOL_arguments = 59,                 /* arguments  */
  YYSYMBOL_expression = 60,                /* expression  */
  YYSYMBOL_term = 61,                      /* term  */
  YYSYMBOL_factor = 62                     /* factor  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if 1

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
# define YYCOPY_NEEDED 1
#endif /* 1 */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  13
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   217

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  36
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  27
/* YYNRULES -- Number of rules.  */
#define YYNRULES  66
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  151

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   290


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   398,   398,   402,   411,   418,   425,   426,   428,   438,
     439,   440,   442,   445,   460,   461,   462,   463,   465,   466,
     468,   470,   471,   473,   475,   476,   478,   479,   480,   481,
     482,   483,   484,   485,   486,   489,   491,   492,   495,   497,
     499,   500,   502,   504,   506,   507,   509,   510,   512,   513,
     514,   515,   516,   517,   518,   519,   520,   521,   522,   525,
     526,   527,   528,   530,   531,   532,   533
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if 1
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "IF", "ELSE", "FOR",
  "RETURN", "PRINT", "SCAN", "RAND_INT", "GLOBAL", "MAIN", "PLUS", "MINUS",
  "MULT", "DIV", "MOD", "LE", "GE", "EQ", "NE", "GT", "LT", "AND", "OR",
  "SEMICOLON", "COMMA", "ROUND_OPEN", "ROUND_CLOSE", "CURLY_OPEN",
  "CURLY_CLOSE", "STR", "TYPE", "ID", "OP", "NUM", "$accept", "start",
  "program", "functions", "function", "parameters", "parameter", "main",
  "body", "global_declarations", "global_declaration", "declarations",
  "declaration", "statements", "statement", "assignment", "if_statement",
  "for_statement", "return_statement", "print_statement", "scan_statement",
  "rand_int_statement", "function_call", "arguments", "expression", "term",
  "factor", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-56)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      25,   -13,    14,    28,   -56,    11,   -56,   -56,    30,   -56,
      16,    29,    49,   -56,   -56,   -56,    19,    11,   -56,    66,
      27,    78,   -56,   -56,    63,    91,    35,   -56,     0,   -56,
      78,    82,   110,   111,     4,   112,   124,   125,     0,   120,
      31,   142,     0,   -56,    15,   -56,   -56,   -56,   -56,   -56,
     -56,   -56,   -56,   -56,   -56,     0,     4,     4,   146,     4,
     -56,   -56,    95,    71,   -56,     3,   141,   143,   145,   152,
       4,    18,   -56,   -56,    15,   -56,   148,    47,   109,   144,
      60,     4,     4,     4,     4,     4,     4,     4,     4,     4,
       4,   -56,     4,     4,     4,   153,    77,   154,   155,   -56,
     -56,   123,   159,    97,   137,   -56,   151,   156,   157,   -56,
      71,    71,    71,    71,    71,    71,    71,    71,    71,    71,
     -56,   -56,   -56,   161,   162,   163,   165,   -56,   -56,     4,
     166,     0,   173,   167,   -56,   -56,   -56,   -56,   -56,   137,
     -56,   164,   168,   189,     0,   169,   170,     0,   -56,   171,
     -56
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,     0,     0,     2,     0,     6,     5,     0,    18,
       0,     0,     0,     1,     7,     4,     0,     0,    19,     0,
       0,    11,     3,    20,     0,     0,     0,     9,    17,    12,
       0,     0,     0,     0,     0,     0,     0,     0,    17,     0,
       0,     0,    16,    21,    14,    24,    26,    27,    28,    29,
      30,    31,    32,    33,    10,    17,     0,     0,     0,     0,
      63,    64,     0,    48,    59,     0,     0,     0,     0,     0,
       0,     0,    13,    22,    15,    25,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    39,     0,     0,     0,     0,     0,     0,     0,    34,
      23,     0,     0,     0,    46,     8,     0,     0,     0,    65,
      49,    50,    51,    52,    53,    54,    55,    56,    57,    58,
      60,    61,    62,     0,     0,     0,     0,    35,    44,     0,
       0,    17,     0,     0,    66,    41,    40,    42,    43,    47,
      45,     0,     0,    36,    17,     0,     0,    17,    38,     0,
      37
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -56,   -56,   -56,   188,     9,   -56,   172,    37,   -38,   -56,
     191,   -56,   174,   175,   -33,    96,   -56,   -56,   -56,   -56,
     -56,   -56,   -56,   -56,   -55,    81,    10
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,     3,     4,     5,     6,    26,    27,     7,    41,     8,
       9,    42,    43,    44,    45,    46,    47,    48,    49,    50,
      51,    52,    53,   103,    62,    63,    64
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      68,    77,    78,    32,    80,    33,    34,    35,    36,    37,
      96,    75,    58,    58,    14,   101,   104,    76,    32,    10,
      33,    34,    35,    36,    37,    11,    14,    58,    13,    38,
      59,    59,    39,    40,    95,     1,    60,    60,    61,    61,
       1,    75,    15,     2,    38,    59,   102,    12,    40,    19,
      70,    60,    12,    61,    22,    24,    20,     2,    71,    81,
      82,    30,    16,    31,    83,    84,    85,    86,    87,    88,
      89,    90,    81,    82,   139,   106,    21,    83,    84,    85,
      86,    87,    88,    89,    90,    92,    93,    94,   109,    81,
      82,    23,    28,   141,    83,    84,    85,    86,    87,    88,
      89,    90,   120,   121,   122,   124,   146,    81,    82,   149,
      25,    55,    83,    84,    85,    86,    87,    88,    89,    90,
      91,    81,    82,   129,    29,   130,    83,    84,    85,    86,
      87,    88,    89,    90,   107,    81,    82,    56,    57,    65,
      83,    84,    85,    86,    87,    88,    89,    90,   127,    81,
      82,    66,    67,    69,    83,    84,    85,    86,    87,    88,
      89,    90,   110,   111,   112,   113,   114,   115,   116,   117,
     118,   119,    72,    79,    97,    99,    98,   100,   105,   108,
     131,   123,   125,   126,   128,   134,   135,   136,   137,   132,
     138,   140,    70,   145,   143,   142,    17,   144,   147,    18,
     148,   150,    54,   133,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    73,    74
};

static const yytype_int16 yycheck[] =
{
      38,    56,    57,     3,    59,     5,     6,     7,     8,     9,
      65,    44,     9,     9,     5,    70,    71,    55,     3,    32,
       5,     6,     7,     8,     9,    11,    17,     9,     0,    29,
      27,    27,    32,    33,    31,    10,    33,    33,    35,    35,
      10,    74,     5,    32,    29,    27,    28,    33,    33,    33,
      19,    33,    33,    35,    17,    28,    27,    32,    27,    12,
      13,    26,    32,    28,    17,    18,    19,    20,    21,    22,
      23,    24,    12,    13,   129,    28,    27,    17,    18,    19,
      20,    21,    22,    23,    24,    14,    15,    16,    28,    12,
      13,    25,    29,   131,    17,    18,    19,    20,    21,    22,
      23,    24,    92,    93,    94,    28,   144,    12,    13,   147,
      32,    29,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    12,    13,    26,    33,    28,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    12,    13,    27,    27,    27,
      17,    18,    19,    20,    21,    22,    23,    24,    25,    12,
      13,    27,    27,    33,    17,    18,    19,    20,    21,    22,
      23,    24,    81,    82,    83,    84,    85,    86,    87,    88,
      89,    90,    30,    27,    33,    30,    33,    25,    30,    35,
      29,    28,    28,    28,    25,    28,    25,    25,    25,    33,
      25,    25,    19,     4,    30,    28,     8,    29,    29,     8,
      30,    30,    30,   107,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    42,    42
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    10,    32,    37,    38,    39,    40,    43,    45,    46,
      32,    11,    33,     0,    40,    43,    32,    39,    46,    33,
      27,    27,    43,    25,    28,    32,    41,    42,    29,    33,
      26,    28,     3,     5,     6,     7,     8,     9,    29,    32,
      33,    44,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    42,    29,    27,    27,     9,    27,
      33,    35,    60,    61,    62,    27,    27,    27,    44,    33,
      19,    27,    30,    48,    49,    50,    44,    60,    60,    27,
      60,    12,    13,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    14,    15,    16,    31,    60,    33,    33,    30,
      25,    60,    28,    59,    60,    30,    28,    25,    35,    28,
      61,    61,    61,    61,    61,    61,    61,    61,    61,    61,
      62,    62,    62,    28,    28,    28,    28,    25,    25,    26,
      28,    29,    33,    51,    28,    25,    25,    25,    25,    60,
      25,    44,    28,    30,    29,     4,    44,    29,    30,    44,
      30
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    36,    37,    38,    38,    38,    39,    39,    40,    41,
      41,    41,    42,    43,    44,    44,    44,    44,    45,    45,
      46,    47,    47,    48,    49,    49,    50,    50,    50,    50,
      50,    50,    50,    50,    50,    51,    52,    52,    53,    54,
      55,    55,    56,    57,    58,    58,    59,    59,    60,    60,
      60,    60,    60,    60,    60,    60,    60,    60,    60,    61,
      61,    61,    61,    62,    62,    62,    62
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     3,     2,     1,     1,     2,     8,     1,
       3,     0,     2,     7,     1,     2,     1,     0,     1,     2,
       4,     1,     2,     3,     1,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     3,     4,     7,    11,     9,     3,
       5,     5,     5,     5,     4,     5,     1,     3,     1,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     3,     1,
       3,     3,     3,     1,     1,     3,     4
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        YY_LAC_DISCARD ("YYBACKUP");                              \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


/* Given a state stack such that *YYBOTTOM is its bottom, such that
   *YYTOP is either its top or is YYTOP_EMPTY to indicate an empty
   stack, and such that *YYCAPACITY is the maximum number of elements it
   can hold without a reallocation, make sure there is enough room to
   store YYADD more elements.  If not, allocate a new stack using
   YYSTACK_ALLOC, copy the existing elements, and adjust *YYBOTTOM,
   *YYTOP, and *YYCAPACITY to reflect the new capacity and memory
   location.  If *YYBOTTOM != YYBOTTOM_NO_FREE, then free the old stack
   using YYSTACK_FREE.  Return 0 if successful or if no reallocation is
   required.  Return YYENOMEM if memory is exhausted.  */
static int
yy_lac_stack_realloc (YYPTRDIFF_T *yycapacity, YYPTRDIFF_T yyadd,
#if YYDEBUG
                      char const *yydebug_prefix,
                      char const *yydebug_suffix,
#endif
                      yy_state_t **yybottom,
                      yy_state_t *yybottom_no_free,
                      yy_state_t **yytop, yy_state_t *yytop_empty)
{
  YYPTRDIFF_T yysize_old =
    *yytop == yytop_empty ? 0 : *yytop - *yybottom + 1;
  YYPTRDIFF_T yysize_new = yysize_old + yyadd;
  if (*yycapacity < yysize_new)
    {
      YYPTRDIFF_T yyalloc = 2 * yysize_new;
      yy_state_t *yybottom_new;
      /* Use YYMAXDEPTH for maximum stack size given that the stack
         should never need to grow larger than the main state stack
         needs to grow without LAC.  */
      if (YYMAXDEPTH < yysize_new)
        {
          YYDPRINTF ((stderr, "%smax size exceeded%s", yydebug_prefix,
                      yydebug_suffix));
          return YYENOMEM;
        }
      if (YYMAXDEPTH < yyalloc)
        yyalloc = YYMAXDEPTH;
      yybottom_new =
        YY_CAST (yy_state_t *,
                 YYSTACK_ALLOC (YY_CAST (YYSIZE_T,
                                         yyalloc * YYSIZEOF (*yybottom_new))));
      if (!yybottom_new)
        {
          YYDPRINTF ((stderr, "%srealloc failed%s", yydebug_prefix,
                      yydebug_suffix));
          return YYENOMEM;
        }
      if (*yytop != yytop_empty)
        {
          YYCOPY (yybottom_new, *yybottom, yysize_old);
          *yytop = yybottom_new + (yysize_old - 1);
        }
      if (*yybottom != yybottom_no_free)
        YYSTACK_FREE (*yybottom);
      *yybottom = yybottom_new;
      *yycapacity = yyalloc;
    }
  return 0;
}

/* Establish the initial context for the current lookahead if no initial
   context is currently established.

   We define a context as a snapshot of the parser stacks.  We define
   the initial context for a lookahead as the context in which the
   parser initially examines that lookahead in order to select a
   syntactic action.  Thus, if the lookahead eventually proves
   syntactically unacceptable (possibly in a later context reached via a
   series of reductions), the initial context can be used to determine
   the exact set of tokens that would be syntactically acceptable in the
   lookahead's place.  Moreover, it is the context after which any
   further semantic actions would be erroneous because they would be
   determined by a syntactically unacceptable token.

   YY_LAC_ESTABLISH should be invoked when a reduction is about to be
   performed in an inconsistent state (which, for the purposes of LAC,
   includes consistent states that don't know they're consistent because
   their default reductions have been disabled).  Iff there is a
   lookahead token, it should also be invoked before reporting a syntax
   error.  This latter case is for the sake of the debugging output.

   For parse.lac=full, the implementation of YY_LAC_ESTABLISH is as
   follows.  If no initial context is currently established for the
   current lookahead, then check if that lookahead can eventually be
   shifted if syntactic actions continue from the current context.
   Report a syntax error if it cannot.  */
#define YY_LAC_ESTABLISH                                                \
do {                                                                    \
  if (!yy_lac_established)                                              \
    {                                                                   \
      YYDPRINTF ((stderr,                                               \
                  "LAC: initial context established for %s\n",          \
                  yysymbol_name (yytoken)));                            \
      yy_lac_established = 1;                                           \
      switch (yy_lac (yyesa, &yyes, &yyes_capacity, yyssp, yytoken))    \
        {                                                               \
        case YYENOMEM:                                                  \
          YYNOMEM;                                                      \
        case 1:                                                         \
          goto yyerrlab;                                                \
        }                                                               \
    }                                                                   \
} while (0)

/* Discard any previous initial lookahead context because of Event,
   which may be a lookahead change or an invalidation of the currently
   established initial context for the current lookahead.

   The most common example of a lookahead change is a shift.  An example
   of both cases is syntax error recovery.  That is, a syntax error
   occurs when the lookahead is syntactically erroneous for the
   currently established initial context, so error recovery manipulates
   the parser stacks to try to find a new initial context in which the
   current lookahead is syntactically acceptable.  If it fails to find
   such a context, it discards the lookahead.  */
#if YYDEBUG
# define YY_LAC_DISCARD(Event)                                           \
do {                                                                     \
  if (yy_lac_established)                                                \
    {                                                                    \
      YYDPRINTF ((stderr, "LAC: initial context discarded due to "       \
                  Event "\n"));                                          \
      yy_lac_established = 0;                                            \
    }                                                                    \
} while (0)
#else
# define YY_LAC_DISCARD(Event) yy_lac_established = 0
#endif

/* Given the stack whose top is *YYSSP, return 0 iff YYTOKEN can
   eventually (after perhaps some reductions) be shifted, return 1 if
   not, or return YYENOMEM if memory is exhausted.  As preconditions and
   postconditions: *YYES_CAPACITY is the allocated size of the array to
   which *YYES points, and either *YYES = YYESA or *YYES points to an
   array allocated with YYSTACK_ALLOC.  yy_lac may overwrite the
   contents of either array, alter *YYES and *YYES_CAPACITY, and free
   any old *YYES other than YYESA.  */
static int
yy_lac (yy_state_t *yyesa, yy_state_t **yyes,
        YYPTRDIFF_T *yyes_capacity, yy_state_t *yyssp, yysymbol_kind_t yytoken)
{
  yy_state_t *yyes_prev = yyssp;
  yy_state_t *yyesp = yyes_prev;
  /* Reduce until we encounter a shift and thereby accept the token.  */
  YYDPRINTF ((stderr, "LAC: checking lookahead %s:", yysymbol_name (yytoken)));
  if (yytoken == YYSYMBOL_YYUNDEF)
    {
      YYDPRINTF ((stderr, " Always Err\n"));
      return 1;
    }
  while (1)
    {
      int yyrule = yypact[+*yyesp];
      if (yypact_value_is_default (yyrule)
          || (yyrule += yytoken) < 0 || YYLAST < yyrule
          || yycheck[yyrule] != yytoken)
        {
          /* Use the default action.  */
          yyrule = yydefact[+*yyesp];
          if (yyrule == 0)
            {
              YYDPRINTF ((stderr, " Err\n"));
              return 1;
            }
        }
      else
        {
          /* Use the action from yytable.  */
          yyrule = yytable[yyrule];
          if (yytable_value_is_error (yyrule))
            {
              YYDPRINTF ((stderr, " Err\n"));
              return 1;
            }
          if (0 < yyrule)
            {
              YYDPRINTF ((stderr, " S%d\n", yyrule));
              return 0;
            }
          yyrule = -yyrule;
        }
      /* By now we know we have to simulate a reduce.  */
      YYDPRINTF ((stderr, " R%d", yyrule - 1));
      {
        /* Pop the corresponding number of values from the stack.  */
        YYPTRDIFF_T yylen = yyr2[yyrule];
        /* First pop from the LAC stack as many tokens as possible.  */
        if (yyesp != yyes_prev)
          {
            YYPTRDIFF_T yysize = yyesp - *yyes + 1;
            if (yylen < yysize)
              {
                yyesp -= yylen;
                yylen = 0;
              }
            else
              {
                yyesp = yyes_prev;
                yylen -= yysize;
              }
          }
        /* Only afterwards look at the main stack.  */
        if (yylen)
          yyesp = yyes_prev -= yylen;
      }
      /* Push the resulting state of the reduction.  */
      {
        yy_state_fast_t yystate;
        {
          const int yylhs = yyr1[yyrule] - YYNTOKENS;
          const int yyi = yypgoto[yylhs] + *yyesp;
          yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyesp
                     ? yytable[yyi]
                     : yydefgoto[yylhs]);
        }
        if (yyesp == yyes_prev)
          {
            yyesp = *yyes;
            YY_IGNORE_USELESS_CAST_BEGIN
            *yyesp = YY_CAST (yy_state_t, yystate);
            YY_IGNORE_USELESS_CAST_END
          }
        else
          {
            if (yy_lac_stack_realloc (yyes_capacity, 1,
#if YYDEBUG
                                      " (", ")",
#endif
                                      yyes, yyesa, &yyesp, yyes_prev))
              {
                YYDPRINTF ((stderr, "\n"));
                return YYENOMEM;
              }
            YY_IGNORE_USELESS_CAST_BEGIN
            *++yyesp = YY_CAST (yy_state_t, yystate);
            YY_IGNORE_USELESS_CAST_END
          }
        YYDPRINTF ((stderr, " G%d", yystate));
      }
    }
}

/* Context of a parse error.  */
typedef struct
{
  yy_state_t *yyssp;
  yy_state_t *yyesa;
  yy_state_t **yyes;
  YYPTRDIFF_T *yyes_capacity;
  yysymbol_kind_t yytoken;
} yypcontext_t;

/* Put in YYARG at most YYARGN of the expected tokens given the
   current YYCTX, and return the number of tokens stored in YYARG.  If
   YYARG is null, return the number of expected tokens (guaranteed to
   be less than YYNTOKENS).  Return YYENOMEM on memory exhaustion.
   Return 0 if there are more than YYARGN expected tokens, yet fill
   YYARG up to YYARGN. */
static int
yypcontext_expected_tokens (const yypcontext_t *yyctx,
                            yysymbol_kind_t yyarg[], int yyargn)
{
  /* Actual size of YYARG. */
  int yycount = 0;

  int yyx;
  for (yyx = 0; yyx < YYNTOKENS; ++yyx)
    {
      yysymbol_kind_t yysym = YY_CAST (yysymbol_kind_t, yyx);
      if (yysym != YYSYMBOL_YYerror && yysym != YYSYMBOL_YYUNDEF)
        switch (yy_lac (yyctx->yyesa, yyctx->yyes, yyctx->yyes_capacity, yyctx->yyssp, yysym))
          {
          case YYENOMEM:
            return YYENOMEM;
          case 1:
            continue;
          default:
            if (!yyarg)
              ++yycount;
            else if (yycount == yyargn)
              return 0;
            else
              yyarg[yycount++] = yysym;
          }
    }
  if (yyarg && yycount == 0 && 0 < yyargn)
    yyarg[0] = YYSYMBOL_YYEMPTY;
  return yycount;
}




#ifndef yystrlen
# if defined __GLIBC__ && defined _STRING_H
#  define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
# else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
# endif
#endif

#ifndef yystpcpy
# if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#  define yystpcpy stpcpy
# else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
# endif
#endif

#ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;
      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
#endif


static int
yy_syntax_error_arguments (const yypcontext_t *yyctx,
                           yysymbol_kind_t yyarg[], int yyargn)
{
  /* Actual size of YYARG. */
  int yycount = 0;
  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
       In the first two cases, it might appear that the current syntax
       error should have been detected in the previous state when yy_lac
       was invoked.  However, at that time, there might have been a
       different syntax error that discarded a different initial context
       during error recovery, leaving behind the current lookahead.
  */
  if (yyctx->yytoken != YYSYMBOL_YYEMPTY)
    {
      int yyn;
      YYDPRINTF ((stderr, "Constructing syntax error message\n"));
      if (yyarg)
        yyarg[yycount] = yyctx->yytoken;
      ++yycount;
      yyn = yypcontext_expected_tokens (yyctx,
                                        yyarg ? yyarg + 1 : yyarg, yyargn - 1);
      if (yyn == YYENOMEM)
        return YYENOMEM;
      else if (yyn == 0)
        YYDPRINTF ((stderr, "No expected tokens.\n"));
      else
        yycount += yyn;
    }
  return yycount;
}

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.  In order to see if a particular token T is a
   valid looakhead, invoke yy_lac (YYESA, YYES, YYES_CAPACITY, YYSSP, T).

   Return 0 if *YYMSG was successfully written.  Return -1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return YYENOMEM if the
   required number of bytes is too large to store or if
   yy_lac returned YYENOMEM.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                const yypcontext_t *yyctx)
{
  enum { YYARGS_MAX = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  yysymbol_kind_t yyarg[YYARGS_MAX];
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* Actual size of YYARG. */
  int yycount = yy_syntax_error_arguments (yyctx, yyarg, YYARGS_MAX);
  if (yycount == YYENOMEM)
    return YYENOMEM;

  switch (yycount)
    {
#define YYCASE_(N, S)                       \
      case N:                               \
        yyformat = S;                       \
        break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
#undef YYCASE_
    }

  /* Compute error message size.  Don't count the "%s"s, but reserve
     room for the terminator.  */
  yysize = yystrlen (yyformat) - 2 * yycount + 1;
  {
    int yyi;
    for (yyi = 0; yyi < yycount; ++yyi)
      {
        YYPTRDIFF_T yysize1
          = yysize + yytnamerr (YY_NULLPTR, yytname[yyarg[yyi]]);
        if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
          yysize = yysize1;
        else
          return YYENOMEM;
      }
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return -1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yytname[yyarg[yyi++]]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

    yy_state_t yyesa[20];
    yy_state_t *yyes = yyesa;
    YYPTRDIFF_T yyes_capacity = 20 < YYMAXDEPTH ? 20 : YYMAXDEPTH;

  /* Whether LAC context is established.  A Boolean.  */
  int yy_lac_established = 0;
  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    {
      YY_LAC_ESTABLISH;
      goto yydefault;
    }
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      YY_LAC_ESTABLISH;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  YY_LAC_DISCARD ("shift");
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  {
    int yychar_backup = yychar;
    switch (yyn)
      {
  case 2: /* start: program  */
#line 398 "parser.y"
               { print_ast((yyvsp[0].ast), 0); printf("\n"); exec_ast((yyvsp[0].ast));}
#line 2070 "parser.tab.c"
    break;

  case 3: /* program: global_declarations functions main  */
#line 402 "parser.y"
                                            {
       		printf(">>> [SŦYX parser]: Program syntax is valid\n");
                 
                (yyval.ast) = new_astnode("Program");
                (yyval.ast)->child[0] = (yyvsp[-2].ast);
                (yyval.ast)->child[1] = (yyvsp[-1].ast);
		(yyval.ast)->child[2] = (yyvsp[0].ast);

	}
#line 2084 "parser.tab.c"
    break;

  case 4: /* program: functions main  */
#line 411 "parser.y"
                        {
		printf(">>> [SŦYX parser]: Program syntax is valid\n");
		
		(yyval.ast) = new_astnode("Program");
		(yyval.ast)->child[0] = (yyvsp[-1].ast);
		(yyval.ast)->child[1] = (yyvsp[0].ast);
	}
#line 2096 "parser.tab.c"
    break;

  case 5: /* program: main  */
#line 418 "parser.y"
               {
		printf(">>> [SŦYX parser] Program syntax is valid\n");
		
		(yyval.ast) = new_astnode("Program");
		(yyval.ast)->child[0] = (yyvsp[0].ast);
	}
#line 2107 "parser.tab.c"
    break;

  case 6: /* functions: function  */
#line 425 "parser.y"
                    { (yyval.ast) = new_astnode("Functions"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2113 "parser.tab.c"
    break;

  case 7: /* functions: functions function  */
#line 426 "parser.y"
                              { (yyval.ast) = new_astnode("Functions"); (yyval.ast)->child[0] = (yyvsp[-1].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2119 "parser.tab.c"
    break;

  case 8: /* function: TYPE ID ROUND_OPEN parameters ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE  */
#line 429 "parser.y"
        { 
		(yyval.ast) = new_astnode("Function");
		(yyval.ast)->child[0] = (yyvsp[-4].ast); 
		(yyval.ast)->child[1] = (yyvsp[-1].ast); 
		(yyval.ast)->val.str = (yyvsp[-6].str); 
		(yyval.ast)->type= AST_ID_T;
		add_function((yyvsp[-6].str), (yyval.ast));
	}
#line 2132 "parser.tab.c"
    break;

  case 9: /* parameters: parameter  */
#line 438 "parser.y"
                      { (yyval.ast) = new_astnode("Parameters"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2138 "parser.tab.c"
    break;

  case 10: /* parameters: parameters COMMA parameter  */
#line 439 "parser.y"
                                      { (yyval.ast) = new_astnode("Parameters"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2144 "parser.tab.c"
    break;

  case 11: /* parameters: %empty  */
#line 440 "parser.y"
           { (yyval.ast) = new_astnode("Parameters"); }
#line 2150 "parser.tab.c"
    break;

  case 12: /* parameter: TYPE ID  */
#line 442 "parser.y"
                   { (yyval.ast) = new_astnode("Parameter"); (yyval.ast)->val.str = (yyvsp[0].str); (yyval.ast)->type = AST_ID_T; }
#line 2156 "parser.tab.c"
    break;

  case 13: /* main: TYPE MAIN ROUND_OPEN ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE  */
#line 446 "parser.y"
    {	
	if(strcmp((yyvsp[-6].str), "ı’Ŧ") != 0){
		printf("Error: Main function must return ı’Ŧ and must have identifier ºÆı’\n");
		printf("Found: TYPE: %s \n", (yyvsp[-6].str));
		exit(1);
	}
	
	
	(yyval.ast) = new_astnode("Main");
	(yyval.ast)->val.str = (yyvsp[-5].str);
	(yyval.ast)->type = AST_ID_T;
	(yyval.ast)->child[0] = (yyvsp[-1].ast);
    }
#line 2174 "parser.tab.c"
    break;

  case 14: /* body: statements  */
#line 460 "parser.y"
                 { (yyval.ast) = new_astnode("Body"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2180 "parser.tab.c"
    break;

  case 15: /* body: declarations statements  */
#line 461 "parser.y"
                              { (yyval.ast) = new_astnode("Body"); (yyval.ast)->child[0] = (yyvsp[-1].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2186 "parser.tab.c"
    break;

  case 16: /* body: declarations  */
#line 462 "parser.y"
                   { (yyval.ast) = new_astnode("Body"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2192 "parser.tab.c"
    break;

  case 17: /* body: %empty  */
#line 463 "parser.y"
      { (yyval.ast) = new_astnode("Body"); }
#line 2198 "parser.tab.c"
    break;

  case 18: /* global_declarations: global_declaration  */
#line 465 "parser.y"
                                        { (yyval.ast) = new_astnode("GlobalDeclarations"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2204 "parser.tab.c"
    break;

  case 19: /* global_declarations: global_declarations global_declaration  */
#line 466 "parser.y"
                                                  { (yyval.ast) = new_astnode("GlobalDeclarations"); (yyval.ast)->child[0] = (yyvsp[-1].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2210 "parser.tab.c"
    break;

  case 20: /* global_declaration: GLOBAL TYPE ID SEMICOLON  */
#line 468 "parser.y"
                                             { (yyval.ast) = new_astnode("GlobalDeclaration"); (yyval.ast)->val.str = (yyvsp[-1].str); (yyval.ast)->type = AST_ID_T; }
#line 2216 "parser.tab.c"
    break;

  case 21: /* declarations: declaration  */
#line 470 "parser.y"
                          { (yyval.ast) = new_astnode("Declarations"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2222 "parser.tab.c"
    break;

  case 22: /* declarations: declarations declaration  */
#line 471 "parser.y"
                                       { (yyval.ast) = new_astnode("Declarations"); (yyval.ast)->child[0] = (yyvsp[-1].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2228 "parser.tab.c"
    break;

  case 23: /* declaration: TYPE ID SEMICOLON  */
#line 473 "parser.y"
                               { (yyval.ast) = new_astnode("Declaration"); (yyval.ast)->val.str = (yyvsp[-1].str); (yyval.ast)->type = AST_ID_T; }
#line 2234 "parser.tab.c"
    break;

  case 24: /* statements: statement  */
#line 475 "parser.y"
                      { (yyval.ast) = new_astnode("Statements"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2240 "parser.tab.c"
    break;

  case 25: /* statements: statements statement  */
#line 476 "parser.y"
                                 { (yyval.ast) = new_astnode("Statements"); (yyval.ast)->child[0] = (yyvsp[-1].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2246 "parser.tab.c"
    break;

  case 26: /* statement: assignment  */
#line 478 "parser.y"
                      { (yyval.ast) = new_astnode("Statement"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2252 "parser.tab.c"
    break;

  case 27: /* statement: if_statement  */
#line 479 "parser.y"
                        { (yyval.ast) = new_astnode("Statement"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2258 "parser.tab.c"
    break;

  case 28: /* statement: for_statement  */
#line 480 "parser.y"
                         { (yyval.ast) = new_astnode("Statement"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2264 "parser.tab.c"
    break;

  case 29: /* statement: return_statement  */
#line 481 "parser.y"
                            { (yyval.ast) = new_astnode("Statement"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2270 "parser.tab.c"
    break;

  case 30: /* statement: print_statement  */
#line 482 "parser.y"
                           { (yyval.ast) = new_astnode("Statement"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2276 "parser.tab.c"
    break;

  case 31: /* statement: scan_statement  */
#line 483 "parser.y"
                          { (yyval.ast) = new_astnode("Statement"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2282 "parser.tab.c"
    break;

  case 32: /* statement: rand_int_statement  */
#line 484 "parser.y"
                              { (yyval.ast) = new_astnode("Statement"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2288 "parser.tab.c"
    break;

  case 33: /* statement: function_call  */
#line 485 "parser.y"
                         { (yyval.ast) = new_astnode("Statement"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2294 "parser.tab.c"
    break;

  case 34: /* statement: CURLY_OPEN body CURLY_CLOSE  */
#line 486 "parser.y"
                                       { (yyval.ast) = new_astnode("Statement"); (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 2300 "parser.tab.c"
    break;

  case 35: /* assignment: ID EQ expression SEMICOLON  */
#line 489 "parser.y"
                                       { (yyval.ast) = new_astnode("Assignment"); (yyval.ast)->val.str = (yyvsp[-3].str); (yyval.ast)->type = AST_ID_T; (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 2306 "parser.tab.c"
    break;

  case 36: /* if_statement: IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE  */
#line 491 "parser.y"
                                                                               { (yyval.ast) = new_astnode("If"); (yyval.ast)->child[0] = (yyvsp[-4].ast); (yyval.ast)->child[1] = (yyvsp[-1].ast); }
#line 2312 "parser.tab.c"
    break;

  case 37: /* if_statement: IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE ELSE CURLY_OPEN body CURLY_CLOSE  */
#line 492 "parser.y"
                                                                                                                { (yyval.ast) = new_astnode("IfElse"); (yyval.ast)->child[0] = (yyvsp[-8].ast); (yyval.ast)->child[1] = (yyvsp[-5].ast); (yyval.ast)->child[2] = (yyvsp[-1].ast); }
#line 2318 "parser.tab.c"
    break;

  case 38: /* for_statement: FOR ROUND_OPEN expression SEMICOLON assignment ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE  */
#line 495 "parser.y"
                                                                                                      { (yyval.ast) = new_astnode("For"); (yyval.ast)->child[0] = (yyvsp[-6].ast); (yyval.ast)->child[1] = (yyvsp[-4].ast); (yyval.ast)->child[2] = (yyvsp[-1].ast); }
#line 2324 "parser.tab.c"
    break;

  case 39: /* return_statement: RETURN expression SEMICOLON  */
#line 497 "parser.y"
                                              { (yyval.ast) = new_astnode("Return"); (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 2330 "parser.tab.c"
    break;

  case 40: /* print_statement: PRINT ROUND_OPEN expression ROUND_CLOSE SEMICOLON  */
#line 499 "parser.y"
                                                                   { (yyval.ast) = new_astnode("Print"); (yyval.ast)->child[0] = (yyvsp[-2].ast); }
#line 2336 "parser.tab.c"
    break;

  case 41: /* print_statement: PRINT ROUND_OPEN STR ROUND_CLOSE SEMICOLON  */
#line 500 "parser.y"
                                                             { (yyval.ast) = new_astnode("PrintStr"); (yyval.ast)->val.str = (yyvsp[-2].str); (yyval.ast)->type = AST_STR_T; }
#line 2342 "parser.tab.c"
    break;

  case 42: /* scan_statement: SCAN ROUND_OPEN ID ROUND_CLOSE SEMICOLON  */
#line 502 "parser.y"
                                                         { (yyval.ast) = new_astnode("Scan"); (yyval.ast)->val.str = (yyvsp[-2].str); (yyval.ast)->type = AST_ID_T; }
#line 2348 "parser.tab.c"
    break;

  case 43: /* rand_int_statement: RAND_INT ROUND_OPEN ID ROUND_CLOSE SEMICOLON  */
#line 504 "parser.y"
                                                                 { (yyval.ast) = new_astnode("RandInt"); (yyval.ast)->val.str = (yyvsp[-2].str); (yyval.ast)->type = AST_ID_T; }
#line 2354 "parser.tab.c"
    break;

  case 44: /* function_call: ID ROUND_OPEN ROUND_CLOSE SEMICOLON  */
#line 506 "parser.y"
                                                   { (yyval.ast) = new_astnode("FunctionCall"); (yyval.ast)->val.str = (yyvsp[-3].str); (yyval.ast)->type = AST_ID_T; }
#line 2360 "parser.tab.c"
    break;

  case 45: /* function_call: ID ROUND_OPEN arguments ROUND_CLOSE SEMICOLON  */
#line 507 "parser.y"
                                                             { (yyval.ast) = new_astnode("FunctionCall"); (yyval.ast)->val.str = (yyvsp[-4].str); (yyval.ast)->type = AST_ID_T; (yyval.ast)->child[0] = (yyvsp[-2].ast); }
#line 2366 "parser.tab.c"
    break;

  case 46: /* arguments: expression  */
#line 509 "parser.y"
                      { (yyval.ast) = new_astnode("Arguments"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2372 "parser.tab.c"
    break;

  case 47: /* arguments: arguments COMMA expression  */
#line 510 "parser.y"
                                      { (yyval.ast) = new_astnode("Arguments"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2378 "parser.tab.c"
    break;

  case 48: /* expression: term  */
#line 512 "parser.y"
                 { (yyval.ast) = new_astnode("ExpressionTerm"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2384 "parser.tab.c"
    break;

  case 49: /* expression: expression PLUS term  */
#line 513 "parser.y"
                               { (yyval.ast) = new_astnode("ExpressionPlus"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2390 "parser.tab.c"
    break;

  case 50: /* expression: expression MINUS term  */
#line 514 "parser.y"
                                { (yyval.ast) = new_astnode("ExpressionMinus"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2396 "parser.tab.c"
    break;

  case 51: /* expression: expression LE term  */
#line 515 "parser.y"
                             { (yyval.ast) = new_astnode("ExpressionLE"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2402 "parser.tab.c"
    break;

  case 52: /* expression: expression GE term  */
#line 516 "parser.y"
                             { (yyval.ast) = new_astnode("ExpressionGE"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2408 "parser.tab.c"
    break;

  case 53: /* expression: expression EQ term  */
#line 517 "parser.y"
                             { (yyval.ast) = new_astnode("ExpressionEQ"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2414 "parser.tab.c"
    break;

  case 54: /* expression: expression NE term  */
#line 518 "parser.y"
                             { (yyval.ast) = new_astnode("ExpressionNE"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2420 "parser.tab.c"
    break;

  case 55: /* expression: expression GT term  */
#line 519 "parser.y"
                             { (yyval.ast) = new_astnode("ExpressionGT"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2426 "parser.tab.c"
    break;

  case 56: /* expression: expression LT term  */
#line 520 "parser.y"
                             { (yyval.ast) = new_astnode("ExpressionLT"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2432 "parser.tab.c"
    break;

  case 57: /* expression: expression AND term  */
#line 521 "parser.y"
                              { (yyval.ast) = new_astnode("ExpressionAND"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2438 "parser.tab.c"
    break;

  case 58: /* expression: expression OR term  */
#line 522 "parser.y"
                             { (yyval.ast) = new_astnode("ExpressionOR"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2444 "parser.tab.c"
    break;

  case 59: /* term: factor  */
#line 525 "parser.y"
             { (yyval.ast) = new_astnode("TermFactor"); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2450 "parser.tab.c"
    break;

  case 60: /* term: term MULT factor  */
#line 526 "parser.y"
                           { (yyval.ast) = new_astnode("TermMult"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); (yyval.ast)->val.str = "*"; (yyval.ast)->type = AST_STR_T; }
#line 2456 "parser.tab.c"
    break;

  case 61: /* term: term DIV factor  */
#line 527 "parser.y"
                          { (yyval.ast) = new_astnode("TermDiv"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); (yyval.ast)->val.str = "/"; (yyval.ast)->type = AST_STR_T; }
#line 2462 "parser.tab.c"
    break;

  case 62: /* term: term MOD factor  */
#line 528 "parser.y"
                          { (yyval.ast) = new_astnode("TermMod"); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); (yyval.ast)->val.str = "%"; (yyval.ast)->type = AST_STR_T; }
#line 2468 "parser.tab.c"
    break;

  case 63: /* factor: ID  */
#line 530 "parser.y"
           { (yyval.ast) = new_astnode("FactorID"); (yyval.ast)->val.str = (yyvsp[0].str); (yyval.ast)->type = AST_ID_T; }
#line 2474 "parser.tab.c"
    break;

  case 64: /* factor: NUM  */
#line 531 "parser.y"
              { (yyval.ast) = new_astnode("FactorNUM"); (yyval.ast)->val.num = (yyvsp[0].num); (yyval.ast)->type = AST_NUM_T; }
#line 2480 "parser.tab.c"
    break;

  case 65: /* factor: ROUND_OPEN expression ROUND_CLOSE  */
#line 532 "parser.y"
                                            { (yyval.ast) = new_astnode("(Factor)"); (yyval.ast)->child[0] = (yyvsp[-1].ast); (yyval.ast)->val.str = "(expr)"; (yyval.ast)->type = AST_STR_T; }
#line 2486 "parser.tab.c"
    break;

  case 66: /* factor: RAND_INT ROUND_OPEN NUM ROUND_CLOSE  */
#line 533 "parser.y"
                                              { (yyval.ast) = new_astnode("FactorRAND"); (yyval.ast)->val.num = (yyvsp[-1].num); (yyval.ast)->type = AST_NUM_T; }
#line 2492 "parser.tab.c"
    break;


#line 2496 "parser.tab.c"

        default: break;
      }
    if (yychar_backup != yychar)
      YY_LAC_DISCARD ("yychar change");
  }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      {
        yypcontext_t yyctx
          = {yyssp, yyesa, &yyes, &yyes_capacity, yytoken};
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        if (yychar != YYEMPTY)
          YY_LAC_ESTABLISH;
        yysyntax_error_status = yysyntax_error (&yymsg_alloc, &yymsg, &yyctx);
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == -1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *,
                             YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (yymsg)
              {
                yysyntax_error_status
                  = yysyntax_error (&yymsg_alloc, &yymsg, &yyctx);
                yymsgp = yymsg;
              }
            else
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = YYENOMEM;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == YYENOMEM)
          YYNOMEM;
      }
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  /* If the stack popping above didn't lose the initial context for the
     current lookahead token, the shift below will for sure.  */
  YY_LAC_DISCARD ("error recovery");

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
  if (yyes != yyesa)
    YYSTACK_FREE (yyes);
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
  return yyresult;
}

#line 537 "parser.y"


// C Code
int main(int arc, char** argv){
	yy_flex_debug = 0;
	yyin = fopen(argv[1], "r");
	return yyparse();
}
