/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* Copy the first part of user declarations.  */
#line 1 "parser.ypp" /* yacc.c:339  */

    #include <iostream>
    #include "source.hpp"
    #include "semantic_rules.hpp"
    #include "output.hpp" //
    #include "IR_rules.hpp"
    #include "bp.hpp"
    #define YYSTYPE Node*
    int yylex();
    void yyerror(const char*);
    extern int yylineno;

    CodeBuffer& codebufferref=CodeBuffer::instance();
    //int yydebug=1;

#line 82 "parser.tab.cpp" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "parser.tab.hpp".  */
#ifndef YY_YY_PARSER_TAB_HPP_INCLUDED
# define YY_YY_PARSER_TAB_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    VOID = 258,
    INT = 259,
    BYTE = 260,
    BOOL = 261,
    TRUE = 262,
    FALSE = 263,
    RETURN = 264,
    IF = 265,
    WHILE = 266,
    SWITCH = 267,
    CASE = 268,
    BREAK = 269,
    DEFAULT = 270,
    COLON = 271,
    SC = 272,
    COMMA = 273,
    ASSIGN = 274,
    OR = 275,
    AND = 276,
    NOT = 277,
    RELOP = 278,
    BINOP_ADD_SUB = 279,
    BINOP_MUL_DIV = 280,
    ID = 281,
    NUM = 282,
    STRING = 283,
    B = 284,
    LPAREN = 285,
    RPAREN = 286,
    LBRACE = 287,
    RBRACE = 288,
    L_ASSOC = 289,
    PRIO_REGIF = 290,
    ELSE = 291,
    PRIO_IFELSE = 292
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSER_TAB_HPP_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 171 "parser.tab.cpp" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

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

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
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


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

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
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
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
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  3
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   178

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  38
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  34
/* YYNRULES -- Number of rules.  */
#define YYNRULES  71
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  139

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   292

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
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
      35,    36,    37
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    64,    64,    72,    74,    78,    81,    86,    93,    95,
     100,   103,   107,   111,   114,   117,   121,   125,   129,   134,
     137,   142,   147,   152,   157,   162,   167,   172,   177,   182,
     187,   193,   199,   203,   209,   212,   216,   219,   222,   224,
     229,   236,   240,   245,   251,   255,   259,   264,   269,   276,
     279,   285,   291,   298,   302,   306,   311,   316,   321,   326,
     331,   336,   341,   346,   351,   356,   361,   366,   371,   376,
     383,   385
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "VOID", "INT", "BYTE", "BOOL", "TRUE",
  "FALSE", "RETURN", "IF", "WHILE", "SWITCH", "CASE", "BREAK", "DEFAULT",
  "COLON", "SC", "COMMA", "ASSIGN", "OR", "AND", "NOT", "RELOP",
  "BINOP_ADD_SUB", "BINOP_MUL_DIV", "ID", "NUM", "STRING", "B", "LPAREN",
  "RPAREN", "LBRACE", "RBRACE", "L_ASSOC", "PRIO_REGIF", "ELSE",
  "PRIO_IFELSE", "$accept", "Program", "Prog_init", "Funcs", "FuncDecl",
  "FuncHead", "Func_Scope_init", "FuncState", "RetType", "Formals",
  "FormalsList", "FormalDecl", "Statements", "MVSP", "Statement",
  "SwitchHead", "PossibleElse", "NumExp", "BoolExp", "While_Scope_init",
  "Scope_init", "Scope_end", "CaseList", "Mark_case_init", "CaseStatement",
  "CaseDec", "Call", "CallHeader", "ExpList", "ExpParam", "Type", "Exp",
  "Mark", "SJ_Exp", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292
};
# endif

#define YYPACT_NINF -84

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-84)))

