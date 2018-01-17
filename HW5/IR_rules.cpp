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

#define COMPILE_DBG

Emitter emitter;

CodeBuffer &codebuff = CodeBuffer::instance();
SymbolTable &symtabref=SymbolTable::getSymbolTable();


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


// special - creating the first point of the program to jump into main
// returns the adress that backpatches the jump to the main function of the C program
int FIRST_PROGRAM_POINT(void) // CHANGE add marker
{
#ifdef COMPILE_DBG
    cerr << "[FIRST_PROGRAM_POINT]" << endl;
#endif
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
    emitter.comment("div by 0 handler:");
    emitter.add_label(ZERO_DIV_LABEL);
    emitter.msg_print("Error division by zero\n");
    emitter.halt();
#ifdef COMPILE_DBG
    cerr << "(END_OF)  [FIRST_PROGRAM_POINT]" << endl;
#endif
    return line_addr_jumpToMain;
}

void Program_IR(int lineno,class ProgramNode* Self,InitProgNode* initProg, class FuncsNode* funcs)
{

#ifdef COMPILE_DBG
    cerr << "[Program_IR] backpatching line number " << initProg->jump_to_main_address << " with ";
#endif
    //std::string main_start_line = glob_int_to_str(symtabref.get_func_start_line("main"));
    std::string main_label = symtabref.get_func_label("main");
#ifdef COMPILE_DBG
    cerr << main_label << endl;
    cerr << "ignore me (" << symtabref.get_func_start_line("main") << ")" << endl;
#endif
    codebuff.bpatch(codebuff.makelist(initProg->jump_to_main_address),main_label);
#ifdef COMPILE_DBG
    cerr << "[END_OF Program_IR]" << endl;
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

#ifdef COMPILE_DBG
    cerr << "[Exp_IR] Exp -> Exp1 Binop Exp2" << endl;
#endif
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
#ifdef COMPILE_DBG
    cerr << "END_OF [Exp_IR] Exp -> Exp1 Binop Exp2" << endl;
#endif
}

// Exp -> ( Exp1 )
void Exp_IR(int lineno,class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp)
{
    //NADA!
}


// Exp -> id
void Exp_IR(int lineno,class ExpNode* Self,class Id* id){
#ifdef COMPILE_DBG
    cerr << "[Exp_IR] Exp -> id: " << id->str_content << endl;
#endif
  // get sp offset of id from symbolTable currently returns something like 4($sp)
  const string& fp_offset=symtabref.get_var_fp(id->str_content);
  const string& reg1= RegMngr::getRegMngr().get_next_free_reg(); // get next free reg
  emitter.get_var_value(reg1,fp_offset); // emit assign //
#ifdef COMPILE_DBG
    cerr << "END_OF [Exp_IR] Exp -> id" << endl;
#endif
}

// Exp -> Call
void Exp_IR(int lineno,class ExpNode* Self,class CallNode* call){
    // TODO
}

// Exp -> Num
void Exp_IR(int lineno,class ExpNode* Self,class Num* num){
#ifdef COMPILE_DBG
    cerr << "[Exp_IR] Exp -> Num:" << num->str_content << endl;
    if (symtabref.is_func("main"))
    {
        cerr << "{{{{ NOT RELEVANT:" << symtabref.get_func_label("main") << "}}}}" << endl;
    }
#endif
  string reg =RegMngr::getRegMngr().get_next_free_reg();
  emitter.num_toreg(reg,num->str_content);
#ifdef COMPILE_DBG
    cerr << "END_OF [Exp_IR] Exp -> Num" << endl;
#endif
}

// Exp -> Num B
void Exp_IR(int lineno,class ExpNode* Self,class Num* num, class B_Node* b){
#ifdef COMPILE_DBG
    cerr << "[Exp_IR] Exp -> Num B" << b->str_content << endl;
#endif
  Exp_IR(lineno,Self,num); // TODO FIX TO TRUNCATE RANGE
#ifdef COMPILE_DBG
    cerr << "END_OF [Exp_IR] Exp -> Num B" << endl;
#endif
}

