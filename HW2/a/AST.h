#ifndef __AST_H_INCLUDED__
#define __AST_H_INCLUDED__
#include <iostream>
#include <vector>
#include "grammar.h" // for enum vals
struct ASTNode {
	virtual void prettyPrint() const = 0;
	std::vector<ASTNode*> children;
	virtual enum nonterminal toEnum() const = 0;
	//Notice that memory cleanup is provided for you for the entire tree
	//You need only to delete the root
	~ASTNode() {
		for (std::vector<ASTNode*>::const_iterator it = children.begin(); it != children.end(); ++it) {
			delete *it;
		}
	}
};

void ast_print(const ASTNode& node);

struct ExpNode : public ASTNode {
	void prettyPrint() const;
	enum nonterminal toEnum() const {return Exp;}
};

struct KVNode : public ASTNode {
	KVNode(ExpNode *child); //rule 7
	void prettyPrint() const;
	enum nonterminal toEnum() const {return KV;}
};

struct KVListNode : public ASTNode {
	KVListNode(KVNode *kv, KVListNode *list); //rule 5
	KVListNode(); //rule 6 // TODO which we modified but still is empty according to AST
	void prettyPrint() const;
	enum nonterminal toEnum() const {return KVList;}
};


struct DictNode : public ASTNode {
	DictNode(KVListNode *kvList);//rule 4
	void prettyPrint() const;
	enum nonterminal toEnum() const {return Dict;}
};

struct BodyNode : public ASTNode {
	BodyNode(DictNode *dict);
	void prettyPrint() const;
	enum nonterminal toEnum() const {return Body;}
};

struct ObjNode : public ASTNode {
	ObjNode(BodyNode *body);
	void prettyPrint() const;
	enum nonterminal toEnum() const {return Obj;}
};


#endif // !__AST_H_INCLUDED__

