#include "emitter.hpp"
#include "bp.hpp"
#include "RegMngr.hpp"
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#define MIPS_COMMENT_DBG
#define MIPS_DBG
using namespace std;

CodeBuffer& codebuffer=CodeBuffer::instance();

RegMngr& regmn=RegMngr::getRegMngr();

std::string glob_int_to_str(int num)
{
    std::stringstream numStr;
    numStr << num;
    return numStr.str();
}

int glob_str_to_int(std::string st)
{
  //TODO build this shit
  return 0;
}

string Emitter::get_local_string_label(){
  std::stringstream label;
  label << "string_label_";
  label << string_num;
  std::string ret(label.str());
  string_num++;
  return ret;

}

string Emitter::get_bp_label(){
  std::stringstream label;
  label << "bp_label_";
  label << backpatch_num;
  std::string ret(label.str());
  backpatch_num++;
  return ret;

}

void Emitter::add_print_func() const {
    codebuffer.emit("lw $a0,0($sp)");
    codebuffer.emit("li $v0,4");
    codebuffer.emit("syscall");
    codebuffer.emit("jr $ra");
}
void Emitter::add_printi_func() const {
    codebuffer.emit("lw $a0,0($sp)");
    codebuffer.emit("li $v0,1");
    codebuffer.emit("syscall");
    codebuffer.emit("jr $ra");
}


  int Emitter::EQ_patchy(const string& reg1, const string& reg2) const
  {
    return codebuffer.emit("\tbeq " + reg1 + ", " + reg2 + ",");
  }
  int Emitter::NEQ_patchy(const string& reg1, const string& reg2) const
  {
    return codebuffer.emit("\tbne " + reg1 + ", " + reg2 + ",");
  }
  int Emitter::GR_patchy(const string& reg1, const string& reg2) const
  {
    return codebuffer.emit("\tbgt " + reg1 + ", " + reg2 + ",");
  }
  int Emitter::LT_patchy(const string& reg1, const string& reg2) const
  {
    return codebuffer.emit("\tblt " + reg1 + ", " + reg2 + ",");
  }
  int Emitter::GRE_patchy(const string& reg1, const string& reg2) const
    {
    return codebuffer.emit("\tbge " + reg1 + ", " + reg2 + ",");
  }
  int Emitter::LTE_patchy(const string& reg1, const string& reg2) const
    {
    return codebuffer.emit("\tble " + reg1 + ", " + reg2 + ",");
  }


void Emitter::truncate_byte(const std::string & reg) const
{
    const string command = string("\tandi\t" + reg+"," + reg +",0xff"); // TODO CHECK
    comment("truncating byte");
    codebuffer.emit(command);
}

void Emitter::add(const string& dreg,const string& sreg1 ,const string& sreg2) const{
	const string command = string( "\taddu\t" + dreg +","+ sreg1 +","+ sreg2 );
  comment("add");
	codebuffer.emit(command);

}


void Emitter::subtruct(const string& dreg, const string& sreg1 ,const string& sreg2) const{
	const string command = "\tsubu\t" + dreg +","+ sreg1 +","+ sreg2 ;
  comment("subtruct");
	codebuffer.emit(command);
}


void Emitter::multiply(const string& dreg, const string& sreg1 ,const string& sreg2) const{
  comment("multiply");
	const string command1 = "\tmult\t" +  sreg1 +","+ sreg2 ;
	codebuffer.emit(command1);
	const string command2 = "\tmflo\t"+ dreg;
	codebuffer.emit(command2);

}


void Emitter::div(const string& dreg, const string& sreg1 ,const string& sreg2) const{
	//emit check for div by 0 code
  comment("div");
  // reg1/reg2
	const string command1 = "\tbeq\t" +  sreg2 +","+ "$zero"+","+ZERO_DIV_LABEL;
	codebuffer.emit(command1);
	const string command2 = "\tdiv\t" +  sreg1 +","+ sreg2 ;
	codebuffer.emit(command2);

	const string command3 = "\tmflo\t"+ dreg;
	codebuffer.emit(command3);


}

void Emitter::add_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const{
  comment("add_byte");
  const string command = string( "\tadd\t" + dreg +","+ sreg1 +","+ sreg2 );
  codebuffer.emit(command);
  truncate_byte(dreg);

}

void Emitter::subtruct_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const{
  comment("subtruct_byte");
  const string command = "\tsub\t" + dreg +","+ sreg1 +","+ sreg2 ;
  codebuffer.emit(command);
  truncate_byte(dreg);
}


void Emitter::multiply_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const{
  comment("multiply_byte");
  const string command1 = "\tmult\t" +  sreg1 +","+ sreg2 ;
  codebuffer.emit(command1);
  const string command2 = "\tmflow\t"+ dreg;
  codebuffer.emit(command2);
  truncate_byte(dreg);
}


void Emitter::div_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const{
  comment("div_byte");
  const string command1 = "\tbeq\t" +  sreg1 +","+ "$zero"+","+ZERO_DIV_LABEL;
  codebuffer.emit(command1);
  const string command2 = "\tdiv\t" +  sreg1 +","+ sreg2 ;
  codebuffer.emit(command2);

  const string command3 = "\tmflow\t"+ dreg;
  codebuffer.emit(command3);
  truncate_byte(dreg);
}

void Emitter::beq_to_immediate(string reg,string imm , string label)const{

  const string command1 = "\tbeq "+reg+","+imm+","+label ;
  codebuffer.emit(command1);
}


void Emitter::num_toreg(const string& reg, const string& num) const{


  const string command = "\tli\t" +  reg +","+ num ;
  codebuffer.emit(command);



}

void Emitter::jump(const string& target) const{

	const string& command = "\tj\t"+ target;
	codebuffer.emit(command);
}