// Exp -> String
void Exp_IR(int lineno,class ExpNode* Self,class String_Node* string_ptr);

// Exp -> True
void Exp_IR(int lineno,class ExpNode* Self,class True* true_val);

// Exp -> False
void Exp_IR(int lineno,class ExpNode* Self,class False* false_val);

// Exp -> Not Exp
void Exp_IR(int lineno,class ExpNode* Self,class Not* not_ptr , class ExpNode* exp1);


void FuncHead_IR(int lineno,class FuncHeadNode* Self, class RetTypeNode* rettype, class Id* id, class Lparen* lp ,class FormalsNode* formals , class Rparen* rp)
{
    const std::string & func_name = id->str_content;
#ifdef COMPILE_DBG
    cerr << "FuncHead_IR for func: " << func_name << endl;
#endif
    emitter.comment("Func " + func_name + ":");
    std::string func_label = codebuff.next();
//    int line_num = emitter.add_label(func_label); // TODO - bp.next already emits...
    int line_num = -1; // TODO
#ifdef COMPILE_DBG
    cerr << "got label " << func_label << " in line: " << line_num << endl;
#endif
    symtabref.set_func_start_line(func_name,line_num);
    symtabref.set_func_label(func_name, func_label);
#ifdef COMPILE_DBG
    cerr << "written label: " << symtabref.get_func_label(func_name) << endl;
    cerr << "END_OF [FuncHead_IR] " << endl;
#endif
}

void Statement_IR(int lineno,class StatementNode* Self, class Return* ret) // void return
{
#ifdef COMPILE_DBG
    cerr << "[Statement_IR] Return void" << endl;
    if (symtabref.is_func("main"))
    {
        cerr << "{{{{ NOT RELEVANT:" << symtabref.get_func_label("main") << "}}}}" << endl;
    }
#endif
    emitter.comment("return");
    emitter.ret();
}

void Statement_IR(int lineno,class StatementNode* Self, class Return* ret, class ExpNode* exp) // none void return
{
#ifdef COMPILE_DBG
    cerr << "[Statement_IR] Return noneVoid" << endl;
#endif
    emitter.comment("return noneVoid in v0");
    // assumption - exp is holding last reg
    emitter.assign(RegMngr::getRegMngr().getV0(),RegMngr::getRegMngr().last_reg());
    RegMngr::getRegMngr().free_last_reg();
    emitter.ret();
}



void Call_IR(int lineno,class CallNode* Self,CallHeaderNode* header, class Id* id){
#ifdef COMPILE_DBG
    cerr << "[Call_IR] : " << id->str_content << endl;
#endif
  // get label to jump to function
  string funclabel = symtabref.get_func_label(id->str_content);
  // registers where stored in CallHeader_IR
  int regnum = header->regnum;

  // save fp (old fp)
  emitter.push_to_stack("$fp");
  //save ra (old ra)
  emitter.push_to_stack("$ra");
  //save arguments no arguments in this case
  // move fp to sp
  emitter.assign("$fp","$sp");

  //jal
  emitter.jal(funclabel);
  //restore above
  emitter.pops_from_stack("$ra");
  emitter.pops_from_stack("$fp");

  emitter.restore_registers(regnum);
#ifdef COMPILE_DBG
    cerr << "END_OF [Call_IR]" << endl;
#endif
}



void Call_IR(int lineno,class CallNode* Self, CallHeaderNode* header, class Id* id, class ExpListNode* expList){
    //TODO why are there two Call_IR ?
}


void CallHeader_IR(int lineno, CallHeaderNode* Self){
#ifdef COMPILE_DBG
    cerr << "CallHeader_IR" << endl;
#endif
  Self->regnum=emitter.store_registers();
#ifdef COMPILE_DBG
    cerr << "END_OF CallHeader_IR" << endl;
#endif

}








