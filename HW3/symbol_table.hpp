
//
// Created by pnueli on 12/6/2017.
//

#ifndef COMPILATION_TMP_SYMBOLTABLE_H
#define COMPILATION_TMP_SYMBOLTABLE_H

//#include <stack>
#include <unordered multimap>
#include <vector>
#include <unordered_set>

typedef enum type_enum v_type;

typedef struct var_details{
    unsigned offset;
    bool isFunc;
    v_type type; // serves as ret type for functions
    std::string id;
    std::vector<v_type> params;
    //value? prob not needed
} var_data;

// start of scope's offset, and the hash_table for the scope
typedef struct scope_data{
    unsigned start_offset;
    unsigned curr_offset;
    std::unordered_multimap<std::string, var_data>;

    std::vector<const var_data&> variables;
    std::vector<const var_data&> params;

    v_type rewt_type;
    int defaults_count;
    bool isBreakable;
    bool is_scope_breakable();
    int inc_defaults();// increase the count by one, returns new value
    v_type get_ret_value()

} scope;

class SymbolTable
{
	public:
        bool is_defined(std::string id); // searches for
        bool is_func(std::string);
        bool is_var(std::string);
        const var_data& get_var_data(std::string var_id); // throw error if not found
        std::unordered_set<var_data> get_func_data(std::string func_id);
        v_type get_type(std::string id);
        bool add_var(std::string var_id, v_type tt);
        bool add_func(std::string func_name,std::vector<v_type> params, v_type ret_t);

        bool enter_new_func_scope(v_type tt);
        bool enter_new_switch_scope();
        bool enter_new_while_scope();
        bool enter_new_other_scope();




        bool exit_scope();

        bool enter_func_scope(std::vector<v_type> params); // enters the parms with negative offsets
	private:
        unsigned var_size(v_type tt) { return 1;}; // return size of type
        std::vector<scope> all_scopes;
};

// TODO add break flag and default countta;be


#endif //COMPILATION_TMP_SYMBOLTABLE_H

