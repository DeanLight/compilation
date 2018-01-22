#include "IR_rules.hpp"
#include "RegMngr.hpp"
#include "symbol_table.hpp"
#include "emitter.hpp"
#include "bp.hpp"
#include "source.hpp"
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
RegMngr& regmnref=RegMngr::getRegMngr();

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

enum relop_enum{
  EQ,
  NEQ,
  GR,
  LT,
  GRE,
  LTE
} ;

std::string IR_numToString(int num)
{
     ostringstream ss;
     ss << num;
     return ss.str();
}

void Mark_IR(int lineno, MarkNode* Self){
  // emit label and save it to startLabel
#ifdef COMPILE_DBG
  cerr << "[MARKER IR]: label: " ;
#endif
  emitter.comment("marker Label");
  Self->labelstr=emitter.get_bp_label();
  emitter.add_label(Self->labelstr);
  #ifdef COMPILE_DBG
  cerr << Self->labelstr << endl;
#endif
}

// special - creating the first point of the program to jump into main
// returns the adress that backpatches the jump to the main function of the C program
int FIRST_PROGRAM_POINT(void) // CHANGE add marker
{
#ifdef COMPILE_DBG
    cerr << "[FIRST_PROGRAM_POINT]" << endl;
#endif
    emitter.comment("first program point");
    emitter.add_label("main"); // no backpatching needed
    emitter.comment("initialize fp");
    emitter.assign("$fp","$sp");
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
    cerr << "ignore me1 (" << symtabref.get_func_label("main") << ")" << endl;
#endif
    codebuff.bpatch(codebuff.makelist(initProg->jump_to_main_address),main_label);
#ifdef COMPILE_DBG
    cerr << "[END_OF Program_IR]" << endl;
#endif
}


//Exp -> Exp1 And  M Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class And* and_ptr,MarkNode* M, class ExpNode* exp2)
{
    emitter.comment("reach And derivation");
    // patch E1 trulist to start of E2
    // bp.backpath(E1.truelist, M.label)
    codebuff.bpatch(exp1->truelist,M->labelstr);
    // Self.trulist.add(E2.truelist)
    Self->truelist=exp2->truelist;
    // Self.falselist.add(E2.falselist,E1.falseList)
    Self->falselist=codebuff.merge(exp1->falselist,exp2->falselist);

}

//Exp -> Exp1 OR M Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Or* or_ptr, MarkNode* M ,class ExpNode* exp2)
{
    // patch E1 falselist to start of E2
    // bp.backpath(E1.falselist, M.label)
    codebuff.bpatch(exp1->falselist,M->labelstr);
    //
    // Self.trulist.add(E2.truelist,E1.trulist)
    Self->truelist=codebuff.merge(exp1->truelist,exp2->truelist);
    // Self.falselist.add(E2.falselist)
    Self->falselist=exp2->falselist;
}

// Exp -> Exp1 Relop Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Relop* relop, class ExpNode* exp2)
{
    // TODO - bool
    // get last 2 regs, r1,r2
    //
    // get trueLabel
    // depending on relop type do a different conditional jump to true label
    // for example emit(bgr r1,r2 , trueLabel)
    //
    // emit(jump) add thios adress to falselist
    // emit(trueLabel:)
    //
    // emit(jump) add this to truelist

  #ifdef COMPILE_DBG
    cerr << "[Exp_IR]:Relop Exp -> Exp1 "+relop->str_content + " Exp2" << endl;
#endif
  // prepare map for switch case;
  map<string,relop_enum> int_relop_map;

  int_relop_map["=="]=EQ;
  int_relop_map["!="]=NEQ;
  int_relop_map["<"]=LT;
  int_relop_map[">"]=GR;
  int_relop_map[">="]=GRE;
  int_relop_map["<="]=LTE;

  //get last 2 used registers
  pair<string,string> exp_regs=RegMngr::getRegMngr().last_two_regs();
  string& reg1=exp_regs.first;
  string& reg2=exp_regs.second;
  //get relop map command {}
  relop_enum b_oper = int_relop_map[relop->str_content];

  int b_op_line;
  switch(b_oper){
    case EQ:
      b_op_line = emitter.EQ_patchy( reg1 , reg2); break;
    case NEQ:
      b_op_line = emitter.NEQ_patchy( reg1, reg2); break;
    case GR:
      b_op_line = emitter.GR_patchy( reg1, reg2); break;
    case LT:
      b_op_line = emitter.LT_patchy( reg1, reg2); break;
    case GRE:
      b_op_line = emitter.GRE_patchy( reg1, reg2); break;
    case LTE:
      b_op_line = emitter.LTE_patchy( reg1, reg2); break;
    default:
      cout<<"shoulntd get here RELOP IR SWITCH FAIL"<<endl;
      exit(5);
      break;
  }
    RegMngr::getRegMngr().free_last_reg(); // free reg2 for new use
    RegMngr::getRegMngr().free_last_reg(); // free reg1 for new use
    int false_line = emitter.patchy_jump();
    Self->truelist = codebuff.makelist(b_op_line);
    Self->falselist = codebuff.makelist(false_line);
#ifdef COMPILE_DBG
    cerr << "END_OF [Exp_IR]:Relop Exp -> Exp1 "+relop->str_content + " Exp2" << endl;
#endif
}

