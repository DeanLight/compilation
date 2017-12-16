
/*
Here we have all the semantic rules that supplement the bison AST generation


*/


#include <iostream>
#include <vector>
#include <string>

#include "output.hpp"
#include "semantic_rules.hpp"

using std::vector;
using std::string;
using namespace output;
#define PARSEDEBUG

typedef enum type_enum v_type;
typedef std::vector<v_type> types_vec;

/*
Type of rules we need to generate

Node generation

For rules that derive tokens with non obvious content such as:
STRING, NUM, ID, BINOP, RELOP
Add content to string of Exp or add a flag in case of few option such as RELOP.

For derivations of exp of for ID, we need a value and a type
For exp or ID we need a flag of wether they can be a lVal

Statements need a type whos values is their return type function
 declares need to check that the type 
of the statement is the same type as the RetType

Statement need a flag that checks if they contain a break, throw 
an Error if htye are scope enders that 
are not a while or a case of a switch

IDs need to be searched  in a symbol table, but they do not need 
to have a pointer since its a global var
IDs need a flag that say wether they are a variable or a function

Program and Funcs need to have a counter for number of mains. 

Funclis and funcdecl needs to have an is_main flag
FuncDecl need to check if its a main with void if yes tell its father, else its an error
FuncDecl must check that their retType and the Type of their statements match

A CaseStatement needs to know if its a default
A caseList must check it only has 1 default


All end of scope must call the prinitng fucntions explained in the IO section of the Assignment

*/



// Create main counter
//helper functions

bool is_num_legal_byte(int num);


class SymbolTable symtab=SymbolTable();

bool glob_containsMain=false;




string str_of_type(enum type_enum tt){
    switch(tt)
    {
        case Void: return "VOID";
        case String: return "STRING";
        case Int: return "INT";
        case Byte: return "BYTE";
        case Bool: return "BOOL";
        case Uninit: throw std::runtime_error("Uninitialized var");
        default : throw std::runtime_error("bla bla - illegal type ");
    }
    return "";
}


vector<string>& stringify_type_vec(const types_vec& vec){
	vector<string>* res = new vector<string>();
	for( vector<type_e>::const_iterator i=vec.begin();i!=vec.end(); i++){
		res->push_back(str_of_type(*i));
	}

	return *res;

}




////////////////////////////////////////////////////////////////////////////////////////
//semantic functions


// Program: Funcs
void Program_Semantic(int lineno,class ProgramNode* Self, class FuncsNode* funcs){
    
	//if program doesnt have main
	if( glob_containsMain==false ){
		//erorMainMissing()
		errorMainMissing();
        // added exit:
        exit(1);
	}
    // print end of scope
    symtab.exit_scope();
	
}

// Funcs: FuncDecl Funcs
void Funcs_Semantic(int lineno,class FuncsNode* Self, class FuncDeclNode* func_decl , class FuncsNode* funcs){
    

}

// Funcs: epsilon
void Funcs_Semantic(int lineno,class FuncsNode* Self){
    

}

//FuncDecl:       FuncHead FuncState
void FuncDecl_Semantic(int lineno,class FuncDeclNode* Self, class FuncHeadNode* head ,class FuncStateNode* state){


	symtab.exit_scope();

}

//FuncHead:		RetType ID LPAREN Func_Scope_init Formals RPAREN 
void FuncHead_Semantic(int lineno,class FuncHeadNode* Self, class RetTypeNode* rettype, class Id* id, class Lparen* lp ,class FormalsNode* formals , class Rparen* rp){

#ifdef PARSEDEBUG
    cerr << "<<FuncHead_semantic, id:[" << id->str_content << "]>>"<<endl; // TODO REMOVE
#endif

	if(id->str_content.compare("main")==0){ //if main
		if(rettype->Type==Void) { // if void
            if (symtab.is_func("main")) { // already another main
                errorDef(lineno,id->str_content);
                exit(1);
            }
            // first main:
            if (formals->types_vec.empty()) // with no params
                glob_containsMain = true;
        }
	}
    // EMPHASIZE - when we see a "wrong" main we don't fail - just treat it as a normal function.
	// if such function is in symbol table
		// errorDef(lineno,id->str_content)
	if(symtab.is_func(id->str_content)){
		errorDef(lineno,id->str_content);
		exit(1);
	}
	// add function to symbol table
	symtab.add_func_into_global_scope(id->str_content,rettype->Type,formals->types_vec);

	// change type to current scope
	symtab.change_retType_for_current_scope(rettype->Type);
}

