#include "emitter.hpp"
#include "bp.hpp"
#include <stdio.h>
#include <stdlib.h>
#define MIPS_COMMENT_DBG
#define MIPS_DBG


CodeBuffer& codebuffer=CodeBuffer::instance();

void Emitter::add(string& dreg, string& sreg1 ,string& sreg2){
	const string command = string( "\tadd\t" + dreg +","+ sreg1 +","+ sreg2 );

	codebuffer.emit(command);

}


void Emitter::subtruct(string& dreg, string& sreg1 ,string& sreg2){
	const string command = "\tsub\t" + dreg +","+ sreg1 +","+ sreg2 ;

	codebuffer.emit(command);
}


void Emitter::multiply(string& dreg, string& sreg1 ,string& sreg2){
	const string command1 = "\tmult\t" +  sreg1 +","+ sreg2 ;
	codebuffer.emit(command1);
	const string command2 = "\tmflow\t"+ dreg;
	codebuffer.emit(command2);

}


void Emitter::div(string& dreg, string& sreg1 ,string& sreg2){
	//emit check for div by 0 code

	const string command1 = "\tbeq\t" +  sreg1 +","+ "zero"+","+"" ; //TODO add jump to div by zero handler
	codebuffer.emit(command1);
	const string command2 = "\tdiv\t" +  sreg1 +","+ sreg2 ;
	codebuffer.emit(command2);

	const string command3 = "\tmflow\t"+ dreg;
	codebuffer.emit(command3);


}

void num_toreg(string& reg, string& num){


  const string command = "\tli\t" +  reg +","+ num ;
  codebuffer.emit(command);



}

void Emitter::jump(string& target){

	const string& command = "\tj\t"+ target;
	codebuffer.emit(command);
}


void Emitter::register_jump(string& jreg){

	const string command = "\tjr\t"+ jreg;
	codebuffer.emit(command);
}


// returns label to patch t
int Emitter::patchy_jump(){
  const string command = "\tj\t";
  int address=codebuffer.emit(command);
  return address;

}


void Emitter::assign(string dreg,string sreg){

}


void Emitter::comment(string comment){
#ifdef MIPS_COMMENT_DBG
  const string command = "\t\t#"+comment;
  codebuffer.emit(command);
#endif
}


void Emitter::debug_print(string debug_print){

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


void get_var_value(string& dreg, string& sp_offset){
  const string command = "\tlw"+dreg+", " +sp_offset;
  codebuffer.emit(command);

}

int main(){

  return 0;
}