// Exp -> Exp1 Binop Exp2
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Binop* binop, class ExpNode* exp2){

#ifdef COMPILE_DBG
    cerr << "[Exp_IR]:Binop Exp -> Exp1 "+binop->str_content + " Exp2" << endl;
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
    default:
      cout<<"shoulntd get here BINOP IR SWITCH FAIL"<<endl;
      exit(5);
      break;
  }
    RegMngr::getRegMngr().free_last_reg(); // free reg2 for new use
#ifdef COMPILE_DBG
    cerr << "END_OF [Exp_IR]:Binop Exp -> Exp1 "+binop->str_content + " Exp2" << endl;
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
  Self->str_content = id->str_content;
#ifdef COMPILE_DBG
    cerr << "END_OF [Exp_IR] Exp -> id" << endl;
#endif
}

// Exp -> Call
void Exp_IR(int lineno,class ExpNode* Self,class CallNode* call){
    #ifdef COMPILE_DBG
      cerr << "[Exp_IR] Exp->call" << call->str_content << endl;
    #endif
      Self->str_content = call->str_content;
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
void Exp_IR(int lineno,class ExpNode* Self,class String_Node* string_ptr){

  #ifdef COMPILE_DBG
   cerr << "[Exp_IR] Exp -> string" << string_ptr->str_content << endl;
  #endif
  emitter.comment("caught a string");
  emitter.add_string(string_ptr->str_content);

  #ifdef COMPILE_DBG
    cerr << "END_OF [Exp_IR] Exp -> string" << endl;
  #endif
}

// Exp -> True
void Exp_IR(int lineno,class ExpNode* Self,class True* true_val){
  // emit an empty jump and link it to truelist
  // create an empty list for falselist -- already created by default
  emitter.comment("exp derived true");
  // Self->truelist=codebuff.makelist(emitter.patchy_jump()); // TODO


}

// Exp -> False
void Exp_IR(int lineno,class ExpNode* Self,class False* false_val){
  // emit an empty jump and link it to falselist
  // create an empty list for turelist
  emitter.comment("exp derived false");
  // Self->falselist=codebuff.makelist(emitter.patchy_jump()); // TODO
}

// Exp -> Not Exp1
void Exp_IR(int lineno,class ExpNode* Self,class Not* not_ptr , class ExpNode* exp1){
  //Self.truelist =e1.falselist
  //self.falselist=e1.truelist
  Self->truelist= exp1->falselist;
  Self->falselist= exp1->truelist;
}


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
void FuncDecl_IR(int lineno,class FuncDeclNode* Self, class FuncHeadNode* head ,class FuncStateNode* state)
{
#ifdef COMPILE_DBG
    cerr << "[FuncDeclNode_IR]: " << head->str_content << endl;
#endif
    std::string func_name = ((Id*)(head->sons[1]))->str_content;
#ifdef COMPILE_DBG
    cerr << "checking retType of func: " << func_name << endl;
    cerr << "If void, an extra ret will be added" << endl;
#endif
    v_type retType = symtabref.get_type(func_name);
#ifdef COMPILE_DBG
    cerr << "Ret type: " << retType << endl;
#endif

    string endlabel = emitter.get_bp_label();
    emitter.add_label(endlabel);
    vector<int>& last_jump_addr=((StatementsNode*)(state->sons[1]))->nextlist;
    codebuff.bpatch(last_jump_addr,endlabel);
    emitter.comment("Adding an extre return just in case");
    emitter.ret();


}

//statement -> return
void Statement_IR(int lineno,class StatementNode* Self, class Return* ret) // void return
{
#ifdef COMPILE_DBG
    cerr << "[Statement_IR] Return void" << endl;
    if (symtabref.is_func("main"))
    {
        cerr << "{{{{ NOT RELEVANT2:" << symtabref.get_func_label("main") << "}}}}" << endl;
    }
#endif
    emitter.comment("return");
    emitter.ret();
}

//statement -> return exp
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


// call -> id ()
void Call_IR(int lineno,class CallNode* Self,CallHeaderNode* header, class Id* id){
#ifdef COMPILE_DBG
    cerr << "[Call_IR] : no arguments " << id->str_content << endl;
    cerr << "regNum=" << header->regnum << endl;
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
  // move v0 to a new reg
  if (symtabref.get_type(id->str_content) != Void)
  {
    emitter.comment("moving return value to new reg");
    emitter.assign(regmnref.get_next_free_reg(),regmnref.getV0());
  }
  Self->str_content = id->str_content;
#ifdef COMPILE_DBG
    cerr << "END_OF [Call_IR]" << endl;
#endif
}



// call -> id (explist)
void Call_IR(int lineno,class CallNode* Self, CallHeaderNode* header, class Id* id, class ExpListNode* expList){
#ifdef COMPILE_DBG
    cerr << "[Call_IR] : with arguments " << id->str_content << endl;
#endif
  // get label to jump to function
  emitter.comment("preparing to call "+id->str_content);
  string funclabel = symtabref.get_func_label(id->str_content);
  // registers where stored in CallHeader_IR now all registers contains the expressions of expList
  int regnum = header->regnum;

  // save fp (old fp)
  emitter.push_to_stack("$fp");
  //save ra (old ra)
  emitter.push_to_stack("$ra");
  //save arguments no arguments in this case

  // now we have to store parameters

  int param_number=expList->typesvec.size();

  for( int i=0 ; i<param_number ; i++ ){
    if(expList->typesvec[i]==String){
      // we get the relevant exp from expvec, then we know its first son is a StringNode so we take the str content
#ifdef COMPILE_DBG
      cerr << "found a string typed parameter " << id->str_content << endl;
#endif
      string str_exp=expList->expvec[i]->sons[0]->str_content;
      string strLabel =emitter.add_string(str_exp);
      emitter.load_address_to_stack(strLabel);

    }
    else{
      string reg_to_save=regmnref.last_reg();
      emitter.push_to_stack(reg_to_save);
      regmnref.free_last_reg();
    }
  }

  // move fp to sp
  emitter.assign("$fp","$sp");
  //jal
  emitter.comment("jumping to func: " + id->str_content);
  emitter.jal(funclabel);
  emitter.comment("returned from func: " + id->str_content);
  //restore above

emitter.comment("poping " + IR_numToString(param_number) +" params from stack ");
  // for( int i=0 ; i<param_number ; i++ ){
  //   emitter.pops_from_stack(regmnref.get_next_free_reg());
  // }
// NOTE - we already freed the registers which held those values
  emitter.free_words_on_stack(param_number);
  emitter.comment("restoring ra and fp");
  emitter.pops_from_stack("$ra");
  emitter.pops_from_stack("$fp");
  emitter.comment("restoring " + IR_numToString(header->regnum) + " previously used registers");
  emitter.restore_registers(header->regnum);
  emitter.comment("Moving funcRes (if exists) to next free register");
  if (symtabref.get_type(id->str_content) != Void)
  {
    emitter.comment("NoneVoid function, moving its result value");
    emitter.assign(regmnref.get_next_free_reg(),regmnref.getV0());
  }
  emitter.comment("finished calling "+id->str_content);
#ifdef COMPILE_DBG
    cerr << "END_OF [Call_IR]" << endl;
#endif
}


void CallHeader_IR(int lineno, CallHeaderNode* Self){
#ifdef COMPILE_DBG
    cerr << "CallHeader_IR" << endl;
#endif
  emitter.comment("func header store regs before call");
  Self->regnum=emitter.store_registers();
  emitter.comment("stored " + IR_numToString(Self->regnum) + " registers");

#ifdef COMPILE_DBG
    cerr << "END_OF CallHeader_IR" << endl;
#endif

}




// statement -> Type id
void Statement_IR(int lineno,class StatementNode* Self, class TypeNode* type, class Id* id){
  // allocate a word for type on stack
  emitter.comment(" allocating word on stack for local variable "+id->str_content);
  emitter.allocate_words_on_stack(1);
}

//statement -> id = exp
void Statement_IR(int lineno,class StatementNode* Self, class Id* id, class Assign* assign, class ExpNode* exp)
{
  // TODO TODO TODO TODO TODO TODO TODO TODO
  // get type of id from symbolTable
  // if notBool
  // get varSp
  // get last register (exp1)
  // emitter.move(varSp, exp1)
  // free last reg
  //
  //
  //if bool // TODO
  //trueAss: move 1 into varSp
  //fallseAss: move 0 into varSp
  //bp relavant lists
    static int boolAssCount = 0;
    v_type tt = symtabref.get_type(id->str_content);
    std::string fpVarReg = symtabref.get_var_fp(id->str_content);
    if (tt != Bool)
    {
        std::string expReg = regmnref.last_reg();
        //emitter.assign(fpVarReg ,expReg); // TODO
        emitter.set_var_value(expReg,fpVarReg);
        regmnref.free_last_reg();

        //TODO double code - use the regular function // TODO REMOVE
        // int j_f = emitter.patchy_jump();
        // // TODO FIX - use the normal function
        // std::string endAssJump = "timeToSkip_fgf";
        // std::string endLabel = endAssJump + IR_numToString(boolAssCount);
        // boolAssCount++;
        // emitter.add_label(endLabel);
        // int jump_line = emitter.patchy_jump(); // Statement will do it
        // Self->nextlist = codebuff.makelist(jump_line);
    }
    else // it's a bool
    {

        std::string nextReg = regmnref.get_next_free_reg();
        std::string boolExpPrefLabel = "bExpAss_nfjdn";
        std::string newTL = boolExpPrefLabel + IR_numToString(boolAssCount);
        boolAssCount++;
        emitter.add_label(newTL);
        emitter.comment("assigning True to " + id->str_content);
        emitter.num_toreg(nextReg ,"1");
        emitter.set_var_value(nextReg,fpVarReg);
        int j_t = emitter.patchy_jump();
        std::string newFL = boolExpPrefLabel + IR_numToString(boolAssCount);
        boolAssCount++;
        emitter.add_label(newFL);
        emitter.comment("assigning False to " + id->str_content);
        emitter.num_toreg(nextReg ,"0");
        emitter.set_var_value(nextReg,fpVarReg);
        int j_f = emitter.patchy_jump();
        regmnref.free_last_reg();

        // TODO FIX - use the normal function // TODO REMOVE
        // std::string endAssJump = "timeToSkip_fgf";
        // std::string endLabel = endAssJump + IR_numToString(boolAssCount);
        // boolAssCount++;
        // emitter.add_label(endLabel);
        // int jump_line = emitter.patchy_jump(); // statement will do it
        // Self->nextlist = codebuff.makelist(jump_line);
        // codebuff.bpatch(codebuff.makelist(j_t),endLabel);
        // codebuff.bpatch(codebuff.makelist(j_f),endLabel);
        Self->nextlist  = codebuff.merge(codebuff.merge(Self->nextlist,codebuff.makelist(j_t)),codebuff.makelist(j_f)); // TODO CHECK
        codebuff.bpatch(exp->truelist,newTL);
        codebuff.bpatch(exp->falselist,newFL);
    }
    Statement_next_patcher_IR(Self);
}



//statement -> Type id = exp
void Statement_IR(int lineno,class StatementNode* Self, class TypeNode* type, class Id* id, class Assign* assign, class ExpNode* exp){
  // call ->id=exp IR
  #ifdef COMPILE_DBG
  cerr << "[Entered Statment_IR: Type id = exp]" << endl;
  #endif
  Statement_IR(lineno,Self,type,id);
  Statement_IR(lineno,Self,id,assign,exp);
}


// add markerL statement -> if exp M_if statment M_else possibleElse
void Statement_IR(int lineno,class StatementNode* Self, class If* if_ptr, class ExpNode* exp,MarkNode* M_if, class StatementNode* statement, MarkNode* M_else, PossibleElseNode* elsei){
  //
  // bp boolexp truelist into M_if
  codebuff.bpatch(exp->truelist,M_if->labelstr);
  // bp boolexp falselist into M_else
  codebuff.bpatch(exp->falselist,M_else->labelstr);
  // keepline = label to end of if block
  string keepline=emitter.get_bp_label();
  emitter.comment("end of ifelse");
  emitter.add_label(keepline);
  #ifdef COMPILE_DBG
  cerr << "size of next list for if is" << statement->nextlist.size() << endl;
  cerr << "size of next list for else is" << elsei->nextlist.size() << endl;
  #endif
  // bp statment.nextlist into keepline
  codebuff.bpatch(statement->nextlist,keepline);
  // bp possiblelese,nextlist intoo keepline
  codebuff.bpatch(elsei->nextlist,keepline);
  // update breaklists
  Self->breaklist=codebuff.merge(statement->breaklist,elsei->breaklist);
  //update next adress
  Statement_next_patcher_IR(Self);

}

void PossibleElse_IR(int lineno, class PossibleElseNode* Self ){
  // void
}


void PossibleElse_IR(int lineno, class PossibleElseNode* Self , class StatementNode* state  ){
  Self->nextlist=state->nextlist;
  Self->breaklist=state->breaklist;
}

// // TODO REMOVE DUPLICATE
// void Statements_IR(yylineno,StatementsNode* Self,StatementsNode* manyState,MarkNode* mark, StatementNode* signelState)
// {
//   #ifdef COMPILE_DBG
//   cerr << "[Statements_IR: Statments-> Statements Statement]" << endl;
//   #endif
//   codebuff.bpatch(manyState->nextlist,mark->labelstr);
// }

void Statement_next_patcher_IR(StatementNode* Self){
  //TODO remove comments that is the actual code that i tried to temporarily cancel
  emitter.comment("end of statement jump");
  Self->statement_last_jump=emitter.patchy_jump();
  #ifdef COMPILE_DBG
    cerr << "[Statement_next_patcher_IR] previously held nextlist size:" << Self->nextlist.size() << endl;
  #endif
  Self->nextlist = codebuff.merge(Self->nextlist,codebuff.makelist(Self->statement_last_jump));
  #ifdef COMPILE_DBG
    cerr << "[Statement_next_patcher_IR] currently held nextlist size:" << Self->nextlist.size() << endl;
  #endif
}


//Statements -> statement
void Statements_IR(int lineno,class StatementsNode* Self, class StatementNode* statement){
  #ifdef COMPILE_DBG
    cerr << "[Statement_IR: States->SignleState]  nextlistSize=" << statement->nextlist.size() << endl;
  #endif
  Self->nextlist=statement->nextlist;
  Self->breaklist=statement->breaklist;

}
//statements -> staements1 M statement
void Statements_IR(int lineno,class StatementsNode* Self,class StatementsNode* rest_of_statements, MarkNode* M, class StatementNode* statement){
  // bp staements1.nextlist into M
  // self.nextlist=staement.nextlist
  // self.breaklist= merge of both statements1 breakliost and statement breaklist
#ifdef COMPILE_DBG
  cerr << "[Statement_IR: States -> states1 M singleState]" << endl;
  cerr << "Num of nextlist to bp: " << rest_of_statements->nextlist.size() <<  " with label: " << M->labelstr << endl;

  #endif
  codebuff.bpatch(rest_of_statements->nextlist,M->labelstr);
  Self->nextlist= statement->nextlist;
  Self->breaklist=codebuff.merge(rest_of_statements->nextlist, statement->nextlist);

}


// staement ->  Mwhile while boolexp Mloop statement
void Statement_IR(int lineno,class StatementNode* Self,MarkNode* Mwhile, class While* while_ptr, class ExpNode* exp,MarkNode* Mloop,class StatementNode* statement){

  // keepline=emptyjump (nextlist here)
  // self.nextlist=keepline
  string keepline=emitter.get_bp_label();
  emitter.add_label(keepline);
  //
  // bp.boolexp.truelist into Mloop
  codebuff.bpatch(exp->truelist,Mloop->labelstr);
  // bp.boolexp.falselist into keepline
  codebuff.bpatch(exp->falselist,keepline);
  // bp.statement.nextlist into Mwhile
  codebuff.bpatch(statement->nextlist,Mwhile->labelstr);
  // bp.staements.breaklist into keepline
  codebuff.bpatch(statement->breaklist,keepline);

  Statement_next_patcher_IR(Self);
}

//Statement -> {Statements}
void Statement_IR(int lineno,class StatementNode* Self, class Lbrace* lbr, class StatementsNode* statements, class Rbrace* br){
  Self->nextlist=statements->nextlist;
  Self->breaklist=statements->breaklist;

}

//TODO check all statements have end_patcher and inheret nextlist and breaklist

//statement -> break;
void Statement_IR(int lineno,class StatementNode* Self, class Break* break_ptr ){
  //TODO
  // emit break and add the adress to self.breaklist

}

//statement-> call
void Statement_IR(int lineno,class StatementNode* Self, class CallNode* call){
  //NADA
#ifdef COMPILE_DBG
  cerr << "[Statement_IR Call] nestlistSize: " << Self->nextlist.size() << endl;
#endif
  Statement_next_patcher_IR(Self);
#ifdef COMPILE_DBG
  cerr << "[Statement_IR Call] nestlistSize: " << Self->nextlist.size() << endl;
#endif

}

// statement -> switch_head caseList
void Statement_IR(int lineno,class StatementNode* Self, class SwitchHeadNode* switch_ptr ,  class CaseListNode* caselist ){

  //
  // r0 = get last register (register of the exp)
  string expreg=regmnref.last_reg();

  vector<CaseDecNode*>& CDvec=caselist->caseDecvec;
  vector<StatementsNode*>& STvec=caselist->statevec;
  vector<MarkNode*>& Mvec=caselist->markvec;

  int n=Mvec.size();

  //
  // emit(init:)
  emitter.comment("switch init label");
  string initlabel=emitter.get_bp_label();
  //bp.switchhead.initlabel = init
  codebuff.bpatch(  codebuff.makelist(switch_ptr->init_jump_addr)  , initlabel);

  //
  // default_marker=-1;
  int default_index=-1;

  // for each caseDec{
  //    if caseDec.son.size==2 // means its default
  //      defaultmarker=casedec.M
  //    else
  //      emit(beq r0, (immediate of caseDec), caseDec.M
  // }
  for(int i=0;i<n;i++){
    if( CDvec[i]->sons.size()==2 ) {//default
      default_index=i;
    }
    else{//in this case son2 is the number
      string caseVal=CDvec[i]->sons[2]->str_content;
      emitter.beq_to_immediate(expreg,caseVal,Mvec[i]->labelstr);

    }
  }



  // if default marker>=0
  //  jump default.M
  if(default_index>=0){
    emitter.jump(Mvec[default_index]->labelstr);
  }
  //
  // for i in [n-1]
  // bp(Si.nextlist into M[i+1]
  //
  //
  for(int i =0 ; i<n-1; i++){
    codebuff.bpatch(STvec[i]->nextlist,Mvec[i+1]->labelstr);
  }

  // get end of switch label
  // save adress as nextlist
  // add Sn.nextList to self.nextlist
  string end_of_switch=emitter.get_bp_label();
  emitter.add_label(end_of_switch);
  codebuff.bpatch(STvec[n]->nextlist,end_of_switch);

  //
  //  giant_breakList=emptyList)
  //  for s in statementsvec
  //    giant_breaklist.mergewith(s.breaklist)
  //
  //  bp(giant_breaklist) into keepline
  vector<int> break_list=vector<int>();
    for(int i=0; i<n; i++){
      break_list=codebuff.merge(break_list,STvec[i]->breaklist);
    }
    codebuff.bpatch(STvec[n]->nextlist,end_of_switch);
  //
  //
  //
  Statement_next_patcher_IR(Self);

}


// swtchhead -> expNode
void SwitchHead_IR(int lineno, class SwitchHeadNode* Self,class ExpNode* exp ){
  //addr= emit(emptyjump) __ goto init
  // self.init_jump_addr
  int addr=emitter.patchy_jump();
  Self->init_jump_addr=addr;


}



//CaseList:		CaseList M CaseStatement
void CaseList_IR(int lineno,class CaseListNode* Self, class CaseListNode* rest_of_list, MarkNode* M, class CaseStatementNode* case_ptr){
  Self->caseDecvec=rest_of_list->caseDecvec;
  Self->caseDecvec.push_back((CaseDecNode*)case_ptr->sons[1]);

  Self->statevec=rest_of_list->statevec;
  Self->statevec.push_back((StatementsNode*)case_ptr->sons[2]);

  Self->markvec=rest_of_list->markvec;
  Self->markvec.push_back(M);


}

//CaseList:	 M CaseStatement
void CaseList_IR(int lineno,class CaseListNode* Self, MarkNode* M, class CaseStatementNode* case_ptr){
  Self->caseDecvec.push_back((CaseDecNode*)case_ptr->sons[1]);
  Self->statevec.push_back((StatementsNode*)case_ptr->sons[2]);
  Self->markvec.push_back(M);

}


//CaseStatement:	CaseDec Statements
void CaseStatement_IR(int lineno,class CaseStatementNode* Self, class CaseDecNode* casedec, class StatementsNode* statements){

}


//CaseStatement:	CaseDec
void CaseStatement_IR(int lineno,class CaseStatementNode* Self, class CaseDecNode* casedec){

}

// SJ_Exp -> Exp
void SJ_Exp_IR(int yylineno,ExpNode* Self)
{
  string exp_name = Self->str_content;
  #ifdef COMPILE_DBG
  cerr << "[SJ_Exp_IR]: " << Self->str_content << endl;
  #endif
  if (exp_name == "true")
  {
    emitter.comment("a True exp in boolean operator");
    int last_jump = emitter.patchy_jump();
    Self->truelist = codebuff.makelist(last_jump);
    return;
  }
  if(exp_name == "false")
  {
    emitter.comment("a False exp in boolean operator");
    int last_jump = emitter.patchy_jump();
    Self->falselist = codebuff.makelist(last_jump);
    return;
  }
  if(symtabref.is_var(exp_name))
  {
    emitter.comment("a Bool Var " + exp_name + " in boolean operator");
    int line_neq = emitter.NEQ_patchy(symtabref.get_var_fp(exp_name),"$zero"); // TODO fix?
    int line_j = emitter.patchy_jump();
    Self->truelist = codebuff.makelist(line_j);
    Self->falselist = codebuff.makelist(line_neq);
    return;
  }
  if(symtabref.is_func(exp_name))
  {
    emitter.comment("a Bool Func " + exp_name + " in boolean operator");
    int line_neq = emitter.NEQ_patchy(regmnref.last_reg(),"$zero"); // TODO fix?
    int line_j = emitter.patchy_jump();
    Self->truelist = codebuff.makelist(line_j);
    Self->falselist = codebuff.makelist(line_neq);
    regmnref.free_last_reg();
    return;
  }

}

// ExpList -> Exp
void ExpList_IR(int yylineno,ExpListNode* Self ,ExpNode* ex )
{
  #ifdef COMPILE_DBG
  cerr << "[ExpList_IR: ExpList->Exp]: " << ex->str_content << endl;
  #endif
  string exp_name = ex->str_content;
  if(symtabref.is_var(exp_name) || symtabref.is_func(exp_name))
  {
    return;
  }
  if (exp_name == "true")
  {
    string newReg = regmnref.get_next_free_reg();
    emitter.comment("Moving True into new Param Reg");
    emitter.num_toreg(newReg,"1");
    return;
  }
  if (exp_name == "false")
  {
   string newReg = regmnref.get_next_free_reg();
    emitter.comment("Moving False into new Param Reg");
    emitter.num_toreg(newReg,"0");
    return;
  }
  // assumption - if reached here - its a complicated bool exp
  string nextReg = regmnref.get_next_free_reg();
  emitter.comment("complicated bool exp as a function parameter");
  emitter.comment("inserting 1 to param reg if evaluates to true");
  string true_lab = emitter.get_bp_label();
  emitter.add_label(true_lab);
  emitter.num_toreg(nextReg,"1");
  string later_label = emitter.get_bp_label();
  emitter.jump(later_label);
  string false_lab = emitter.get_bp_label();
  emitter.comment("inserting 0 to param reg if evaluates to false");
  emitter.add_label(false_lab);
  emitter.num_toreg(nextReg,"0");
  emitter.add_label(later_label);
  codebuff.bpatch(ex->truelist,true_lab);
  codebuff.bpatch(ex->falselist,false_lab);
}

// ExpList -> Exp ExpList
void ExpList_IR(int yylineno,ExpListNode* Self ,ExpNode* ex, ExpListNode* restOf)
{
  ExpList_IR(yylineno, Self, ex);
}