//Func_Scope_init:	/*epsilon*/
void Func_scope_init_Semantic(int lineno){
	//open function scope
	symtab.enter_new_func_scope(Uninit);
    
}

//FuncState:		LBRACE Statement RBRACE
void FuncState_Semantic(int lineno,class FuncStateNode* Self, class Lbrace* lb, class StatementNode* statement , class Rbrace* rb){
    // TODO - does it need to open a new scope?
}



//RetType:        Type
void RetType_Semantic(int lineno,class RetTypeNode* Self, class TypeNode* type){
    // selfType=type.Type
    Self->Type=type->Type;

}

//RetType:        Void
void RetType_Semantic(int lineno,class RetTypeNode* Self){
    // Self.Type=Void
	Self->Type=Void;    

}

//Formals:        FormalsList
void Formals_Semantic(int lineno,class FormalsNode* Self, class FormalsListNode* formalsList){
    //Self->typesvec=formalsList->typesvec;
    //Self->idvec=formalsList->idvec;
#ifdef PARSEDEBUG
    cerr << "<<FormalsSem>>"; // TODO REMOVE
#endif
    Self->types_vec=formalsList->typesvec;
    Self->idvec=formalsList->idvec;
}

//Formals:        epsilon
void Formals_Semantic(int lineno,class FormalsNode* Self){
    

}


//FormalsList:    FormalDecl
void FormalsList_Semantic(int lineno,class FormalsListNode* Self, class FormalDeclNode* formalDecl){
    //Self->typesvec.pushback(FormalDecl->Type);
    //Self->idvec.pushback(FormalDecl->str_content);
	Self->typesvec.push_back(formalDecl->Type);
    Self->idvec.push_back(formalDecl->str_content); //
}

//FormalsList:    FormalDecl COMMA FormalsList
void FormalsList_Semantic(int lineno,class FormalsListNode* Self, class FormalDeclNode* formalDecl,class FormalsListNode* rest_of_list){
    // concatenates type and id of formaldecl with rest_of_list
    Self->typesvec.push_back(formalDecl->Type);
    Self->idvec.push_back(formalDecl->str_content);
    Self->typesvec.insert(Self->typesvec.end(),rest_of_list->typesvec.begin(),rest_of_list->typesvec.end() );
    Self->idvec.insert(Self->idvec.end(),rest_of_list->idvec.begin(),rest_of_list->idvec.end() );

}


//FormalsDecl:	Type ID
void FormalDecl_Semantic(int lineno,class FormalDeclNode* Self, class TypeNode* type , class Id* id){
    // if is_id_in_current_scope(id.str_content)
    	//errorDef(lineno,id.str_content)
#ifdef PARSEDEBUG
    std::cerr << "<<FormalDecl_Semantic: id[" << id->str_content << "]>>" << endl; // TODO REMOVE
#endif
	//if(symtab.is_var_in_curr_scope(id->str_content)){
    if(symtab.is_defined(id->str_content)){ // we don't allow any repeatition of ids TODO
		errorDef(lineno,id->str_content);
		exit(1);
	}
	// symboltable.addparam(type->Type,id->str_content);

	symtab.add_param(id->str_content,type->Type);

	// inheret type and str_content from sons
	Self->str_content=id->str_content;
	Self->Type=type->Type;
}

//Statements:		Statement
void Statements_Semantic(int lineno,class StatementsNode* Self, class StatementNode* statement){

}

//Statements:		Statements Statement
void Statements_Semantic(int lineno,class StatementsNode* Self,class StatementsNode* rest_of_statements, class StatementNode* statement){


}



//Statement:		LBRACE Scope_init Statements RBRACE
void Statement_Semantic(int lineno,class StatementNode* Self, class Lbrace* lbr, class StatementsNode* statements, class Rbrace* br){


	symtab.exit_scope();

}

