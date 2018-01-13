#ifndef EMMITERZ
#define EMMITERZ

#include "bp.hpp"
#include <map>
#include <string>


using namespace std;

CodeBuffer codebuffer=CodeBuffer()

class Emitter{
public:
	Emitter(){
		binop_map["+"]="add"
		binop_map["+"]="sub"
		binop_map["+"]="mult"
		binop_map["+"]="div"
	};

	void add(string& dreg, string& sreg1 ,string& sreg2);
	void subtruct(string& dreg, string& sreg1 ,string& sreg2);
	void multiply(string& dreg, string& sreg1 ,string& sreg2);
	void div(string& dreg, string& sreg1 ,string& sreg2);

  void num_toreg(string& reg, int num);

	void add_byte(string& dreg, string& sreg1 ,string& sreg2);
	void subtruct_byte(string& dreg, string& sreg1 ,string& sreg2);
	void multiply_byte(string& dreg, string& sreg1 ,string& sreg2);
	void div_byte(string& dreg, string& sreg1 ,string& sreg2);


	void jump(string& target);
	void register_jump(string& jreg);

	// returns label to patch to
	string patchy_jump();

	void assign(string dreg,string sreg);
	void comment(string comment);
	void debug_print(string debug_print);



	map<string,string> binop_map;

}


#endif
