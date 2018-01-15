#ifndef EMMITERZ
#define EMMITERZ


#include <map>
#include <string>
#define ZERO_DIV_LABEL "nayalo"
using namespace std;



//extern CodeBuffer& codebuffer;




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
	void msg_print(const string &msg) const;

	void get_var_value(const string& dreg, const string& sp_offset) const;
	void add_print_func(void) const;
	void add_printi_func(void)const;

  void add_label(const string& label);
  void halt();

  void func_call(const string& func_label);
  // does not store params
  int func_call_patchy();
  // returns the number of registers that where stored in stack
  int store_registers();
  // restore regnum registers from the stack
  void restore_registers(int regnum);



};


#endif
