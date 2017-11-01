 
%{
/* preliminary C code */
#include <stdio.h>
#include <stdlib.h>



char Buff[2048];
char* Buff_ptr = Buff ;


%} 
 
%option noyywrap
%option yylineno


    /*definition*/
%x RAW_STREAM_STATE
%x RAW_STRING_STATE
%x RAW_HEX_STATE
%x COMMENT_STATE
%x ESCAPE_STATE


NON_ZERO_DIGIT [1-9]
DIGIT [0-9]
UNSIGNED ((0)|(NON_ZERO_DIGIT(DIGIT*)))
OCTAL [0-7]
OCTAL3 OCTAL{3}
HEX DIGIT|[A-Fa-f]
HEXNUM HEX{2}
SIGN [+\-]
CR \r
LF \n


ENDLINE (((CR)(LF))|CR|LF) 

ESCAPE_START \\ 
ESCAPE_SEQ [nrtbf\(\)\\]

ALPHANUM [a-zA-Z0-9]

OBJ obj
ENDOBJ endobj
LBRACE \[
RBRACE \]
LDICT <<
RDICT >>
NULL null

START_COMMENT %
END_COMMENT [CR|LF] // TODO - ask whether CR\LF or ENDLINE (also both) 
COMMENT [^\r\n]*

TRUE true
FALSE false

INTEGER SIGN?(UNSIGNED)
     /* TODO 0 - deal with the dot*/
REAL SIGN?UNSIGNED?\.(0*)UNSIGNED?

RAW_STR_CHR (ESCAPE_SEQ|[^\(\)\\])
RAW_STR RAW_STR_CHR+
     /*////////////////////WHOLE_RAW_STR \((RAW_STR|(\\ENDLINE))*(RAW_STR)?\) // TODO - does have to end with ENDLINE?*/
START_RAW_STR \(
END_RAW_STR \)
    /*/////////////////////MID_RAW_STR (RAW_STR|(\\ENDLINE))*(RAW_STR)?*/
ESCAPE_RAW_STR (\\)(ENDLINE)

START_HEX <
END_HEX >
WHITESPACE [ \t]|ENDLINE

     /*///////////////////HEX_STR <(HEXNUM( )?)*> // TODO - can it be empty? (no HEXNUM)*/

NAME \/ALPHANUM+
STREAM_INIT stream
STREAM_END endstream









%%











    /* TODO - where do you use the {} ?*/

{OBJ} printf("%d OBJ %s\n",yylineno,yytext);
{ENDOBJ} printf("%d ENDOBJ %s\n",yylineno,yytext);
{LBRACE} printf("%d LBRACE %s\n",yylineno,yytext);
{RBRACE} printf("%d RBRACE %s\n",yylineno,yytext);
{RDICT} printf("%d RDICT %s\n",yylineno,yytext); 
{LDICT} printf("%d LDICT %s\n",yylineno,yytext); 
{TRUE} printf("%d TRUE %s\n",yylineno,yytext); 
{FALSE} printf("%d FALSE %s\n",yylineno,yytext); 
{INTEGER} printf("%d INTEGER %s\n",yylineno,yytext); 
{REAL} printf("%d REAL %s\n",yylineno,yytext); 
{NAME} printf("%d NAME %s\n",yylineno,yytext); 
{NULL} printf("%d NULL %s\n",yylineno,yytext); 


    /* TODO escaping needs to happne inside strings. we need to fix the current code*/
{ESCAPE_START} BEGIN(ESCAPE_STATE);


{START_COMMENT} BEGIN(COMMENT_STATE);

%{ /* TODO - do we need to print '%' with the comment*/
%}


<COMMENT_STATE>COMMENT printf("%d COMMENT %%%s\n",yylineno, yytext);
<COMMENT_STATE>END_COMMENT BEGIN(INITIAL);


{START_RAW_STR} BEGIN(RAW_STRING_STATE);
<RAW_STRING_STATE>ESCAPE_RAW_STR
    /*<RAW_STRING_STATE>RAW_STR // TODO TODO TODO -- need to deal with mul strings and writing in the end the last line number*/
<RAW_STRING_STATE>END_RAW_STR BEGIN(INITIAL);

{START_HEX} BEGIN(RAW_HEX_STATE);
<RAW_HEX_STATE>WHITESPACE
<RAW_HEX_STATE>HEXNUM



     /* STREAM BEGIN(STREAM)*/
     /* ENDSTREAM BEGIN(INITIAL)*/
     /*rules*/
     /* <<EOF>> // TODO*/






%%
    //c code















