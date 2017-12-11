
#include <string>
#include <vector>
#include <iostream>
#include <stdexcept>
#define YYSTYPE Node*

using std::vector;
using std::string;

enum type_enum{
	Uninit,
	Void,
	String,
	Int,
	Byte,
	Bool
};

std::string str_of_type(enum type_enum tt){
	switch(tt)
	{
		case Void: return "VOID";
		case String: return "STRING";
		case Int: return "INT";
		case Byte: return "BYTE";
		case Bool: return "BOOL"
		case Unint: throw std::runtime_error("Uninitialized var");
		default : throw std::runtime_error("bla bla - illegal type ");
	}
	return "";
}

enum id_type{
	Uninit,
	Variable,
	Func
};

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
	bool has_main
	ProgramNode():has_main(FALSE){};
};

class FuncsNode : public Node{
public:
	bool has_main
	ProgramNode():has_main(FALSE){};
};

class FuncDeclNode : public Node{
public:
	ProgramNode():is_main(FALSE){};
};

class FuncDeclNode : public Node{
public:
	ProgramNode():is_main(FALSE){};
};

class FuncHeadNode : public Node{
public:
	FuncHeadNode():is_main(FALSE){};
};

class FuncStateNode : public Node{
public:
	FuncStateNode(){};
};

class RetTypeNode : public Node{
public: 
	enum type_enum Type;
	RetTypeNode(): Type(Uninit){};
};

class FormalsNode : public Node{
	public:
	std::vector<enum type_enum> types_vec;
	std::vector<string> idvec;
	//TODO add constructor that inits types vec to empty vec

};

class FormalsListNode : public Node{
public:
	std::vector<enum type_enum> typesvec;
	std::vector<string> idvec;
	//TODO add constructor that inits types vec to empty vec
};

class FormalDeclNode : public Node{
public:
	enum type_enum Type;
	FormalDeclNode():Type(Uninit){};

};

class StatementsNode : public Node{
public:
	StatementsNode():Type(Uninit),has_break(FALSE){};
};

class StatementNode : public Node{
public:
	StatementNode():Type(Uninit){};	
};

class CaseListNode : public Node{
public:
	bool has_default
	CaseListNode():has_default(FALSE){};
};

class CaseStatementNode : public Node{
public:
	bool is_default
	CaseStatementNode():has_default(FALSE){};
};

class CaseDecNode : public Node{
public:
	bool is_default
	CaseStatementNode():has_default(FALSE){};
};

class CallNode : public Node{
public:
	enum type_enum Type;
	CallNode():Type(Uninit){}; 
};

class ExpListNode : public Node{
	std::vector<enum type_enum> typesvec;
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

class Void : public Node{};
class Int : public Node{};
class Byte : public Node{};
class B_Node: public Node{};
class Bool : public Node{};
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
class Comma : public Node();
class Lparen : public Node();
class Rparen : public Node();
class Lbrace : public Node();
class Rbrace : public Node();
class Assign : public Node();
class Relop : public Node();
class Binop : public Node();
class Comma : public Node();
class Id : public Node();
class Num : public Node();
class String : public Node();


