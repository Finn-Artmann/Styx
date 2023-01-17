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
#line 1 "src/styx.y"

	// Header Code

	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include <time.h>

	#include "vars_interp.h"
	#include "ast.h"
	

	int yylex(void);

	extern FILE *yyin;
	extern int yy_flex_debug;
	extern int yylineno;
	void yyerror(const char *msg){
		fprintf(stderr, "%s\n", msg);
		fprintf(stderr, "Error at line %d\n", yylineno);
	}
	const char * const* token_table;
	
	

#line 97 "build/styx.tab.c"

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

#include "styx.tab.h"
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
  YYSYMBOL_SYSTEM = 11,                    /* SYSTEM  */
  YYSYMBOL_REPEAT = 12,                    /* REPEAT  */
  YYSYMBOL_UNTIL = 13,                     /* UNTIL  */
  YYSYMBOL_MAIN = 14,                      /* MAIN  */
  YYSYMBOL_PLUS = 15,                      /* PLUS  */
  YYSYMBOL_MINUS = 16,                     /* MINUS  */
  YYSYMBOL_MULT = 17,                      /* MULT  */
  YYSYMBOL_DIV = 18,                       /* DIV  */
  YYSYMBOL_MOD = 19,                       /* MOD  */
  YYSYMBOL_LE = 20,                        /* LE  */
  YYSYMBOL_GE = 21,                        /* GE  */
  YYSYMBOL_EQ = 22,                        /* EQ  */
  YYSYMBOL_NE = 23,                        /* NE  */
  YYSYMBOL_GT = 24,                        /* GT  */
  YYSYMBOL_LT = 25,                        /* LT  */
  YYSYMBOL_NOT = 26,                       /* NOT  */
  YYSYMBOL_AND = 27,                       /* AND  */
  YYSYMBOL_OR = 28,                        /* OR  */
  YYSYMBOL_ASSIGN = 29,                    /* ASSIGN  */
  YYSYMBOL_SEMICOLON = 30,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 31,                     /* COMMA  */
  YYSYMBOL_ROUND_OPEN = 32,                /* ROUND_OPEN  */
  YYSYMBOL_ROUND_CLOSE = 33,               /* ROUND_CLOSE  */
  YYSYMBOL_CURLY_OPEN = 34,                /* CURLY_OPEN  */
  YYSYMBOL_CURLY_CLOSE = 35,               /* CURLY_CLOSE  */
  YYSYMBOL_STR = 36,                       /* STR  */
  YYSYMBOL_ID = 37,                        /* ID  */
  YYSYMBOL_CHR = 38,                       /* CHR  */
  YYSYMBOL_NUM = 39,                       /* NUM  */
  YYSYMBOL_TYPE = 40,                      /* TYPE  */
  YYSYMBOL_REAL = 41,                      /* REAL  */
  YYSYMBOL_PROGRAM = 42,                   /* PROGRAM  */
  YYSYMBOL_STATEMENTS = 43,                /* STATEMENTS  */
  YYSYMBOL_STATEMENT = 44,                 /* STATEMENT  */
  YYSYMBOL_DECLARATIONS = 45,              /* DECLARATIONS  */
  YYSYMBOL_GLOBAL_DECLARATIONS = 46,       /* GLOBAL_DECLARATIONS  */
  YYSYMBOL_FUNCTIONS = 47,                 /* FUNCTIONS  */
  YYSYMBOL_PARAMETERS = 48,                /* PARAMETERS  */
  YYSYMBOL_BODY = 49,                      /* BODY  */
  YYSYMBOL_ASSIGNMENT = 50,                /* ASSIGNMENT  */
  YYSYMBOL_EXPR_TERM = 51,                 /* EXPR_TERM  */
  YYSYMBOL_EXPR_FUNCTION_CALL = 52,        /* EXPR_FUNCTION_CALL  */
  YYSYMBOL_EXPR_PLUS = 53,                 /* EXPR_PLUS  */
  YYSYMBOL_EXPR_MINUS = 54,                /* EXPR_MINUS  */
  YYSYMBOL_EXPR_LE = 55,                   /* EXPR_LE  */
  YYSYMBOL_EXPR_GE = 56,                   /* EXPR_GE  */
  YYSYMBOL_EXPR_LT = 57,                   /* EXPR_LT  */
  YYSYMBOL_EXPR_GT = 58,                   /* EXPR_GT  */
  YYSYMBOL_EXPR_EQ = 59,                   /* EXPR_EQ  */
  YYSYMBOL_EXPR_NE = 60,                   /* EXPR_NE  */
  YYSYMBOL_EXPR_AND = 61,                  /* EXPR_AND  */
  YYSYMBOL_EXPR_OR = 62,                   /* EXPR_OR  */
  YYSYMBOL_TERM_FACTOR = 63,               /* TERM_FACTOR  */
  YYSYMBOL_TERM_NOT_FACTOR = 64,           /* TERM_NOT_FACTOR  */
  YYSYMBOL_TERM_MUL = 65,                  /* TERM_MUL  */
  YYSYMBOL_TERM_DIV = 66,                  /* TERM_DIV  */
  YYSYMBOL_TERM_MOD = 67,                  /* TERM_MOD  */
  YYSYMBOL_FACTOR_ID = 68,                 /* FACTOR_ID  */
  YYSYMBOL_FACTOR_NUM = 69,                /* FACTOR_NUM  */
  YYSYMBOL_FACTOR_REAL = 70,               /* FACTOR_REAL  */
  YYSYMBOL_FACTOR_PARENTHESIS = 71,        /* FACTOR_PARENTHESIS  */
  YYSYMBOL_FACTOR_FUNCTION_CALL = 72,      /* FACTOR_FUNCTION_CALL  */
  YYSYMBOL_FACTOR_RAND = 73,               /* FACTOR_RAND  */
  YYSYMBOL_IFELSE = 74,                    /* IFELSE  */
  YYSYMBOL_PRINT_STR = 75,                 /* PRINT_STR  */
  YYSYMBOL_DECLARATION = 76,               /* DECLARATION  */
  YYSYMBOL_GLOBAL_DECLARATION = 77,        /* GLOBAL_DECLARATION  */
  YYSYMBOL_FUNCTION_CALL = 78,             /* FUNCTION_CALL  */
  YYSYMBOL_PARAMETER = 79,                 /* PARAMETER  */
  YYSYMBOL_FUNCTION = 80,                  /* FUNCTION  */
  YYSYMBOL_ARG_EXPR = 81,                  /* ARG_EXPR  */
  YYSYMBOL_ARGS_EXPR = 82,                 /* ARGS_EXPR  */
  YYSYMBOL_DECLARATION_ASSIGN = 83,        /* DECLARATION_ASSIGN  */
  YYSYMBOL_FACTOR_STRING = 84,             /* FACTOR_STRING  */
  YYSYMBOL_FACTOR_CHAR = 85,               /* FACTOR_CHAR  */
  YYSYMBOL_PRINT_WIDTH = 86,               /* PRINT_WIDTH  */
  YYSYMBOL_SYSTEM_CALL = 87,               /* SYSTEM_CALL  */
  YYSYMBOL_STATEMENT_BLOCK = 88,           /* STATEMENT_BLOCK  */
  YYSYMBOL_GLOBAL_DECLARATION_ASSIGN = 89, /* GLOBAL_DECLARATION_ASSIGN  */
  YYSYMBOL_FOR_NUM = 90,                   /* FOR_NUM  */
  YYSYMBOL_YYACCEPT = 91,                  /* $accept  */
  YYSYMBOL_start = 92,                     /* start  */
  YYSYMBOL_program = 93,                   /* program  */
  YYSYMBOL_functions = 94,                 /* functions  */
  YYSYMBOL_function = 95,                  /* function  */
  YYSYMBOL_parameters = 96,                /* parameters  */
  YYSYMBOL_parameter = 97,                 /* parameter  */
  YYSYMBOL_main = 98,                      /* main  */
  YYSYMBOL_body = 99,                      /* body  */
  YYSYMBOL_global_declaration = 100,       /* global_declaration  */
  YYSYMBOL_declaration = 101,              /* declaration  */
  YYSYMBOL_statements = 102,               /* statements  */
  YYSYMBOL_statement = 103,                /* statement  */
  YYSYMBOL_assignment = 104,               /* assignment  */
  YYSYMBOL_if_statement = 105,             /* if_statement  */
  YYSYMBOL_for_statement = 106,            /* for_statement  */
  YYSYMBOL_repeat_statement = 107,         /* repeat_statement  */
  YYSYMBOL_return_statement = 108,         /* return_statement  */
  YYSYMBOL_print_statement = 109,          /* print_statement  */
  YYSYMBOL_scan_statement = 110,           /* scan_statement  */
  YYSYMBOL_function_call = 111,            /* function_call  */
  YYSYMBOL_arguments = 112,                /* arguments  */
  YYSYMBOL_expression = 113,               /* expression  */
  YYSYMBOL_term = 114,                     /* term  */
  YYSYMBOL_factor = 115                    /* factor  */
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
#define YYFINAL  9
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   317

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  91
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  25
/* YYNRULES -- Number of rules.  */
#define YYNRULES  70
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  171

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   345


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
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,   110,   110,   113,   120,   127,   128,   130,   140,   141,
     142,   144,   147,   161,   162,   166,   167,   170,   171,   173,
     174,   176,   177,   178,   179,   180,   181,   182,   183,   184,
     185,   186,   189,   191,   192,   195,   196,   198,   200,   202,
     203,   205,   208,   209,   211,   212,   213,   215,   216,   217,
     218,   219,   220,   221,   222,   223,   224,   225,   228,   229,
     230,   231,   232,   234,   235,   236,   237,   238,   239,   240,
     241
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
  "RETURN", "PRINT", "SCAN", "RAND_INT", "GLOBAL", "SYSTEM", "REPEAT",
  "UNTIL", "MAIN", "PLUS", "MINUS", "MULT", "DIV", "MOD", "LE", "GE", "EQ",
  "NE", "GT", "LT", "NOT", "AND", "OR", "ASSIGN", "SEMICOLON", "COMMA",
  "ROUND_OPEN", "ROUND_CLOSE", "CURLY_OPEN", "CURLY_CLOSE", "STR", "ID",
  "CHR", "NUM", "TYPE", "REAL", "PROGRAM", "STATEMENTS", "STATEMENT",
  "DECLARATIONS", "GLOBAL_DECLARATIONS", "FUNCTIONS", "PARAMETERS", "BODY",
  "ASSIGNMENT", "EXPR_TERM", "EXPR_FUNCTION_CALL", "EXPR_PLUS",
  "EXPR_MINUS", "EXPR_LE", "EXPR_GE", "EXPR_LT", "EXPR_GT", "EXPR_EQ",
  "EXPR_NE", "EXPR_AND", "EXPR_OR", "TERM_FACTOR", "TERM_NOT_FACTOR",
  "TERM_MUL", "TERM_DIV", "TERM_MOD", "FACTOR_ID", "FACTOR_NUM",
  "FACTOR_REAL", "FACTOR_PARENTHESIS", "FACTOR_FUNCTION_CALL",
  "FACTOR_RAND", "IFELSE", "PRINT_STR", "DECLARATION",
  "GLOBAL_DECLARATION", "FUNCTION_CALL", "PARAMETER", "FUNCTION",
  "ARG_EXPR", "ARGS_EXPR", "DECLARATION_ASSIGN", "FACTOR_STRING",
  "FACTOR_CHAR", "PRINT_WIDTH", "SYSTEM_CALL", "STATEMENT_BLOCK",
  "GLOBAL_DECLARATION_ASSIGN", "FOR_NUM", "$accept", "start", "program",
  "functions", "function", "parameters", "parameter", "main", "body",
  "global_declaration", "declaration", "statements", "statement",
  "assignment", "if_statement", "for_statement", "repeat_statement",
  "return_statement", "print_statement", "scan_statement", "function_call",
  "arguments", "expression", "term", "factor", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-34)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     -32,   -11,    18,   -34,   -32,   -34,   -34,   -10,    -5,   -34,
     -34,   -34,    -8,   -17,    -6,    -4,   -18,   -34,    82,   -34,
     -17,    -2,    -3,     4,     5,     6,     8,    19,    10,    20,
      21,   101,     5,    82,   -34,   -25,   -34,   -34,    16,   -34,
      22,   -34,   -34,    82,   -34,    24,   -34,   -34,   -34,   -34,
     -34,   -34,   -34,   198,    -7,   -34,   -34,    82,     5,    36,
      26,   214,     5,    23,    17,    25,    28,    82,   -34,   142,
      30,     5,     5,   -24,   -34,   -34,   -34,     5,     5,     5,
       5,     5,     5,     5,     5,     5,     5,   -34,   101,   101,
     101,    31,   156,     5,    34,   -34,   128,    38,    45,    -9,
      46,    47,   -34,   -34,   278,   -14,   278,     5,   -34,    -7,
      -7,    -7,    -7,    -7,    -7,    -7,    -7,    -7,    -7,   -34,
     -34,   -34,   -34,    35,   230,    49,     5,    50,    54,   -34,
       5,   -34,   -34,    68,     5,   -34,   246,    82,    58,    82,
     170,   -34,    59,   262,    65,   278,   -34,    63,    70,    67,
      66,    72,    76,   -34,     5,   109,    71,   -34,   -34,    85,
     184,    83,    82,   -34,    94,    82,    90,   -34,    91,   -34,
     -34
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,     0,     2,     0,     5,     4,     0,     0,     1,
       6,     3,     0,    10,     0,     0,     0,     8,    14,    11,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    14,    66,    63,    67,    64,     0,    65,
       0,    31,    30,    13,    19,     0,    22,    23,    24,    25,
      26,    27,    68,     0,    47,    58,     9,    14,     0,     0,
      63,     0,     0,     0,     0,     0,     0,    14,    62,     0,
       0,     0,    46,     0,    12,    20,    21,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    29,     0,     0,
       0,     0,     0,     0,     0,    38,     0,     0,     0,     0,
       0,     0,    69,    28,    32,     0,    44,     0,    17,    48,
      49,    50,    51,    52,    53,    54,    55,    56,    57,    59,
      60,    61,     7,     0,     0,     0,     0,     0,     0,    70,
       0,    15,    43,     0,     0,    42,     0,    14,     0,    14,
       0,    39,     0,     0,     0,    45,    18,     0,     0,     0,
       0,     0,     0,    16,     0,    33,     0,    36,    40,     0,
       0,     0,    14,    41,     0,    14,     0,    37,     0,    35,
      34
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -34,   -34,   -34,   -34,   123,   -34,   108,   126,   -33,   -34,
      75,   -34,    92,     3,   -34,   -34,   -34,   -34,   -34,   -34,
     -34,   -34,   -23,   231,   -29
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
       0,     2,     3,     4,     5,    16,    17,     6,    40,    41,
      42,    43,    44,    45,    46,    47,    48,    49,    50,    51,
      52,   105,    53,    54,    55
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      70,    61,    68,     7,    71,   107,   108,    72,     1,    69,
      88,    89,    90,    20,    27,    21,    29,   134,     9,   135,
     130,   131,    12,    15,    91,    14,     8,    13,    18,    58,
      94,    31,    57,    19,   101,    92,    59,    32,    62,    96,
      63,    34,    60,    36,    37,    27,    39,    29,   104,   106,
      65,    64,    66,    73,    76,    67,    98,    74,    72,   119,
     120,   121,    99,    97,   100,   103,   122,   125,    32,   137,
     124,   128,    34,    60,    36,    37,    38,    39,   129,   132,
     141,   144,   133,   139,   136,    22,   142,    23,    24,    25,
      26,    27,    28,    29,    30,   148,   152,   154,   155,    71,
     156,   157,   158,   140,   147,   162,   150,   143,    31,   159,
      27,   145,    29,   161,    32,   163,    33,   165,    34,    35,
      36,    37,    38,    39,   167,   169,   170,    10,    56,   166,
      11,   160,   168,    32,    93,    75,     0,    34,    60,    36,
      37,   149,    39,    77,    78,     0,     0,     0,    79,    80,
      81,    82,    83,    84,     0,    85,    86,    77,    78,   126,
       0,   127,    79,    80,    81,    82,    83,    84,     0,    85,
      86,    77,    78,     0,     0,   102,    79,    80,    81,    82,
      83,    84,     0,    85,    86,    77,    78,     0,     0,   123,
      79,    80,    81,    82,    83,    84,     0,    85,    86,    77,
      78,     0,     0,   151,    79,    80,    81,    82,    83,    84,
       0,    85,    86,    77,    78,     0,     0,   164,    79,    80,
      81,    82,    83,    84,     0,    85,    86,     0,    87,    77,
      78,     0,     0,     0,    79,    80,    81,    82,    83,    84,
       0,    85,    86,     0,    95,    77,    78,     0,     0,     0,
      79,    80,    81,    82,    83,    84,     0,    85,    86,     0,
     138,    77,    78,     0,     0,     0,    79,    80,    81,    82,
      83,    84,     0,    85,    86,     0,   146,    77,    78,     0,
       0,     0,    79,    80,    81,    82,    83,    84,     0,    85,
      86,     0,   153,    77,    78,     0,     0,     0,    79,    80,
      81,    82,    83,    84,     0,    85,    86,     0,   109,   110,
     111,   112,   113,   114,   115,   116,   117,   118
};

