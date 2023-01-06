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
    MAIN = 266,                    /* MAIN  */
    PLUS = 267,                    /* PLUS  */
    MINUS = 268,                   /* MINUS  */
    MULT = 269,                    /* MULT  */
    DIV = 270,                     /* DIV  */
    MOD = 271,                     /* MOD  */
    LE = 272,                      /* LE  */
    GE = 273,                      /* GE  */
    EQ = 274,                      /* EQ  */
    NE = 275,                      /* NE  */
    GT = 276,                      /* GT  */
    LT = 277,                      /* LT  */
    AND = 278,                     /* AND  */
    OR = 279,                      /* OR  */
    ASSIGN = 280,                  /* ASSIGN  */
    SEMICOLON = 281,               /* SEMICOLON  */
    COMMA = 282,                   /* COMMA  */
    ROUND_OPEN = 283,              /* ROUND_OPEN  */
    ROUND_CLOSE = 284,             /* ROUND_CLOSE  */
    CURLY_OPEN = 285,              /* CURLY_OPEN  */
    CURLY_CLOSE = 286,             /* CURLY_CLOSE  */
    STR = 287,                     /* STR  */
    TYPE = 288,                    /* TYPE  */
    ID = 289,                      /* ID  */
    OP = 290,                      /* OP  */
    NUM = 291,                     /* NUM  */
    REAL = 292,                    /* REAL  */
    PROGRAM = 293,                 /* PROGRAM  */
    STATEMENTS = 294,              /* STATEMENTS  */
    STATEMENT = 295,               /* STATEMENT  */
    DECLARATIONS = 296,            /* DECLARATIONS  */
    GLOBAL_DECLARATIONS = 297,     /* GLOBAL_DECLARATIONS  */
    FUNCTIONS = 298,               /* FUNCTIONS  */
    PARAMETERS = 299,              /* PARAMETERS  */
    BODY = 300,                    /* BODY  */
    ASSIGNMENT = 301,              /* ASSIGNMENT  */
    EXPR_TERM = 302,               /* EXPR_TERM  */
    EXPR_FUNCTION_CALL = 303,      /* EXPR_FUNCTION_CALL  */
    EXPR_PLUS = 304,               /* EXPR_PLUS  */
    EXPR_MINUS = 305,              /* EXPR_MINUS  */
    EXPR_LE = 306,                 /* EXPR_LE  */
    EXPR_GE = 307,                 /* EXPR_GE  */
    EXPR_LT = 308,                 /* EXPR_LT  */
    EXPR_GT = 309,                 /* EXPR_GT  */
    EXPR_EQ = 310,                 /* EXPR_EQ  */
    EXPR_NE = 311,                 /* EXPR_NE  */
    EXPR_AND = 312,                /* EXPR_AND  */
    EXPR_OR = 313,                 /* EXPR_OR  */
    TERM_FACTOR = 314,             /* TERM_FACTOR  */
    TERM_MUL = 315,                /* TERM_MUL  */
    TERM_DIV = 316,                /* TERM_DIV  */
    TERM_MOD = 317,                /* TERM_MOD  */
    FACTOR_ID = 318,               /* FACTOR_ID  */
    FACTOR_NUM = 319,              /* FACTOR_NUM  */
    FACTOR_REAL = 320,             /* FACTOR_REAL  */
    FACTOR_PARENTHESIS = 321,      /* FACTOR_PARENTHESIS  */
    FACTOR_FUNCTION_CALL = 322,    /* FACTOR_FUNCTION_CALL  */
    FACTOR_RAND = 323,             /* FACTOR_RAND  */
    IFELSE = 324,                  /* IFELSE  */
    PRINT_STR = 325,               /* PRINT_STR  */
    DECLARATION = 326,             /* DECLARATION  */
    GLOBAL_DECLARATION = 327,      /* GLOBAL_DECLARATION  */
    FUNCTION_CALL = 328,           /* FUNCTION_CALL  */
    PARAMETER = 329,               /* PARAMETER  */
    FUNCTION = 330,                /* FUNCTION  */
    ARG_EXPR = 331,                /* ARG_EXPR  */
    ARGS_EXPR = 332                /* ARGS_EXPR  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 31 "src/styx.y"

	char* str;
	int num;
	double real;
	struct astnode* ast;

#line 148 "build/styx.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_BUILD_STYX_TAB_H_INCLUDED  */
