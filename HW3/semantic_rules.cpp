
/*
Here we have all the semantic rules that supplement the bison AST generation


*/


#include <iostream>
#include <vector>
#include <string>
#include "source.hpp"




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


/////////////////////////////////////////////////////////////////////////////////////
//helper functions

enum id_type is_id_in_current_scope(std::string id_string);
enum id_type is_id_in_reachable_scope(std::string id_string);
bool is_func_declared(std::string func_id_string,std::vector<Type_enum> types_vec);
enum Type_enum operator_return_type_eval(std::vector<Type_enum> argument_types);

bool is_num_legal_byte(int num);

// some iterator functions for all ids in scope

void print_end_of_scope();



////////////////////////////////////////////////////////////////////////////////////////
//semantic functions


// Program: Funcs
void Program_Semantic(class ProgramNode* Self, class FuncsNode* funcs){
    
	// if Funcs.has_main==FALSE
		//erorMainMissing()
    // print end of scope

}

// Funcs: FuncDecl Funcs
void Funcs_Semantic(class FuncsNode* Self, class FuncDeclNode* funcl_decl , class FuncsNode* funcs){
    
    // if funcDecl.is_main and funcs.has_main
    	// this means there are too many names so
		//errorSyn()
	// if funcDel.is_main or funcs.hasmain
		// self.hasmain=true

}

// Funcs: epsilon
void Funcs_Semantic(class FuncsNode* Self){
    

}

//FuncDecl:       RetType ID LPAREN Formals RPAREN LBRACE Statement RBRACE
void FuncDecl_Semantic(class FuncDeclNode* Self, class RetTypeNode* rettype, class Id* id,class FormalsNode* formals, class StatementsNode* statements){
    // if Statement.hasbreak==true
    	//errorUnexpectedBreak

    // if retType.Type is not same as statements.Type
    	// errorMismatch()
	
	// if func,formals is already defined
		// errorDef()
	
	// if id is main 
		//if retType is not void
			//errorSyn()
		// else
			//self.isMain=true
	



	//print end of scope
	//TODO decide if we need to open new scope here
}

//RetType:        Type
void RetType_Semantic(class RetTypeNode* Self, class TypeNode* type){
    // selfType=type.Type

}

//RetType:        Void
void RetType_Semantic(class RetTypeNode* Self){
    // Self.Type=Void

}

//Formals:        FormalsList
void Formals_Semantic(class FormalsNode* Self, class FormalsListNode* formalsList){
    

}

//Formals:        epsilon
void Formals_Semantic(class FormalsNode* Self){
    

}


//FormalsList:    FormalDecl
void FormalsList_Semantic(class FormalsListNode* Self, class FormalDeclNode* formalDecl){
    

}

//FormalsList:    FormalDecl COMMA FormalsList
void FormalsList_Semantic(class FormalsListNode* Self, class FormalDeclNode* formalDecl,class FormalsListNode* rest_of_list){
    

}


//FormalsDecl:	Type ID
void FormalDecl_Semantic(class FormalDeclNode* Self, class TypeNode* type , class Id* id){
    // if is_id_in_current_scope(Id.string)==Variable
    	//errorDef(lineno,id)

}

//Statements:		Statement
void Statements_Semantic(class StatementsNode* Self, class StatementNode* statement){
    //Self.Type=statement.Type

}

//Statements:		Statements Statement
void Statements_Semantic(class StatementsNode* Self,class StatementsNode* rest_of_statements, class StatementNode* statement){
    // if statement and rest_of types are both Uninit
    	//keep self.Type as Uninit
	// if only one has initialized type or both have the same initialized type
		// sel.Type= that Type

	// if they have different types
		//errorMismatch()

}

//TODO decide what to do with the dangling else in the statement rule


//Statement:		LBRACE Statements RBRACE
void Statement_Semantic(class StatementNode* Self, class Lbrace* lbr, class StatementsNode* statements, class Rbrace* br){
    // no need to check break ehre since we might be inside an ineer scope inside a while

	// Self has break and self Type should be inherited from statements

	// print end of scope

}

