%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char string_buf[10000];
char *string_buf_ptr;
void printToken(char *type);
%}

%option noyywrap
%option yylineno

decimal [[:digit:]]+("."[[:digit:]]+)?
exponent [eE][+-]?[[:digit:]]+
number {decimal}({exponent})?

unicode \\u[[:xdigit:]]{4}
escape_chars [\"\\\/]
bad_escape [^\"\\\/bfnrt]

whitespace [ \t\n\r]

%x str

%%

{whitespace} ;
"{" printToken("OBJ_START");
"}" printToken("OBJ_END");
"[" printToken("ARR_START");
"]" printToken("ARR_END");
: printToken("COLON");
, printToken("COMMA");
true printToken("TRUE");
false printToken("FALSE");
null printToken("NULL");
{number} printToken("NUMBER");

"//"[^\n]* { printToken("LN_COMMENT");}
"/*"([^*]|(\*+([^*/])))*\*+"/" printToken("BK_COMMENT");
"/*"([^*]|(\*+([^*/])))*\** { 
  puts("Error unclosed block comment"); 
  exit(0);
}

\" {
  memset(string_buf,0,10000);
  string_buf_ptr = string_buf;
  BEGIN(str);
}

<str>\" { 
  BEGIN(INITIAL);
  *string_buf_ptr = '\0';
  string_buf_ptr = string_buf;
  printf("%d %s %s\n", yylineno, "STRING", string_buf_ptr);
}

<str>{unicode} {
  char num[4];
  strncpy(num, yytext+2 ,4);
  long n = strtol(num, NULL, 16);
  string_buf_ptr += sprintf(string_buf_ptr,"#%ld#",n);
}

<str>\\{escape_chars} {
  *string_buf_ptr++ = *(yytext + 1);
}

<str>\\{bad_escape} {
  printf("Error undefined escape sequence %s\n", yytext + 1);
  exit(0); 
}

<str>\\n  *string_buf_ptr++ = '\n';
<str>\\t  *string_buf_ptr++ = '\t';
<str>\\r  *string_buf_ptr++ = '\r';
<str>\\b  *string_buf_ptr++ = '\b';
<str>\\f  *string_buf_ptr++ = '\f';

<str>[^\x20-\x7E] {
  printf("Error %s\n", yytext);
  exit(0);
}

<str>[\x20-\x7E] {
  char *yptr = yytext;
  while (*yptr) *string_buf_ptr++ = *yptr++;
}
<str><<EOF>> {
  puts("Error unclosed string"); 
  exit(0);
} 

<<EOF>> {
  printToken("EOF");
  return 0;
}
. { 
  printf("Error %s\n", yytext); 
  exit(0);
}

%%


void printToken(char *type) {
  printf("%d %s %s\n", yylineno, type, yytext);
}
