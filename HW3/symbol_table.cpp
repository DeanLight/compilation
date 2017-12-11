#include "symbol_table.hpp"
#include <exception>

SymbolTable::SymbolTable():all_scopes() {
    scope_data globalScope(0,0,Void,Void,false);
    all_scopes.insert(globalScope);
}
bool SymbolTable::exit_scope() {
    all_scopes.pop_back();
    return true;
}
bool SymbolTable::is_var(std::string& var_name) {
    notFound = true;
    for (int scopeLvl = all_scopes.size()-1; scopeLvl>=0 && notFound; scopeLvl--)
    {
        auto *ith_varT = &((all_scopes[i]).varSymbT);
        notFound = (ith_varT)->find(var_name) == (ith_varT)->end();
    }
    return !notFound;
}
bool SymbolTable::is_var_in_curr_scope(std::string var_name) {
    auto & curr_scope = all_scopes[all_scopes.size()-1];
    return curr_scope.varSymbT.find(var_name) != curr_scope.varSymbT.end();
}
bool SymbolTable::is_func(std::string) {
    notFound = true;
    for (int scopeLvl = all_scopes.size()-1; scopeLvl>=0 && notFound; scopeLvl--)
    {
        auto *ith_funcT = &((all_scopes[i]).funcSymbT);
        notFound = (ith_funcT)->find(var_name) == (ith_funcT)->end();
    }
    return !notFound;
}
bool SymbolTable::is_defined(std::string id) {
    return is_var(id) || is_func(id);
}
const var_data& SymbolTable::get_var_data(std::string var_id) {
    for (int scopeLvl = all_scopes.size()-1; scopeLvl>=0 && notFound; scopeLvl--)
    {
        auto *ith_funcT = &((all_scopes[i]).funcSymbT);
        auto findIter = (ith_funcT)->find(var_name);
        if (findIter ==(ith_funcT)->end())
        {
            continue;
        }
        return *(findIter);
    }
    throw std::runtime_error("Tried to get func_data " + var_id + " which isn't defined");
}
const var_data& SymbolTable::get_func_data(std::string var_id)
{
    for (int scopeLvl = all_scopes.size()-1; scopeLvl>=0 && notFound; scopeLvl--)
    {
        auto *ith_varT = &((all_scopes[i]).varSymbT);
        auto findIter = (ith_varT)->find(var_name);
        if (findIter ==(ith_varT)->end())
        {
            continue;
        }
        return *(findIter);
    }
    throw std::runtime_error("Tried to get var_data " + var_id + " which isn't defined");
}
v_type SymbolTable::get_type(std::string id) {
    if (is_var(id))
        return get_var_data(id).type;
    if (is_func(id))
        return get_func_data(id).type;
    return Unint; // TODO is that ok? should we throw an error?
}
bool SymbolTable::add_var(std::string var_id, v_type tt) {
    auto &currScope = all_scopes[all_scopes.size()-1];
    int os = currScope.curr_offset;
    currScope.curr_offset += var_size(tt);
    var_data newV (os, false, tt, id);
    currScope.varSymbT.insert(newV);
    currScope.variables.insert(currScope.varSymbT[id]);
    return true;
}

bool SymbolTable::add_param(std::string &var_id, v_type tt) {
    // this is written to the curr scope which should be the new func's scope
    auto &currScope = all_scopes[all_scopes.size()-1];
    int os;
    if (currScope.params.empty())
        os = currScope.params[currScope.params.size()-1].offset;
    else
        os = 0;
    os -= var_size(tt);
    var_data newP (os, false, tt, id);
    currScope.varSymbT.insert(newP);
    currScope.variables.insert(currScope.varSymbT[id]);
    return true;
}

bool SymbolTable::enter_new_func_scope(v_type ret_tt)
{
    return true;
}

