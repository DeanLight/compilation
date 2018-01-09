//
// Created by pnueli on 1/9/2018.
//
#include "RegMngr.h"
#include <iostream>
#include <cstdlib>
#define PARSEDEBUG

std::string intToStr(int i)
{
    char * str;
    atoi(i,str,10);
    return std::string(str);
}

RegMngr::RegMngr():all_regs(MAX_TMP_REG)
{
    next_free_reg = 0;
    for (int i=0; i<=8; i++)
        all_regs[i] = "$t" + intToStr(i);
    for (int i=0; i<=7; i++)
        all_regs[9+i] = "$s" + intToStr(i);
    all_regs[16] = "$t8";
    all_regs[17] = "$t9";
}

std::string RegMngr::tmpRegI(int i) const {
    #ifdef PARSEDEBUG
    if (i >= next_free_reg) // out of bounds
        std::cerr << "ERROR: Reg not given yet. req:" << i << " while max used is " << next_free_reg << std::endl;
    if (i >= MAX_TMP_REG)
        std::cerr << "ERROR: Reg out of bounds. req:" << i << " while max bound is " << MAX_TMP_REG << std::endl;
    #endif
    return all_regs[i];
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

std::string RegMngr::get_next_free_reg() {
#ifdef PARSEDEBUG
    if (next_free_reg >= MAX_TMP_REG) // out of bounds
        std::cerr << "ERROR: Asked for more regs when there are none left" << std::endl;
#endif
    char * regName = all_regs[next_free_reg];
    next_free_reg++;
    return regName;
}

int RegMngr::regs_currently_used() const {
    return next_free_reg;
}

std::string RegMngr::save_all_regs_to_stack() const {
    std::string cmd;
    for (int i=0; i<next_free_reg; i++)
    { // TODO
        std::string line = std::string("TODO_CHANGE:sw ") + all_regs[i] +
                ",-" + atoi(i+1) + "(" + getSP() + ")\n";
        cmd = cmd + line;
    }
    cmd += "TODO: moving the SP DOWN \n"; // TODO
    return cmd;
}

std::string RegMngr::restore_all_regs_from_stack() const {
    std::string cmd;
    for (int i=next_free_reg-1; i>=0; i--)
    { // TODO
        std::string line = std::string("TODO_CHANGE:lw ") + all_regs[i] +
                      "," + atoi(i+1) + "(" + getSP() + ")\n";
        cmd = cmd + line;
    }
    cmd += "TODO: moving the SP back UP\n"; // TODO
    return cmd;
}

