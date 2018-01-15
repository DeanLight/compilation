#include "IR_rules.hpp"
#include "RegMngr.h"
#include <vector>
#include <string>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <map>
using namespace std;

#define COMPILE_DBG

Emitter emitter;

RegMngr& regmn=RegMngr::getRegMngr();

//Exp -> Exp1 And Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class And* and_ptr, class ExpNode* exp2);

//Exp -> Exp1 OR Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Or* or_ptr, class ExpNode* exp2);

// Exp -> Exp1 Relop Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Relop* relop, class ExpNode* exp2);

// Exp -> Exp1 Binop Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Binop* binop, class ExpNode* exp2){

  // prepare map for switch case;
  map<string,binop_enum> int_binop_map;
  map<string,binop_enum> byte_binop_map;

  int_binop_map["+"]=ADD;
  int_binop_map["-"]=SUB;
  int_binop_map["*"]=MULT;
  int_binop_map["/"]=DIV;
  byte_binop_map["+"]=ADDB;
  byte_binop_map["-"]=SUBB;
  byte_binop_map["*"]=MULTB;
  byte_binop_map["/"]=DIVB;

  //get last 2 used registers
  pair<string,string> exp_regs=regmn.last_two_regs();
  string& reg1=exp_regs.first;
  string& reg2=exp_regs.second;
	//get binop map command {}
  const string& op_str = binop->str_content;
  binop_enum oper;

  if(Self->Type == Int){
    oper=int_binop_map[binop->str_content];
  } else if (Self-> Type == Byte){
    oper=byte_binop_map[binop->str_content];
  } else{
    // shouldnt get here
    throw std::logic_error( "binop should recieve either byte or int");
  }

  switch(oper){
    case binop_enum::ADD:
      emitter.add( reg1,  reg1 , reg2); break;
    case binop_enum::SUB:
      emitter.subtruct( reg1,  reg1 , reg2); break;
    case binop_enum::MULT:
      emitter.multiply( reg1,  reg1 , reg2); break;
    case binop_enum::DIV:
      emitter.div( reg1,  reg1 , reg2); break;
    case binop_enum::ADDB:
      emitter.add_byte( reg1,  reg1 , reg2); break;
    case binop_enum::SUBB:
      emitter.subtruct_byte( reg1,  reg1 , reg2); break;
    case binop_enum::MULTB:
      emitter.multiply_byte( reg1,  reg1 , reg2); break;
    case binop_enum::DIVB:
      emitter.div_byte( reg1,  reg1 , reg2); break;

  }

}

// Exp -> ( Exp1 )
void Exp_IR(int lineno,class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp);

// Exp -> id
void Exp_IR(int lineno,class ExpNode* Self,class Id* id){
  // get sp offset of id from symbolTable


  // get next free reg


  // emit assign



}

// Exp -> Call
void Exp_IR(int lineno,class ExpNode* Self,class CallNode* call);

// Exp -> Num
void Exp_IR(int lineno,class ExpNode* Self,class Num* num){
  string reg =regmn.get_next_free_reg();
  emitter.num_toreg(reg,num->str_content);


}

// Exp -> Num B
void Exp_IR(int lineno,class ExpNode* Self,class Num* num, class B_Node* b){
  Exp_IR(lineno,Self,num);

}

// Exp -> String
void Exp_IR(int lineno,class ExpNode* Self,class String_Node* string_ptr);

// Exp -> True
void Exp_IR(int lineno,class ExpNode* Self,class True* true_val);

// Exp -> False
void Exp_IR(int lineno,class ExpNode* Self,class False* false_val);

// Exp -> Not Exp
void Exp_IR(int lineno,class ExpNode* Self,class Not* not_ptr , class ExpNode* exp1);














