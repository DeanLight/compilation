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
  string str_content;
  int statement_last_jump;
	Node(){};
    Node(std::string txt):str_content(txt),statement_last_jump(0){;}; //
    virtual ~Node()
    {
        for (int i=0; i<sons.size();i++)
        {
            delete(sons[i]);
        }
    }

    int eval(void);
	void addSon(Node* son)   	{sons.push_back(son);}
    // stupid, but will be shorter in parser.ypp:
    void addSon(Node *son1, Node *son2)   	{sons.push_back(son1);addSon(son2);}
    void addSon(Node *son1, Node *son2, Node *son3){sons.push_back(son1);addSon(son2,son3);}
    void addSon(Node *son1, Node *son2, Node *son3, Node *son4){sons.push_back(son1);addSon(son2,son3,son4);}
    void addSon(Node *son1, Node *son2, Node *son3, Node *son4, Node *son5){sons.push_back(son1);addSon(son2,son3,son4,son5);}
    void addSon(Node *son1, Node *son2, Node *son3, Node *son4, Node *son5, Node *son6){sons.push_back(son1); addSon(son2,son3,son4,son5,son6);}
    void addSon(Node *son1, Node *son2, Node *son3, Node *son4, Node *son5, Node *son6, Node *son7){sons.push_back(son1),addSon(son2,son3,son4,son5,son6,son7);}
    void addSon(Node *son1, Node *son2, Node *son3, Node *son4, Node *son5, Node *son6, Node *son7,Node *son8){sons.push_back(son1),addSon(son2,son3,son4,son5,son6,son7,son8);}
};

class MarkNode: public Node{
public:
  string labelstr;
  MarkNode():labelstr(""){};
};

class CaseInitNode: public Node{
public:
  string labelstr;
  CaseInitNode():labelstr(""){};
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
  vector<int> nextlist;
  vector<int> breaklist;
  StatementsNode(){
    nextlist=vector<int>();
    breaklist=vector<int>();
  }

};

class StatementNode : public Node{
public:
	//StatementNode(){}; // default
  vector<int> nextlist;
  vector<int> breaklist;
  StatementNode(){
    nextlist=vector<int>();
    breaklist=vector<int>();
  }
};

class SwitchHeadNode : public Node{
public:
  int init_jump_addr;
  SwitchHeadNode():init_jump_addr(0){};
	//SwitchHead_Node(){}; // default
};


class PossibleElseNode : public Node{
public:
  vector<int> nextlist;
  vector<int> breaklist;
  PossibleElseNode(){
    nextlist=vector<int>();
    breaklist=vector<int>();
  }
	//SwitchHead_Node(){}; // default
};


class CaseDecNode : public Node{
public:
  // default CaseStatementNode(){}; // default
};

class CaseStatementNode : public Node{
public:
	// CaseStatementNode(){};// default
};

class CaseListNode : public Node{
public:
  vector<CaseDecNode*> caseDecvec;
  vector<StatementsNode*> statevec;
  vector<MarkNode*> markvec;
  vector<CaseInitNode*> cInitvec;
  CaseListNode(){
  caseDecvec=vector<CaseDecNode*>();
  statevec=vector<StatementsNode*>();
  markvec=vector<MarkNode*>();
  cInitvec= vector<CaseInitNode*>();
  }
  //CaseListNode(){};// default
};


class CallNode : public Node{
public:
	enum type_enum Type;
	CallNode():Type(Uninit){};
};

class CallHeaderNode : public Node{
public:
  int regnum;
  CallHeaderNode():regnum(0){};
};

class ExpNode : public Node{
public:
  vector<int> truelist;
  vector<int> falselist;
  ExpNode():Type(Uninit){
    truelist=vector<int>();
    falselist=vector<int>();
  };
  enum type_enum Type;
};

class ExpListNode : public Node{
public:
	std::vector<enum type_enum> typesvec;
  std::vector<ExpNode*> expvec;
  ExpListNode(){
    typesvec=vector<type_enum>();
    expvec=vector<ExpNode*>();
  }
  int get_numOf_params(){
    if (sons.size() < 4) // no params
      return 0;
    return ((ExpListNode*)sons[2])->typesvec.size();
  }
};

class TypeNode : public Node{
public:
	enum type_enum Type;
	TypeNode():Type(Uninit){};
};


class Void_Node : public Node{};
class Int_Node : public Node{
	public:
		std::string value;
		Int_Node(const char* txt):Node(txt),value(txt){};
};
class Byte_Node : public Node{
	public:
		std::string value;
		Byte_Node(const char* txt):Node(txt),value(txt){};
};
class B_Node: public Node{
	public:
		std::string value;
		B_Node(const char* txt):Node(txt),value(txt){};
};
class Bool_Node : public Node{
	public:
		std::string value;
		Bool_Node(const char* txt):Node(txt),value(txt){};
};
class And : public Node{};
class Or: public Node{};
class Not : public Node{};
class True : public Node{
public:
  True(const char* txt):Node(txt){};
};
class False: public Node{
  public:
  False(const char* txt):Node(txt){};
};
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
class Relop : public Node{
public:
  Relop(const char* txt):Node(txt){};
};
class Binop : public Node{
public:
	Binop(const char* txt):Node(txt){};
};
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
