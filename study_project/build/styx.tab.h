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
    REPEAT = 267,                  /* REPEAT  */
    UNTIL = 268,                   /* UNTIL  */
    MAIN = 269,                    /* MAIN  */
    PLUS = 270,                    /* PLUS  */
    MINUS = 271,                   /* MINUS  */
    MULT = 272,                    /* MULT  */
    DIV = 273,                     /* DIV  */
    MOD = 274,                     /* MOD  */
    LE = 275,                      /* LE  */
    GE = 276,                      /* GE  */
    EQ = 277,                      /* EQ  */
    NE = 278,                      /* NE  */
    GT = 279,                      /* GT  */
    LT = 280,                      /* LT  */
    NOT = 281,                     /* NOT  */
    AND = 282,                     /* AND  */
    OR = 283,                      /* OR  */
    ASSIGN = 284,                  /* ASSIGN  */
    SEMICOLON = 285,               /* SEMICOLON  */
    COMMA = 286,                   /* COMMA  */
    ROUND_OPEN = 287,              /* ROUND_OPEN  */
    ROUND_CLOSE = 288,             /* ROUND_CLOSE  */
    CURLY_OPEN = 289,              /* CURLY_OPEN  */
    CURLY_CLOSE = 290,             /* CURLY_CLOSE  */
    STR = 291,                     /* STR  */
    ID = 292,                      /* ID  */
    CHR = 293,                     /* CHR  */
    NUM = 294,                     /* NUM  */
    TYPE = 295,                    /* TYPE  */
    REAL = 296,                    /* REAL  */
    PROGRAM = 297,                 /* PROGRAM  */
    STATEMENTS = 298,              /* STATEMENTS  */
    STATEMENT = 299,               /* STATEMENT  */
    DECLARATIONS = 300,            /* DECLARATIONS  */
    GLOBAL_DECLARATIONS = 301,     /* GLOBAL_DECLARATIONS  */
    FUNCTIONS = 302,               /* FUNCTIONS  */
    PARAMETERS = 303,              /* PARAMETERS  */
    BODY = 304,                    /* BODY  */
    ASSIGNMENT = 305,              /* ASSIGNMENT  */
    EXPR_TERM = 306,               /* EXPR_TERM  */
    EXPR_FUNCTION_CALL = 307,      /* EXPR_FUNCTION_CALL  */
    EXPR_PLUS = 308,               /* EXPR_PLUS  */
    EXPR_MINUS = 309,              /* EXPR_MINUS  */
    EXPR_LE = 310,                 /* EXPR_LE  */
    EXPR_GE = 311,                 /* EXPR_GE  */
    EXPR_LT = 312,                 /* EXPR_LT  */
    EXPR_GT = 313,                 /* EXPR_GT  */
    EXPR_EQ = 314,                 /* EXPR_EQ  */
    EXPR_NE = 315,                 /* EXPR_NE  */
    EXPR_AND = 316,                /* EXPR_AND  */
    EXPR_OR = 317,                 /* EXPR_OR  */
    TERM_FACTOR = 318,             /* TERM_FACTOR  */
    TERM_NOT_FACTOR = 319,         /* TERM_NOT_FACTOR  */
    TERM_MUL = 320,                /* TERM_MUL  */
    TERM_DIV = 321,                /* TERM_DIV  */
    TERM_MOD = 322,                /* TERM_MOD  */
    FACTOR_ID = 323,               /* FACTOR_ID  */
    FACTOR_NUM = 324,              /* FACTOR_NUM  */
    FACTOR_REAL = 325,             /* FACTOR_REAL  */
    FACTOR_PARENTHESIS = 326,      /* FACTOR_PARENTHESIS  */
    FACTOR_FUNCTION_CALL = 327,    /* FACTOR_FUNCTION_CALL  */
    FACTOR_RAND = 328,             /* FACTOR_RAND  */
    IFELSE = 329,                  /* IFELSE  */
    PRINT_STR = 330,               /* PRINT_STR  */
    DECLARATION = 331,             /* DECLARATION  */
    GLOBAL_DECLARATION = 332,      /* GLOBAL_DECLARATION  */
    FUNCTION_CALL = 333,           /* FUNCTION_CALL  */
    PARAMETER = 334,               /* PARAMETER  */
    FUNCTION = 335,                /* FUNCTION  */
    ARG_EXPR = 336,                /* ARG_EXPR  */
    ARGS_EXPR = 337,               /* ARGS_EXPR  */
    DECLARATION_ASSIGN = 338,      /* DECLARATION_ASSIGN  */
    FACTOR_STRING = 339,           /* FACTOR_STRING  */
    FACTOR_CHAR = 340,             /* FACTOR_CHAR  */
    PRINT_WIDTH = 341,             /* PRINT_WIDTH  */
    SYSTEM_CALL = 342,             /* SYSTEM_CALL  */
    STATEMENT_BLOCK = 343,         /* STATEMENT_BLOCK  */
    GLOBAL_DECLARATION_ASSIGN = 344, /* GLOBAL_DECLARATION_ASSIGN  */
    FOR_NUM = 345                  /* FOR_NUM  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 35 "src/styx.y"

	char* str;
	char chr;
	int num;
	double real;
	struct astnode* ast;

#line 162 "build/styx.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_BUILD_STYX_TAB_H_INCLUDED  */