//Statement:		Type ID SC
void Statement_Semantic(class StatementNode* Self, class TypeNode* type, class Id* id){
	// check scope table if ID has been defined in this scope already
		// if so errorDef(lineno,id.string)
		// else add to scope table with Type.type



}

//Statement:		ID ASSIGN Exp SC
void Statement_Semantic(class StatementNode* Self, class Lbrace* lbr, class StatementsNode* statements, class Rbrace* br){
    // check Id exists in acope table
    	//if not errorUndef(lineno,id)

	//if id,getType() is int and Exp.Type is Byte, no error

	//else if Id.getType() != Exp.Type
		// errorMismatch(lineno)


}

//Statement:		Type ID ASSIGN Exp SC
void Statement_Semantic(class StatementNode* Self, class Lbrace* lbr, class StatementsNode* statements, class Rbrace* br){
    //call routine for Statement:		Type ID SC
    //call routine for Statement:		ID ASSIGN Exp SC

}




//Statement:		Call SC
void Statement_Semantic(class StatementNode* Self, class CallNode* call){
    //no semantic checks to do

}

//Statement:		RETURN SC
void Statement_Semantic(class StatementNode* Self, class Return* ret){
	// Self.Type=Void    

}

//Statement:		RETURN Exp SC
void Statement_Semantic(class StatementNode* Self, class Return* ret, class ExpNode* exp){
    //Self.Type=exp.Type

}

//Statement:		IF LPAREN Exp RPAREN Statement
void Statement_Semantic(class StatementNode* Self, class If* if, class ExpNode* exp, class StatementNode* statement){
	// if exp.Type is not Bool
			//errorMismatch()
	//   Self.Type , Self.hasBreak = Statement.Type, Statement.hasBreak

}

//Statement:		IF LPAREN Exp RPAREN Statement ELSE Statement
void Statement_Semantic(class StatementNode* Self, class If* if, class ExpNode* exp, class StatementNode* statement1, class Else* else , class StatementNode statement2){
    // if exp.Type is not Bool
			//errorMismatch()
	// Self.hasBreak = statement1.hasBreak or statement2.hadBreak
	// if statements 1 and 2 has different Types that are not Uninit, then we have a type error. 
		//error mismatch



}

//Statement:		WHILE LPAREN Exp RPAREN Statement
void Statement_Semantic(class StatementNode* Self, class While* while, class ExpNode* exp,class StatementsNode* statement, class Rbrace* br){
    // if exp.Type is not Bool
		//errorMismatch()
	// we dont inherit has break from statement since the whiole catches it
	// Self.Type=Statement.Type


	// print end of scope

}

//Statement:		BREAK SC
void Statement_Semantic(class StatementNode* Self, class Break* break ){
    //Self.hasbreak=true

}

//Statement:		SWITCH LPAREN Exp RPAREN LBRACE CaseList RBRACE SC
void Statement_Semantic(class StatementNode* Self, class Switch* switch , class ExpNode* exp, class CaseListNode* caselist ){
    //if exp.Type is not int or byte
    	//errorMismatch
	// Self.Type=CaseList,Type



}




//CaseList:		CaseList CaseStatement
void CaseList_Semantic(class CaseListNode* Self, class CaseListNode* rest_of_list, class CaseStatementNode* case){
    // if rest_of_list.hasdefault and casestatement.isdefault
    	//errorTooManyDefaults()

	// if only one of them
		//Self.hasDefaults=true


}

//CaseList:		CaseStatement
void CaseList_Semantic(class CaseListNode* Self, class CaseStatementNode* case){
    //Self.hasdefault=Case.isdefault

}


//CaseStatement:	CaseDec Statements
void CaseStatement_Semantic(class CaseStatementNode* Self, class CaseDecNode* casedec, class StatementsNode* statements){
	//no need to check if Statennts has a break since we are catching it here vacuously    

	// self.isdefault=casedec.isdefault
}


