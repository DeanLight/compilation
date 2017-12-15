#include "symbol_table.hpp"
#include <exception>
#include <iostream> // TODO REMOVE
using std::cout;
using std::endl;

SymbolTable::SymbolTable():all_scopes() {
    // start_offset, ret_type, switch_type, is_breakable
    scope_data globalScope(0,Void,Void,false);
    all_scopes.push_back(globalScope);
    // adding print functions:
    vector<v_type> single_print_param(1);
    single_print_param[0] = String;
    add_func_into_global_scope("print",Void,single_print_param);
    single_print_param[0] = Int;
    add_func_into_global_scope("printi",Void,single_print_param);
    cout << "print param:" << get_func_data("print").params[0] << "(" << get_func_data("print").params.size() << ")" << endl; // TODO REMOVE
    cout << "printi param:" << get_func_data("printi").params[0] << "(" << get_func_data("printi").params.size() << ")" << endl; // TODO REMOVE
}
bool SymbolTable::exit_scope() {
    all_scopes.pop_back();
    return true;
}
bool SymbolTable::is_var(const std::string& var_name) const {
    bool notFound = true;
    for (int scopeLvl = all_scopes.size()-1; scopeLvl>=0 && notFound; scopeLvl--)
    {
//        var_map *ith_varT = &((all_scopes[scopeLvl]).varSymbT);
//        notFound = (ith_varT)->find(var_name) == (ith_varT)->end();
        notFound = all_scopes[scopeLvl].varSymbT.find(var_name) == all_scopes[scopeLvl].varSymbT.end();
    }
    return !notFound;
}
bool SymbolTable::is_var_in_curr_scope(const std::string &var_name) const {
    const scope_data &curr_scope = all_scopes[all_scopes.size()-1];
    return curr_scope.varSymbT.find(var_name) != curr_scope.varSymbT.end();
}
bool SymbolTable::is_func(const std::string& funcName) const{
//    notFound = true;
//    for (int scopeLvl = all_scopes.size()-1; scopeLvl>=0 && notFound; scopeLvl--)
//    {
//        auto *ith_funcT = &((all_scopes[i]).funcSymbT);
//        notFound = (ith_funcT)->find(var_name) == (ith_funcT)->end();
//    }
    return all_scopes[0].funcSymbT.find(funcName) != all_scopes[0].funcSymbT.end();
}
bool SymbolTable::is_defined(const std::string &id) const{
    return is_var(id) || is_func(id);
}
const var_data& SymbolTable::get_var_data(const std::string &var_id) const{
    for (int scopeLvl = all_scopes.size()-1; scopeLvl>=0; scopeLvl--)
    {
        const var_map *ith_funcT = &((all_scopes[scopeLvl]).varSymbT);
        std::map<std::string, var_data>::const_iterator findIter = (ith_funcT)->find(var_id);
        if (findIter ==(ith_funcT)->end())
        {
            continue;
        }
        return (*ith_funcT).find(var_id)->second; // returning the value and not the key
    }
    throw std::runtime_error("Tried to get var_data " + var_id + " which isn't defined");
}
const var_data& SymbolTable::get_func_data(const std::string &func_id) const
{
    return (all_scopes[0].funcSymbT.find(func_id))->second; //returning the value, not the key
//    for (int scopeLvl = all_scopes.size()-1; scopeLvl>=0 && notFound; scopeLvl--)
//    {
//        auto *ith_varT = &((all_scopes[i]).varSymbT);
//        auto findIter = (ith_varT)->find(var_id);
//        if (findIter ==(ith_varT)->end())
//        {
//            continue;
//        }
//        return *(findIter);
//    }
//    throw std::runtime_error("Tried to get func_data " + var_id + " which isn't defined");
}
v_type SymbolTable::get_type(const std::string &id) const{
    if (is_var(id))
        return get_var_data(id).type;
    if (is_func(id))
        return get_func_data(id).type;
    return Uninit; // TODO is that ok? should we throw an error?
}
bool SymbolTable::add_var(const std::string &var_id, v_type tt) {
    cout << "<<adding var: [" << var_id <<"] of type [" << tt << "]>>"; // TODO REMOVE
    scope_data &currScope = all_scopes[all_scopes.size()-1];
    int os = currScope.curr_offset;
    currScope.curr_offset += var_size(tt);
    var_data newV (os, false, tt, var_id);
    //currScope.varSymbT[var_id] = newV;
    currScope.varSymbT[var_id] = newV;
    currScope.variables.push_back(std::make_pair(var_id,currScope.varSymbT[var_id].offset));
    return true;
}

bool SymbolTable::add_param(const std::string &var_id, v_type tt) {
    // this is written to the curr scope which should be the new func's scope
    cout << "<<adding param: [" << var_id <<"] of type [" << tt << "]>>"; // TODO REMOVE
    scope_data &currScope = all_scopes[all_scopes.size()-1];
    int os;
    if (!currScope.params.empty())
        os = currScope.params[currScope.params.size() - 1].second;
    else
        os = 0;
    os -= var_size(tt);
    var_data newP (os, false, tt, var_id);
    currScope.varSymbT[var_id] = newP;
    currScope.params.push_back(std::make_pair(var_id,currScope.varSymbT[var_id].offset));
    return true;
}


bool SymbolTable::enter_new_scope(v_type ret_tt, v_type switch_type, bool is_break) {
    scope_data &last_scope = all_scopes[all_scopes.size()-1];
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
    return enter_new_scope(Uninit,Void,true);
}

bool SymbolTable::enter_new_other_scope() {
    return enter_new_scope(Uninit,Void,false);
}

v_type SymbolTable::change_retType_for_current_scope(v_type tt) {
    scope_data &curr_scope = all_scopes[all_scopes.size()-1];
    curr_scope.ret_type = tt;
    return tt;
}

bool SymbolTable::add_func_into_global_scope(const std::string &func_name, v_type ret_t, const vector<v_type> &paramsTypes) {
    //var_data(int os, bool isF, v_type tt, std::string &str_id)

    var_data func_data (0, true, ret_t, func_name);
    func_data.params = vector<v_type>(paramsTypes); //
    all_scopes[0].funcSymbT[func_name] = func_data;
    std::cout << "[[[ added func: " << func_name << " with " << paramsTypes.size() << " params]]]" << endl; // TODO REMOVE
    return true;
}

bool SymbolTable::is_curr_scope_breakable() const{
    return all_scopes[all_scopes.size()-1].is_scope_breakable();
}

v_type SymbolTable::get_curr_scope_ret_type() const{
    return all_scopes[all_scopes.size()-1].get_ret_value();
}

int SymbolTable::increase_curr_scope_defaults() {
    return all_scopes[all_scopes.size()-1].inc_defaults();
}

int SymbolTable::get_curr_scope_defaults() const {
    return all_scopes[all_scopes.size()-1].defaults_count;
}

v_type SymbolTable::get_curr_scope_switch_type() const {
    return all_scopes[all_scopes.size()-1].case_type;
}


