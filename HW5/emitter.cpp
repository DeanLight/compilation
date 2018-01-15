#include "emitter.hpp"
#include "bp.hpp"
#include <stdio.h>
#include <stdlib.h>
#define MIPS_COMMENT_DBG
#define MIPS_DBG


CodeBuffer& codebuffer=CodeBuffer::instance();

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
    // TODO - this is empty!!!!
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


void Emitter::get_var_value(const string& dreg, const string& sp_offset) const{
  const string command = "\tlw"+dreg+", " +sp_offset;
  codebuffer.emit(command);

}

int main(){
  return 0;
}