//Statement:		Type ID SC
void Statement_Semantic(int lineno,class StatementNode* Self, class TypeNode* type, class Id* id){
	// check scope table if ID has been defined in this scope already
		// if so errorDef(lineno,id.string)
	// else add to scope table with Type.type
#ifdef PARSEDEBUG
    cerr << "<<[Statement_Semantic][TypeID_SC] id:[" << id->str_content << "]type:["<<type->str_content << "]>>"<< endl; // TODO REMOVE
#endif

	//if(symtab.is_var_in_curr_scope(id->str_content)){
    if(symtab.is_defined(id->str_content)){ // we don't allow any repeatition of ids TODO
		errorDef(lineno,id->str_content);
		exit(1);
	}

	symtab.add_var(id->str_content,type->Type);

}

bool legal_type_conversion(v_type from,v_type to){
	if(from==to){
		return true;
	}
	if(from==Byte && to==Int){
		return true;
	}
	return false;
}

//Statement:		ID ASSIGN Exp SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Id* id, class Assign* assign, class ExpNode* exp){
    // check Id exists in scope table
#ifdef PARSEDEBUG
    cerr << "<<Statement_Semantic with id[" << id->str_content <<"]=exp>>"<< endl; // TODO REMOVE
#endif

    	//if not errorUndef(lineno,id)
	//if(symtab.is_func(id->str_content)==0){ // FIX unless I'm really wrong, you mean to check a var
    if(symtab.is_var(id->str_content)==0){
		errorUndef(lineno,id->str_content);
		exit(1);
	}
	const var_data& var=symtab.get_var_data(id->str_content);
	// if not legal type conversion, missmatch err
	if(!legal_type_conversion(exp->Type,var.type)){
		errorMismatch(lineno);
        exit(1);
	}
}

//Statement:		Type ID ASSIGN Exp SC
void Statement_Semantic(int lineno,class StatementNode* Self, class TypeNode* type, class Id* id, class Assign* assign, class ExpNode* exp){
    //call routine for Statement:		Type ID SC
	Statement_Semantic(lineno,Self,type,id);
    //call routine for Statement:		ID ASSIGN Exp SC
	Statement_Semantic(lineno,Self,id,assign,exp);
}




//Statement:		Call SC
void Statement_Semantic(int lineno,class StatementNode* Self, class CallNode* call){
    //no semantic checks to do
}

//Statement:		RETURN SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Return* ret){
	// if getscope rettype is not void
		//  errorMismatch(lineno);
	if(symtab.get_curr_scope_ret_type()!=Void){
		errorMismatch(lineno);
		exit(1);
	}
}

//Statement:		RETURN Exp SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Return* ret, class ExpNode* exp){
    //if getscope.rettype!=Exp.type or theres a legal conversion
		//  errorMismatch(lineno);
#ifdef PARSEDEBUG
    cerr << "<<RetExp, ExpT:[" << exp->Type << "] scopeT:[" << symtab.get_curr_scope_ret_type() << "]>>"<< endl; // TODO REMOVE
#endif
	if(not legal_type_conversion( exp->Type,symtab.get_curr_scope_ret_type() ) ){
		errorMismatch(lineno);
		exit(1);
	}

}

//Statement:		IF LPAREN BoolExp RPAREN Scope_init Statement Scope_end PossibleElse
void Statement_Semantic(int lineno,class StatementNode* Self, class If* if_ptr, class ExpNode* exp, class StatementNode* statement){

}



//Statement:		WHILE LPAREN BoolExp RPAREN Breakable_Scope_init Statement
void Statement_Semantic(int lineno,class StatementNode* Self, class While* while_ptr, class ExpNode* exp,class StatementNode* statement){


	// close scope
	symtab.exit_scope();

}

//Statement:		BREAK SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Break* break_ptr ){
    // if currscope.isbreakable ==False
    	// errorUnexpectedBreak(lineno);
	if(!symtab.is_curr_scope_breakable()){
		errorUnexpectedBreak(lineno);
		exit(1);
	}

}

//Statement:		SwitchHead CaseList RBRACE SC
void Statement_Semantic(int lineno,class StatementNode* Self, class SwitchHeadNode* switch_ptr ,  class CaseListNode* caselist ){

	// close scope
    symtab.exit_scope();

}

//SwitchHead:     SWITCH LPAREN NumExp RPAREN LBRACE
void SwitchHead_Semantic(int lineno, class SwitchHeadNode* Self,class ExpNode* exp ){
	//open switch scope
	symtab.enter_new_switch_scope(exp->Type);

}


