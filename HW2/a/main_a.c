

#include "tokens.h"
#include "grammar.h"
//#include "lex.yy.c" // TODO REMOVE Un-needed
#include "AST.h"
#include <stdio.h>
#include <stdlib.h>

#define MAX_NONTERM_ENUM_VAL 9

extern int yylex (void);

/* add a terminal AST_NODE */ // TODO 

void get_next_token(enum tokens& tt );
void PRINT_SYNTAX_ERROR_AND_EXIT()
{
	printf("Syntax error\n");
	exit(1);
}
typedef enum tokens t_type;
typedef enum nonterminal nt_type;

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
	// TODO -remove all prints and such
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
	if (tt == '$') // TODO - check that it'll fnished with that?
		return;
	tt = t_type(yylex());
	return;
}


/*
struct ASTNode* add_myself_a_son(struct ASTNode* me_node, enum nontrimnal son_type)
{
	
	// TODO - understand how we're supposed to use those Nodes;
	/*
	switch(son_type)
	{
		case Obj:
	}*/ /*
    /// switch cases
    //
    //return new son
}
*/

struct grammar_rule choose_rule(const nt_type&  var, const t_type& tt){
	int ret_index = -1;
	
	for(int i=0; i<grammar.size(); i++)
    {
		// TODO FIX_ME  - there might be a clash between the two enums...
		// WELL - actually 0 notm because htey made them be in seperate ranges;
        if ((grammar[i].lhs == var) && (grammar[i].rhs[0] == tt))
		{
			// found a rule with matching starting terminal
			ret_index = i;
			break;
		}
    }
	if (ret_index >= 0)
	{
		// we've found a rule for terminal:
		return grammar[ret_index];
	}
	// haven't found yet - check for variable rule:
		for(int i=0; i<grammar.size(); i++)
    {
        if ((grammar[i].lhs == var) && (grammar[i].rhs[0] <= MAX_NONTERM_ENUM_VAL))
		{
			// found a var rule starting with a variable
			if (ret_index >=0)
			{
				// ERROR - found a second variable rule
				// TODO FIXME - check the actual way to deal with it:
				
				PRINT_SYNTAX_ERROR_AND_EXIT(); // TODO should we print?
			}
			ret_index = i;
		}
    }
	return grammar[ret_index];
}



void match(struct ASTNode* curr_node, enum tokens& tt){

	struct grammar_rule curr_rule = choose_rule(curr_node.toEnum(),tt);
	for (int i=0; i<curr_rule.rhs.size(); i++)
	{
		int son = curr_rule.rhs[i];

		if (son <= MAX_NONTERM_ENUM_VAL)
		{
			// it's a variable // TODO
		}
		else
		{
			// it's a terminal
			if (son == tt) // yay
				get_next_token(tt);
			else // wrong terminal :(
				PRINT_SYNTAX_ERROR_AND_EXIT();
		}
	}
}
// if curr_node (a nonterminal!)  has rule starting with  tt - choose rule 
// else         if var has one rule starting with a variable - choose rule
// 
//             else ERROR
//  for rhs in rule chosen:
//      if terminal - check with tt (accept ang get new one \ raise ERROR)
//      if nonTerminal - add as son in AST, and call match on son)
//
//  return