static const yytype_int16 yycheck[] =
{
      33,    24,    31,    14,    29,    29,    30,    32,    40,    32,
      17,    18,    19,    31,     9,    33,    11,    31,     0,    33,
      29,    30,    32,    40,    57,    33,    37,    32,    34,    32,
      59,    26,    34,    37,    67,    58,    32,    32,    32,    62,
      32,    36,    37,    38,    39,     9,    41,    11,    71,    72,
      40,    32,    32,    37,    30,    34,    39,    35,    32,    88,
      89,    90,    37,    40,    36,    35,    35,    33,    32,    34,
      93,    33,    36,    37,    38,    39,    40,    41,    33,    33,
      30,    13,    35,    34,   107,     3,    32,     5,     6,     7,
       8,     9,    10,    11,    12,    37,    37,    32,    35,    29,
      33,    35,    30,   126,   137,    34,   139,   130,    26,    33,
       9,   134,    11,     4,    32,    30,    34,    34,    36,    37,
      38,    39,    40,    41,    30,    35,    35,     4,    20,   162,
       4,   154,   165,    32,    59,    43,    -1,    36,    37,    38,
      39,   138,    41,    15,    16,    -1,    -1,    -1,    20,    21,
      22,    23,    24,    25,    -1,    27,    28,    15,    16,    31,
      -1,    33,    20,    21,    22,    23,    24,    25,    -1,    27,
      28,    15,    16,    -1,    -1,    33,    20,    21,    22,    23,
      24,    25,    -1,    27,    28,    15,    16,    -1,    -1,    33,
      20,    21,    22,    23,    24,    25,    -1,    27,    28,    15,
      16,    -1,    -1,    33,    20,    21,    22,    23,    24,    25,
      -1,    27,    28,    15,    16,    -1,    -1,    33,    20,    21,
      22,    23,    24,    25,    -1,    27,    28,    -1,    30,    15,
      16,    -1,    -1,    -1,    20,    21,    22,    23,    24,    25,
      -1,    27,    28,    -1,    30,    15,    16,    -1,    -1,    -1,
      20,    21,    22,    23,    24,    25,    -1,    27,    28,    -1,
      30,    15,    16,    -1,    -1,    -1,    20,    21,    22,    23,
      24,    25,    -1,    27,    28,    -1,    30,    15,    16,    -1,
      -1,    -1,    20,    21,    22,    23,    24,    25,    -1,    27,
      28,    -1,    30,    15,    16,    -1,    -1,    -1,    20,    21,
      22,    23,    24,    25,    -1,    27,    28,    -1,    77,    78,
      79,    80,    81,    82,    83,    84,    85,    86
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    40,    92,    93,    94,    95,    98,    14,    37,     0,
      95,    98,    32,    32,    33,    40,    96,    97,    34,    37,
      31,    33,     3,     5,     6,     7,     8,     9,    10,    11,
      12,    26,    32,    34,    36,    37,    38,    39,    40,    41,
      99,   100,   101,   102,   103,   104,   105,   106,   107,   108,
     109,   110,   111,   113,   114,   115,    97,    34,    32,    32,
      37,   113,    32,    32,    32,    40,    32,    34,   115,   113,
      99,    29,    32,    37,    35,   103,    30,    15,    16,    20,
      21,    22,    23,    24,    25,    27,    28,    30,    17,    18,
      19,    99,   113,   101,   115,    30,   113,    40,    39,    37,
      36,    99,    33,    35,   113,   112,   113,    29,    30,   114,
     114,   114,   114,   114,   114,   114,   114,   114,   114,   115,
     115,   115,    35,    33,   113,    33,    31,    33,    33,    33,
      29,    30,    33,    35,    31,    33,   113,    34,    30,    34,
     113,    30,    32,   113,    13,   113,    30,    99,    37,   104,
      99,    33,    37,    30,    32,    35,    33,    35,    30,    33,
     113,     4,    34,    30,    33,    34,    99,    30,    99,    35,
      35
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    91,    92,    93,    93,    94,    94,    95,    96,    96,
      96,    97,    98,    99,    99,   100,   100,   101,   101,   102,
     102,   103,   103,   103,   103,   103,   103,   103,   103,   103,
     103,   103,   104,   105,   105,   106,   106,   107,   108,   109,
     109,   110,   111,   111,   112,   112,   112,   113,   113,   113,
     113,   113,   113,   113,   113,   113,   113,   113,   114,   114,
     114,   114,   114,   115,   115,   115,   115,   115,   115,   115,
     115
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     2,     8,     1,     3,
       0,     2,     7,     1,     0,     4,     6,     3,     5,     1,
       2,     2,     1,     1,     1,     1,     1,     1,     3,     2,
       1,     1,     3,     7,    11,    10,     7,     9,     3,     5,
       7,     8,     4,     4,     1,     3,     0,     1,     3,     3,
       3,     3,     3,     3,     3,     3,     3,     3,     1,     3,
       3,     3,     2,     1,     1,     1,     1,     1,     1,     3,
       4
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
#line 110 "src/styx.y"
               {exec_ast((yyvsp[0].ast)); printf("\n"); print_ast((yyvsp[0].ast), 0); }
#line 1859 "build/styx.tab.c"
    break;

  case 3: /* program: functions main  */
#line 113 "src/styx.y"
                        {
       		printf(">>> [SŦYX parser]: Program syntax is valid\n");
                 
                (yyval.ast) = new_astnode(PROGRAM);
                (yyval.ast)->child[0] = (yyvsp[-1].ast);
                (yyval.ast)->child[1] = (yyvsp[0].ast);
	}
#line 1871 "build/styx.tab.c"
    break;

  case 4: /* program: main  */
#line 120 "src/styx.y"
               {
		printf(">>> [SŦYX parser] Program syntax is valid\n");
		
		(yyval.ast) = new_astnode(PROGRAM);
		(yyval.ast)->child[0] = (yyvsp[0].ast);
	}
#line 1882 "build/styx.tab.c"
    break;

  case 5: /* functions: function  */
#line 127 "src/styx.y"
                    { (yyval.ast) = new_astnode(FUNCTIONS); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 1888 "build/styx.tab.c"
    break;

  case 6: /* functions: functions function  */
#line 128 "src/styx.y"
                              { (yyval.ast) = new_astnode(FUNCTIONS);  (yyval.ast)->child[0] = (yyvsp[-1].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 1894 "build/styx.tab.c"
    break;

  case 7: /* function: TYPE ID ROUND_OPEN parameters ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE  */
#line 131 "src/styx.y"
        { 
		(yyval.ast) = new_astnode(FUNCTION);
		(yyval.ast)->child[0] = (yyvsp[-4].ast);
		(yyval.ast)->child[1] = (yyvsp[-1].ast);
		(yyval.ast)->val.str = (yyvsp[-6].str);
		(yyval.ast)->data_type = (yyvsp[-7].num);

	}
#line 1907 "build/styx.tab.c"
    break;

  case 8: /* parameters: parameter  */
#line 140 "src/styx.y"
                      { (yyval.ast) = new_astnode(PARAMETERS); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 1913 "build/styx.tab.c"
    break;

  case 9: /* parameters: parameters COMMA parameter  */
#line 141 "src/styx.y"
                                      { (yyval.ast) = new_astnode(PARAMETERS); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 1919 "build/styx.tab.c"
    break;

  case 10: /* parameters: %empty  */
#line 142 "src/styx.y"
                  { (yyval.ast) = NULL; }
#line 1925 "build/styx.tab.c"
    break;

  case 11: /* parameter: TYPE ID  */
#line 144 "src/styx.y"
                   { (yyval.ast) = new_astnode(PARAMETER); (yyval.ast)->val.str = (yyvsp[0].str); (yyval.ast)->data_type = AST_ID_T; }
#line 1931 "build/styx.tab.c"
    break;

  case 12: /* main: TYPE MAIN ROUND_OPEN ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE  */
#line 148 "src/styx.y"
    {	
	if((yyvsp[-6].num) != AST_INT_T){
		printf("Error: Main function must return ı’Ŧ and must have identifier ºÆı’\n");
		printf("Found: TYPE: %d \n", (yyvsp[-6].num));
		exit(1);
	}
	
	(yyval.ast) = new_astnode(MAIN);
	(yyval.ast)->val.str = (yyvsp[-5].str);
	(yyval.ast)->data_type = AST_ID_T;
	(yyval.ast)->child[0] = (yyvsp[-1].ast);
    }
#line 1948 "build/styx.tab.c"
    break;

  case 13: /* body: statements  */
#line 161 "src/styx.y"
                 { (yyval.ast) = new_astnode(BODY); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 1954 "build/styx.tab.c"
    break;

  case 14: /* body: %empty  */
#line 162 "src/styx.y"
             { (yyval.ast) = NULL; }
#line 1960 "build/styx.tab.c"
    break;

  case 15: /* global_declaration: GLOBAL TYPE ID SEMICOLON  */
#line 166 "src/styx.y"
                                             { (yyval.ast) = new_astnode(GLOBAL_DECLARATION); (yyval.ast)->val.str = (yyvsp[-1].str); (yyval.ast)->data_type = (yyvsp[-2].num); }
#line 1966 "build/styx.tab.c"
    break;

  case 16: /* global_declaration: GLOBAL TYPE ID ASSIGN expression SEMICOLON  */
#line 167 "src/styx.y"
                                                             { (yyval.ast) = new_astnode(GLOBAL_DECLARATION_ASSIGN); (yyval.ast)->val.str = (yyvsp[-3].str); (yyval.ast)->data_type = (yyvsp[-4].num); (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 1972 "build/styx.tab.c"
    break;

  case 17: /* declaration: TYPE ID SEMICOLON  */
#line 170 "src/styx.y"
                               { (yyval.ast) = new_astnode(DECLARATION); (yyval.ast)->val.str = (yyvsp[-1].str); (yyval.ast)->data_type = (yyvsp[-2].num); }
#line 1978 "build/styx.tab.c"
    break;

  case 18: /* declaration: TYPE ID ASSIGN expression SEMICOLON  */
#line 171 "src/styx.y"
                                                      { (yyval.ast) = new_astnode(DECLARATION_ASSIGN); (yyval.ast)->val.str = (yyvsp[-3].str); (yyval.ast)->data_type = (yyvsp[-4].num); (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 1984 "build/styx.tab.c"
    break;

  case 19: /* statements: statement  */
#line 173 "src/styx.y"
                      { (yyval.ast) = new_astnode(STATEMENTS); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 1990 "build/styx.tab.c"
    break;

  case 20: /* statements: statements statement  */
#line 174 "src/styx.y"
                                 { (yyval.ast) = new_astnode(STATEMENTS); (yyval.ast)->child[0] = (yyvsp[-1].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 1996 "build/styx.tab.c"
    break;

  case 21: /* statement: assignment SEMICOLON  */
#line 176 "src/styx.y"
                                { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 2002 "build/styx.tab.c"
    break;

  case 22: /* statement: if_statement  */
#line 177 "src/styx.y"
                        { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2008 "build/styx.tab.c"
    break;

  case 23: /* statement: for_statement  */
#line 178 "src/styx.y"
                         { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2014 "build/styx.tab.c"
    break;

  case 24: /* statement: repeat_statement  */
#line 179 "src/styx.y"
                            { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2020 "build/styx.tab.c"
    break;

  case 25: /* statement: return_statement  */
#line 180 "src/styx.y"
                            { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2026 "build/styx.tab.c"
    break;

  case 26: /* statement: print_statement  */
#line 181 "src/styx.y"
                           { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2032 "build/styx.tab.c"
    break;

  case 27: /* statement: scan_statement  */
#line 182 "src/styx.y"
                          { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2038 "build/styx.tab.c"
    break;

  case 28: /* statement: CURLY_OPEN body CURLY_CLOSE  */
#line 183 "src/styx.y"
                                       { (yyval.ast) = new_astnode(STATEMENT_BLOCK); (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 2044 "build/styx.tab.c"
    break;

  case 29: /* statement: expression SEMICOLON  */
#line 184 "src/styx.y"
                                { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 2050 "build/styx.tab.c"
    break;

  case 30: /* statement: declaration  */
#line 185 "src/styx.y"
                       { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2056 "build/styx.tab.c"
    break;

  case 31: /* statement: global_declaration  */
#line 186 "src/styx.y"
                              { (yyval.ast) = new_astnode(STATEMENT); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2062 "build/styx.tab.c"
    break;

  case 32: /* assignment: ID ASSIGN expression  */
#line 189 "src/styx.y"
                                 { (yyval.ast) = new_astnode(ASSIGNMENT); (yyval.ast)->val.str = (yyvsp[-2].str); (yyval.ast)->data_type = AST_ID_T; (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2068 "build/styx.tab.c"
    break;

  case 33: /* if_statement: IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE  */
#line 191 "src/styx.y"
                                                                               { (yyval.ast) = new_astnode(IF); (yyval.ast)->child[0] = (yyvsp[-4].ast); (yyval.ast)->child[1] = (yyvsp[-1].ast); }
#line 2074 "build/styx.tab.c"
    break;

  case 34: /* if_statement: IF ROUND_OPEN expression ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE ELSE CURLY_OPEN body CURLY_CLOSE  */
#line 192 "src/styx.y"
                                                                                                                { (yyval.ast) = new_astnode(IFELSE); (yyval.ast)->child[0] = (yyvsp[-8].ast); (yyval.ast)->child[1] = (yyvsp[-5].ast); (yyval.ast)->child[2] = (yyvsp[-1].ast); }
#line 2080 "build/styx.tab.c"
    break;

  case 35: /* for_statement: FOR ROUND_OPEN declaration expression SEMICOLON assignment ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE  */
#line 195 "src/styx.y"
                                                                                                                  { (yyval.ast) = new_astnode(FOR); (yyval.ast)->child[0] = (yyvsp[-7].ast); (yyval.ast)->child[1] = (yyvsp[-6].ast); (yyval.ast)->child[2] = (yyvsp[-4].ast); (yyval.ast)->child[3] = (yyvsp[-1].ast); }
#line 2086 "build/styx.tab.c"
    break;

  case 36: /* for_statement: FOR ROUND_OPEN factor ROUND_CLOSE CURLY_OPEN body CURLY_CLOSE  */
#line 196 "src/styx.y"
                                                                                        { (yyval.ast) = new_astnode(FOR_NUM); (yyval.ast)->child[0] = (yyvsp[-4].ast); (yyval.ast)->child[1] = (yyvsp[-1].ast); }
#line 2092 "build/styx.tab.c"
    break;

  case 37: /* repeat_statement: REPEAT CURLY_OPEN body CURLY_CLOSE UNTIL ROUND_OPEN expression ROUND_CLOSE SEMICOLON  */
#line 198 "src/styx.y"
                                                                                                       { (yyval.ast) = new_astnode(REPEAT); (yyval.ast)->child[0] = (yyvsp[-6].ast); (yyval.ast)->child[1] = (yyvsp[-2].ast); }
#line 2098 "build/styx.tab.c"
    break;

  case 38: /* return_statement: RETURN expression SEMICOLON  */
#line 200 "src/styx.y"
                                              { (yyval.ast) = new_astnode(RETURN); (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 2104 "build/styx.tab.c"
    break;

  case 39: /* print_statement: PRINT ROUND_OPEN expression ROUND_CLOSE SEMICOLON  */
#line 202 "src/styx.y"
                                                                   { (yyval.ast) = new_astnode(PRINT); (yyval.ast)->child[0] = (yyvsp[-2].ast); }
#line 2110 "build/styx.tab.c"
    break;

  case 40: /* print_statement: PRINT ROUND_OPEN expression COMMA expression ROUND_CLOSE SEMICOLON  */
#line 203 "src/styx.y"
                                                                                                     { (yyval.ast) = new_astnode(PRINT_WIDTH); (yyval.ast)->child[0] = (yyvsp[-4].ast); (yyval.ast)->child[1] = (yyvsp[-2].ast); }
#line 2116 "build/styx.tab.c"
    break;

  case 41: /* scan_statement: SCAN ROUND_OPEN TYPE ROUND_CLOSE ROUND_OPEN ID ROUND_CLOSE SEMICOLON  */
#line 205 "src/styx.y"
                                                                                     { (yyval.ast) = new_astnode(SCAN); (yyval.ast)->val.str = (yyvsp[-2].str); (yyval.ast)->data_type = (yyvsp[-5].num); }
#line 2122 "build/styx.tab.c"
    break;

  case 42: /* function_call: ID ROUND_OPEN arguments ROUND_CLOSE  */
#line 208 "src/styx.y"
                                                   { (yyval.ast) = new_astnode(FUNCTION_CALL); (yyval.ast)->val.str = (yyvsp[-3].str); (yyval.ast)->data_type = AST_ID_T; (yyval.ast)->child[0] = (yyvsp[-1].ast); }
#line 2128 "build/styx.tab.c"
    break;

  case 43: /* function_call: SYSTEM ROUND_OPEN STR ROUND_CLOSE  */
#line 209 "src/styx.y"
                                                            { (yyval.ast) = new_astnode(SYSTEM_CALL); (yyval.ast)->data_type = AST_INT_T; (yyval.ast)->val.str = (yyvsp[-1].str); }
#line 2134 "build/styx.tab.c"
    break;

  case 44: /* arguments: expression  */
#line 211 "src/styx.y"
                      { (yyval.ast) = new_astnode(ARG_EXPR);  (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2140 "build/styx.tab.c"
    break;

  case 45: /* arguments: arguments COMMA expression  */
#line 212 "src/styx.y"
                                      { (yyval.ast) = new_astnode(ARGS_EXPR); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2146 "build/styx.tab.c"
    break;

  case 46: /* arguments: %empty  */
#line 213 "src/styx.y"
                  { (yyval.ast) = NULL; }
#line 2152 "build/styx.tab.c"
    break;

  case 47: /* expression: term  */
#line 215 "src/styx.y"
                 { (yyval.ast) = new_astnode(EXPR_TERM); (yyval.ast)->child[0] = (yyvsp[0].ast); (yyval.ast)->data_type = (yyval.ast)->child[0]->data_type; }
#line 2158 "build/styx.tab.c"
    break;

  case 48: /* expression: expression PLUS term  */
#line 216 "src/styx.y"
                               { (yyval.ast) = new_astnode(EXPR_PLUS); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2164 "build/styx.tab.c"
    break;

  case 49: /* expression: expression MINUS term  */
#line 217 "src/styx.y"
                                { (yyval.ast) = new_astnode(EXPR_MINUS); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2170 "build/styx.tab.c"
    break;

  case 50: /* expression: expression LE term  */
#line 218 "src/styx.y"
                             { (yyval.ast) = new_astnode(EXPR_LE);  (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2176 "build/styx.tab.c"
    break;

  case 51: /* expression: expression GE term  */
#line 219 "src/styx.y"
                             { (yyval.ast) = new_astnode(EXPR_GE); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2182 "build/styx.tab.c"
    break;

  case 52: /* expression: expression EQ term  */
#line 220 "src/styx.y"
                             { (yyval.ast) = new_astnode(EXPR_EQ); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2188 "build/styx.tab.c"
    break;

  case 53: /* expression: expression NE term  */
#line 221 "src/styx.y"
                             { (yyval.ast) = new_astnode(EXPR_NE); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2194 "build/styx.tab.c"
    break;

  case 54: /* expression: expression GT term  */
#line 222 "src/styx.y"
                             { (yyval.ast) = new_astnode(EXPR_GT); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2200 "build/styx.tab.c"
    break;

  case 55: /* expression: expression LT term  */
#line 223 "src/styx.y"
                             { (yyval.ast) = new_astnode(EXPR_LT); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2206 "build/styx.tab.c"
    break;

  case 56: /* expression: expression AND term  */
#line 224 "src/styx.y"
                              { (yyval.ast) = new_astnode(EXPR_AND); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2212 "build/styx.tab.c"
    break;

  case 57: /* expression: expression OR term  */
#line 225 "src/styx.y"
                             { (yyval.ast) = new_astnode(EXPR_OR); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); }
#line 2218 "build/styx.tab.c"
    break;

  case 58: /* term: factor  */
#line 228 "src/styx.y"
             { (yyval.ast) = new_astnode(TERM_FACTOR); (yyval.ast)->child[0] = (yyvsp[0].ast); (yyval.ast)->data_type = (yyval.ast)->child[0]->data_type; }
#line 2224 "build/styx.tab.c"
    break;

  case 59: /* term: term MULT factor  */
#line 229 "src/styx.y"
                           { (yyval.ast) = new_astnode(TERM_MUL); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); (yyval.ast)->val.str = "*"; (yyval.ast)->data_type = AST_STR_T; }
#line 2230 "build/styx.tab.c"
    break;

  case 60: /* term: term DIV factor  */
#line 230 "src/styx.y"
                          { (yyval.ast) = new_astnode(TERM_DIV); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); (yyval.ast)->val.str = "/"; (yyval.ast)->data_type = AST_STR_T; }
#line 2236 "build/styx.tab.c"
    break;

  case 61: /* term: term MOD factor  */
#line 231 "src/styx.y"
                          { (yyval.ast) = new_astnode(TERM_MOD); (yyval.ast)->child[0] = (yyvsp[-2].ast); (yyval.ast)->child[1] = (yyvsp[0].ast); (yyval.ast)->val.str = "%"; (yyval.ast)->data_type = AST_STR_T; }
#line 2242 "build/styx.tab.c"
    break;

  case 62: /* term: NOT factor  */
#line 232 "src/styx.y"
                     { (yyval.ast) = new_astnode(TERM_NOT_FACTOR); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2248 "build/styx.tab.c"
    break;

  case 63: /* factor: ID  */
#line 234 "src/styx.y"
           { (yyval.ast) = new_astnode(FACTOR_ID); (yyval.ast)->val.str = (yyvsp[0].str); (yyval.ast)->data_type = AST_ID_T; }
#line 2254 "build/styx.tab.c"
    break;

  case 64: /* factor: NUM  */
#line 235 "src/styx.y"
          { (yyval.ast) = new_astnode(FACTOR_NUM); (yyval.ast)->val.num = (yyvsp[0].num); (yyval.ast)->data_type = AST_INT_T; (yyval.ast)->is_const = 1;}
#line 2260 "build/styx.tab.c"
    break;

  case 65: /* factor: REAL  */
#line 236 "src/styx.y"
               { (yyval.ast) = new_astnode(FACTOR_REAL); (yyval.ast)->val.real = (yyvsp[0].real); (yyval.ast)->data_type = AST_DOUBLE_T; (yyval.ast)->is_const = 1; }
#line 2266 "build/styx.tab.c"
    break;

  case 66: /* factor: STR  */
#line 237 "src/styx.y"
              { (yyval.ast) = new_astnode(FACTOR_STRING); (yyval.ast)->val.str = (yyvsp[0].str); (yyval.ast)->data_type = AST_STR_T; (yyval.ast)->is_const = 1; }
#line 2272 "build/styx.tab.c"
    break;

  case 67: /* factor: CHR  */
#line 238 "src/styx.y"
              { (yyval.ast) = new_astnode(FACTOR_CHAR); (yyval.ast)->val.chr = (yyvsp[0].chr); (yyval.ast)->data_type = AST_CHAR_T; (yyval.ast)->is_const = 1; }
#line 2278 "build/styx.tab.c"
    break;

  case 68: /* factor: function_call  */
#line 239 "src/styx.y"
                        { (yyval.ast) = new_astnode(FACTOR_FUNCTION_CALL); (yyval.ast)->child[0] = (yyvsp[0].ast); }
#line 2284 "build/styx.tab.c"
    break;

  case 69: /* factor: ROUND_OPEN expression ROUND_CLOSE  */
#line 240 "src/styx.y"
                                            { (yyval.ast) = new_astnode(FACTOR_PARENTHESIS); (yyval.ast)->child[0] = (yyvsp[-1].ast); (yyval.ast)->val.str = "(expr)"; (yyval.ast)->data_type = AST_STR_T; }
#line 2290 "build/styx.tab.c"
    break;

  case 70: /* factor: RAND_INT ROUND_OPEN NUM ROUND_CLOSE  */
#line 241 "src/styx.y"
                                              { (yyval.ast) = new_astnode(FACTOR_RAND); (yyval.ast)->val.num = (yyvsp[-1].num); (yyval.ast)->data_type = AST_INT_T; }
#line 2296 "build/styx.tab.c"
    break;


#line 2300 "build/styx.tab.c"

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

#line 243 "src/styx.y"


// C Code
const char* token_name(int t) {
    return yysymbol_name(YYTRANSLATE(t));
}


int main(int arc, char **argv)
{
    yy_flex_debug = 0;
    yydebug = 0;
	token_table = yytname;
    yyin = fopen(argv[1], "r");
    return yyparse();
}
