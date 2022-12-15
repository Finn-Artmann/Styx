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

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
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
    MAIN = 265,                    /* MAIN  */
    PLUS = 266,                    /* PLUS  */
    MINUS = 267,                   /* MINUS  */
    MULT = 268,                    /* MULT  */
    DIV = 269,                     /* DIV  */
    LE = 270,                      /* LE  */
    GE = 271,                      /* GE  */
    EQ = 272,                      /* EQ  */
    NE = 273,                      /* NE  */
    GT = 274,                      /* GT  */
    LT = 275,                      /* LT  */
    AND = 276,                     /* AND  */
    OR = 277,                      /* OR  */
    SEMICOLON = 278,               /* SEMICOLON  */
    COMMA = 279,                   /* COMMA  */
    ROUND_OPEN = 280,              /* ROUND_OPEN  */
    ROUND_CLOSE = 281,             /* ROUND_CLOSE  */
    CURLY_OPEN = 282,              /* CURLY_OPEN  */
    CURLY_CLOSE = 283,             /* CURLY_CLOSE  */
    STR = 284,                     /* STR  */
    TYPE = 285,                    /* TYPE  */
    ID = 286,                      /* ID  */
    OP = 287,                      /* OP  */
    NUM = 288                      /* NUM  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 111 "parser.y"

	char* type;
	char* id;
	char* str;
	int num;
	struct astnode* ast;

#line 105 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