#define YYTABLE_NINF -71

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     -84,    11,   156,   -84,   -84,   -84,   -84,   -84,   -84,   156,
      17,    26,   -84,   -84,   109,   -84,    -4,    37,    36,    40,
      55,    -7,   -84,    50,   -84,   -84,    56,    59,    87,   -84,
     -84,   -84,   -84,    74,    73,    76,   -84,    74,   -84,   -84,
     107,    74,    74,   -84,    74,   -84,   109,   -84,   109,    78,
     -84,   -84,    16,    79,   159,   143,   -84,    75,    70,   -84,
     -84,   -84,    74,    74,    74,    81,    70,    86,    89,   119,
      49,    92,   -84,   112,   -84,    45,   -84,   -84,    74,    95,
     -84,   115,   108,   -84,    74,    74,    13,   113,   -84,   -84,
     105,   -84,   -84,   116,   132,     0,   -84,   -84,    45,   142,
     130,   -84,    10,    74,   124,   -84,   159,   -84,   133,   143,
     -84,   -84,   -84,    74,   -84,   -84,    14,   -84,    -6,   128,
     -84,   -84,   109,   -84,   -84,   154,   -84,   -84,   -84,   -84,
     109,   -84,   -84,   135,   -84,   -84,   109,   -84,   -84
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       3,     0,     5,     1,    11,    53,    54,    55,     2,     5,
       0,     0,    10,     4,    70,     6,     0,     0,     0,     0,
       0,     0,    37,    70,    17,    41,     0,     0,     0,     8,
      67,    68,    25,     0,    62,    64,    66,     0,    63,    71,
       0,     0,     0,    29,     0,    49,    70,     9,    70,    41,
      70,    24,     0,     0,    13,    69,    65,    71,     0,    26,
      70,    70,     0,     0,     0,     0,    35,     0,    71,     0,
       0,    70,    18,     0,    70,     0,    21,    19,     0,     0,
      12,    14,     0,    61,     0,     0,    58,    60,    59,    37,
       0,    23,    48,     0,    50,    71,    20,    30,     0,     0,
       0,    40,    43,     0,     0,     7,     0,    16,    57,    56,
      70,    31,    47,     0,    52,    39,     0,    46,    70,     0,
      70,    15,    70,    51,    44,     0,    22,    36,    38,    45,
      70,    70,    28,    32,    37,    27,    70,    38,    33
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -84,   -84,   -84,   163,   -84,   -84,   -84,   -84,   -84,   -84,
      67,   -84,   -41,   -84,   -44,   -84,   -84,   -84,    96,   -84,
     -83,    38,   -84,   127,    80,   -84,   -14,   -84,    64,   -84,
       1,   -29,   -21,   -16
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     1,     2,     8,     9,    10,    54,    15,    11,    79,
      80,    81,    23,   103,    24,    25,   135,    67,    65,   130,
      46,   131,    49,    50,   101,   102,    38,    70,    93,    94,
      27,    39,    28,    58
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      26,    40,    48,    12,    72,    71,   110,   -42,    57,   -42,
      12,     3,    44,    68,     5,     6,     7,    55,   -70,    17,
      18,   -70,    19,    45,    20,    66,    29,   -42,    69,    75,
     124,   -70,    26,    76,    26,    77,    21,    63,    64,    84,
      85,    95,    22,   125,    30,    31,    86,    87,    88,    14,
      48,   136,    16,    98,    32,    82,    30,    31,    99,    33,
     100,   118,    66,    34,    35,    36,    41,    37,   108,   109,
      42,    33,    43,    51,   114,    34,    35,    36,   128,    37,
      92,    30,    31,    47,    95,    52,   132,   119,    26,   122,
      60,    61,   137,    62,    63,    64,    33,    48,    53,   127,
      34,    35,    36,    45,    37,    56,    83,    82,    26,    78,
     133,    73,    89,     5,     6,     7,    26,    90,    17,    18,
     -34,    19,    26,    20,    59,    96,   105,    60,    61,    97,
      62,    63,    64,   106,   107,    21,    91,   111,    64,    60,
      61,    22,    62,    63,    64,   126,   117,   112,    60,    61,
     113,    62,    63,    64,    61,   120,    62,    63,    64,     4,
       5,     6,     7,     5,     6,     7,    62,    63,    64,   116,
     129,   134,    13,   121,   104,   138,    74,   123,   115
};

