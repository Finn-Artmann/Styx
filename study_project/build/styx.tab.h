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
    ID = 288,                      /* ID  */
    OP = 289,                      /* OP  */
    CHR = 290,                     /* CHR  */
    NUM = 291,                     /* NUM  */
    TYPE = 292,                    /* TYPE  */
    REAL = 293,                    /* REAL  */
    PROGRAM = 294,                 /* PROGRAM  */
    STATEMENTS = 295,              /* STATEMENTS  */
    STATEMENT = 296,               /* STATEMENT  */
    DECLARATIONS = 297,            /* DECLARATIONS  */
    GLOBAL_DECLARATIONS = 298,     /* GLOBAL_DECLARATIONS  */
    FUNCTIONS = 299,               /* FUNCTIONS  */
    PARAMETERS = 300,              /* PARAMETERS  */
    BODY = 301,                    /* BODY  */
    ASSIGNMENT = 302,              /* ASSIGNMENT  */
    EXPR_TERM = 303,               /* EXPR_TERM  */
    EXPR_FUNCTION_CALL = 304,      /* EXPR_FUNCTION_CALL  */
    EXPR_PLUS = 305,               /* EXPR_PLUS  */
    EXPR_MINUS = 306,              /* EXPR_MINUS  */
    EXPR_LE = 307,                 /* EXPR_LE  */
    EXPR_GE = 308,                 /* EXPR_GE  */
    EXPR_LT = 309,                 /* EXPR_LT  */
    EXPR_GT = 310,                 /* EXPR_GT  */
    EXPR_EQ = 311,                 /* EXPR_EQ  */
    EXPR_NE = 312,                 /* EXPR_NE  */
    EXPR_AND = 313,                /* EXPR_AND  */
    EXPR_OR = 314,                 /* EXPR_OR  */
    TERM_FACTOR = 315,             /* TERM_FACTOR  */
    TERM_MUL = 316,                /* TERM_MUL  */
    TERM_DIV = 317,                /* TERM_DIV  */
    TERM_MOD = 318,                /* TERM_MOD  */
    FACTOR_ID = 319,               /* FACTOR_ID  */
    FACTOR_NUM = 320,              /* FACTOR_NUM  */
    FACTOR_REAL = 321,             /* FACTOR_REAL  */
    FACTOR_PARENTHESIS = 322,      /* FACTOR_PARENTHESIS  */
    FACTOR_FUNCTION_CALL = 323,    /* FACTOR_FUNCTION_CALL  */
    FACTOR_RAND = 324,             /* FACTOR_RAND  */
    IFELSE = 325,                  /* IFELSE  */
    PRINT_STR = 326,               /* PRINT_STR  */
    DECLARATION = 327,             /* DECLARATION  */
    GLOBAL_DECLARATION = 328,      /* GLOBAL_DECLARATION  */
    FUNCTION_CALL = 329,           /* FUNCTION_CALL  */
    PARAMETER = 330,               /* PARAMETER  */
    FUNCTION = 331,                /* FUNCTION  */
    ARG_EXPR = 332,                /* ARG_EXPR  */
    ARGS_EXPR = 333,               /* ARGS_EXPR  */
    DECLARATION_ASSIGN = 334,      /* DECLARATION_ASSIGN  */
    FACTOR_STRING = 335,           /* FACTOR_STRING  */
    FACTOR_CHAR = 336              /* FACTOR_CHAR  */
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

#line 153 "build/styx.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_BUILD_STYX_TAB_H_INCLUDED  */
