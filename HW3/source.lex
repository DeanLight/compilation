%{
#include "source.hpp"
#include "source.tab.hpp"
#include <iostream>
%}



NUM_t [0-9]+ 
PLUS_t \+
MINUS_t -
SPACE \w
%%

NUM_t  {yylval= new Num(yytext);
		return NUM;};
PLUS_t {yylval= new Plus();
		return PLUS;};
MINUS_t {yylval = new Minus();
		return MINUS;};
SPACE 

%%
