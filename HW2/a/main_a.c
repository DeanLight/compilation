

#include "tokens.h"
#include "grammar.h"
#include "AST.h"
#include <stdio.h>
#include <stdlib.h>
#include <vector>

#define MAX_NONTERM_ENUM_VAL 9

extern int yylex (void);
typedef enum tokens t_type;
typedef enum nonterminal nt_type;
typedef struct ASTNode* ASTNodePtr;
using std::vector;


/* add a terminal AST_NODE */ // TODO  // I don't think it's needed

void get_next_token(enum tokens& tt );
void PRINT_SYNTAX_ERROR_AND_EXIT()
{
	printf("Syntax error\n");
	exit(1);
}
ASTNodePtr match(const nt_type&, t_type&);


int main(){

	// TODO -remove all prints and such
	nt_type root_type = Obj;
	t_type curr_tt;
	get_next_token(curr_tt);
	ASTNodePtr root = match(root_type,curr_tt);
	ast_print(*root);
	/* // TODO REMOVE
	while (curr_tt != EF){
		printf("New Token: %d\n",curr_tt);
		printf("and in English: ");
		print_token(curr_tt);
		printf("\n");
		get_next_token(curr_tt);
	}
	printf("FINSIH\n");
	*/
	
	return 0;
}


void get_next_token(enum tokens& tt ){
	if (tt == '$') // TODO - check that it'll fnished with that?
	{
		printf("No more tokens for you\n"); // TODO REMOVE
		return;
	}
	tt = t_type(yylex());
	return;
}



ASTNodePtr create_ASTNodePtr(const struct grammar_rule& my_rule, const vector<ASTNodePtr> &my_sons)
{
	
	// NOTE: currently we are not asserting my_sons's size
	
	switch(my_rule.lhs)
	{
		case Obj: //currently only one Ctor, no need to consult rule
			return new ObjNode(dynamic_cast<BodyNode*>(my_sons[0])); 
		case Body: //currently only one Ctor, no need to consult rule 
			return new BodyNode(dynamic_cast<DictNode*>(my_sons[0]));
		case Dict: //currently only one Ctor, no need to consult rule
			return new DictNode(dynamic_cast<KVListNode*>(my_sons[0]));
		case KVList:
			if (my_rule.rhs[0] == RDICT) // rule 6 modified (TODO - could also check by size of my_sons)
				return new KVListNode();
			else // rule 5
				return new KVListNode(dynamic_cast<KVNode*>(my_sons[0]), dynamic_cast<KVListNode*>(my_sons[1]));
		case KV: //currently only one Ctor, no need to consult rule
			return new KVNode(dynamic_cast<ExpNode*>(my_sons[0]));
		case Exp: //currently only one Ctor, no need to consult rule
			return new ExpNode();
		default: printf("ERROR! unsupported type. value:%d\n",my_rule.lhs); // TODO ?
			 
		
	}
}


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
				//printf("Found two possible rules: %d and %d\n",ret_index,i); // TODO 4DEBUG
				PRINT_SYNTAX_ERROR_AND_EXIT(); // TODO - the right way to handle
			}
			ret_index = i;
		}
    }
	return grammar[ret_index];
}


void producing_nonterminal(const nt_type& var)
{
	std::cout << "Producing ";
	print_nonterminal(var);
	printf("\n");
}

void fin_producing_nonterminal(const nt_type& var)
{
	std::cout << "Finished producing ";
	print_nonterminal(var);
	printf("\n");
}

//void match(struct ASTNode* curr_node, enum tokens& tt){
ASTNodePtr match(const nt_type &curr_var, t_type &tt){

	producing_nonterminal(curr_var);
	
	struct grammar_rule curr_rule = choose_rule(curr_var,tt);
	vector<ASTNodePtr> my_sons;
	for (int i=0; i<curr_rule.rhs.size(); i++)
	{
		int son = curr_rule.rhs[i];

		if (son <= MAX_NONTERM_ENUM_VAL)
		{
			// it's a variable // TODO
			my_sons.push_back(match(nt_type(son),tt));
		}
		else
		{
			// it's a terminal
			if (son == tt) // yay
				get_next_token(tt);
			else // wrong terminal :(
			{
				/* // TODO 4DEBUG
				printf("Wrong Terminal!rule looking for:");
				print_token(t_type(son));
				printf(" but finding: ");
				print_token(t_type(tt));
				printf(" instead.\n");
				*/
				
				PRINT_SYNTAX_ERROR_AND_EXIT();
			}
		}
	}
	
	fin_producing_nonterminal(curr_var);
	return create_ASTNodePtr(curr_rule, my_sons);
}