static const yytype_uint8 yycheck[] =
{
      14,    17,    23,     2,    48,    46,    89,    13,    37,    15,
       9,     0,    19,    42,     4,     5,     6,    33,    18,     9,
      10,    11,    12,    30,    14,    41,    30,    33,    44,    50,
      16,    31,    46,    17,    48,    19,    26,    24,    25,    60,
      61,    70,    32,    29,     7,     8,    62,    63,    64,    32,
      71,   134,    26,    74,    17,    54,     7,     8,    13,    22,
      15,   102,    78,    26,    27,    28,    30,    30,    84,    85,
      30,    22,    17,    17,    95,    26,    27,    28,   122,    30,
      31,     7,     8,    33,   113,    26,   130,   103,   102,   110,
      20,    21,   136,    23,    24,    25,    22,   118,    11,   120,
      26,    27,    28,    30,    30,    29,    31,   106,   122,    30,
     131,    33,    31,     4,     5,     6,   130,    31,     9,    10,
      31,    12,   136,    14,    17,    33,    31,    20,    21,    17,
      23,    24,    25,    18,    26,    26,    17,    32,    25,    20,
      21,    32,    23,    24,    25,    17,    16,    31,    20,    21,
      18,    23,    24,    25,    21,    31,    23,    24,    25,     3,
       4,     5,     6,     4,     5,     6,    23,    24,    25,    27,
      16,    36,     9,   106,    78,   137,    49,   113,    98
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,    39,    40,     0,     3,     4,     5,     6,    41,    42,
      43,    46,    68,    41,    32,    45,    26,     9,    10,    12,
      14,    26,    32,    50,    52,    53,    64,    68,    70,    30,
       7,     8,    17,    22,    26,    27,    28,    30,    64,    69,
      71,    30,    30,    17,    19,    30,    58,    33,    70,    60,
      61,    17,    26,    11,    44,    71,    29,    69,    71,    17,
      20,    21,    23,    24,    25,    56,    71,    55,    69,    71,
      65,    50,    52,    33,    61,    70,    17,    19,    30,    47,
      48,    49,    68,    31,    70,    70,    71,    71,    71,    31,
      31,    17,    31,    66,    67,    69,    33,    17,    70,    13,
      15,    62,    63,    51,    56,    31,    18,    26,    71,    71,
      58,    32,    31,    18,    70,    62,    27,    16,    50,    71,
      31,    48,    70,    66,    16,    29,    17,    70,    52,    16,
      57,    59,    52,    70,    36,    54,    58,    52,    59
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    38,    39,    40,    41,    41,    42,    43,    44,    45,
      46,    46,    47,    47,    48,    48,    49,    50,    50,    51,
      52,    52,    52,    52,    52,    52,    52,    52,    52,    52,
      52,    53,    54,    54,    55,    56,    57,    58,    59,    60,
      60,    61,    62,    62,    63,    63,    63,    64,    64,    65,
      66,    66,    67,    68,    68,    68,    69,    69,    69,    69,
      69,    69,    69,    69,    69,    69,    69,    69,    69,    69,
      70,    71
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     2,     0,     2,     0,     2,     6,     0,     3,
       1,     1,     1,     0,     1,     3,     2,     1,     3,     0,
       4,     3,     6,     4,     2,     2,     3,    10,     8,     2,
       4,     5,     0,     4,     1,     1,     0,     0,     0,     4,
       3,     0,     2,     1,     3,     4,     2,     5,     4,     0,
       1,     3,     2,     1,     1,     1,     4,     4,     3,     3,
       3,     3,     1,     1,     1,     2,     1,     1,     1,     2,
       0,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



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

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
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
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
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
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
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


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
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
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
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
            /* Fall through.  */
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

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
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
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
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
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
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
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

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

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
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
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

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
| yyreduce -- Do a reduction.  |
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
  switch (yyn)
    {
        case 2:
#line 65 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ProgramNode(((InitProgNode*)(yyvsp[-1]))->jump_to_main_address) ;
                  Program_Semantic(yylineno,(ProgramNode*)(yyval),(FuncsNode*)(yyvsp[0])) ;
                  (yyval)->addSon((yyvsp[-1]),(yyvsp[0]));
                  Program_IR(yylineno,(ProgramNode*)(yyval),(InitProgNode*)(yyvsp[-1]),(FuncsNode*)(yyvsp[0])),
                  delete((yyval));}
#line 1357 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 3:
#line 72 "parser.ypp" /* yacc.c:1646  */
    { (yyval) = new InitProgNode(FIRST_PROGRAM_POINT());}
#line 1363 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 4:
#line 75 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FuncsNode() ;
                  Funcs_Semantic(yylineno,(FuncsNode*)(yyval),(FuncDeclNode*)(yyvsp[-1]),(FuncsNode*)(yyvsp[0]) );(yyval)->addSon((yyvsp[-1]),(yyvsp[0])); }
#line 1370 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 5:
#line 78 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FuncsNode() ;
                  Funcs_Semantic(yylineno,(FuncsNode*)(yyval)) ; }
