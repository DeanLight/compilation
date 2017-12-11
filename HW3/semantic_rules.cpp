
/*
Here we have all the semantic rules that supplement the bison AST generation


*/


#include <iostream>
#include <vector>
#include <string>
#include "source.hpp"
#include "symbol_table.hpp"
#include "output.hpp"

using std::vector;
using std::string;

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

// TODO: create break and return stacks

// Create main counter


/////////////////////////////////////////////////////////////////////////////////////
//helper functions


bool is_num_legal_byte(int num);


class SymbolTable symtab=SymbolTable();

bool glob_containsMain=false;

//TODO declare global scope in before calling bison

////////////////////////////////////////////////////////////////////////////////////////
//semantic functions


// Program: Funcs
void Program_Semantic(int lineno,class ProgramNode* Self, class FuncsNode* funcs){
    
	//if program doesnt have main
	if( containsMain==false ){
		//erorMainMissing()
		errorMainMissing();
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
void FuncDecl_Semantic(int lineno,class FuncDeclNode* Self, class RetTypeNode* rettype, class Id* id,class FormalsNode* formals, class StatementsNode* statements){


	symtab.exit_scope();

}

//FuncHead:		RetType ID LPAREN Func_Scope_init Formals RPAREN 
void FuncHead_Semantic(int lineno,class FuncHeadNode* Self, class RetTypeNode* rettype, class Id* id, class Lparen* lp ,class FormalsNode* formals , class Rparen* rp){


	if(id->str_content.compare("main")==0){ //if main
		if(rettype->Type!=Void){ // if not void
			errorSyn(lineno);
			exit(1);
		}else{//retType is void

			if(glob_containsMain==true){ // already another main
				errorSyn(lineno);
				exit(1);
			}else{// first main
				glob_containsMain=true;
			}


		}


	}




	// if such function is in symbol table
		// errorDef(lineno,id->str_content)
	if(symtab.is_func(id->str_content)){
		errorDef(lineno,id->str_content);
		exit(1);
	}
	
	// add function to symbol table

	symTab.add_func_into_global_scope(id->str_content,rettype->Type,formals->typesvec);

	//TODO change type to current scope
	

}

//Func_Scope_init:	/*epsilon*/
void Func_scope_init_Semantic(int lineno){
	//open function scope
	symTab.enter_new_func_scope(Uninit);
}

//FuncState:		LBRACE Statement RBRACE
void FuncState_Semantic(int lineno,class FuncStateNode* Self, class Lbrace* lb, class StatementsNode* statements , class Rbrace* rb){


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
    Self->typesvec=formalsList->typesvec;
    Self->idvec=formalsList->idvec;

}

//Formals:        epsilon
void Formals_Semantic(int lineno,class FormalsNode* Self){
    

}


//FormalsList:    FormalDecl
void FormalsList_Semantic(int lineno,class FormalsListNode* Self, class FormalDeclNode* formalDecl){
    //Self->typesvec.pushback(FormalDecl->Type);
    //Self->idvec.pushback(FormalDecl->str_content);
	Self->typesvec.pushback(FormalDecl->Type);
    Self->idvec.pushback(FormalDecl->str_content);
}

//FormalsList:    FormalDecl COMMA FormalsList
void FormalsList_Semantic(int lineno,class FormalsListNode* Self, class FormalDeclNode* formalDecl,class FormalsListNode* rest_of_list){
    // concatenates type and id of formaldecl with rest_of_list
    Self->typesvec.pushback(FormalDecl->Type);
    Self->idvec.pushback(FormalDecl->str_content);
    Self->typesvec.insert(Self->typesvec.end(),rest_of_list->typesvec.begin(),rest_of_list->typesvec.end() );
    Self->idvec.insert(Self->idvec.end(),rest_of_list->idvec.begin(),rest_of_list->idvec.end() );

}


//FormalsDecl:	Type ID
void FormalDecl_Semantic(int lineno,class FormalDeclNode* Self, class TypeNode* type , class Id* id){
    // if is_id_in_current_scope(id.str_content)
    	//errorDef(lineno,id.str_content)

	if(symTab.is_var_in_curr_scope(id->str_content)){
		errorDef(lineno,od->str_content);
		exit(1);
	}
	// symboltable.addparam(type->Type,id->str_content);

	symTab.add_param(id->str_content,type->Type);

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


	symTab.exit_scope();

}

//Statement:		Type ID SC
void Statement_Semantic(int lineno,class StatementNode* Self, class TypeNode* type, class Id* id){
	// check scope table if ID has been defined in this scope already
		// if so errorDef(lineno,id.string)
	// else add to scope table with Type.type

	if(symTab.is_var_in_curr_scope(id->str_content)){
		errorDef(lineno,id->str_content);
		exit(1);
	}

	symTab.add_var(id->str_content,type->Type);

}

//Statement:		ID ASSIGN Exp SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Lbrace* lbr, class StatementsNode* statements, class Rbrace* br){
    // check Id exists in acope table
    	//if not errorUndef(lineno,id)

	//if id,getType() is int and Exp.Type is Byte, no error

	//else if Id.getType() != Exp.Type
		// errorMismatch(lineno)


}

//Statement:		Type ID ASSIGN Exp SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Lbrace* lbr, class StatementsNode* statements, class Rbrace* br){
    //call routine for Statement:		Type ID SC
    //call routine for Statement:		ID ASSIGN Exp SC

}