//PossibleElse:   /*epsilon*/
void PossibleElseSemantic(int lineno, class PossibleElseNode* Self ){
	
}

//PossibleElse:   ELSE Scope_init Statement Scope_end
void PossibleElseSemantic(int lineno, class PossibleElseNode* Self , class StatementNode* state  ){
	
}


// side effect var
//	NumExp: 		Exp
void is_exp_numeric(int lineno, class ExpNode* exp){
	// if exp is not numeric( int or Byte)
		// errorMismatch(lineno);
	if(not (exp->Type==Int || exp->Type==Byte) ){
		errorMismatch(lineno);
        //added exit: // TODO
        exit(1);
	}
}

// side effect var
//	BoolExp: 		Exp
void is_exp_bool(int lineno, class ExpNode* exp){
	// if exp is not numeric( int or Byte)
		// errorMismatch(lineno);
	if(not (exp->Type==Bool) ){
		errorMismatch(lineno);
        //added exit: // TODO
        exit(1);
	}
}



//While_Scope_init:	/*epsilon*/
void While_Scope_init_Semantic(int lineno){
	// open while scope
	symtab.enter_new_while_scope();
}




//Scope_init:	/*epsilon*/
void Scope_init_Semantic(int lineno){
	//open regular scope
	symtab.enter_new_other_scope();
    
}

//Scope_end:	/*epsilon*/
void Scope_end_Semantic(int lineno){
	//close  scope
	symtab.exit_scope();
}





//CaseList:		CaseList CaseStatement
void CaseList_Semantic(int lineno,class CaseListNode* Self, class CaseListNode* rest_of_list, class CaseStatementNode* case_ptr){
    




}

//CaseList:		CaseStatement
void CaseList_Semantic(int lineno,class CaseListNode* Self, class CaseStatementNode* case_ptr){

}


//CaseStatement:	CaseDec Statements
void CaseStatement_Semantic(int lineno,class CaseStatementNode* Self, class CaseDecNode* casedec, class StatementsNode* statements){

}


//CaseStatement:	CaseDec 
void CaseStatement_Semantic(int lineno,class CaseStatementNode* Self, class CaseDecNode* casedec){

}

//CaseDec:		CASE NUM COLON
void CaseDec_Semantic(int lineno,class CaseDecNode* casedec,class Num* num){
	// if scope case type is byte
		//errorByteTooLarge(lineno,value);
	if(symtab.get_curr_scope_switch_type()==Byte){
		errorByteTooLarge(lineno,num->str_content);
		exit(1);
	}
}

//CaseDec:		CASE NUM B COLON
void CaseDec_Semantic(int lineno,class CaseDecNode* casedec,class Num* num, class B_Node* b){
	// if num not legal byte
		//errorByteTooLarge(lineno,value)
	if(std::atoi(num->str_content.c_str())>255){
		errorByteTooLarge(lineno,num->str_content);
		exit(1);
	}
}

//CaseDec:		DEFAULT COLON
void CaseDec_Semantic(int lineno,class CaseDecNode* Self,class Default* default_ptr){
	// if scope default counter =1
		//	errorTooManyDefaults(lineno);
	if(symtab.get_curr_scope_defaults()>0){
		errorTooManyDefaults((lineno));
		exit(1);
	}

	symtab.increase_curr_scope_defaults();
	//else
		// scope default counter =1
}

bool are_params_convertible(const types_vec& from ,const  types_vec& to){
    if(from.size()!=to.size()){
        return false;
    }

    for (int i=0; i<from.size() ;++i){
        if (legal_type_conversion(from[i],to[i])==false ){
            return false;
        }

    }

    return true;


}

