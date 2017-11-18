

#include "tokens.h"
//#include "lex.yy.c"
#include "AST.h"
#include <stdio.h>
#include <stdlib.h>


extern int yylex (void);

/* add a terminal AST_NODE */ // TODO 

void get_next_token(enum tokens& tt );

typedef enum tokens t_type;

int main(){

// genrate AST tree
//
//
//enum tokens curr_tt = -1;
//
//
//create root of AST (obj)
//call match on it
// 
//
//      
//
//      
//
	t_type curr_tt;
	get_next_token(curr_tt);
	printf("First Token:%d\n",curr_tt);
	t_type prev_tt = curr_tt;
	get_next_token(curr_tt);
	while (curr_tt != prev_tt){
		printf("New Token: %d\n",curr_tt);
		get_next_token(curr_tt);
	}

	return 0;
}


void get_next_token(enum tokens& tt ){
	if (tt == '$')
		return;
	tt = t_type(yylex());
	return;

// if tt == $ - return;
// run stdin through yylex and get value of next token
//
// return token
}


/*
struct ASTNode* add_myself_a_son(struct ASTNode* me_node, enum nontrimnal son_type)
{
    /// switch cases
    //
    //return new son
}



const struct grammer_rule& choose_rule(enum nonterminal var, enum tokens tt){


}


void match(struct ASTNode* curr_node, enum tokens& tt){

// if curr_node (a nonterminal!)  has rule starting with  tt - choose rule 
// else         if var has one rule starting with a variable - choose rule
// 
//             else ERROR
//  for rhs in rule chosen:
//      if terminal - check with tt (accept ang get new one \ raise ERROR)
//      if nonTerminal - add as son in AST, and call match on son)
//
//  return


}

*/




