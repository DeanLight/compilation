#include "IR_rules.hpp"
#include "RegMngr.hpp"
#include "symbol_table.hpp"
#include "emitter.hpp"
#include "bp.hpp"
#include <vector>
#include <string>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <map>
using namespace std;

#define WORD 4

#define COMPILE_DBG

Emitter emitter;


SymbolTable &symtabref=SymbolTable::getSymbolTable();
CodeBuffer &codeBuff = CodeBuffer::instance();

enum binop_enum{
  ADD,
  SUB,
  MULT,
  DIV,
  ADDB,
  SUBB,
  MULTB,
  DIVB
} ;

std::string int_to_str(int num)
{
    std::stringstream numStr;
    numStr << num;
    return numStr.str();
}

// special - creating the first point of the program to jump into main
// returns the adress that backpatches the jump to the main function of the C program
int FIRST_PROGRAM_POINT(void) // CHANGE add marker
{
    emitter.comment("first program point");
    emitter.add_label("main"); // no backpatching needed
    int line_addr_jumpToMain= emitter.func_call_patchy(); // TODO CHANGE
    emitter.halt();
    emitter.comment("print_func:");
    emitter.add_label("print");
    symtabref.set_func_label("print","print");
    emitter.add_print_func();
    emitter.comment("printi func:");
    emitter.add_label("printi");
    emitter.add_printi_func();
    symtabref.set_func_label("printi","printi");
    emitter.comment("printi func:");
    emitter.comment("div by 0 handler:");
    emitter.add_label("ZERO_DIV_LABEL");
    emitter.msg_print("Error division by zero\n");
    emitter.halt();
    return line_addr_jumpToMain;
}

void Program_IR(int lineno,class ProgramNode* Self,InitProgNode* initProg class FuncsNode* funcs)
{
#ifdef COMPILE_DBG
    cerr << "[Program_IR] backpatching main address for FIRST_PROGRAM_POINT" << endl;
#endif
    std::vector<int> toBp;
    toBp.push_back(initProg->jump_to_main_address);
    int main_line = symtabref.get_func_start_line("main"); // TODO - make sure the function's label is "main" - cause there's already a label with this name for FIRST POINT
    codeBuff.bpatch(toBp,main_line);
#ifdef COMPILE_DBG
    cerr << "[Program_IR] FINISHED backpatching main address for FIRST_PROGRAM_POINT" << endl;
#endif
}


//Exp -> Exp1 And Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class And* and_ptr, class ExpNode* exp2)
{
    // TODO - bool
}

//Exp -> Exp1 OR Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Or* or_ptr, class ExpNode* exp2)
{
    // TODO - bool
}

// Exp -> Exp1 Relop Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Relop* relop, class ExpNode* exp2)
{
    // TODO - bool
}

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
  pair<string,string> exp_regs=RegMngr::getRegMngr().last_two_regs();
  string& reg1=exp_regs.first;
  string& reg2=exp_regs.second;
	//get binop map command {}
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
    case ADD:
      emitter.add( reg1,  reg1 , reg2); break;
    case SUB:
      emitter.subtruct( reg1,  reg1 , reg2); break;
    case MULT:
      emitter.multiply( reg1,  reg1 , reg2); break;
    case DIV:
      emitter.div( reg1,  reg1 , reg2); break;
    case ADDB:
      emitter.add_byte( reg1,  reg1 , reg2); break;
    case SUBB:
      emitter.subtruct_byte( reg1,  reg1 , reg2); break;
    case MULTB:
      emitter.multiply_byte( reg1,  reg1 , reg2); break;
    case DIVB:
      emitter.div_byte( reg1,  reg1 , reg2); break;
  }
    RegMngr::getRegMngr().free_last_reg(); // free reg2 for new use
}

// Exp -> ( Exp1 )
void Exp_IR(int lineno,class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp)
{
    //NADA!
}


// Exp -> id
void Exp_IR(int lineno,class ExpNode* Self,class Id* id){
  // get sp offset of id from symbolTable currently returns something like 4($sp)
  const string& fp_offset=symtabref.get_var_fp(id->str_content);
  const string& reg1= RegMngr::getRegMngr().get_next_free_reg(); // get next free reg
  emitter.get_var_value(reg1,fp_offset); // emit assign //
}

// Exp -> Call
void Exp_IR(int lineno,class ExpNode* Self,class CallNode* call){

}

// Exp -> Num
void Exp_IR(int lineno,class ExpNode* Self,class Num* num){
  string reg =RegMngr::getRegMngr().get_next_free_reg();
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



void Call_IR(int lineno,class CallNode* Self, class Id* id){
    // get label to jump to function

    int place_for_RA_FP = 2 * WORD;
    string expand_stack = "\taddiu $sp, $sp, -"+intToString(place_for_RA_FP); //
    // saving old fp:
    std::string lineFP = std::string("\tsw ") + RegMngr::getRegMngr().getFP() +","+intToString(2*WORD)+"($sp)" ; // TODO maybe add relevant func in emitter?
    codeBuff.emit(lineFP);
    // saving old ra:
    std::string lineRA = std::string("\tsw ") + RegMngr::getRegMngr().getRA() +","+intToString(WORD)+"($sp)" ;
    codeBuff.emit(lineRA);
    int regnum = emitter.store_registers(); // stored regs -- Notice- it includes the params! which is a problem for us
    // one way to fix it - to save the old FP and RA before than (currently applied)
    emitter.func_call(); // TODO TODO TODO
    emitter.restore_registers(regnum);
    // freeing all the regs which held the params:
    RegMngr::getRegMngr().free_last_k_regs(Self->get_numOf_params());
    //resotring RA and FP:

   /* save fp (old fp)
   * save ra (old ra)
   * save arguments
   * update sp accordingly
   * TODO tocheck - check if JAL updates fp
   */
  // jal
  /* restore above
   *
   */


}


void Statement_IR(int lineno,class StatementNode* Self, class Return* ret)
{
#ifdef COMPILE_DBG
    cerr << "[Statement_IR](return void)" << endl;
#endif
    // TODO - how do we return from a function?
}
void Statement_IR(int lineno,class StatementNode* Self, class Return* ret, class ExpNode* exp)
{
#ifdef COMPILE_DBG
    cerr << "[Statement_IR](return noneVoid) " << exp->str_content << endl;
#endif
    // last content - of the exp - should be in the last register
    // TODO - not relevant to hear - dealing with bool. should it be 1 and 0 ?
    emitter.assign(RegMngr::getRegMngr().getV0(),RegMngr::getRegMngr().last_reg());
    // TODO - how do we return from a function?
}











