/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_BUILD_STYX_TAB_H_INCLUDED
# define YY_YY_BUILD_STYX_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    IF = 258,                      /* IF  */
    ELSE = 259,                    /* ELSE  */
    FOR = 260,                     /* FOR  */
    RETURN = 261,                  /* RETURN  */
    PRINT = 262,                   /* PRINT  */
    PRINTB = 263,                  /* PRINTB  */
    SCAN = 264,                    /* SCAN  */
    RAND_INT = 265,                /* RAND_INT  */
    GLOBAL = 266,                  /* GLOBAL  */
    SYSTEM = 267,                  /* SYSTEM  */
    REPEAT = 268,                  /* REPEAT  */
    UNTIL = 269,                   /* UNTIL  */
    ALTERNATE = 270,               /* ALTERNATE  */
    MAIN = 271,                    /* MAIN  */
    PLUS = 272,                    /* PLUS  */
    MINUS = 273,                   /* MINUS  */
    MULT = 274,                    /* MULT  */
    DIV = 275,                     /* DIV  */
    MOD = 276,                     /* MOD  */
    LE = 277,                      /* LE  */
    GE = 278,                      /* GE  */
    EQ = 279,                      /* EQ  */
    NE = 280,                      /* NE  */
    GT = 281,                      /* GT  */
    LT = 282,                      /* LT  */
    NOT = 283,                     /* NOT  */
    AND = 284,                     /* AND  */
    OR = 285,                      /* OR  */
    ASSIGN = 286,                  /* ASSIGN  */
    SEMICOLON = 287,               /* SEMICOLON  */
    COMMA = 288,                   /* COMMA  */
    ROUND_OPEN = 289,              /* ROUND_OPEN  */
    ROUND_CLOSE = 290,             /* ROUND_CLOSE  */
    CURLY_OPEN = 291,              /* CURLY_OPEN  */
    CURLY_CLOSE = 292,             /* CURLY_CLOSE  */
    STR = 293,                     /* STR  */
    ID = 294,                      /* ID  */
    CHR = 295,                     /* CHR  */
    NUM = 296,                     /* NUM  */
    TYPE = 297,                    /* TYPE  */
    REAL = 298,                    /* REAL  */
    PROGRAM = 299,                 /* PROGRAM  */
    STATEMENTS = 300,              /* STATEMENTS  */
    STATEMENT = 301,               /* STATEMENT  */
    DECLARATIONS = 302,            /* DECLARATIONS  */
    GLOBAL_DECLARATIONS = 303,     /* GLOBAL_DECLARATIONS  */
    FUNCTIONS = 304,               /* FUNCTIONS  */
    PARAMETERS = 305,              /* PARAMETERS  */
    BODY = 306,                    /* BODY  */
    ASSIGNMENT = 307,              /* ASSIGNMENT  */
    EXPR_TERM = 308,               /* EXPR_TERM  */
    EXPR_FUNCTION_CALL = 309,      /* EXPR_FUNCTION_CALL  */
    EXPR_PLUS = 310,               /* EXPR_PLUS  */
    EXPR_MINUS = 311,              /* EXPR_MINUS  */
    EXPR_LE = 312,                 /* EXPR_LE  */
    EXPR_GE = 313,                 /* EXPR_GE  */
    EXPR_LT = 314,                 /* EXPR_LT  */
    EXPR_GT = 315,                 /* EXPR_GT  */
    EXPR_EQ = 316,                 /* EXPR_EQ  */
    EXPR_NE = 317,                 /* EXPR_NE  */
    EXPR_AND = 318,                /* EXPR_AND  */
    EXPR_OR = 319,                 /* EXPR_OR  */
    TERM_FACTOR = 320,             /* TERM_FACTOR  */
    TERM_NOT_FACTOR = 321,         /* TERM_NOT_FACTOR  */
    TERM_MUL = 322,                /* TERM_MUL  */
    TERM_DIV = 323,                /* TERM_DIV  */
    TERM_MOD = 324,                /* TERM_MOD  */
    FACTOR_ID = 325,               /* FACTOR_ID  */
    FACTOR_NUM = 326,              /* FACTOR_NUM  */
    FACTOR_REAL = 327,             /* FACTOR_REAL  */
    FACTOR_PARENTHESIS = 328,      /* FACTOR_PARENTHESIS  */
    FACTOR_FUNCTION_CALL = 329,    /* FACTOR_FUNCTION_CALL  */
    FACTOR_RAND = 330,             /* FACTOR_RAND  */
    IFELSE = 331,                  /* IFELSE  */
    PRINT_STR = 332,               /* PRINT_STR  */
    DECLARATION = 333,             /* DECLARATION  */
    GLOBAL_DECLARATION = 334,      /* GLOBAL_DECLARATION  */
    FUNCTION_CALL = 335,           /* FUNCTION_CALL  */
    PARAMETER = 336,               /* PARAMETER  */
    FUNCTION = 337,                /* FUNCTION  */
    ARG_EXPR = 338,                /* ARG_EXPR  */
    ARGS_EXPR = 339,               /* ARGS_EXPR  */
    DECLARATION_ASSIGN = 340,      /* DECLARATION_ASSIGN  */
    FACTOR_STRING = 341,           /* FACTOR_STRING  */
    FACTOR_CHAR = 342,             /* FACTOR_CHAR  */
    PRINT_WIDTH = 343,             /* PRINT_WIDTH  */
    SYSTEM_CALL = 344,             /* SYSTEM_CALL  */
    STATEMENT_BLOCK = 345,         /* STATEMENT_BLOCK  */
    GLOBAL_DECLARATION_ASSIGN = 346, /* GLOBAL_DECLARATION_ASSIGN  */
    FOR_NUM = 347,                 /* FOR_NUM  */
    ALTER_STATEMENTS = 348,        /* ALTER_STATEMENTS  */
    PRINT_B = 349                  /* PRINT_B  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 33 "src/styx.y"

	char* str;
	char chr;
	int num;
	double real;
	struct astnode* ast;

#line 166 "build/styx.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_BUILD_STYX_TAB_H_INCLUDED  */
