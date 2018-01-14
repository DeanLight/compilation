#ifndef EMMITERZ
#define EMMITERZ

#include "bp.hpp"
#include <map>
#include <string>


using namespace std;



extern CodeBuffer& codebuffer;

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



class Emitter{
public:
	Emitter(){
		int_binop_map["+"]=ADD;
		int_binop_map["-"]=SUB;
		int_binop_map["*"]=MULT;
		int_binop_map["/"]=DIV;
    byte_binop_map["+"]=ADDB;
    byte_binop_map["-"]=SUBB;
    byte_binop_map["*"]=MULTB;
    byte_binop_map["/"]=DIVB;
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



	map<string,binop_enum> int_binop_map;
  map<string,binop_enum> byte_binop_map;

};


#endif