//Call:			ID LPAREN ExpList RPAREN
void Call_Semantic(int lineno,class CallNode* Self, class Id* id, class ExpListNode* expList){
#ifdef PARSEDEBUG
    //cerr << "<<CallSemantics! id[" << id->str_content << "] type0:[" << expList->typesvec[0] <<"]>>"; // TODO REMOVE
    cerr << "<<CallSemantics [ID(Exp)] >>" << endl; // TODO REMOVE
#endif


	// Look up Id in id table as a fucntion. 
		//  if not ufnction or doesnt exist
			//errorUndefFunc(lineno,id)
	if(symtab.is_func(id->str_content)==0){ // why not '!' ?
		errorUndefFunc(lineno,id->str_content);
		exit(1);
	}

	const var_data& func_dat=symtab.get_func_data(id->str_content);
    // TOOD REMOVE:
#ifdef PARSEDEBUG
    cerr << "tmpParams: " << func_dat.params.size() << endl;
#endif
	types_vec& actual_params=expList->typesvec;
#ifdef PARSEDEBUG
    cerr << "tmpActP: " << actual_params.size() << endl;
    cerr << "tmptmp: " << symtab.get_func_data("print").params.size() << endl;
#endif
	// if found in as function id, get all possible Type List and comparte to List of ExpList.
	// if Type lists dont match
	// errorPrototypeMismatch(lineno,id,types)

	if(are_params_convertible(actual_params,func_dat.params) == false  ){
		vector<string>& str_vec=stringify_type_vec(func_dat.params);
#ifdef PARSEDEBUG
        //TODO REMOVE:
        cerr << "func params:" << endl;
        for (int i=0; i<func_dat.params.size(); i++)
        {
            cerr << func_dat.params[i] << ",";
        }
        cerr << "actual params:" << endl;
        for (int i=0; i<actual_params.size(); i++)
        {
            cerr << actual_params[i] << ",";
        }
        cerr << endl;
#endif
		errorPrototypeMismatch(lineno,id->str_content,str_vec);
		delete &str_vec;
		exit(1);
	}

	// get retval of func
	//Self->Type=retval.Type
	Self->Type=func_dat.type;


}



//Call:			ID LPAREN RPAREN
void Call_Semantic(int lineno,class CallNode* Self, class Id* id){
	//call semantic for //Call:			ID LPAREN ExpList RPAREN
	// with empty expList
	class ExpListNode fake_exp_list=ExpListNode();
	Call_Semantic(lineno,Self,id,&fake_exp_list);
}

//ExpList:		Exp
void ExpList_Semantic(int lineno,class ExpListNode* Self,class ExpNode* exp){
	// add Exp Type to Self. TypeList
	Self->typesvec.push_back(exp->Type);

}

//ExpList:		Exp COMMA ExpList
void ExpList_Semantic(int lineno,class ExpListNode* Self,class ExpNode* exp, class ExpListNode* rest_of_list){
	//Self.TypeList.pushback_to_beggining(exp.Type)
	//Self.TypeList.insert(Self->TypeList.end(),rest_of_list->TypeList.begin(),rest_of_list->TypeList.end() );
	Self->typesvec.push_back(exp->Type);
	Self->typesvec.insert(Self->typesvec.end(),rest_of_list->typesvec.begin(),rest_of_list->typesvec.end());

}

//Type:			INT
void Type_Semantic(int lineno,class TypeNode* Self, class Int_Node* int_node){
	//Self.Type=Int
	Self->Type=Int;
}

//Type:			Byte
void Type_Semantic(int lineno,class TypeNode* Self, class Byte_Node* byte_node){
	//Self.Type=Byte
	Self->Type=Byte;
}

//Type:			BOOL
void Type_Semantic(int lineno,class TypeNode* Self, class Bool_Node* bool_node){
	//Self.Type=Bool
	Self->Type=Bool;
}


//Exp:			Exp AND Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class And* and_ptr, class ExpNode* exp2){
	// if exp1 or exp 2 are not bools
		// errorMismatch(lineno);
	if (not(exp1->Type==Bool && exp2->Type==Bool)){
		errorMismatch(lineno);
		exit(1);
	}
	//else
		// Self->Type=Bool
	Self->Type=Bool;
}

//Exp:			Exp OR Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class Or* or_ptr, class ExpNode* exp2){
	// if exp1 or exp 2 are not bools
	// errorMismatch(lineno);
	if (not(exp1->Type==Bool && exp2->Type==Bool)){
		errorMismatch(lineno);
		exit(1);
	}
	//else
	// Self->Type=Bool
	Self->Type=Bool;
}

//Exp:			Exp RELOP Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class Relop* relop, class ExpNode* exp2){
	// if exp1 or exp 2 are not numeric
	// errorMismatch(lineno);
	if (not(exp1->Type==Int || exp1->Type==Byte)||not(exp2->Type==Int || exp2->Type==Byte)){
		errorMismatch(lineno);
		exit(1);
	}
	//else
	// Self->Type=Bool
	Self->Type=Bool;
}

