
//
// Created by pnueli on 12/6/2017.
//

#ifndef COMPILATION_TMP_SYMBOLTABLE_H
#define COMPILATION_TMP_SYMBOLTABLE_H

//#include <stack>
#include "Source.hpp"
#include <unordered multimap>
#include <vector>
#include <unordered_set>
#include <unordered_map>

typedef enum type_enum v_type;
typedef std::vector<v_type> types_vec;
typedef
typedef struct var_details{
    int offset;
    bool isFunc;
    v_type type; // serves as ret type for functions
    std::string id;
    types_vec params;
    var_data(int os, bool isF, v_type tt, std::string &str_id):
            offset(os), isFunc(isF),type(tt), id(str_id){};
} var_data;

// start of scope's offset, and the hash_table for the scope
typedef struct scope_data{
    unsigned start_offset;// TODO is needed?
    unsigned curr_offset;
    std::unordered_map<std::string, var_data> varSymbT;
    std::unordered_map<std::string, var_data> funcSymbT;

    std::vector<const var_data&> variables;
    std::vector<const var_data&> params;
    v_type ret_type;
    v_type case_type;
    int defaults_count;
    bool isBreakable;
    
    bool is_scope_breakable();
    int inc_defaults();// increase the count by one, returns new value
    v_type get_ret_value()

    scope_data(unsigned start_os, v_type ret_tt, v_type case_tt, bool allowBreak):
            start_offset(start_os), curr_offset(start_os),funcs(),variables(),params(),
            ret_type(ret_tt), case_type(case_tt), defaults_count(0),
            isBreakable(allowBreak){};


//    bool initiate_scope(unsigned start_os, curr_os, v_type ret_tt, bool allowBreak)
//    {
//        start_offset = start_os;
//        curr_offset = curr_os;
//        ret_type = ret_tt;
//        defaults_count = 0;
//        isBreakable = allowBreak;
//    };

    bool is_scope_breakable(){return isBreakable;};
    int inc_defaults()
    {
        defaults_count++;
        return defaults_count;
    };// increase the count by one, returns new value
    v_type get_ret_value() {return ret_type;};
} scope;

class SymbolTable
{
	public:

        SymbolTable();
        ~SymbolTable() = default; // TODO

        bool is_defined(std::string &id); // searches for
        bool is_func(std::string &id);
        bool is_var(std::string &id);
        bool is_var_in_curr_scope(std::string& var_id); // for current scope only (shadowing)

        const var_data& get_var_data(std::string &var_id); // throw error if not found
        const var_data& get_func_data(std::string &var_id); //
        //std::unordered_set<var_data> get_func_data(std::string func_id); // TODO REMOVE?
        v_type get_type(std::string id);

        bool add_var(std::string &var_id, v_type tt);
        bool add_param(std::string &var_id, v_type tt); // gets a negative offset
//        bool add_func_into_global_scope(std::string &func_name, v_type ret_t,vector<v_type> paramsTypes);

        bool enter_new_func_scope(v_type ret_tt);
        bool enter_new_switch_scope(v_type switch_type);
        bool enter_new_while_scope();
        bool enter_new_other_scope(); // inherits, for ifs and blocks

        bool exit_scope();

//        bool enter_func_scope(std::vector<v_type> params); // enters the parms with negative offsets
	private:
        unsigned var_size(v_type tt) { return 1;}; // return size of type
        std::vector<scope_data> all_scopes;
};

// TODO add break flag and default countta;be


#endif //COMPILATION_TMP_SYMBOLTABLE_H

