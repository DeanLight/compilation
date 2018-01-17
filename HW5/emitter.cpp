#include "emitter.hpp"
#include "bp.hpp"
#include "RegMngr.hpp"
#include <stdio.h>
#include <stdlib.h>
#define MIPS_COMMENT_DBG
#define MIPS_DBG
using namespace std;

CodeBuffer& codebuffer=CodeBuffer::instance();

RegMngr& regmn=RegMngr::getRegMngr();


void Emitter::add_print_func() const {
    codebuffer.emit("lw $a0,0($sp)");
    codebuffer.emit("li $v0,1");
    codebuffer.emit("syscall");
    codebuffer.emit("jr $ra");
}
void Emitter::add_printi_func() const {
    codebuffer.emit("lw $a0,0($sp)");
    codebuffer.emit("li $v0,4");
    codebuffer.emit("syscall");
    codebuffer.emit("jr $ra");
}

void Emitter::add(const string& dreg,const string& sreg1 ,const string& sreg2) const{
	const string command = string( "\tadd\t" + dreg +","+ sreg1 +","+ sreg2 );

	codebuffer.emit(command);

}


void Emitter::subtruct(const string& dreg, const string& sreg1 ,const string& sreg2) const{
	const string command = "\tsub\t" + dreg +","+ sreg1 +","+ sreg2 ;

	codebuffer.emit(command);
}


void Emitter::multiply(const string& dreg, const string& sreg1 ,const string& sreg2) const{
	const string command1 = "\tmult\t" +  sreg1 +","+ sreg2 ;
	codebuffer.emit(command1);
	const string command2 = "\tmflow\t"+ dreg;
	codebuffer.emit(command2);

}


void Emitter::div(const string& dreg, const string& sreg1 ,const string& sreg2) const{
	//emit check for div by 0 code

	const string command1 = "\tbeq\t" +  sreg1 +","+ "zero"+","+"" ; //TODO add jump to div by zero handler
	codebuffer.emit(command1);
	const string command2 = "\tdiv\t" +  sreg1 +","+ sreg2 ;
	codebuffer.emit(command2);

	const string command3 = "\tmflow\t"+ dreg;
	codebuffer.emit(command3);


}

void Emitter::add_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const{

  const string command = string( "\tadd\t" + dreg +","+ sreg1 +","+ sreg2 );

  codebuffer.emit(command);

}

void Emitter::subtruct_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const{

  const string command = "\tsub\t" + dreg +","+ sreg1 +","+ sreg2 ;

  codebuffer.emit(command);

}


void Emitter::multiply_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const{

  const string command1 = "\tmult\t" +  sreg1 +","+ sreg2 ;
  codebuffer.emit(command1);
  const string command2 = "\tmflow\t"+ dreg;
  codebuffer.emit(command2);


}


void Emitter::div_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const{

  const string command1 = "\tbeq\t" +  sreg1 +","+ "zero"+","+"" ; //TODO add jump to div by zero handler
  codebuffer.emit(command1);
  const string command2 = "\tdiv\t" +  sreg1 +","+ sreg2 ;
  codebuffer.emit(command2);

  const string command3 = "\tmflow\t"+ dreg;
  codebuffer.emit(command3);

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


// returns label to patch t
int Emitter::patchy_jump() const{
  const string command = "\tj\t";
  int address=codebuffer.emit(command);
  return address;

}


void Emitter::assign(const string &dreg,const string & sreg) const{
    const string command ("move " + dreg + "," + sreg);
    codebuffer.emit(command);
}


void Emitter::comment(const string &comment) const{
#ifdef MIPS_COMMENT_DBG
  const string command = "\t\t#"+comment;
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
    string label = codebuffer.next();
    codebuffer.emitData(label+":\t.asciiz \""+msg+ "\"");
    const string command1 = "\tli\t$v0, 4";
    const string command2 = "\tla\t$a0, "+label;
    const string command3 = "\tsyscall";
    codebuffer.emit(command1);
    codebuffer.emit(command2);
    codebuffer.emit(command3);
}

void Emitter::get_var_value(const string& dreg, const string& fp_offset) const{
  const string command = "\tlw"+dreg+", " +fp_offset;
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

  const string command = "\tdone";
  codebuffer.emit(command);
}



void func_call(const string& func_line){
    //TODO
}

// does not store params
int Emitter::func_call_patchy(){

  const string command = "\tjal\t";
  int address=codebuffer.emit(command);
  return address;

}

// returns the number of registers that where stored in stack
int Emitter::store_registers(){
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
  vector<string> cmds=regmn.restore_all_regs_from_stack(regnum);
  // reallocate the registers
  for(int i=0 ; i<regnum ; i++ ){
    regmn.get_next_free_reg();

  }
  for(vector<string>::iterator it=cmds.begin(); it!=cmds.end(); it++){
    codebuffer.emit(*it);
  }

}


void allocate_words_on_stack(int kwords){
  int sp_change = 4*(kwords);
  string expand_stack = "\taddiu $sp, $sp, -"+intToString(sp_change);
  codebuffer.emit(expand_stack);
}

void free_words_on_stack(int kwords){
  int sp_change = 4*(kwords);
  string collapse_stack = "\taddiu $sp, $sp, "+intToString(sp_change);
  codebuffer.emit(collapse_stack);
}
