#line 1377 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 6:
#line 82 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FuncDeclNode() ;
                  FuncDecl_Semantic(yylineno,(FuncDeclNode*)(yyval),(FuncHeadNode*)(yyvsp[-1]),(FuncStateNode*)(yyvsp[0]) ) ;(yyval)->addSon((yyvsp[-1]),(yyvsp[0]));
                  FuncDecl_IR( yylineno, (FuncDeclNode*)(yyval) , (FuncHeadNode*)(yyvsp[-1]) ,(FuncStateNode*)(yyvsp[0]) ); }
#line 1385 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 7:
#line 87 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FuncHeadNode() ;
							    FuncHead_Semantic(yylineno,(FuncHeadNode*)(yyval),(RetTypeNode*)(yyvsp[-5]),(Id*)(yyvsp[-4]),(Lparen*)(yyvsp[-3]),(FormalsNode*)(yyvsp[-1]),(Rparen*)(yyvsp[0]));
							    (yyval)->addSon((yyvsp[-5]),(yyvsp[-4]),(yyvsp[-3]),(yyvsp[-1]),(yyvsp[0]));
							    FuncHead_IR(yylineno,(FuncHeadNode*)(yyval),(RetTypeNode*)(yyvsp[-5]),(Id*)(yyvsp[-4]),(Lparen*)(yyvsp[-3]),(FormalsNode*)(yyvsp[-1]),(Rparen*)(yyvsp[0]));}
#line 1394 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 8:
#line 93 "parser.ypp" /* yacc.c:1646  */
    { Scope_init_Semantic(yylineno) ; }
#line 1400 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 9:
#line 96 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FuncStateNode() ;
                  FuncState_Semantic(yylineno,(FuncStateNode*)(yyval),(Lbrace*)(yyvsp[-2]),(StatementNode*)(yyvsp[-1]),(Rbrace*)(yyvsp[0]) ) ; (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));}
#line 1407 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 10:
#line 101 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new RetTypeNode() ;
                  RetType_Semantic(yylineno,(RetTypeNode*)(yyval),(TypeNode*)(yyvsp[0])) ;(yyval)->addSon((yyvsp[0])); }
#line 1414 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 11:
#line 104 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new RetTypeNode() ;
                  RetType_Semantic(yylineno,(RetTypeNode*)(yyval));(yyval)->addSon((yyvsp[0])); }
#line 1421 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 12:
#line 108 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FormalsNode() ;
                  Formals_Semantic(yylineno,(FormalsNode*)(yyval),(FormalsListNode*)(yyvsp[0])) ; (yyval)->addSon((yyvsp[0]));}
#line 1428 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 13:
#line 111 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FormalsNode() ;
                  Formals_Semantic(yylineno,(FormalsNode*)(yyval)) ; }
#line 1435 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 14:
#line 115 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FormalsListNode() ;
                  FormalsList_Semantic(yylineno,(FormalsListNode*)(yyval),(FormalDeclNode*)(yyvsp[0])) ;(yyval)->addSon((yyvsp[0])); }
#line 1442 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 15:
#line 118 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FormalsListNode() ;
                  FormalsList_Semantic(yylineno,(FormalsListNode*)(yyval),(FormalDeclNode*)(yyvsp[-2]), (FormalsListNode*)(yyvsp[0]) ) ;(yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0])); }
#line 1449 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 16:
#line 122 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new FormalDeclNode() ;
                  FormalDecl_Semantic(yylineno,(FormalDeclNode*)(yyval),(TypeNode*)(yyvsp[-1]),(Id*)(yyvsp[0])  ) ; (yyval)->addSon((yyvsp[-1]),(yyvsp[0]));}
#line 1456 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 17:
#line 126 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementsNode() ;
                  Statements_Semantic(yylineno,(StatementsNode*)(yyval),(StatementNode*)(yyvsp[0]) ) ; (yyval)->addSon((yyvsp[0]));
                  Statements_IR(yylineno,(StatementsNode*)(yyval),(StatementNode*)(yyvsp[0]));}
#line 1464 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 18:
#line 130 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementsNode() ;
                  Statements_Semantic(yylineno,(StatementsNode*)(yyval),(StatementsNode*)(yyvsp[-2]),(StatementNode*)(yyvsp[0]) ) ; (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Statements_IR(yylineno,(StatementsNode*)(yyval),(StatementsNode*)(yyvsp[-2]),(MarkNode*)(yyvsp[-1]),(StatementNode*)(yyvsp[0]));}