//Statement:		Call SC
void Statement_Semantic(int lineno,class StatementNode* Self, class CallNode* call){
    //no semantic checks to do

}

//Statement:		RETURN SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Return* ret){
	// if getscope rettype is not void
		//  errorMismatch(lineno);

}

//Statement:		RETURN Exp SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Return* ret, class ExpNode* exp){
    //if getscope.rettype!=Exp.type
		//  errorMismatch(lineno);    	

}

//Statement:		IF LPAREN Exp RPAREN Scope_init Statement
void Statement_Semantic(int lineno,class StatementNode* Self, class If* if, class ExpNode* exp, class StatementNode* statement){

	// close scope

}

//Statement:		IF LPAREN Exp RPAREN Scope_init Statement ELSE Statement
void Statement_Semantic(int lineno,class StatementNode* Self, class If* if, class ExpNode* exp, class StatementNode* statement1, class Else* else , class StatementNode statement2){

	// close scope


}

//Statement:		WHILE LPAREN Exp RPAREN Breakable_Scope_init Statement
void Statement_Semantic(int lineno,class StatementNode* Self, class While* while, class ExpNode* exp,class StatementsNode* statement, class Rbrace* br){


	// close scope

}

//Statement:		BREAK SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Break* break ){
    // if currscope.isbreakable ==False
    	// errorUnexpectedBreak(lineno);

}

//Statement:		SWITCH LPAREN Exp RPAREN LBRACE Breakable_Scope_init CaseList RBRACE SC
void Statement_Semantic(int lineno,class StatementNode* Self, class Switch* switch , class ExpNode* exp, class CaseListNode* caselist ){

	// close scope

}

// side effect var
//	NumExp: 		Exp
void is_exp_numeric(int lineno, class ExpNode* exp){
	// if exp is not numeric( int or Byte)
		// errorMismatch(lineno);
}

// side effect var
//	BoolExp: 		Exp
void is_exp_bool(int lineno, class ExpNode* exp){
	// if exp is not numeric( int or Byte)
		// errorMismatch(lineno);
}



//While_Scope_init:	/*epsilon*/
void While_Scope_init_Semantic(int lineno){
	// open while scope
}


//Switch_Scope_init:	/*epsilon*/
void Switch_Scope_init_Semantic(int lineno){
	// open switch scope
}

//Scope_init:	/*epsilon*/
void Scope_init_Semantic(int lineno){
	//open regular scope
}




//CaseList:		CaseList CaseStatement
void CaseList_Semantic(int lineno,class CaseListNode* Self, class CaseListNode* rest_of_list, class CaseStatementNode* case){
    




}

//CaseList:		CaseStatement
void CaseList_Semantic(int lineno,class CaseListNode* Self, class CaseStatementNode* case){

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
}

//CaseDec:		CASE NUM B COLON
void CaseDec_Semantic(int lineno,class CaseDecNode* casedec,class Num* num, class B_Node* b){
	// if num not legal byte
		//errorByteTooLarge(lineno,value)
}

//CaseDec:		DEFAULT COLON
void CaseDec_Semantic(int lineno,class CaseDecNode* Self,class Default* default){
	// if scope default counter =1
		//	errorTooManyDefaults(lineno);

	//else
		// scope default counter =1
}

