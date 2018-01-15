//
// Created by pnueli on 1/9/2018.
//
#include "RegMngr.h"
#include <iostream>
#include <cstdlib>
#define PARSEDEBUG

//std::string intToStr(int i)
//{
//    char * str;
//    itoa(i,str,10);
//    return std::string(str);
//}

RegMngr::RegMngr()
{
    next_free_reg = 0;
}

std::string RegMngr::tmpRegI(int i) const {
    #ifdef PARSEDEBUG
    if (i >= next_free_reg) // out of bounds
        std::cerr << "ERROR: Reg not given yet. req:" << i << " while max used is " << next_free_reg << std::endl;
    if (i >= MAX_TMP_REG)
        std::cerr << "ERROR: Reg out of bounds. req:" << i << " while max bound is " << MAX_TMP_REG << std::endl;
    #endif
    /*{"$t0","$t1","$t2","$t3","$t4","$t5","$t6","$t7","$t8",
                          "$s0","$s1","$s2","$s3","$s4","$s5","$s6","$s7",
                           "$t8","$t9"};*/
    if (i <= 8)
        return std::string("$t") + char('0'+i);
    i -= 9;
    if (i <= 7)
        return std::string("$s") + char('0'+i);
    i -= 8;
    return std::string("$t") + char('8'+i);
}

void RegMngr::free_last_reg() {
#ifdef PARSEDEBUG
    if (0 == next_free_reg) // out of bounds
        std::cerr << "ERROR: Asked to free reg when currently 0 are used" << std::endl;
#endif
    next_free_reg--;
}

void RegMngr::free_last_k_regs(int k) {
    #ifdef PARSEDEBUG
    if (k > next_free_reg) // out of bounds
        std::cerr << "ERROR: Asked to free " << k << " reg when currently " << next_free_reg << " are used" << std::endl;
    #endif
    next_free_reg -= k;
}

std::pair<std::string, std::string> RegMngr::last_two_regs() const
{
#ifdef PARSEDEBUG
    if (next_free_reg < 2) // out of bounds
        std::cerr << "ERROR: Asked last two regs, when only " << next_free_reg << " are used" << std::endl;
#endif
    std::pair<std::string,std::string> regPair;
    regPair.first = tmpRegI(next_free_reg-2);
    regPair.second = tmpRegI(next_free_reg-1);
    return regPair;
};

std::string RegMngr::last_reg() const {
#ifdef PARSEDEBUG
    if (next_free_reg == 0) // out of bounds
        std::cerr << "ERROR: Asked last regs, when  none are used" << std::endl;
#endif
    return tmpRegI(next_free_reg-1);
}

std::string RegMngr::get_next_free_reg() {
#ifdef PARSEDEBUG
    if (next_free_reg >= MAX_TMP_REG) // out of bounds
        std::cerr << "ERROR: Asked for more regs when there are none left" << std::endl;
#endif
//    char * regName = all_regs[next_free_reg];
    next_free_reg++;
    return tmpRegI(next_free_reg-1);
}

int RegMngr::regs_currently_used() const {
    return next_free_reg;
}

std::string RegMngr::save_all_regs_to_stack() const {
    std::string cmd;
    for (int i=0; i<next_free_reg; i++)
    { // TODO
        std::string line = std::string("TODO_CHANGE:sw ") + tmpRegI(i) + "\n";
//                ",-" + atoi(i+1) + "(" + getSP() + ")\n";
        cmd = cmd + line;
    }
    cmd += "TODO: moving the SP DOWN \n"; // TODO
    return cmd;
}

std::string RegMngr::restore_all_regs_from_stack() const {
    std::string cmd;
    for (int i=next_free_reg-1; i>=0; i--)
    { // TODO
        std::string line = std::string("TODO_CHANGE:lw ") + tmpRegI(i) + "\n";
//                      "," + atoi(i+1) + "(" + getSP() + ")\n";
        cmd = cmd + line;
    }
    cmd += "TODO: moving the SP back UP\n"; // TODO
    return cmd;
}

