#ifndef COMPILATION_SOURCE_H
#define COMPILATION_SOURCE_H


#include <string>
#include <vector>
#include <iostream>
#include <stdexcept>
#define YYSTYPE Node*

using std::vector;
using std::string;

typedef enum type_enum{
	Uninit,
	Void,
	String,
	Int,
	Byte,
	Bool
} type_e;

std::string str_of_type(enum type_enum tt){
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

/* // is used?
enum id_type{
	Uninit,
	Variable,
	Func
};*/

class Node{
	public:
	Node* father;
    vector<Node*> sons;
	
	Node(){};
	string str_content;
    int eval(void);
	void addSon(Node* son)   	{sons.push_back(son);}

};

class ProgramNode: public Node{
public:
	//ProgramNode():{};
};

class FuncsNode : public Node{
public:
	//ProgramNode(){};
};


class FuncDeclNode : public Node{
public:
	//ProgramNode(){}; //default

class FuncHeadNode : public Node{
public:
	//FuncHeadNode(){}; //default
};

class FuncStateNode : public Node{
public:
	//FuncStateNode(){}; // default
};

class RetTypeNode : public Node{
public: 
	type_e Type;
	RetTypeNode(): Type(Uninit){};
};

class FormalsNode : public Node{
	public:
	std::vector<type_e> types_vec;
	std::vector<string> idvec;
	//TODO add constructor that inits types vec to empty vec

};

class FormalsListNode : public Node{
public:
	std::vector<type_e> typesvec;
	std::vector<string> idvec;
	//TODO add constructor that inits types vec to empty vec
};

class FormalDeclNode : public Node{
public:
	type_e Type;
	FormalDeclNode():Type(Uninit){};

};

class StatementsNode : public Node{
public:
//	StatementsNode(){}; // default
};

class StatementNode : public Node{
public:
	//StatementNode(){}; // default
};

class SwitchHead_Node : public Node{
public:
	//SwitchHead_Node(){}; // default
};

class CaseListNode : public Node{
public:

	//CaseListNode(){};// default
};

class CaseStatementNode : public Node{
public:
	// CaseStatementNode(){};// default
};

class CaseDecNode : public Node{
public:
	// default CaseStatementNode(){}; // default
};

class CallNode : public Node{
public:
	enum type_enum Type;
	CallNode():Type(Uninit){}; 
};

class ExpListNode : public Node{
public:
	std::vector<enum type_enum> typesvec;
	//TODO initialize empty vector
};

class TypeNode : public Node{
public:
	enum type_enum Type;
	TypeNode():Type(Uninit){};
};

class ExpNode : public Node{
public:
	enum type_enum Type;
	ExpNode():Type(Uninit){}; 
};

class Void_Node : public Node{};
class Int_Node : public Node{
	public:
		std::string value;
		Int_Node(const char* txt):value(txt){};
};
class Byte_Node : public Node{
	public:
		std::string value;
		Byte_Node(const char* txt):value(txt){};
};
class B_Node: public Node{
	public:
		std::string value;
		B_Node(const char* txt):value(txt){};
};
class Bool_Node : public Node{
	public:
		std::string value;
		Bool_Node(const char* txt):value(txt){};
};
class And : public Node{};
class Or: public Node{};
class Not : public Node{};
class True : public Node{};
class False: public Node{};
class Return : public Node{};
class If : public Node{};
class Else : public Node{};
class While : public Node{};
class Switch : public Node{};
class Case : public Node{};
class Break : public Node{};
class Default : public Node{};
class Colon : public Node{};
class SC_Node : public Node{};
//class Comma : public Node{}; // defined bellow already
class Lparen : public Node{};
class Rparen : public Node{};
class Lbrace : public Node{};
class Rbrace : public Node{};
class Assign : public Node{};
class Relop : public Node{};
class Binop : public Node{};
class Comma : public Node{};
class Id : public Node{
	public:
		std::string value;
		Id(const char* txt):value(txt){};
};
class Num : public Node{
	public:
		std::string value;
		Num(const char* txt):value(txt){};
};
class String_Node : public Node{
	public:
		std::string value;
		String_Node(const char* txt):value(txt){};
};


#endif //COMPILATION_SOURCE_H