//CaseStatement:	CaseDec 
void CaseStatement_Semantic(class CaseStatementNode* Self, class CaseDecNode* casedec){
 	// self.isdefault=casedec.isdefault   

}

//CaseDec:		CASE NUM COLON
void CaseDec_Semantic(class CaseDecNode* casedec,class Num* num){

}

//CaseDec:		CASE NUM B COLON
void CaseDec_Semantic(class CaseDecNode* casedec,class Num* num, class B_Node* b){
	// if num not legal byte
		//errorByteTooLarge(lineno,value)
}

//CaseDec:		DEFAULT COLON
void CaseDec_Semantic(class CaseDecNode* Self,class Default* default){
	//Self.isdefault=true
}

//Call:			ID LPAREN ExpList RPAREN
void Call_Semantic(class CallNode* Self, class Id* id, class ExpListNode* expList){
	// Look up Id in id table as a fucntion. 
		//  if not ufnction or doesnt exist
			//errorUndefFunc(lineno,id)

	// if found in as function id, get all possible Type List and comparte to List of ExpList.
		// if Type lists dont match
			// errorPrototypeMismatch(lineno,id,types)

}

//Call:			ID LPAREN RPAREN
void Call_Semantic(class CallNode* Self, class Id* id){
	// Look up Id in id table as a fucntion. 
		//  if not ufnction or doesnt exist
			//errorUndefFunc(lineno,id)
	// if found as a function  but does not have an argumentless decleration
		// errorPrototypeMismatch(lineno,id,types)

}

//ExpList:		Exp
void ExpList_Semantic(class ExpListNode* Self,class ExpNode* exp){
	// add Exp Type to Self. TypeList

}

//ExpList:		Exp COMMA ExpList
void ExpList_Semantic(class ExpListNode* Self,class ExpNode* exp, class ExpListNode* rest_of_list){
	//Self.TypeList=rest_of_list.TypeList
	//Self.TypeList.insert_to_beggining(exp.Type)
}

//Type:			INT
void Type_Semantic(class TypeNode* Self, class Int* int_node){
	//Self.Type=Int
}

//Type:			Byte
void Type_Semantic(class TypeNode* Self, class Byte* byte_node){
	//Self.Type=Byte
}

//Type:			BOOL
void Type_Semantic(class TypeNode* Self, class Bool* bool_node){
	//Self.Type=Error
}


//Exp:			Exp AND Exp 
void Exp_Semantic(class ExpNode* Self,class ExpNode* exp1, class And* and, class ExpNode* exp2){

}

//Exp:			Exp OR Exp 
void Exp_Semantic(class ExpNode* Self,class ExpNode* exp1, class Or* or, class ExpNode* exp2){

}

//Exp:			Exp RELOP Exp 
void Exp_Semantic(class ExpNode* Self,class ExpNode* exp1, class Relop* relop, class ExpNode* exp2){

}

//Exp:			Exp BINOP Exp 
void Exp_Semantic(class ExpNode* Self,class ExpNode* exp1, class Binop* binop, class ExpNode* exp2){

}

//Exp:			LPAREN Exp RPAREN  
void Exp_Semantic(class ExpNode* Self,class Lparen* lp, class ExpNode* exp1, class Rparen* rp){

}

//Exp:			ID 
void Exp_Semantic(class ExpNode* Self,class Id* id){

}

//Exp:			Call 
void Exp_Semantic(class ExpNode* Self,class CallNode* call){

}

//Exp:			NUM 
void Exp_Semantic(class ExpNode* Self,class Num* num){

}

//Exp:			NUM B
void Exp_Semantic(class ExpNode* Self,class Num* num, class B_Node* b){

}

//Exp:			STRING 
void Exp_Semantic(class ExpNode* Self,class String* string){

}

//Exp:			TRUE 
void Exp_Semantic(class ExpNode* Self,class True* true_val){

}

//Exp:			FALSE 
void Exp_Semantic(class ExpNode* Self,class False* false_val){

}

//Exp:			NOT Exp 
void Exp_Semantic(class ExpNode* Self,class Not* not , class ExpNode* exp1){

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










