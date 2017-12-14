#ifndef SEMANTIC_RULZZ_HW3
#define SEMANTIC_RULZZ_HW3

#include "source.hpp"
#include "symbol_table.hpp"

typedef enum type_enum v_type;
typedef std::vector<v_type> types_vec;

void Program_Semantic(int lineno,class ProgramNode* Self, class FuncsNode* funcs);
void Funcs_Semantic(int lineno,class FuncsNode* Self, class FuncDeclNode* func_decl , class FuncsNode* funcs);
void Funcs_Semantic(int lineno,class FuncsNode* Self);
void FuncDecl_Semantic(int lineno,class FuncDeclNode* Self, class RetTypeNode* rettype, class Id* id,class FormalsNode* formals, class StatementsNode* statements);
void FuncHead_Semantic(int lineno,class FuncHeadNode* Self, class RetTypeNode* rettype, class Id* id, class Lparen* lp ,class FormalsNode* formals , class Rparen* rp);
void Func_scope_init_Semantic(int lineno);
void FuncState_Semantic(int lineno,class FuncStateNode* Self, class Lbrace* lb, class StatementsNode* statements , class Rbrace* rb);
void RetType_Semantic(int lineno,class RetTypeNode* Self, class TypeNode* type);
void RetType_Semantic(int lineno,class RetTypeNode* Self);
void Formals_Semantic(int lineno,class FormalsNode* Self, class FormalsListNode* formalsList);
void Formals_Semantic(int lineno,class FormalsNode* Self);
void FormalsList_Semantic(int lineno,class FormalsListNode* Self, class FormalDeclNode* formalDecl);
void FormalsList_Semantic(int lineno,class FormalsListNode* Self, class FormalDeclNode* formalDecl,class FormalsListNode* rest_of_list);
void FormalDecl_Semantic(int lineno,class FormalDeclNode* Self, class TypeNode* type , class Id* id);
void Statements_Semantic(int lineno,class StatementsNode* Self, class StatementNode* statement);
void Statements_Semantic(int lineno,class StatementsNode* Self,class StatementsNode* rest_of_statements, class StatementNode* statement);
void Statement_Semantic(int lineno,class StatementNode* Self, class Lbrace* lbr, class StatementsNode* statements, class Rbrace* br);
void Statement_Semantic(int lineno,class StatementNode* Self, class TypeNode* type, class Id* id);
void Statement_Semantic(int lineno,class StatementNode* Self, class Id* id, class Assign* assign, class ExpNode* exp);
void Statement_Semantic(int lineno,class StatementNode* Self, class TypeNode* type, class Id* id, class Assign* assign, class ExpNode* exp);
void Statement_Semantic(int lineno,class StatementNode* Self, class CallNode* call);
void Statement_Semantic(int lineno,class StatementNode* Self, class Return* ret);
void Statement_Semantic(int lineno,class StatementNode* Self, class Return* ret, class ExpNode* exp);
void Statement_Semantic(int lineno,class StatementNode* Self, class If* if_ptr, class ExpNode* exp, class StatementNode* statement);
void Statement_Semantic(int lineno,class StatementNode* Self, class While* while_ptr, class ExpNode* exp,class StatementsNode* statement, class Rbrace* br);
void Statement_Semantic(int lineno,class StatementNode* Self, class Break* break_ptr );
void Statement_Semantic(int lineno,class StatementNode* Self, class Switch* switch_ptr , class ExpNode* exp, class CaseListNode* caselist );
void SwitchHead_Semantic(int lineno, class SwitchHead_Node* Self,class ExpNode* exp );
void is_exp_numeric(int lineno, class ExpNode* exp);
void is_exp_bool(int lineno, class ExpNode* exp);
void While_Scope_init_Semantic(int lineno);
void Scope_init_Semantic(int lineno);
void Scope_end_Semantic(int lineno);
void CaseList_Semantic(int lineno,class CaseListNode* Self, class CaseListNode* rest_of_list, class CaseStatementNode* case_ptr);
void CaseList_Semantic(int lineno,class CaseListNode* Self, class CaseStatementNode* case_ptr);
void CaseStatement_Semantic(int lineno,class CaseStatementNode* Self, class CaseDecNode* casedec, class StatementsNode* statements);
void CaseStatement_Semantic(int lineno,class CaseStatementNode* Self, class CaseDecNode* casedec);
void CaseDec_Semantic(int lineno,class CaseDecNode* casedec,class Num* num);
void CaseDec_Semantic(int lineno,class CaseDecNode* casedec,class Num* num, class B_Node* b);
void CaseDec_Semantic(int lineno,class CaseDecNode* Self,class Default* default_ptr);
void Call_Semantic(int lineno,class CallNode* Self, class Id* id, class ExpListNode* expList);
void Call_Semantic(int lineno,class CallNode* Self, class Id* id);
void ExpList_Semantic(int lineno,class ExpListNode* Self,class ExpNode* exp);
void ExpList_Semantic(int lineno,class ExpListNode* Self,class ExpNode* exp, class ExpListNode* rest_of_list);
void Type_Semantic(int lineno,class TypeNode* Self, class Int* int_node);
void Type_Semantic(int lineno,class TypeNode* Self, class Byte* byte_node);
void Type_Semantic(int lineno,class TypeNode* Self, class Bool* bool_node);
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class And* and_ptr, class ExpNode* exp2);
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class Or* or_ptr, class ExpNode* exp2);
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class Relop* relop, class ExpNode* exp2);
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class Binop* binop, class ExpNode* exp2);
void Exp_Semantic(int lineno,class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp);
void Exp_Semantic(int lineno,class ExpNode* Self,class Id* id);
void Exp_Semantic(int lineno,class ExpNode* Self,class CallNode* call);
void Exp_Semantic(int lineno,class ExpNode* Self,class Num* num);
void Exp_Semantic(int lineno,class ExpNode* Self,class Num* num, class B_Node* b);
void Exp_Semantic(int lineno,class ExpNode* Self,class String* string);
void Exp_Semantic(int lineno,class ExpNode* Self,class True* true_val);
void Exp_Semantic(int lineno,class ExpNode* Self,class False* false_val);
void Exp_Semantic(int lineno,class ExpNode* Self,class Not* not_ptr , class ExpNode* exp1);
void Void_Semantic();
void Int_Semantic();
void Byte_Semantic();
void B_Node_Semantic();
void Bool_Semantic();
void And_Semantic();
void Or_Semantic();
void Not_Semantic();
void True_Semantic();
void False_Semantic();
void Return_Semantic();
void If_Semantic();
void Else_Semantic();
void While_Semantic();
void Switch_Semantic();
void Case_Semantic();
void Break_Semantic();
void Default_Semantic();
void Colon_Semantic();
void SC_Node_Semantic();
void Lparen_Semantic();
void Rparen_Semantic();
void Lbrace_Semantic();
void Rbrace_Semantic();
void Assign_Semantic();
void Relop_Semantic();
void Binop_Semantic();
void Comma_Semantic();
void Id_Semantic();
void Num_Semantic();
void String_Semantic();


#endif