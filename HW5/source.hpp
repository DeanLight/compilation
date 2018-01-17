#ifndef COMPILATION_SOURCE_H_HW3
#define COMPILATION_SOURCE_H_HW3

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
    Node(std::string txt):str_content(txt){;}; //
    virtual ~Node()
    {
        for (int i=0; i<sons.size();i++)
        {
            delete(sons[i]);
        }
    }

	string str_content;
    int eval(void);
	void addSon(Node* son)   	{sons.push_back(son);}
    // stupid, but will be shorter in parser.ypp:
    void addSon(Node *son1, Node *son2)   	{sons.push_back(son1);addSon(son2);}
    void addSon(Node *son1, Node *son2, Node *son3){sons.push_back(son1);addSon(son2,son3);}
    void addSon(Node *son1, Node *son2, Node *son3, Node *son4){sons.push_back(son1);addSon(son2,son3,son4);}
    void addSon(Node *son1, Node *son2, Node *son3, Node *son4, Node *son5){sons.push_back(son1);addSon(son2,son3,son4,son5);}
    void addSon(Node *son1, Node *son2, Node *son3, Node *son4, Node *son5, Node *son6){sons.push_back(son1); addSon(son2,son3,son4,son5,son6);}
    void addSon(Node *son1, Node *son2, Node *son3, Node *son4, Node *son5, Node *son6, Node *son7){sons.push_back(son1),addSon(son2,son3,son4,son5,son6,son7);}
};

class ProgramNode: public Node{
public:
	int jump_to_main_address;
	ProgramNode(int bpAddress):jump_to_main_address(bpAddress){};
};
class InitProgNode: public Node{
public:
	int jump_to_main_address;
	InitProgNode(int lineNum):jump_to_main_address(lineNum){};
};
class FuncsNode : public Node{
public:
	//ProgramNode(){};
};


class FuncDeclNode : public Node {
	public:
	//ProgramNode(){}; //default
};
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
	//FormalDeclNode(std::string txt):Node(txt),Type(Uninit){};
    FormalDeclNode():Type(Uninit){}; // for now TODO

};

class StatementsNode : public Node{
public:
//	StatementsNode(){}; // default
};

class StatementNode : public Node{
public:
	//StatementNode(){}; // default
};

class SwitchHeadNode : public Node{
public:
	//SwitchHead_Node(){}; // default
};


class PossibleElseNode : public Node{
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

class CallHeaderNode : public Node{
public:
  CallHeaderNode(){};
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
		Id(const char* txt):Node(txt),value(txt){};
};
class Num : public Node{
	public:
		std::string value;
		Num(const char* txt):Node(txt),value(txt){}; // TODO - there a double fields
};
class String_Node : public Node{
	public:
		std::string value;
		String_Node(const char* txt):Node(txt),value(txt){};
};


#endif //COMPILATION_SOURCE_H
