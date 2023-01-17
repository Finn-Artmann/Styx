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
    ALTERNATE = 269,               /* ALTERNATE  */
    MAIN = 270,                    /* MAIN  */
    PLUS = 271,                    /* PLUS  */
    MINUS = 272,                   /* MINUS  */
    MULT = 273,                    /* MULT  */
    DIV = 274,                     /* DIV  */
    MOD = 275,                     /* MOD  */
    LE = 276,                      /* LE  */
    GE = 277,                      /* GE  */
    EQ = 278,                      /* EQ  */
    NE = 279,                      /* NE  */
    GT = 280,                      /* GT  */
    LT = 281,                      /* LT  */
    NOT = 282,                     /* NOT  */
    AND = 283,                     /* AND  */
    OR = 284,                      /* OR  */
    ASSIGN = 285,                  /* ASSIGN  */
    SEMICOLON = 286,               /* SEMICOLON  */
    COMMA = 287,                   /* COMMA  */
    ROUND_OPEN = 288,              /* ROUND_OPEN  */
    ROUND_CLOSE = 289,             /* ROUND_CLOSE  */
    CURLY_OPEN = 290,              /* CURLY_OPEN  */
    CURLY_CLOSE = 291,             /* CURLY_CLOSE  */
    STR = 292,                     /* STR  */
    ID = 293,                      /* ID  */
    CHR = 294,                     /* CHR  */
    NUM = 295,                     /* NUM  */
    TYPE = 296,                    /* TYPE  */
    REAL = 297,                    /* REAL  */
    PROGRAM = 298,                 /* PROGRAM  */
    STATEMENTS = 299,              /* STATEMENTS  */
    STATEMENT = 300,               /* STATEMENT  */
    DECLARATIONS = 301,            /* DECLARATIONS  */
    GLOBAL_DECLARATIONS = 302,     /* GLOBAL_DECLARATIONS  */
    FUNCTIONS = 303,               /* FUNCTIONS  */
    PARAMETERS = 304,              /* PARAMETERS  */
    BODY = 305,                    /* BODY  */
    ASSIGNMENT = 306,              /* ASSIGNMENT  */
    EXPR_TERM = 307,               /* EXPR_TERM  */
    EXPR_FUNCTION_CALL = 308,      /* EXPR_FUNCTION_CALL  */
    EXPR_PLUS = 309,               /* EXPR_PLUS  */
    EXPR_MINUS = 310,              /* EXPR_MINUS  */
    EXPR_LE = 311,                 /* EXPR_LE  */
    EXPR_GE = 312,                 /* EXPR_GE  */
    EXPR_LT = 313,                 /* EXPR_LT  */
    EXPR_GT = 314,                 /* EXPR_GT  */
    EXPR_EQ = 315,                 /* EXPR_EQ  */
    EXPR_NE = 316,                 /* EXPR_NE  */
    EXPR_AND = 317,                /* EXPR_AND  */
    EXPR_OR = 318,                 /* EXPR_OR  */
    TERM_FACTOR = 319,             /* TERM_FACTOR  */
    TERM_NOT_FACTOR = 320,         /* TERM_NOT_FACTOR  */
    TERM_MUL = 321,                /* TERM_MUL  */
    TERM_DIV = 322,                /* TERM_DIV  */
    TERM_MOD = 323,                /* TERM_MOD  */
    FACTOR_ID = 324,               /* FACTOR_ID  */
    FACTOR_NUM = 325,              /* FACTOR_NUM  */
    FACTOR_REAL = 326,             /* FACTOR_REAL  */
    FACTOR_PARENTHESIS = 327,      /* FACTOR_PARENTHESIS  */
    FACTOR_FUNCTION_CALL = 328,    /* FACTOR_FUNCTION_CALL  */
    FACTOR_RAND = 329,             /* FACTOR_RAND  */
    IFELSE = 330,                  /* IFELSE  */
    PRINT_STR = 331,               /* PRINT_STR  */
    DECLARATION = 332,             /* DECLARATION  */
    GLOBAL_DECLARATION = 333,      /* GLOBAL_DECLARATION  */
    FUNCTION_CALL = 334,           /* FUNCTION_CALL  */
    PARAMETER = 335,               /* PARAMETER  */
    FUNCTION = 336,                /* FUNCTION  */
    ARG_EXPR = 337,                /* ARG_EXPR  */
    ARGS_EXPR = 338,               /* ARGS_EXPR  */
    DECLARATION_ASSIGN = 339,      /* DECLARATION_ASSIGN  */
    FACTOR_STRING = 340,           /* FACTOR_STRING  */
    FACTOR_CHAR = 341,             /* FACTOR_CHAR  */
    PRINT_WIDTH = 342,             /* PRINT_WIDTH  */
    SYSTEM_CALL = 343,             /* SYSTEM_CALL  */
    STATEMENT_BLOCK = 344,         /* STATEMENT_BLOCK  */
    GLOBAL_DECLARATION_ASSIGN = 345, /* GLOBAL_DECLARATION_ASSIGN  */
    FOR_NUM = 346,                 /* FOR_NUM  */
    ALTER_STATEMENTS = 347         /* ALTER_STATEMENTS  */
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

#line 164 "build/styx.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_BUILD_STYX_TAB_H_INCLUDED  */