#line 1472 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 19:
#line 134 "parser.ypp" /* yacc.c:1646  */
    {
                MVSP_IR(); }
#line 1479 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 20:
#line 138 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(Lbrace*)(yyvsp[-3]),(StatementsNode*)(yyvsp[-1]),(Rbrace*)(yyvsp[0]) ) ;
                  (yyval)->addSon((yyvsp[-3]),(yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(Lbrace*)(yyvsp[-3]),(StatementsNode*)(yyvsp[-1]),(Rbrace*)(yyvsp[0]) ) ; }
#line 1488 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 21:
#line 143 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(TypeNode*)(yyvsp[-2]),(Id*)(yyvsp[-1]) ) ;
                  (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(TypeNode*)(yyvsp[-2]),(Id*)(yyvsp[-1]) ) ; }
#line 1497 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 22:
#line 148 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(TypeNode*)(yyvsp[-5]),(Id*)(yyvsp[-4]),(Assign*)(yyvsp[-3]),(ExpNode*)(yyvsp[-1])  ) ;
                  (yyval)->addSon((yyvsp[-5]),(yyvsp[-4]),(yyvsp[-3]),(yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(TypeNode*)(yyvsp[-5]),(Id*)(yyvsp[-4]),(Assign*)(yyvsp[-3]),(ExpNode*)(yyvsp[-1])  ) ; }
#line 1506 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 23:
#line 153 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(Id*)(yyvsp[-3]),(Assign*)(yyvsp[-2]),(ExpNode*)(yyvsp[-1])  ) ;
                  (yyval)->addSon((yyvsp[-3]),(yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(Id*)(yyvsp[-3]),(Assign*)(yyvsp[-2]),(ExpNode*)(yyvsp[-1])  ) ; }
#line 1515 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 24:
#line 158 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(CallNode*)(yyvsp[-1])) ;
                  (yyval)->addSon((yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(CallNode*)(yyvsp[-1])) ; }
#line 1524 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 25:
#line 163 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(Return*)(yyvsp[-1]));
                  (yyval)->addSon((yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(Return*)(yyvsp[-1]));}
#line 1533 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 26:
#line 168 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(Return*)(yyvsp[-2]),(ExpNode*)(yyvsp[-1])  ) ;
                  (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(Return*)(yyvsp[-2]),(ExpNode*)(yyvsp[-1])  );}
#line 1542 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 27:
#line 173 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(If*)(yyvsp[-9]),(ExpNode*)(yyvsp[-7]),(StatementNode*)(yyvsp[-3])  ) ;
                  (yyval)->addSon((yyvsp[-9]),(yyvsp[-8]),(yyvsp[-7]),(yyvsp[-6]),(yyvsp[-4]),(yyvsp[-3]),(yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(If*)(yyvsp[-9]),(ExpNode*)(yyvsp[-7]),(MarkNode*)(yyvsp[-4]) ,(StatementNode*)(yyvsp[-3]), (MarkNode*)(yyvsp[-1]), (PossibleElseNode*)(yyvsp[0])  ) ; }
#line 1551 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 28:
#line 178 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(While*)(yyvsp[-7]),(ExpNode*)(yyvsp[-5]),(StatementNode*)(yyvsp[-2])  ) ;
                  (yyval)->addSon((yyvsp[-7]),(yyvsp[-6]),(yyvsp[-5]),(yyvsp[-4]),(yyvsp[-3]),(yyvsp[-2]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval), (MarkNode*)(yyvsp[-7]), (While*)(yyvsp[-6]), (ExpNode*)(yyvsp[-4]), (MarkNode*)(yyvsp[-2]), (StatementNode*)(yyvsp[0])); }
#line 1560 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 29:
#line 183 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(Break*)(yyvsp[-1])  ) ;
                  (yyval)->addSon((yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(Break*)(yyvsp[-1])  ) ; }
