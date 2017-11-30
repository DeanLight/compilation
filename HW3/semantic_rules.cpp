
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

Statements need a type whos values is their return type function declares need to check that the type of the statement is the same type as the RetType

Statement need a flag that checks if they contain a break, throw an Error if htye are scope enders that are not a while or a case of a switch

IDs need to be searched  in a symbol table, but they do not need to have a pointer since its a global var
IDs need a flag that say wether they are a variable or a function

Program and Funcs need to have a counter for number of mains. 

Funcl decl needs to have an is main flag
FuncDecl need to check if its a main with void if yes tell its father, else its an error

A CaseStatement needs to know if its a default
A caseList must check it only has 1 default


All end of scope must call the prinitng fucntions explained in the IO section of the Assignment

*/
