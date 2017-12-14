
//
// Created by pnueli on 12/6/2017.
//

#ifndef COMPILATION_TMP_SYMBOLTABLE_H
#define COMPILATION_TMP_SYMBOLTABLE_H


#include "source.hpp"
#include <vector>
#include <map>
#include <algorithm>
using std::pair;

typedef enum type_enum v_type;
typedef std::vector<v_type> types_vec;
typedef class var_details
{
    public:
        int offset;
        bool isFunc;
        v_type type; // serves as ret type for functions
        std::string id;
        types_vec params;
        var_details(int os, bool isF, v_type tt,const  std::string &str_id):
                offset(os), isFunc(isF),type(tt), id(str_id){};
        //CCtor
        var_details(const var_details &otherVarDet):
                offset(otherVarDet.offset),isFunc(otherVarDet.isFunc),
                type(otherVarDet.type), id(otherVarDet.id){};
        var_details():offset(-1354),isFunc(false),id("EmptyID"){};

        var_details& operator=(var_details &other)
        {
            //against self assignment
            if(&other == this)
                return *this;
            offset = other.offset;
            isFunc = other.isFunc;
            type = other.type;
            id = other.id;
            params = other.params;
        }

} var_data;
typedef std::map<std::string, var_data> var_map;
// start of scope's offset, and the hash_table for the scope
typedef struct scope_data{
    unsigned start_offset;// TODO is needed?
    unsigned curr_offset;
    var_map varSymbT;
    var_map funcSymbT;

    std::vector<pair<std::string,int> > variables;
    std::vector<pair<std::string,int> > params;
    v_type ret_type;
    v_type case_type;
    int defaults_count;
    bool isBreakable;
    
    //bool is_scope_breakable();
    //int inc_defaults();// increase the count by one, returns new value
    //v_type get_ret_value() {return ret_type;};

    scope_data(unsigned start_os, v_type ret_tt, v_type case_tt, bool allowBreak):
            start_offset(start_os), curr_offset(start_os),varSymbT(),funcSymbT(),
            variables(),params(),
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

    bool is_scope_breakable() const {return isBreakable;};
    int inc_defaults()
    {
        defaults_count++;
        return defaults_count;
    };// increase the count by one, returns new value
    v_type get_ret_value() const {return ret_type;};
} scope;

class SymbolTable
{
	public:

        SymbolTable();

        bool is_defined(const std::string &id) const; // searches for
        bool is_func(const std::string &id) const;
        bool is_var(const std::string &id) const;
        bool is_var_in_curr_scope(const std::string& var_id) const; // for current scope only (shadowing)

        const var_data& get_var_data(const std::string &var_id) const; // throw error if not found
        const var_data& get_func_data(const std::string &var_id) const; //
        //std::unordered_set<var_data> get_func_data(std::string func_id); // TODO REMOVE?
        v_type get_type(const std::string &id) const;

        v_type change_retType_for_current_scope(v_type tt);

        bool add_var(const std::string &var_id, v_type tt);
        bool add_param(const std::string &var_id, v_type tt); // gets a negative offset

        bool add_func_into_global_scope(const std::string &func_name, v_type ret_t, vector<v_type> &paramsTypes);

        bool enter_new_func_scope(v_type ret_tt);
        bool enter_new_switch_scope(v_type switch_type);
        bool enter_new_while_scope();
        bool enter_new_other_scope(); // inherits, for ifs and blocks

        bool is_curr_scope_breakable() const;
        v_type get_curr_scope_ret_type() const;
        int increase_curr_scope_defaults(); // increases by 1 and returns updated value
        v_type get_curr_scope_switch_type() const;
        int get_curr_scope_defaults() const;



        bool exit_scope();

	private:
        unsigned var_size(v_type tt) { return 1;}; // return size of type
        std::vector<scope_data> all_scopes;
        bool enter_new_scope(v_type ret_tt, v_type switch_type, bool is_break);
};

#endif //COMPILATION_TMP_SYMBOLTABLE_H

