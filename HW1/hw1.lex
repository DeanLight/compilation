 
%{
/* preliminary C code */
#include <stdio.h>
#include <stdlib.h>

#include <string.h> // TODO cpp - check if needs to be strict c
#define MAX_BUFF 2048

char chrBuff [MAX_BUFF];
char * writePtr = chrBuff;

void add_string_to_buffer(char*);
void add_legal_escape_chr();
void add_octal_chr();
void add_hexStr_to_buffer(char*);

void print_and_clean_buffer(char*);

void error_half_hex();
void error_unclosed_string();
void error_illegal_character();
void error_wrong_escape();

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
UNSIGNED ((0)|({NON_ZERO_DIGIT}(({DIGIT})*)))
UNSIGNED_OLD_WITH_PROBABLY_WRONG_SYNTAX ((0)|(NON_ZERO_DIGIT(DIGIT*)))
OCTAL [0-7]
OCTAL3 ({OCTAL}){3}
STRING_OCTAL3 \\({OCTAL3})
HALF_STRING_OCTAL \\({OCTAL})
HEX DIGIT|[A-Fa-f]
HEXNUM HEX{2}
HEXNUM_FULL [0-9A-Fa-f][0-9A-Fa-f]
HEXNUM_HALF [0-9A-Fa-f]
SIGN [+\-]
CR \r
LF \n



ENDLINE ((({CR})({LF}))|{CR}|{LF}) 
ENDLINE_OLD_WITH_WRONG_SYNTAX (((CR)(LF))|CR|LF) 

ESCAPE_START \\ 
ESCAPE_SEQ [nrtbf\(\)\\]
LEGAL_ESCAPE_CHR \\({ESCAPE_SEQ})

ALPHANUM [a-zA-Z0-9]

OBJ obj
ENDOBJ endobj
LBRACE \[
RBRACE \]
LDICT <<
RDICT >>
NULL null

START_COMMENT %
END_COMMENT  {ENDLINE} // [CR|LF] // TODO - ask whether CR\LF or ENDLINE (also both) 
COMMENT [^\r\n]*

TRUE true
FALSE false

INTEGER ({SIGN})?({UNSIGNED})
INTEGER_OLD_TODO_REMOVE SIGN?(UNSIGNED)
     /* TODO 0 - deal with the dot*/
REAL ({SIGN})?({UNSIGNED})?\.(0*)({UNSIGNED})?
REAL_OLD_TODO_REMOVE SIGN?UNSIGNED?\.(0*)UNSIGNED?

	/* TODO - does it accidently catche EOF? */
RAW_STR_CHR ([^\(\)\\])
RAW_STR_CHR_OLD (({ESCAPE_SEQ})|[^\(\)\\])
RAW_STR_CHR_OLD_TODO_REMOVE (ESCAPE_SEQ|[^\(\)\\])
RAW_STR ({RAW_STR_CHR})+
RAW_STR_OLD_TODO_REMOVE RAW_STR_CHR+
     /*////////////////////WHOLE_RAW_STR \((RAW_STR|(\\ENDLINE))*(RAW_STR)?\) // TODO - does have to end with ENDLINE?*/
START_RAW_STR \(
END_RAW_STR \)
    /*/////////////////////MID_RAW_STR (RAW_STR|(\\ENDLINE))*(RAW_STR)?*/
	/*/////////////////////TODO - is the ENDLINE optional?*/
ESCAPE_RAW_STR (\\)({ENDLINE})
ESCAPE_RAW_STR_TODO_REMOVE (\\)(ENDLINE)

START_HEX <
END_HEX >
WHITESPACE_OLD_TODO_REMOVE_WITH_WRONG_SYNTAX [ \t]|ENDLINE
WHITESPACE ([ \t])|({ENDLINE})

     /*///////////////////HEX_STR <(HEXNUM( )?)*> // TODO - can it be empty? (no HEXNUM)*/

NAME \/({ALPHANUM})+
STREAM_INIT stream
STREAM_END endstream

     /*///////////////////JOKER - TODO REMOVE*/
JOKER_CHR .

CATCH_ILLEGAL_CHAR .
CHR_WITH_ESCAPE \\.





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

    /* avoiding printing blanks\end of lines when not in strings/streams :*/
	/* (( {ENDLINE2} printf("avoided a ENDLINE2"); )) TODO avoiding printing blanks\end of lines when not in strings*/
{WHITESPACE}


    /* TODO escaping needs to happne inside strings. we need to fix the current code*/
{ESCAPE_START} BEGIN(ESCAPE_STATE);


{START_COMMENT} BEGIN(COMMENT_STATE);

%{ /* TODO - do we need to print '%' with the comment*/
%}


<COMMENT_STATE>COMMENT printf("%d COMMENT %%%s\n",yylineno, yytext);
<COMMENT_STATE>END_COMMENT BEGIN(INITIAL);


{START_RAW_STR} BEGIN(RAW_STRING_STATE);
<RAW_STRING_STATE><<EOF>> error_unclosed_string();
	/* legal encounters of '\' in the string: */
<RAW_STRING_STATE>{ESCAPE_RAW_STR}
<RAW_STRING_STATE>{STRING_OCTAL3} add_octal_chr();
<RAW_STRING_STATE>{LEGAL_ESCAPE_CHR} add_legal_escape_chr();
	/* TODO - I think this is a possible state for (2.) error: */
<RAW_STRING_STATE>{HALF_STRING_OCTAL} error_unclosed_string();
	/* here we catche all \\. - if it was caught here and not before - it's an illegal escaping: */
<RAW_STRING_STATE>{CHR_WITH_ESCAPE} error_wrong_escape();
<RAW_STRING_STATE>{RAW_STR} add_string_to_buffer(yytext);
<RAW_STRING_STATE>{END_RAW_STR} print_and_clean_buffer("STRING");
<RAW_STRING_STATE>{CATCH_ILLEGAL_CHAR} error_illegal_character();



    /*<RAW_STRING_STATE>RAW_STR // TODO TODO TODO -- need to deal with mul strings and writing in the end the last line number*/
	/* OLD : <RAW_STRING_STATE>END_RAW_STR BEGIN(INITIAL); */


{START_HEX} BEGIN(RAW_HEX_STATE);
<RAW_HEX_STATE>{WHITESPACE}
<RAW_HEX_STATE>{HEXNUM_FULL} add_hexStr_to_buffer(yytext);
<RAW_HEX_STATE>{END_HEX} print_and_clean_buffer("STRING");
<RAW_HEX_STATE><<EOF>> error_unclosed_string();
<RAW_HEX_STATE>{HEXNUM_HALF} error_half_hex();
<RAW_HEX_STATE>{CATCH_ILLEGAL_CHAR} error_illegal_character();

     /* <RAW_HEX_STATE>{JOKER_CHR} printf("%d joker in a raw_hex_state! TODO REMOVE ME %s\n",yylineno,yytext); */

     /* STREAM BEGIN(STREAM)*/
     /* ENDSTREAM BEGIN(INITIAL)*/
     /*rules*/
     /* <<EOF>> // TODO -- add for all mid-streams as well!*/
	 
%%
    //c code
void add_char_to_buffer(char c) // NEEDS TO BE BEFORE MANY OTHERS
{
	writePtr[0] = c;
	writePtr[1] = 0; // TODO - as terminating char
	writePtr++;
}

void add_string_to_buffer (char * str)
{
	// this is for strings we can add as is;
	//asumes - we always have enough buffer
	strcpy (writePtr, str);
	writePtr += yyleng;
	*(writePtr) = 0; // TODO - as terminating char
}
/////////////////////////////

void add_octal_chr()
{
	// yytext[0] = '\'
	// [0][1][2] = d1 d2 d3
	int d1 = yytext[1] - '0';
	int d2 = yytext[2] - '0';
	int d3 = yytext[3] - '0';
	char realCh = d3 + (8 * d2) + (64 * d1);
	add_char_to_buffer(realCh);
}

void add_legal_escape_chr()
{
	// for: nrtbf\(\)\\
	// yytext[0] = '\'
	char c2 = yytext[1];
	if (c2 == 'n')
	{
		add_char_to_buffer(10);
		return;
	}
	if (c2 == 'r')
	{
		add_char_to_buffer(13);
		return;
	}
	if (c2 == 't')
	{
		add_char_to_buffer(9);
		return;
	}
	if (c2 == 'b')
	{
		add_char_to_buffer(8);
		return;
	}
	if (c2 == 'f')
	{
		add_char_to_buffer(12);
		return;
	}		
	if ((c2 == '(') || (c2 == ')') || (c2 == '\\'))
	{
		add_char_to_buffer(c2);
		return;
	}
	// TODO - raise an error? print for debugging for now?
}

int hexa_to_dec(char hexa)
{
	if (hexa >= '0' && hexa <= '9')
		return (hexa -'0');
	if (hexa >= 'a' && hexa <= 'f')
		return 10 + (hexa - 'a');
	if (hexa >= 'A' && hexa <= 'F')
		return 10 + (hexa - 'A');
	// TODO ? print error for debugging?
}

void add_hexStr_to_buffer(char* hexSt)
{
	int first_dig = hexa_to_dec(hexSt[0]);
	int second_dig = hexa_to_dec(hexSt[1]);
	char realCh = 16 * first_dig + second_dig;
	add_char_to_buffer(realCh);
}

void print_and_clean_buffer(char *type)
{
	// THIS FUNCTION ALSO ABANDON THE STATE AND RETURNS TO INITIAL STATE 
	// TODO - it seems it's printing the \n s as well should we catch and ignore them?
	printf("%d %s %s\n", yylineno,type,chrBuff);
	writePtr = chrBuff;
	chrBuff[0] = 0; // null terminating from the begining
	BEGIN(INITIAL); // TODO - will it work here?
}

void error_half_hex()
{
	printf("Error incomplete byte\n");
	exit(0);
}

void error_unclosed_string()
{
	printf("Error unclosed string\n");
	exit(0);
}

void error_illegal_character()
{
	printf("Error %s\n",yytext);
	exit(0);
}

void error_wrong_escape()
{
	//yytext == \X for some illegal character X
	printf("Error undefined escape sequence %c\n",yytext[1]);
	exit(0);
}