#line 1569 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 30:
#line 188 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new StatementNode() ;
                  Statement_Semantic(yylineno,(StatementNode*)(yyval),(SwitchHeadNode*)(yyvsp[-3]),(CaseListNode*)(yyvsp[-2])  ) ;
                  (yyval)->addSon((yyvsp[-3]),(yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Statement_IR(yylineno,(StatementNode*)(yyval),(SwitchHeadNode*)(yyvsp[-3]),(CaseListNode*)(yyvsp[-2])  ) ; }
#line 1578 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 31:
#line 194 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new SwitchHeadNode() ;
                  SwitchHead_Semantic(yylineno,(SwitchHeadNode*)(yyval),(ExpNode*)(yyvsp[-2])  ) ;
                  (yyval)->addSon((yyvsp[-4]),(yyvsp[-3]),(yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  SwitchHead_IR(yylineno, (SwitchHeadNode*)(yyval) , (ExpNode*)(yyvsp[-2]) );}
#line 1587 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 32:
#line 200 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new PossibleElseNode() ;
                  PossibleElseSemantic(yylineno,(PossibleElseNode*)(yyval)  ) ;
                  PossibleElse_IR(yylineno, (PossibleElseNode*)(yyval) ); }
#line 1595 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 33:
#line 204 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new PossibleElseNode() ;
                  PossibleElseSemantic(yylineno,(PossibleElseNode*)(yyval),(StatementNode*)(yyvsp[-1])  ) ;
                  (yyval)->addSon((yyvsp[-3]),(yyvsp[-1]));
                  PossibleElse_IR(yylineno, (PossibleElseNode*)(yyval) , (StatementNode*)(yyvsp[-1])); }
#line 1604 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 34:
#line 210 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=(yyvsp[0]) ; is_exp_numeric(yylineno,(ExpNode*)(yyvsp[0])  ) ; }
#line 1610 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 35:
#line 213 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=(yyvsp[0]) ; is_exp_bool(yylineno,(ExpNode*)(yyvsp[0])  ) ; }
#line 1616 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 36:
#line 216 "parser.ypp" /* yacc.c:1646  */
    {  While_Scope_init_Semantic(yylineno) ; }
#line 1622 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 37:
#line 219 "parser.ypp" /* yacc.c:1646  */
    {  Scope_init_Semantic(yylineno) ; }
#line 1628 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 38:
#line 222 "parser.ypp" /* yacc.c:1646  */
    {  Scope_end_Semantic(yylineno) ; }
#line 1634 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 39:
#line 225 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CaseListNode() ;
                  CaseList_Semantic(yylineno,(CaseListNode*)(yyval),(CaseListNode*)(yyvsp[-3]),(CaseStatementNode*)(yyvsp[0])  ) ;
                  (yyval)->addSon((yyvsp[-3]),(yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  CaseList_IR(yylineno, (CaseListNode*)(yyval) , (CaseListNode*)(yyvsp[-3]) ,(CaseInitNode*)(yyvsp[-2]),  (MarkNode*)(yyvsp[-1]) , (CaseStatementNode*)(yyvsp[0]) );}
#line 1643 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 40:
#line 230 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CaseListNode() ;
                  CaseList_Semantic(yylineno,(CaseListNode*)(yyval),(CaseStatementNode*)(yyvsp[0])  ) ;
                  (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  CaseList_IR(yylineno, (CaseListNode*)(yyval) , (CaseInitNode*)(yyvsp[-2]) , (MarkNode*)(yyvsp[-1]) , (CaseStatementNode*)(yyvsp[0]));}
#line 1652 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 41:
#line 236 "parser.ypp" /* yacc.c:1646  */
    {
                  (yyval)=new CaseInitNode;
                  CaseInit_IR((CaseInitNode*)(yyval)); }
#line 1660 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 42:
#line 241 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CaseStatementNode() ;
                  CaseStatement_Semantic(yylineno,(CaseStatementNode*)(yyval) ,(CaseDecNode*)(yyvsp[-1]),(StatementsNode*)(yyvsp[0]) ) ;
                  (yyval)->addSon((yyvsp[-1]),(yyvsp[0]));
                  CaseStatement_IR(yylineno, (CaseStatementNode*)(yyval) , (CaseDecNode*)(yyvsp[-1]), (StatementsNode*)(yyvsp[0]));}
#line 1669 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 43:
#line 246 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CaseStatementNode() ;
                  CaseStatement_Semantic(yylineno,(CaseStatementNode*)(yyval) ,(CaseDecNode*)(yyvsp[0]) ) ;
                  (yyval)->addSon((yyvsp[0]));
                  CaseStatement_IR(yylineno, (CaseStatementNode*)(yyval) , (CaseDecNode*)(yyvsp[0]));}
#line 1678 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 44:
#line 252 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CaseDecNode() ;
                  CaseDec_Semantic(yylineno,(CaseDecNode*)(yyval) ,(Num*)(yyvsp[-1]) ) ;
                  (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0])); }
