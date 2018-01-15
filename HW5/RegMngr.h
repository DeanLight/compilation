//
// Created by pnueli on 1/9/2018.
//

#ifndef COMPILATION_TMP_REGMNGR_H
#define COMPILATION_TMP_REGMNGR_H

#include <vector>
#include <string>

#define MAX_TMP_REG 19

class RegMngr
{
    public:
    static RegMngr& getRegMngr(){
        static RegMngr _i_regMngr;
        return _i_regMngr;
    }

    std::string tmpRegI(int i) const;
    void free_last_reg();
    void free_last_k_regs(int k);
    // TODO: get last two registers used (in pair)
    std::pair<std::string, std::string> last_two_regs() const;
    std::string last_reg() const;
    std::string get_next_free_reg(); //returns reg name
    int regs_currently_used() const;
//        string enter_new_scope_and_save_all_regs_to_stack(); // returns cmd of saving
    std::string save_all_regs_to_stack() const; // returns cmd of saving
//        void enter_new_scope(); // create a clean scope regarding regs
//        string exit_last_scope_and_restore_all_regs_from_stack(); // returns cmd of restoring
    std::string restore_all_regs_from_stack() const; // returns cmd of restoring
//        void exit_last_scope(); // deletes last scope regarding regs

    // getting special registers:
    std::string getSP() const { return "$sp";};
    std::string getV0() const { return "$v0";};
    std::string getGP() const { return "$gp";};
    std::string getFP() const { return "$fp";};
    std::string getRA() const { return "$ra";};

    private:
        RegMngr();
        RegMngr(const RegMngr&); // DO NOT IMPLEMENT
        void operator=(const RegMngr&); // DO NOT IMPLEMENT
        /*char ** all_regs = {"$t0","$t1","$t2","$t3","$t4","$t5","$t6","$t7","$t8",
                           "$s0","$s1","$s2","$s3","$s4","$s5","$s6","$s7",
                            "$t8","$t9"};*/
//        std::vector<std::string> all_regs;
//        char* all_regs[MAX_TMP_REG];
        int next_free_reg;
};


#endif //COMPILATION_TMP_REGMNGR_H

