
#include <string>
#include <vector>
#include <iostream>
#define YYSTYPE Node*

using std::vector;
using std::string;

struct Table_entry{
    std::string id;
    int numline;

};

class Node{
	public:
	Node* father;
    vector<Node*> sons;
	int token_enum;
	
	Node(){};
	
    int eval(void);
	void addSon(Node* son)   	{sons.push_back(son);}
};

/*
class Program: public Node{
};



class Funcs: public Node{
};


class FuncDecl: public Node{
};


class RetType: public Node{

};


class Statements: public Node{
};


class Statement: public Node{
};



class ID: public Node{
};


class Formals: public Node{
};



class Type: public Node{
    int type;
};

*/


class Num: public Node{
	public:
	int value;
	Num(int val):value(val){};
	Num(string val):value(stoi(val)){};
	int eval(void) { return value; }
};

class Int: public Node{
	public:
	Int(int enumVal){token_enum=enumVal;};
};

class Double: public Node{
	public:
	Double(int enumVal){token_enum=enumVal;};
};
class Assign: public Node{};
class Plus: public Node{};
class Minus: public Node{};

class Type: public Node{
	public:
    int type;
	Type(Double* son_double):type(son_double->token_enum){};
	Type(Int* son_int):type(son_int->token_enum){};
};

class ID: public Node{
	public:
    string name;
	ID(string myName):name(myName){};
};

class Exp: public Node{
	public:
	int value;
	Exp(Num* sonNum):value(sonNum->value){};
	Exp(Exp* sonLeft,Plus* pls, Exp* sonRight):value(sonLeft->value + sonRight->value){
		addSon(sonLeft);
		addSon(pls);
		addSon(sonRight);
		};
	Exp(Exp* sonLeft,Minus* mns, Exp* sonRight):value(sonLeft->value - sonRight->value){
		addSon(sonLeft);
		addSon(mns);
		addSon(sonRight);
		};
};

class Line: public Node{
	public:
	Line(Node* myExp){
		std::cout << ((Exp*)myExp)->value << std::endl;
		addSon(myExp);
	};
};

class Prog: public Node{
	public:	
	Prog(){};
	Prog(Node* otherProg, Node* myLine){
		addSon(otherProg);
		addSon(myLine);
	}
};