//Call:			ID LPAREN ExpList RPAREN
void Call_Semantic(int lineno,class CallNode* Self, class Id* id, class ExpListNode* expList){
	// Look up Id in id table as a fucntion. 
		//  if not ufnction or doesnt exist
			//errorUndefFunc(lineno,id)

	// if found in as function id, get all possible Type List and comparte to List of ExpList.
		// if Type lists dont match
			// errorPrototypeMismatch(lineno,id,types)

	// get retval of func
	//Self->Type=retval.Type

}

//Call:			ID LPAREN RPAREN
void Call_Semantic(int lineno,class CallNode* Self, class Id* id){
	// Look up Id in id table as a fucntion. 
		//  if not ufnction or doesnt exist
			//errorUndefFunc(lineno,id)
	// if found as a function  but does not have an argumentless decleration
		// errorPrototypeMismatch(lineno,id,types)

}

//ExpList:		Exp
void ExpList_Semantic(int lineno,class ExpListNode* Self,class ExpNode* exp){
	// add Exp Type to Self. TypeList

}

//ExpList:		Exp COMMA ExpList
void ExpList_Semantic(int lineno,class ExpListNode* Self,class ExpNode* exp, class ExpListNode* rest_of_list){
	//Self.TypeList.pushback_to_beggining(exp.Type)
	//Self.TypeList.insert(Self->TypeList.end(),rest_of_list->TypeList.begin(),rest_of_list->TypeList.end() );
	
}

//Type:			INT
void Type_Semantic(int lineno,class TypeNode* Self, class Int* int_node){
	//Self.Type=Int
}

//Type:			Byte
void Type_Semantic(int lineno,class TypeNode* Self, class Byte* byte_node){
	//Self.Type=Byte
}

//Type:			BOOL
void Type_Semantic(int lineno,class TypeNode* Self, class Bool* bool_node){
	//Self.Type=Bool
}


//Exp:			Exp AND Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class And* and, class ExpNode* exp2){
	// if exp1 or exp 2 are not bools
		// errorMismatch(lineno);
	//else
		// Self->Type=Bool
}

//Exp:			Exp OR Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class Or* or, class ExpNode* exp2){
	// if exp1 or exp 2 are not bools
		// errorMismatch(lineno);
	//else
		// Self->Type=Bool
}

//Exp:			Exp RELOP Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class Relop* relop, class ExpNode* exp2){
	// if exp1 or exp 2 are not numeric
		// errorMismatch(lineno);
	//else
		// Self->Type=Bool
}

//Exp:			Exp BINOP Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class ExpNode* exp1, class Binop* binop, class ExpNode* exp2){
	// if exp1 or exp 2 are not numeric
		// errorMismatch(lineno);
	//else
		// Self->Type=numeric
}

//Exp:			LPAREN Exp RPAREN  
void Exp_Semantic(int lineno,class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp){
	//Self->Type=exp1->Type;
}

//Exp:			ID 
void Exp_Semantic(int lineno,class ExpNode* Self,class Id* id){
	// if id->str_content is not in scopeTable,
		//	errorUndef(lineno,id->str_content);
}

//Exp:			Call 
void Exp_Semantic(int lineno,class ExpNode* Self,class CallNode* call){
	//Self->Type=call->Type;
}

//Exp:			NUM 
void Exp_Semantic(int lineno,class ExpNode* Self,class Num* num){
	//Self->Type=int;

}

//Exp:			NUM B
void Exp_Semantic(int lineno,class ExpNode* Self,class Num* num, class B_Node* b){
	// if Num >255 
		//errorByteTooLarge(lineno,int(Num->str_content)
	//Self->Type=call->Byte;

}

//Exp:			STRING 
void Exp_Semantic(int lineno,class ExpNode* Self,class String* string){
	//Self->Type=string;
}

//Exp:			TRUE 
void Exp_Semantic(int lineno,class ExpNode* Self,class True* true_val){
	//Self->Type=Bool;

}

//Exp:			FALSE 
void Exp_Semantic(int lineno,class ExpNode* Self,class False* false_val){
	//Self->Type=Bool;
}

//Exp:			NOT Exp 
void Exp_Semantic(int lineno,class ExpNode* Self,class Not* not , class ExpNode* exp1){
	// if exp1  not bool
		// errorMismatch(lineno);
	//else
		// Self->Type=Bool
}



//TODO if we should have a semantic rule for terminals

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

void Comma_Semantic(){
    
}

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










