%{
#include "output.hpp"
#include "source.hpp"
#include "parser.tab.hpp"
#include <iostream>



%}

%option yylineno

%option noyywrap

colon_t :
sc_t ;
comma_t ,
lparen_t \(
rparen_t \)
lbrace_t \{
rbrace_t \}
ass_t =
relop_t (==)|(!=)|(<)|(>)|(<=)|(>=)
binop_t [\+\-\*/]
id_t [a-zA-Z]([a-zA-Z0-9])*
num_t (0)|([1-9]([0-9])*)
	/* TODO CHECK: */
string_t \"([^\n\r\"\\]|\\[rnt"\\])+\"
CR \r
LF \n
ENDLINE ((({CR})({LF}))|{CR}|{LF}) 
WHITESPACE ([ \t])|({ENDLINE})


%%

void {yylval = new Void_Node();
	return VOID;};
	
int {yylval = new Int_Node(yytext);
	return INT;};

byte {yylval = new Byte_Node(yytext);
	return Byte;};
	
b {yylval = new B_Node(yytext);
	return B;};
	
bool {yylval = new Bool_Node(yytext);
	return BOOL;};

and {yylval = new And();
	return AND;};
	
or {yylval = new Or();
	return OR;};

not {yylval = new Not();
	return NOT;};

true {yylval = new True();
	return TRUE;};

false {yylval = new False();
	return FALSE;};

return {yylval = new Return();
	return RETURN;};
	
if {yylval = new If();
	return IF;};

else {yylval = new Else();
	return ELSE;};

while {yylval = new While();
	return WHILE;};
	
switch {yylval = new Switch();
	return SWITCH;};

case {yylval = new Case();
	return CASE;};
	
break {yylval = new Break();
	return BREAK;};

default {yylval = new Default();
	return DEFAULT;};

{colon_t}	{yylval = new Colon();
	return COLON;};

{sc_t} {yylval = new SC_Node();
	return SC;};

{comma_t}	{yylval = new Comma();
	return COMMA;};	
	
{lparen_t} {yylval = new Lparen();
	return LPAREN;};
	
{rparen_t} {yylval = new Rparen();
	return RPAREN;};

{lbrace_t} {yylval = new Lbrace();
	return LBRACE;};

{rbrace_t} {yylval = new Rbrace();
	return RBRACE;};
	
{ass_t} {yylval = new Assign();
	return ASSIGN;};

{relop_t} {yylval = new Relop();
	return RELOP;};
	
{binop_t} {yylval = new Binop();
	return BINOP;};

{id_t} {yylval = new Id(yytext);
	return ID;};
	
{num_t} { yylval = new Num(yytext);
	return NUM;};
	
{string_t} { yylval = new String_Node(yytext);
	return STRING;};
	
{WHITESPACE}

	/* if nothing else - an error__*/
. { output::errorLex(yylineno);
	exit(1);};
	/* TODO _ EOF? */
%%