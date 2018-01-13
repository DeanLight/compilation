#ifndef IR_RULEZ
#define IR_RULEZ
#include "source.hpp"
#include "symbol_table.hpp"

typedef enum type_enum v_type;
typedef std::vector<v_type> types_vec;


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


#endif