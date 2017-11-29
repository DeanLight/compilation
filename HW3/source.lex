%{
#include "output.hpp"
#include "source.hpp"
% #include "source.tab.hpp" % revert back
#include <iostream>
%}

colon_t :
sc_t ;
comma_t ,
lparen_t \(
rparen_t \)
lbrace_t \[
rbrace_t \]
ass_t =
relop_t (==)|(!=)|(<)|(>)|(<=)|(>=)
binop_t [\+\-\*/]
id_t [a-zA-Z]([a-zA-Z0-9])*
num_t (0)|([1-9]([0-9])*)
	/* TODO CHECK: */
string_t \"([^\n\r\"\\]|\\[rnt"\\])+\"


%%

void {yyval = new Void(yytext);
	return VOID;};
	
int {yyval = new Int(yytext);
	return INT;};

byte {yyval = new Byte(yytext);
	return Byte;};
	
b {yyval = new B_Node(yytext);
	return B;};
	
bool {yyval = new Bool(yytext);
	return BOOL;};

and {yyval = new And(yytext);
	return AND;};
	
or {yyval = new Or(yytext);
	return OR;};

not {yyval = new Not(yytext);
	return NOT;};

true {yyval = new True(yytext);
	return TRUE;};

false {yyval = new False(yytext);
	return FALSE;};

return {yyval = new Return(yytext);
	return RETURN;};
	
if {yyval = new If(yytext);
	return IF;};

else {yyval = new Else(yytext);
	return ELSE;};

while {yyval = new While(yytext);
	return WHILE;};
	
switch {yyval = new Switch(yytext);
	return SWITCH;};

case {yyval = new Case(yytext);
	return CASE;};
	
break {yyval = new Break(yytext);
	return BREAK;};

default {yyval = new Default(yytext);
	return DEFAULT;};

colon_t	{yyval = new Colon(yytext);
	return COLON;};

sc_t {yyval = new SC_Node(yytext);
	return SC;};

comma_t	{yyval = new Comma(yytext);
	return COMMA;};	
	
{lparen_t} {yyval = new Lparen(yytext);
	return LPAREN;};
	
{rparen_t} {yyval = new Rparen(yytext);
	return RPAREN;};

{lbrace_t} {yyval = new Lbrace(yytext);
	return LBRACE;};

{rbrace_t} {yyval = new Rbrace(yytext);
	return RBRACE;};
	
ass_t {yyval = new Assign(yytext);
	return ASSIGN;};

{relop_t} {yyval = new Relop(yytext);
	return RELOP;};
	
{binop_t} {yyval = new Binop(yytext);
	return BINOP;};

{id_t} {yyval = new Id(yytext);
	return ID;};
	
{num_t} { yyval = new Num(yytext);
	return NUM;};
	
{string_t} { yyval = new String(yytext);
	return STRING;};
	
	/* if nothing else - an error!*/
. {errorLex(yylineno);
	exit(1);};
	/* TODO _ EOF? */
%%