#line 1686 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 45:
#line 256 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CaseDecNode() ;
                  CaseDec_Semantic(yylineno,(CaseDecNode*)(yyval) ,(Num*)(yyvsp[-2]),(B_Node*)(yyvsp[-1]) ) ;
                  (yyval)->addSon((yyvsp[-3]),(yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));}
#line 1694 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 46:
#line 260 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CaseDecNode() ;
                  CaseDec_Semantic(yylineno,(CaseDecNode*)(yyval) ,(Default*)(yyvsp[-1]) ) ;
                  (yyval)->addSon((yyvsp[-1]),(yyvsp[0]));}
#line 1702 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 47:
#line 265 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CallNode() ;
                  Call_Semantic(yylineno,(CallNode*)(yyval) ,(Id*)(yyvsp[-4]),(ExpListNode*)(yyvsp[-1]) ) ;
                  (yyval)->addSon((yyvsp[-4]),(yyvsp[-3]),(yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Call_IR(yylineno,(CallNode*)(yyval),(CallHeaderNode*) (yyvsp[-2]), (Id*)(yyvsp[-4]) , (ExpListNode*)(yyvsp[-1]) ) ; }
#line 1711 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 48:
#line 270 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CallNode() ;
                  Call_Semantic(yylineno,(CallNode*)(yyval) ,(Id*)(yyvsp[-3]) ) ;
                  (yyval)->addSon((yyvsp[-3]),(yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Call_IR(yylineno,(CallNode*)(yyval),(CallHeaderNode*) (yyvsp[-1]), (Id*)(yyvsp[-3]) ) ;}
#line 1720 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 49:
#line 276 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new CallHeaderNode() ;
                  CallHeader_IR(yylineno,(CallHeaderNode*)(yyval)) ;}
#line 1727 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 50:
#line 280 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpListNode() ;
                  ExpList_Semantic(yylineno,(ExpListNode*)(yyval) ,(ExpNode*)(yyvsp[0]) ) ;
                  (yyval)->addSon((yyvsp[0]));
                  ExpList_IR(yylineno,(ExpListNode*)(yyval) ,(ExpNode*)(yyvsp[0])  );
                  }
#line 1737 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 51:
#line 286 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpListNode() ;
                  ExpList_Semantic(yylineno,(ExpListNode*)(yyval) ,(ExpNode*)(yyvsp[-2]),(ExpListNode*)(yyvsp[0]) ) ;
                  (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  ExpList_IR(yylineno,(ExpListNode*)(yyval) ,(ExpNode*)(yyvsp[-2]), (ExpListNode*)(yyvsp[0])) ;}
#line 1746 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 52:
#line 292 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=(yyvsp[-1]) ;
                  ExpParam_IR( (ExpNode*)(yyval), (MarkNode*)(yyvsp[0]) ) ;}
#line 1753 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 53:
#line 299 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new TypeNode() ;
                  Type_Semantic(yylineno,(TypeNode*)(yyval) ,(Int_Node*)(yyvsp[0]) ) ;
                  (yyval)->addSon((yyvsp[0])); }
#line 1761 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 54:
#line 303 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new TypeNode() ;
                  Type_Semantic(yylineno,(TypeNode*)(yyval) ,(Byte_Node*)(yyvsp[0]) ) ;
                  (yyval)->addSon((yyvsp[0]));}
#line 1769 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 55:
#line 307 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new TypeNode() ;
                  Type_Semantic(yylineno,(TypeNode*)(yyval) ,(Bool_Node*)(yyvsp[0]) ) ;
                  (yyval)->addSon((yyvsp[0])); }
#line 1777 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 56:
#line 312 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-3]) , (And*)(yyvsp[-2]) , (ExpNode*)(yyvsp[0])  ) ;
                  (yyval)->addSon((yyvsp[-3]),(yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-3]) , (And*)(yyvsp[-2]) , (MarkNode*)(yyvsp[-1]) , (ExpNode*)(yyvsp[0])  ) ;}
#line 1786 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 57:
#line 317 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-3]) , (Or*)(yyvsp[-2]) , (ExpNode*)(yyvsp[0])  ) ;
                  (yyval)->addSon((yyvsp[-3]),(yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-3]) , (Or*)(yyvsp[-2]) , (MarkNode*)(yyvsp[-1]) ,(ExpNode*)(yyvsp[0])  ) ;}
