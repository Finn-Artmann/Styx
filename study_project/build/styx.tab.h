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
    SCAN = 263,                    /* SCAN  */
    RAND_INT = 264,                /* RAND_INT  */
    GLOBAL = 265,                  /* GLOBAL  */
    SYSTEM = 266,                  /* SYSTEM  */
    MAIN = 267,                    /* MAIN  */
    PLUS = 268,                    /* PLUS  */
    MINUS = 269,                   /* MINUS  */
    MULT = 270,                    /* MULT  */
    DIV = 271,                     /* DIV  */
    MOD = 272,                     /* MOD  */
    LE = 273,                      /* LE  */
    GE = 274,                      /* GE  */
    EQ = 275,                      /* EQ  */
    NE = 276,                      /* NE  */
    GT = 277,                      /* GT  */
    LT = 278,                      /* LT  */
    AND = 279,                     /* AND  */
    OR = 280,                      /* OR  */
    ASSIGN = 281,                  /* ASSIGN  */
    SEMICOLON = 282,               /* SEMICOLON  */
    COMMA = 283,                   /* COMMA  */
    ROUND_OPEN = 284,              /* ROUND_OPEN  */
    ROUND_CLOSE = 285,             /* ROUND_CLOSE  */
    CURLY_OPEN = 286,              /* CURLY_OPEN  */
    CURLY_CLOSE = 287,             /* CURLY_CLOSE  */
    STR = 288,                     /* STR  */
    ID = 289,                      /* ID  */
    OP = 290,                      /* OP  */
    CHR = 291,                     /* CHR  */
    NUM = 292,                     /* NUM  */
    TYPE = 293,                    /* TYPE  */
    REAL = 294,                    /* REAL  */
    PROGRAM = 295,                 /* PROGRAM  */
    STATEMENTS = 296,              /* STATEMENTS  */
    STATEMENT = 297,               /* STATEMENT  */
    DECLARATIONS = 298,            /* DECLARATIONS  */
    GLOBAL_DECLARATIONS = 299,     /* GLOBAL_DECLARATIONS  */
    FUNCTIONS = 300,               /* FUNCTIONS  */
    PARAMETERS = 301,              /* PARAMETERS  */
    BODY = 302,                    /* BODY  */
    ASSIGNMENT = 303,              /* ASSIGNMENT  */
    EXPR_TERM = 304,               /* EXPR_TERM  */
    EXPR_FUNCTION_CALL = 305,      /* EXPR_FUNCTION_CALL  */
    EXPR_PLUS = 306,               /* EXPR_PLUS  */
    EXPR_MINUS = 307,              /* EXPR_MINUS  */
    EXPR_LE = 308,                 /* EXPR_LE  */
    EXPR_GE = 309,                 /* EXPR_GE  */
    EXPR_LT = 310,                 /* EXPR_LT  */
    EXPR_GT = 311,                 /* EXPR_GT  */
    EXPR_EQ = 312,                 /* EXPR_EQ  */
    EXPR_NE = 313,                 /* EXPR_NE  */
    EXPR_AND = 314,                /* EXPR_AND  */
    EXPR_OR = 315,                 /* EXPR_OR  */
    TERM_FACTOR = 316,             /* TERM_FACTOR  */
    TERM_MUL = 317,                /* TERM_MUL  */
    TERM_DIV = 318,                /* TERM_DIV  */
    TERM_MOD = 319,                /* TERM_MOD  */
    FACTOR_ID = 320,               /* FACTOR_ID  */
    FACTOR_NUM = 321,              /* FACTOR_NUM  */
    FACTOR_REAL = 322,             /* FACTOR_REAL  */
    FACTOR_PARENTHESIS = 323,      /* FACTOR_PARENTHESIS  */
    FACTOR_FUNCTION_CALL = 324,    /* FACTOR_FUNCTION_CALL  */
    FACTOR_RAND = 325,             /* FACTOR_RAND  */
    IFELSE = 326,                  /* IFELSE  */
    PRINT_STR = 327,               /* PRINT_STR  */
    DECLARATION = 328,             /* DECLARATION  */
    GLOBAL_DECLARATION = 329,      /* GLOBAL_DECLARATION  */
    FUNCTION_CALL = 330,           /* FUNCTION_CALL  */
    PARAMETER = 331,               /* PARAMETER  */
    FUNCTION = 332,                /* FUNCTION  */
    ARG_EXPR = 333,                /* ARG_EXPR  */
    ARGS_EXPR = 334,               /* ARGS_EXPR  */
    DECLARATION_ASSIGN = 335,      /* DECLARATION_ASSIGN  */
    FACTOR_STRING = 336,           /* FACTOR_STRING  */
    FACTOR_CHAR = 337,             /* FACTOR_CHAR  */
    PRINT_WIDTH = 338,             /* PRINT_WIDTH  */
    SYSTEM_CALL = 339,             /* SYSTEM_CALL  */
    STATEMENT_BLOCK = 340,         /* STATEMENT_BLOCK  */
    GLOBAL_DECLARATION_ASSIGN = 341 /* GLOBAL_DECLARATION_ASSIGN  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 36 "src/styx.y"

	char* str;
	char chr;
	int num;
	double real;
	struct astnode* ast;

#line 158 "build/styx.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_BUILD_STYX_TAB_H_INCLUDED  */
