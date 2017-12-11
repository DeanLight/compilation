#include "symbol_table.hpp"
#include <exception>

SymbolTable::SymbolTable():all_scopes() {
    scope_data globalScope(0,0,Void,Void,false);
    all_scopes.push_back(globalScope);
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
    currScope.varSymbT[id] = newV;
    currScope.variables.push_back(currScope.varSymbT[id]);
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
    currScope.varSymbT[id] = newP;
    currScope.variables.push_back(currScope.varSymbT[id]);
    return true;
}


bool SymbolTable::enter_new_scope(v_type ret_tt, v_type switch_type, bool is_break) {
    auto& last_scope = all_scopes[all_scopes.size()-1];
    unsigned last_used_offset = last_scope.curr_offset;
    if (ret_tt == Uninit)
    {
        ret_tt = last_scope.ret_type;
    }
    if (!is_break)
    {
        is_break = last_scope.isBreakable;
    }
    scope_data new_s (last_used_offset, ret_tt, switch_type, is_break);
    all_scopes.push_back(new_s);
    return true;
}

bool SymbolTable::enter_new_func_scope(v_type ret_tt)
{
    return enter_new_scope(ret_tt,Void,false);
}

bool SymbolTable::enter_new_switch_scope(v_type switch_type) {
    return enter_new_scope(Uninit,switch_type,true);
}

bool SymbolTable::enter_new_while_scope() {
    return enter_new_scope(Unint,Void,true);
}

bool SymbolTable::enter_new_other_scope() {
    return enter_new_scope(Uninit,Void,false);
}

v_type SymbolTable::change_retType_for_current_scope(v_type tt) {
    auto& curr_scope = all_scopes[all_scopes.size()-1];
    curr_scope.ret_type = tt;
    return tt;
}

bool SymbolTable::add_func_into_global_scope(std::string &func_name, v_type ret_t, vector<v_type> &paramsTypes) {
    //var_data(int os, bool isF, v_type tt, std::string &str_id)

    var_data func_data (0, true, ret_t, func_name);
    func_data.params = paramsTypes;
    all_scopes[0].funcSymbT[func_name] = func_data;
    return true;
}

