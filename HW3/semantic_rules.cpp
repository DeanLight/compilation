
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

For derivations of exp


*/