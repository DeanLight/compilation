%{
#include "output.hpp"
#include "source.hpp"
#include "parser.tab.hpp"
#include <iostream>
%}

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
bb b
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
	printf("void__"); // TODO REMOVE
	return VOID;};
	
int {yylval = new Int_Node(yytext);
	printf("int__"); // TODO REMOVE
	return INT;};

byte {yylval = new Byte_Node(yytext);
	printf("byte__"); // TODO REMOVE
	return BYTE;};
	
{bb} {yylval = new B_Node(yytext);
	printf("B__"); // TODO REMOVE
	return B;};
	
bool {yylval = new Bool_Node(yytext);
	printf("bool__"); // TODO REMOVE
	return BOOL;};

and {yylval = new And();
	printf("and__"); // TODO REMOVE
	return AND;};
	
or {yylval = new Or();
	printf("or__"); // TODO REMOVE
	return OR;};

not {yylval = new Not();
	printf("not__"); // TODO REMOVE
	return NOT;};

true {yylval = new True();
	printf("true__"); // TODO REMOVE
	return TRUE;};

false {yylval = new False();
	printf("false__"); // TODO REMOVE
	return FALSE;};

return {yylval = new Return();
	printf("return__"); // TODO REMOVE
	return RETURN;};
	
if {yylval = new If();
	printf("if__"); // TODO REMOVE
	return IF;};

else {yylval = new Else();
	printf("else__"); // TODO REMOVE
	return ELSE;};

while {yylval = new While();
	printf("while__"); // TODO REMOVE
	return WHILE;};
	
switch {yylval = new Switch();
	printf("switch__"); // TODO REMOVE
	return SWITCH;};

case {yylval = new Case();
	printf("case__"); // TODO REMOVE
	return CASE;};
	
break {yylval = new Break();
	printf("break__"); // TODO REMOVE
	return BREAK;};

default {yylval = new Default();
	printf("default__"); // TODO REMOVE
	return DEFAULT;};

{colon_t}	{yylval = new Colon();
	printf(":__"); // TODO REMOVE
	return COLON;};

{sc_t} {yylval = new SC_Node();
    printf(";__"); // TODO REMOVE
	return SC;};

{comma_t}	{yylval = new Comma();
    printf(",__"); // TODO REMOVE
	return COMMA;};	
	
{lparen_t} {yylval = new Lparen();
    printf("\(__"); // TODO REMOVE
	return LPAREN;};
	
{rparen_t} {yylval = new Rparen();
    printf(")__"); // TODO REMOVE
	return RPAREN;};

{lbrace_t} {yylval = new Lbrace();
    printf("\{__"); // TODO REMOVE
	return LBRACE;};

{rbrace_t} {yylval = new Rbrace();
    printf("}__"); // TODO REMOVE
	return RBRACE;};
	
{ass_t} {yylval = new Assign();
	printf("=__"); // TODO REMOVE
	return ASSIGN;};

{relop_t} {yylval = new Relop();
	printf("RelOp__"); // TODO REMOVE
	return RELOP;};
	
{binop_t} {yylval = new Binop();
	printf("BinOp__"); // TODO REMOVE
	return BINOP;};

{id_t} {yylval = new Id(yytext);
	printf("id__%s__",yytext); // TODO REMOVE
	return ID;};
	
{num_t} { yylval = new Num(yytext);
	printf("num__%s__",yytext); // TODO REMOVE
	return NUM;};
	
{string_t} { yylval = new String_Node(yytext);
	printf("str__%s",yytext); // TODO REMOVE
	return STRING;};
	
{WHITESPACE}

	/* if nothing else - an error__*/
. { printf("\nerror problem:[%s]\n",yytext); // TODO REMOVE
    output::errorLex(yylineno);
	exit(1);};
	/* TODO _ EOF? */
%%