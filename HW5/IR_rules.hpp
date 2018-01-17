#ifndef IR_RULEZ
#define IR_RULEZ
#include "source.hpp"
#include "symbol_table.hpp"
#include "emitter.hpp"
typedef enum type_enum v_type;
typedef std::vector<v_type> types_vec;

int FIRST_PROGRAM_POINT(void);
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class And* and_ptr, class ExpNode* exp2);
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Or* or_ptr, class ExpNode* exp2);
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Relop* relop, class ExpNode* exp2);
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Binop* binop, class ExpNode* exp2);
void Exp_IR(int lineno,class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp);
void Exp_IR(int lineno,class ExpNode* Self,class Id* id);
void Exp_IR(int lineno,class ExpNode* Self,class CallNode* call);
void Exp_IR(int lineno,class ExpNode* Self,class Num* num);
void Exp_IR(int lineno,class ExpNode* Self,class Num* num, class B_Node* b);
void Exp_IR(int lineno,class ExpNode* Self,class String_Node* string_ptr);
void Exp_IR(int lineno,class ExpNode* Self,class True* true_val);
void Exp_IR(int lineno,class ExpNode* Self,class False* false_val);
void Exp_IR(int lineno,class ExpNode* Self,class Not* not_ptr , class ExpNode* exp1);

void FuncHead_IR(int lineno,class FuncHeadNode* Self, class RetTypeNode* rettype, class Id* id, class Lparen* lp ,class FormalsNode* formals , class Rparen* rp);
void Statement_IR(int lineno,class StatementNode* Self, class Return* ret); // void return
void Statement_IR(int lineno,class StatementNode* Self, class Return* ret, class ExpNode* exp); // none void return
// both of those - doing the "return
// the second one - saves iv v0 the relevent data

void Program_IR(int lineno,class ProgramNode* Self,InitProgNode* initProg, class FuncsNode* funcs);

// backpatch first point to main


void Call_IR(int lineno,class CallNode* Self, CallHeaderNode* header, class Id* id, class ExpListNode* expList);
void Call_IR(int lineno,class CallNode* Self, CallHeaderNode* header, class Id* id);

void CallHeader_IR(int lineno) ;


#endif
