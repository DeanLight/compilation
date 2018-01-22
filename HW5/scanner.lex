%{
#include "output.hpp"
#include "source.hpp"
#include "parser.tab.hpp"
#include <iostream>
#include <stdio.h>

#define LEXDEBUG

%}

%option yylineno
%option noyywrap

CR \r
LF \n
ENDLINE ((({CR})({LF}))|{CR}|{LF})
COMMENT "//"([^\r\n]*){ENDLINE}
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
WHITESPACE ([ \t])|({ENDLINE})


%%
{COMMENT} {;
            #ifdef LEXDEBUG
           	fprintf(stderr,"Lex Ate comment:%s\n",yytext); // TODO REMOVE
           	#endif
           	}

void {yylval = new Void_Node();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token void__\n"); // TODO REMOVE
	#endif
	return VOID;};

int {yylval = new Int_Node(yytext);
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token int__\n"); // TODO REMOVE
	#endif
	return INT;};

byte {yylval = new Byte_Node(yytext);
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token byte__\n"); // TODO REMOVE
	#endif
	return BYTE;};

{bb} {yylval = new B_Node(yytext);
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token B__\n"); // TODO REMOVE
	#endif
	return B;};

bool {yylval = new Bool_Node(yytext);
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token bool__\n"); // TODO REMOVE
	#endif
	return BOOL;};

and {yylval = new And();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token and__\n"); // TODO REMOVE
	#endif
	return AND;};

or {yylval = new Or();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token or__\n"); // TODO REMOVE
	#endif
	return OR;};

not {yylval = new Not();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token not__\n"); // TODO REMOVE
	#endif
	return NOT;};

true {yylval = new True();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token true__\n"); // TODO REMOVE
	#endif
	return TRUE;};

false {yylval = new False();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token false__\n"); // TODO REMOVE
	#endif
	return FALSE;};

return {yylval = new Return();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token return__\n"); // TODO REMOVE
	#endif
	return RETURN;};

if {yylval = new If();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token if__\n"); // TODO REMOVE
	#endif
	return IF;};

else {yylval = new Else();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token else__\n"); // TODO REMOVE
	#endif
	return ELSE;};

while {yylval = new While();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token while__\n"); // TODO REMOVE
	#endif
	return WHILE;};

switch {yylval = new Switch();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token switch__\n"); // TODO REMOVE
	#endif
	return SWITCH;};

case {yylval = new Case();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token case__\n"); // TODO REMOVE
	#endif
	return CASE;};

break {yylval = new Break();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token break__\n"); // TODO REMOVE
	#endif
	return BREAK;};

default {yylval = new Default();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token default__\n"); // TODO REMOVE
	#endif
	return DEFAULT;};

{colon_t}	{yylval = new Colon();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token  :__\n"); // TODO REMOVE
	#endif
	return COLON;};

{sc_t} {yylval = new SC_Node();
    #ifdef LEXDEBUG
    fprintf(stderr,"Lex Ate token  ;__\n"); // TODO REMOVE
	#endif
	return SC;};

{comma_t}	{yylval = new Comma();
    #ifdef LEXDEBUG
    fprintf(stderr,"Lex Ate token  ,__\n"); // TODO REMOVE
	#endif
	return COMMA;};

{lparen_t} {yylval = new Lparen();
    #ifdef LEXDEBUG
    fprintf(stderr,"Lex Ate token  \(__\n"); // TODO REMOVE
	#endif
	return LPAREN;};

{rparen_t} {yylval = new Rparen();
    #ifdef LEXDEBUG
    fprintf(stderr,"Lex Ate token )__\n"); // TODO REMOVE
	#endif
	return RPAREN;};

{lbrace_t} {yylval = new Lbrace();
    #ifdef LEXDEBUG
    fprintf(stderr,"Lex Ate token  \{__\n"); // TODO REMOVE
	#endif
	return LBRACE;};

{rbrace_t} {yylval = new Rbrace();
    #ifdef LEXDEBUG
    fprintf(stderr,"Lex Ate token  }__\n"); // TODO REMOVE
	#endif
	return RBRACE;};

{ass_t} {yylval = new Assign();
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token  =__\n"); // TODO REMOVE
	#endif
	return ASSIGN;};

{relop_t} {yylval = new Relop(yytext);
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token  RelOp__%s__\n" ,yytext); // TODO REMOVE
	#endif
	return RELOP;};

{binop_t} {yylval = new Binop(yytext);
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token  BinOp__%s__\n" ,yytext); // TODO REMOVE
	#endif
	return BINOP;};

{id_t} {yylval = new Id(yytext);
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token  id__%s__\n",yytext); // TODO REMOVE
	#endif
	return ID;};

{num_t} { yylval = new Num(yytext);
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token  num__%s__\n",yytext); // TODO REMOVE
	#endif
	return NUM;};

{string_t} { yylval = new String_Node(yytext);
    #ifdef LEXDEBUG
	fprintf(stderr,"Lex Ate token  str__%s__\n",yytext); // TODO REMOVE
	#endif
	return STRING;};

{WHITESPACE}

	/* if nothing else - an error__*/
. {

    fprintf(stderr,"Lex Error \nerror problem:[%s]\n",yytext); // TODO REMOVE

    output::errorLex(yylineno);
	exit(1);};
	/* TODO _ EOF? */
%%
