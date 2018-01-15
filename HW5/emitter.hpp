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

	void add(const string& dreg,const  string& sreg1 ,const string& sreg2) const;
	void subtruct(const string& dreg, const string& sreg1 ,const string& sreg2) const;
	void multiply(const string& dreg, const string& sreg1 ,const string& sreg2) const;
	void div(const string& dreg, const string& sreg1 ,const string& sreg2) const;

  void num_toreg(const string& reg, const string& num) const;

	void add_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const;
	void subtruct_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const;
	void multiply_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const;
	void div_byte(const string& dreg, const string& sreg1 ,const string& sreg2) const;


	void jump(const string& target) const;
	void register_jump(const string& jreg) const;

	// returns label to patch to
	int patchy_jump() const;

	void assign(const string& dreg,const string &sreg) const;
	void comment(const string & comment) const;
	void debug_print(const string &debug_print) const;

	void get_var_value(const string& dreg, const string& sp_offset) const;
	void add_print_func(void) const;
	void add_printi_func(void)const;
};


#endif
