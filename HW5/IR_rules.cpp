#include "IR_rules.hpp"
#include "RegMngr.hpp"
#include <vector>
#include <string>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <map>
using namespace std;

#define COMPILE_DBG

Emitter emitter;

class RegMngr regmn;

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
  const string& op_str = binop->str_content;
  binop_enum oper;

  if(Self->Type == Int){
    oper=emitter.int_binop_map.find("asda");
  } else if (Self-> Type == Byte){
    oper=emitter.byte_binop_map[binop->str_content];
  } else{
    // shouldnt get here
    throw std::logic_error( "binop should recieve either byte or int");
  }

  switch(oper){
    case binop_enum::ADD:
      emitter.add( dreg,  sreg1 , sreg2); break;
    case binop_enum::SUB:
      emitter.subtruct( dreg,  sreg1 , sreg2); break;
    case binop_enum::MULT:
      emitter.multiply( dreg,  sreg1 , sreg2); break;
    case binop_enum::DIV:
      emitter.div( dreg,  sreg1 , sreg2); break;
    case binop_enum::ADDB:
      emitter.add_byte( dreg,  sreg1 , sreg2); break;
    case binop_enum::SUBB:
      emitter.subtruct_byte( dreg,  sreg1 , sreg2); break;
    case binop_enum::MULTB:
      emitter.multiply_byte( dreg,  sreg1 , sreg2); break;
    case binop_enum::DIVB:
      emitter.div_byte( dreg,  sreg1 , sreg2); break;

  }

}

// Exp -> ( Exp1 )
void Exp_IR(int lineno,class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp);

// Exp -> id
void Exp_IR(int lineno,class ExpNode* Self,class Id* id);

// Exp -> Call
void Exp_IR(int lineno,class ExpNode* Self,class CallNode* call);

// Exp -> Num
void Exp_IR(int lineno,class ExpNode* Self,class Num* num){
  string reg =regmn.get_next_free_reg();
  emitter.num_toreg(reg,num->str_content);


}

// Exp -> Num B
void Exp_IR(int lineno,class ExpNode* Self,class Num* num, class B_Node* b){
  Exp_IR(lineno,self,num);

}

// Exp -> String
void Exp_IR(int lineno,class ExpNode* Self,class String_Node* string_ptr);

// Exp -> True
void Exp_IR(int lineno,class ExpNode* Self,class True* true_val);

// Exp -> False
void Exp_IR(int lineno,class ExpNode* Self,class False* false_val);

// Exp -> Not Exp
void Exp_IR(int lineno,class ExpNode* Self,class Not* not_ptr , class ExpNode* exp1);














