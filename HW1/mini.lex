
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




CR \r
LF \n
ENDLINE ((({CR})({LF}))|{CR}|{LF}) 

START_COMMENT %
END_COMMENT  {ENDLINE} 
COMMENT [^\r\n]




%%

stream BEGIN(RAW_STREAM_STATE);
<RAW_STREAM_STATE>endstream { print_and_clean_buffer("STREAM"); printf("\n"); }
<RAW_STREAM_STATE><<EOF>> {printf("Error unclosed stream\n"); exit(0);}
<RAW_STREAM_STATE>.  add_string_to_buffer(yytext);

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







