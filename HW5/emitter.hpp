#ifndef EMMITERZ
#define EMMITERZ


#include <map>
#include <string>


using namespace std;



//extern CodeBuffer& codebuffer;

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
	Emitter(){};

	void add(string& dreg, string& sreg1 ,string& sreg2);
	void subtruct(string& dreg, string& sreg1 ,string& sreg2);
	void multiply(string& dreg, string& sreg1 ,string& sreg2);
	void div(string& dreg, string& sreg1 ,string& sreg2);

  void num_toreg(string& reg, string num);

	void add_byte(string& dreg, string& sreg1 ,string& sreg2);
	void subtruct_byte(string& dreg, string& sreg1 ,string& sreg2);
	void multiply_byte(string& dreg, string& sreg1 ,string& sreg2);
	void div_byte(string& dreg, string& sreg1 ,string& sreg2);


	void jump(string& target);
	void register_jump(string& jreg);

	// returns label to patch to
	int patchy_jump();

	void assign(string dreg,string sreg);
	void comment(string comment);
	void debug_print(string debug_print);

  void get_var_value(const string& dreg, const string& sp_offset);


};


#endif