#line 1795 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 58:
#line 322 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-2]) , (Relop*)(yyvsp[-1]) , (ExpNode*)(yyvsp[0])  ) ;
                  (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-2]) , (Relop*)(yyvsp[-1]) , (ExpNode*)(yyvsp[0])  ) ;}
#line 1804 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 59:
#line 327 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-2]) , (Binop*)(yyvsp[-1]) , (ExpNode*)(yyvsp[0])  ) ;
                  (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-2]) , (Binop*)(yyvsp[-1]) , (ExpNode*)(yyvsp[0]));}
#line 1813 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 60:
#line 332 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-2]) , (Binop*)(yyvsp[-1]) , (ExpNode*)(yyvsp[0])  ) ;
                  (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(ExpNode*)(yyvsp[-2]) , (Binop*)(yyvsp[-1]) , (ExpNode*)(yyvsp[0]));}
#line 1822 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 61:
#line 337 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(Lparen*)(yyvsp[-2]) , (ExpNode*)(yyvsp[-1]) , (Rparen*)(yyvsp[0])  ) ;
                  Exp_IR(yylineno,(ExpNode*)(yyval),(Lparen*)(yyvsp[-2]) , (ExpNode*)(yyvsp[-1]) , (Rparen*)(yyvsp[0])  );
                  (yyval)->addSon((yyvsp[-2]),(yyvsp[-1]),(yyvsp[0]));}
#line 1831 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 62:
#line 342 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(Id*)(yyvsp[0])   ) ;
                  (yyval)->addSon((yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(Id*)(yyvsp[0]));}
#line 1840 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 63:
#line 347 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode();
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(CallNode*)(yyvsp[0]));
                  (yyval)->addSon((yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(CallNode*)(yyvsp[0]));}
#line 1849 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 64:
#line 352 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode();
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(Num*)(yyvsp[0]));
                  (yyval)->addSon((yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(Num*)(yyvsp[0]));}
#line 1858 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 65:
#line 357 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode();
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(Num*)(yyvsp[-1]),(B_Node*)(yyvsp[0]));
                  (yyval)->addSon((yyvsp[-1]),(yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(Num*)(yyvsp[-1]),(B_Node*)(yyvsp[0]));}
#line 1867 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 66:
#line 362 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(String_Node*)(yyvsp[0])   ) ;
                  (yyval)->addSon((yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(String_Node*)(yyvsp[0])   ) ;}
#line 1876 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 67:
#line 367 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(True*)(yyvsp[0])   ) ;
                  (yyval)->addSon((yyvsp[0]));
                  Exp_IR(yylineno, (ExpNode*)(yyval), (True*)(yyvsp[0]) );}
#line 1885 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 68:
#line 372 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(False*)(yyvsp[0])   ) ;
                  (yyval)->addSon((yyvsp[0]));
                  Exp_IR(yylineno, (ExpNode*)(yyval), (False*)(yyvsp[0]) );}
#line 1894 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 69:
#line 377 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new ExpNode() ;
                  Exp_Semantic(yylineno,(ExpNode*)(yyval),(Not*)(yyvsp[-1]) , (ExpNode*)(yyvsp[0])   ) ;
                  (yyval)->addSon((yyvsp[-1]),(yyvsp[0]));
                  Exp_IR(yylineno,(ExpNode*)(yyval),(Not*)(yyvsp[-1]) , (ExpNode*)(yyvsp[0])   ) ;}
#line 1903 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 70:
#line 383 "parser.ypp" /* yacc.c:1646  */
    { (yyval)=new MarkNode();
                  Mark_IR(yylineno,(MarkNode*)(yyval)) ;}
#line 1910 "parser.tab.cpp" /* yacc.c:1646  */
    break;

  case 71:
#line 386 "parser.ypp" /* yacc.c:1646  */
    {(yyval)=(yyvsp[0]);
                  SJ_Exp_IR(yylineno,(ExpNode*)(yyvsp[0]));}
#line 1917 "parser.tab.cpp" /* yacc.c:1646  */
    break;


#line 1921 "parser.tab.cpp" /* yacc.c:1646  */
      default: break;
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
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
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

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

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

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
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
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
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
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 389 "parser.ypp" /* yacc.c:1906  */

/* void yyerror (const char*) { std::cout << "syntax error" << std::endl; }  */
void yyerror (const char*) { output::errorSyn(yylineno);}

int main(){
	int res = yyparse();
	//bp.printBuffer
  codebufferref.printDataBuffer();
  codebufferref.printCodeBuffer();
	return res;
}




