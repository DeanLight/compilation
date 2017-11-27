
#include <string>
#include <vector>

using std::vector

struct Table_entry{
    std::string id;
    int numline;

}
int last_index=-1;
Table_entry[100] symbol_table;

class Node{
    virtual std::string prettyPrint();

    void * eval(void);
	Node* father;
    vector<Node*> sons;
};

/*
class Program: Public Node{
};



class Funcs: Public Node{
};


class FuncDecl: Public Node{
};


class RetType: Public Node{

};


class Statements: Public Node{
};


class Statement: Public Node{
};



class ID: Public Node{
};


class Formals: Public Node{
};



class Type: Public Node{
    int type;
};

*/


class Type: Public Node{
    int type;
};

class ID: Public Node{
    std::string name;
};


class Add: Public Node{
    int type;
    int value;
};