//Exp:			Exp BINOP Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class Binop* binop, class ExpNode* exp2){

	// if exp1 or exp 2 are not numeric
	// errorMismatch(lineno);
	if (not(exp1->Type==Int || exp1->Type==Byte)||not(exp2->Type==Int || exp2->Type==Byte)){
		errorMismatch(lineno);
		exit(1);
	}
	//else
	// is the largest type of numeric out of exp1 and exp2
	if(exp1->Type==Int || exp2->Type==Int){
		Self->Type=Int;
	}else{
		Self->Type=Byte;
	}
}

//Exp:			LPAREN Exp RPAREN  
void Exp_Semantic(int lineno,class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp){
	//Self->Type=exp1->Type;
	Self->Type=exp1->Type;
}

//Exp:			ID 
void Exp_Semantic(int lineno,class ExpNode* Self,class Id* id){
    cerr<<"<<[Exp_Semantic_Id] id:[" << id->str_content << "]>>"<< endl; // TODO REMVOVE
    // if id->str_content is not in scopeTable,
		//	errorUndef(lineno,id->str_content);
	if(!symtab.is_var(id->str_content)){
		errorUndef(lineno,id->str_content);
		exit(1);
	}

    // adding type to Node
    Self->Type = symtab.get_type(id->str_content);

}

//Exp:			Call 
void Exp_Semantic(int lineno,class ExpNode* Self,class CallNode* call){
	//Self->Type=call->Type;
	Self->Type=call->Type;
}

//Exp:			NUM 
void Exp_Semantic(int lineno,class ExpNode* Self,class Num* num){
	//Self->Type=int;
	Self->Type=Int;

}

//Exp:			NUM B
void Exp_Semantic(int lineno,class ExpNode* Self,class Num* num, class B_Node* b){
	// if Num >255 
		//errorByteTooLarge(lineno,int(Num->str_content)
	if(std::atoi(num->str_content.c_str())>255){
		errorByteTooLarge(lineno,num->str_content);
		exit(1);
	}
	//Self->Type=call->Byte;
	Self->Type=Byte;

}

//Exp:			STRING 
void Exp_Semantic(int lineno,class ExpNode* Self,class String_Node* stringptr){
	//Self->Type=string;
	Self->Type=String;
}

//Exp:			TRUE 
void Exp_Semantic(int lineno,class ExpNode* Self,class True* true_val){
	//Self->Type=Bool;
	Self->Type=Bool;
}

//Exp:			FALSE 
void Exp_Semantic(int lineno,class ExpNode* Self,class False* false_val){
	//Self->Type=Bool;
	Self->Type=Bool;
}

//Exp:			NOT Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class Not* not_ptr , class ExpNode* exp1){
	// if exp1  not bool
		// errorMismatch(lineno);
	if(exp1->Type!=Bool){
		errorMismatch(lineno);
		exit(1);
	}
		//else
		// Self->Type=Bool
	Self->Type=Bool;
}





void Void_Semantic(){
    
}

void Int_Semantic(){
    
}

void Byte_Semantic(){
    
}

void B_Node_Semantic(){
    
}

void Bool_Semantic(){
    
}

void And_Semantic(){
    
}

void Or_Semantic(){
    
}

void Not_Semantic(){
    
}

void True_Semantic(){
    
}

void False_Semantic(){
    
}

void Return_Semantic(){
    
}

void If_Semantic(){
    
}

void Else_Semantic(){
    
}

void While_Semantic(){
    
}

void Switch_Semantic(){
    
}

void Case_Semantic(){
    
}

void Break_Semantic(){
    
}

void Default_Semantic(){
    
}

void Colon_Semantic(){
    
}

void SC_Node_Semantic(){
    
}
//
//void Comma_Semantic(){
//
//}

void Lparen_Semantic(){
    
}

void Rparen_Semantic(){
    
}

void Lbrace_Semantic(){
    
}

void Rbrace_Semantic(){
    
}

void Assign_Semantic(){
    
}

void Relop_Semantic(){
    
}

void Binop_Semantic(){
    
}

void Comma_Semantic(){
    
}

void Id_Semantic(){
    
}

void Num_Semantic(){
    
}

void String_Semantic(){

}










