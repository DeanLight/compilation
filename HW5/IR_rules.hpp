#ifndef IR_RULEZ
#define IR_RULEZ
#include "source.hpp"
#include "symbol_table.hpp"
#include "emitter.hpp"
typedef enum type_enum v_type;
typedef std::vector<v_type> types_vec;


int FIRST_PROGRAM_POINT(void);
void Mark_IR(int lineno, MarkNode* Self);
void Statement_next_patcher_IR(StatementNode* self);
void Program_IR(int lineno,class ProgramNode* Self,InitProgNode* initProg, class FuncsNode* funcs);
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class And* and_ptr, MarkNode* M , class ExpNode* exp2);
void Exp_IR(int lineno,class ExpNode* Self,class ExpNode* exp1, class Or* or_ptr, MarkNode* M , class ExpNode* exp2);
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

void ExpList_IR(int yylineno,ExpListNode* Self ,ExpNode* ex );
void ExpList_IR(int yylineno,ExpListNode* Self ,ExpNode* ex,ExpListNode* restOf) ;
void ExpParam_IR( ExpNode* Self,MarkNode* M );

void FuncHead_IR(int lineno,class FuncHeadNode* Self, class RetTypeNode* rettype, class Id* id, class Lparen* lp ,class FormalsNode* formals , class Rparen* rp);
void FuncDecl_IR(int lineno,class FuncDeclNode* Self, class FuncHeadNode* head ,class FuncStateNode* state);

void Statements_IR(int lineno,class StatementsNode* Self, class StatementNode* statement);
void Statements_IR(int lineno,class StatementsNode* Self,class StatementsNode* rest_of_statements, MarkNode* M, class StatementNode* statement);
void SJ_Exp_IR(int yylineno,ExpNode* ex);


void Statement_IR(int lineno,class StatementNode* Self, class CallNode* call);
void Statement_IR(int lineno,class StatementNode* Self, class Break* break_ptr );
void Statement_IR(int lineno,class StatementNode* Self, class Return* ret); // void return
void Statement_IR(int lineno,class StatementNode* Self, class Return* ret, class ExpNode* exp); // none void return
void Statement_IR(int lineno,class StatementNode* Self, class TypeNode* type, class Id* id);
void Statement_IR(int lineno,class StatementNode* Self, class Id* id, class Assign* assign, class ExpNode* exp);
void Statement_IR(int lineno,class StatementNode* Self, class TypeNode* type, class Id* id, class Assign* assign, class ExpNode* exp);
void Statement_IR(int lineno,class StatementNode* Self, class If* if_ptr, class ExpNode* exp,MarkNode* M_if, class StatementNode* statement, MarkNode* M_else, PossibleElseNode* elsei);
void Statement_IR(int lineno,class StatementNode* Self,MarkNode* Mwhile, class While* while_ptr, class ExpNode* exp,MarkNode* Mloop,class StatementNode* statement);
void Statement_IR(int lineno,class StatementNode* Self, class SwitchHeadNode* switch_ptr ,  class CaseListNode* caselist );

void Statement_IR(int lineno,class StatementNode* Self, class Lbrace* lbr, class StatementsNode* statements, class Rbrace* br);

void SwitchHead_IR(int lineno, class SwitchHeadNode* Self,class ExpNode* exp );
void CaseList_IR(int lineno,class CaseListNode* Self, class CaseListNode* rest_of_list,  CaseInitNode* initM ,MarkNode* M, class CaseStatementNode* case_ptr);
void CaseList_IR(int lineno,class CaseListNode* Self, CaseInitNode* initM , MarkNode* M, class CaseStatementNode* case_ptr);

void CaseInit_IR(CaseInitNode* Self);

void CaseStatement_IR(int lineno,class CaseStatementNode* Self, class CaseDecNode* casedec, class StatementsNode* statements);
void CaseStatement_IR(int lineno,class CaseStatementNode* Self, class CaseDecNode* casedec);

void FuncDecl_IR(int lineno,class FuncDeclNode* Self, class FuncHeadNode* head ,class FuncStateNode* state);

void Program_IR(int lineno,class ProgramNode* Self,InitProgNode* initProg, class FuncsNode* funcs);

// backpatch first point to main


void Call_IR(int lineno,class CallNode* Self, CallHeaderNode* header, class Id* id, class ExpListNode* expList);
void Call_IR(int lineno,class CallNode* Self, CallHeaderNode* header, class Id* id);

void CallHeader_IR(int lineno, CallHeaderNode* Self) ;

void PossibleElse_IR(int lineno, class PossibleElseNode* Self );
void PossibleElse_IR(int lineno, class PossibleElseNode* Self , class StatementNode* state  );

void MVSP_IR();

#endif
