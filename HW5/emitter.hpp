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

	void get_var_value(const string& dreg, const string& fp_offset) const;
  void set_var_value(const string& dreg, const string& fp_offset) const;

	void add_print_func(void) const;
	void add_printi_func(void)const;

  int add_label(const string& label);
  int add_generated_label();
  void halt();

  void func_call(const string& func_line);
  // does not store params
  int func_call_patchy();
  // returns the number of registers that were stored in stack
  int store_registers();
  // restore regnum registers from the stack
  void restore_registers(int regnum);

  // allocate kwords extra words on sp
	void allocate_words_on_stack(int kwords);
  // free kwords from stack
	void free_words_on_stack(int kwords);

  // gets the source string and the sp offset and perform "sw offset($sp), source"
  void save_to_stack(int sp_offset, string source);

  // gets the reg string and the sp offset and perform "lw offset($sp), reg"
  void gets_from_stack(int sp_offset, string reg);

  // allocates a single word on stack and saves source to it be it an immediate or a register or an indirect
  void push_to_stack( string source);


  // pops the last value in sp to reg
  void pops_from_stack( string reg);


};


#endif