void Emitter::register_jump(const string& jreg) const{

	const string command = "\tjr\t"+ jreg;
	codebuffer.emit(command);
}

void Emitter::jal(const string& label)const{

  const string command = "\tjal\t"+ label;
  codebuffer.emit(command);
}

void Emitter::ret()const{

  const string command = "\tjr\t$ra";
  codebuffer.emit(command);
}

// returns label to patch t
int Emitter::patchy_jump() const{
  const string command = "\tj\t";
  int address=codebuffer.emit(command);
  return address;

}


void Emitter::assign(const string &dreg,const string & sreg) const{
    const string command = "\tmove\t"+ dreg+","+sreg;
    codebuffer.emit(command);
}


void Emitter::comment(const string &comment) const{
#ifdef MIPS_COMMENT_DBG
  const string command = "\t#"+comment;
  codebuffer.emit(command);
#endif
}


void Emitter::debug_print(const string &debug_print) const{

#ifdef MIPS_DBG
  string label = codebuffer.next();
  codebuffer.emitData(label+":\t.asciiz \""+"@@@"+debug_print + "\"");
  const string command1 = "\tli\t$v0, 4";
  const string command2 = "\tla\t$a0, "+label;
  const string command3 = "\tsyscall";
  codebuffer.emit(command1);
  codebuffer.emit(command2);
  codebuffer.emit(command3);
#endif
}


void Emitter::msg_print(const string &msg) const{
    // TODO - check this fix works
    std::string random_prefix = "pvufne"; // written by a random monkey
    static int msg_print_index = 1;
//    string label = codebuffer.next(); // TODO FIX - already writes the label - make a double
    string label = random_prefix + glob_int_to_str(msg_print_index);
    msg_print_index++;
    codebuffer.emitData(label+":\t.asciiz \""+msg+ "\"");
    const string command1 = "\tli\t$v0, 4";
    const string command2 = "\tla\t$a0, "+label;
    const string command3 = "\tsyscall";
    codebuffer.emit(command1);
    codebuffer.emit(command2);
    codebuffer.emit(command3);
}

void Emitter::get_var_value(const string& dreg, const string& fp_offset) const{
  const string command = "\tlw "+dreg+", " +fp_offset;
  codebuffer.emit(command);

}

void Emitter::load_address_to_stack(string address){
  comment("loading str address to stack");
  string expand_stack = "\taddiu $sp, $sp, -4";
  string store_source1 = "\tla $v0, "+address; // TODO affirm use of v0 to avoid extra regular registers, since it is not used anyway
  string store_source2= "\tsw $v0, ($sp)";
  codebuffer.emit(expand_stack);
  codebuffer.emit(store_source1);
  codebuffer.emit(store_source2);


}

string Emitter::add_string(const string& strin) {

  string label = get_local_string_label();
  codebuffer.emitData(label+":\t.asciiz "+strin  );
  return label;

}

void Emitter::set_var_value(const string& sreg, const string& fp_offset) const{
  const string command = "\tsw "+sreg+", " +fp_offset;
  codebuffer.emit(command);

}

int Emitter::add_label(const string& label){

  const string command = label+":";
  return codebuffer.emit(command);
}

int Emitter::add_generated_label(){

  const string command = codebuffer.next();
  return codebuffer.emit(command);
}

void Emitter::halt(){

//    const string command = "\tdone"; // TODO revert back?
//    codebuffer.emit(command);
    //
    comment("exiting...");
    codebuffer.emit("li $v0, 10");
    codebuffer.emit("syscall");
}



void func_call(const string& func_label){
}

// does not store params
int Emitter::func_call_patchy(){

  const string command = "\tjal\t";
  int address=codebuffer.emit(command);
  return address;

}

// returns the number of registers that where stored in stack
int Emitter::store_registers(){
  #ifdef MIPS_DBG
    std::cerr << "[Emitter] store_registers" << std::endl;
  #endif
  int reg_num=regmn.regs_currently_used();
  vector<string> cmds=regmn.save_all_regs_to_stack();
  regmn.free_last_k_regs(reg_num);
  for(vector<string>::iterator it=cmds.begin(); it!=cmds.end(); it++){
    codebuffer.emit(*it);
  }
  return reg_num;
}

// restore regnum registers from the stack
void Emitter::restore_registers(int regnum){
    #ifdef MIPS_DBG
    std::cerr << "[Emitter] REstore_registers: " << regnum << std::endl;
  #endif
  vector<string> cmds=regmn.restore_all_regs_from_stack(regnum);
  // reallocate the registers
  for(int i=0 ; i<regnum ; i++ ){
    regmn.get_next_free_reg();

  }
  for(vector<string>::iterator it=cmds.begin(); it!=cmds.end(); it++){
    codebuffer.emit(*it);
  }

}


void Emitter::allocate_words_on_stack(int kwords){
  int sp_change = 4*(kwords);
  string expand_stack = "\taddiu $sp, $sp, -"+intToString(sp_change);
  codebuffer.emit(expand_stack);
}

void Emitter::free_words_on_stack(int kwords){
  int sp_change = 4*(kwords);
  string collapse_stack = "\taddiu $sp, $sp, "+intToString(sp_change);
  codebuffer.emit(collapse_stack);
}


void Emitter::push_to_stack( const string &source){
  string expand_stack = "\taddiu $sp, $sp, -4";
  string store_source = "\tsw "+source+", ($sp)";
  codebuffer.emit(expand_stack);
  codebuffer.emit(store_source);

}

void Emitter::pops_from_stack(const  string &reg){
  string restore_source = "\tlw "+reg+", ($sp)";
  string collapse_stack = "\taddiu $sp, $sp, 4";
  codebuffer.emit(restore_source);
  codebuffer.emit(collapse_stack);
}












