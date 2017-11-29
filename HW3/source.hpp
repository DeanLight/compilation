
#include <string>
#include <vector>
#include <iostream>
#define YYSTYPE Node*

using std::vector;
using std::string;


class Node{
	public:
	Node* father;
    vector<Node*> sons;
	
	Node(){};
	
    int eval(void);
	void addSon(Node* son)   	{sons.push_back(son);}
};

class ProgramNode: public Node{};

class FuncsNode : public Node{};

class FuncDecl : public Node{};

class RetTypeNode : public Node{};

class FormalsNode : public Node{};

class FormalsListNode : public Node{};

class FormalDeclNode : public Node{};

class StatementsNode : public Node{};

class StatementNode : public Node{};

class CaseListNode : public Node{};

class CaseStatementNode : public Node{};

class CaseDecNode : public Node{};

class CallNode : public Node{};

class ExpListNode : public Node{};

class TypeNode : public Node{};

class ExpNode : public Node{};

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



