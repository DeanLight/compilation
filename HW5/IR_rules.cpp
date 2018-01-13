#include "IR_rules.hpp"
#include <vector>
#include <string>
#include <iostream>
#include <sstream>
using namespace std;

#define COMPILE_DBG


Emitter emitter=Emiiter();


//Exp -> Exp1 And Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class And* and_ptr, class ExpNode* exp2);

//Exp -> Exp1 OR Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Or* or_ptr, class ExpNode* exp2);

// Exp -> Exp1 Relop Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Relop* relop, class ExpNode* exp2);

// Exp -> Exp1 Binop Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Binop* binop, class ExpNode* exp2){
	//get last 2 used registers

	//get binop map command {}

	if(binop->str)


}

// Exp -> ( Exp1 )
void Exp_IR(int lineno,class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp);

// Exp -> id
void Exp_IR(int lineno,class ExpNode* Self,class Id* id);

// Exp -> Call
void Exp_IR(int lineno,class ExpNode* Self,class CallNode* call);

// Exp -> Num
void Exp_IR(int lineno,class ExpNode* Self,class Num* num){

  emitter.num_toreg(reg,num->str_content);


}

// Exp -> Num B
void Exp_IR(int lineno,class ExpNode* Self,class Num* num, class B_Node* b);

// Exp -> String
void Exp_IR(int lineno,class ExpNode* Self,class String_Node* string_ptr);

// Exp -> True
void Exp_IR(int lineno,class ExpNode* Self,class True* true_val);

// Exp -> False
void Exp_IR(int lineno,class ExpNode* Self,class False* false_val);

// Exp -> Not Exp
void Exp_IR(int lineno,class ExpNode* Self,class Not* not_ptr , class ExpNode* exp1);














