#include "emitter.hpp"
#include "bp.hpp"

#define MIPS_COMMENT_DBG
#define MIPS_DBG



void Emitter::add(string& dreg, string& sreg1 ,string& sreg2){
	const string command = "\tadd\t" + dreg +","+ sreg1 +","+ sreg2 ;

	codebuffer.emit(command);

}


void Emitter::subtruct(string& dreg, string& sreg1 ,string& sreg2){
	const string command = "\tsub\t" + dreg +","+ sreg1 +","+ sreg2 ;

	codebuffer.emit(command);
}


void Emitter::multiply(string& dreg, string& sreg1 ,string& sreg2){
	const string command = "\tmult\t" +  sreg1 +","+ sreg2 ;
	codebuffer.emit(command);
	const string command = "\tmflow\t"+ dreg;
	codebuffer.emit(command);

}


void Emitter::div(string& dreg, string& sreg1 ,string& sreg2){
	//emit check for div by 0 code

	const string command = "\tbeq\t" +  sreg1 +","+ "zero"+","+"" ; #TODO add jump to div by zero handler
	codebuffer.emit(command);
	const string command = "\tdiv\t" +  sreg1 +","+ sreg2 ;
	codebuffer.emit(command);

	const string command = "\tmflow\t"+ dreg;
	codebuffer.emit(command);


}

void num_toreg(string& reg, int num){


  const string command = "\tli\t" +  reg +","+ num ;
  codebuffer.emit(command);



}

void Emitter::jump(string& target){

	const string command = "\tj\t"+ target;
	codebuffer.emit(command);
}


void Emitter::register_jump(string& jreg){

	const string command = "\tjr\t"+ jreg;
	codebuffer.emit(command);
}


// returns label to patch t
string Emmiter::patchy_jump(){
  string label = codebuffer.next();
  const string command = "\tj\t";
  codebuffer.emit(command);
  return label;

}


void Emmitter::assign(string dreg,string sreg){

}


void Emmitter::comment(string comment){
#ifdef MIPS_COMMENT_DBG
  const string command = "\t\t#"+comment;
  codebuffer.emit(command);
#endif
}


void Emmitter::debug_print(string debug_print){

#ifdef MIPS_DBG
  string label = codebuffer.next();
  codebuffer.emitData(label+":\t.asciiz \""+"@@@"+debug_print + "\"")
  const string command1 = "\tli\t$v0, 4";
  const string command2 = "\tla\t$a0, "+label;
  const string command3 = "\tsyscall";
  codebuffer.emit(command1);
  codebuffer.emit(command2);
  codebuffer.emit(command3);
#endif


}

