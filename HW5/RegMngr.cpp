//
// Created by pnueli on 1/9/2018.
//
#include "RegMngr.hpp"
#include <iostream>
#include <cstdlib>
#include <sstream>
//#define PARSEDEBUG

//std::string intToStr(int i)
//{
//    char * str;
//    itoa(i,str,10);
//    return std::string(str);
//}

string intToString ( int Number ) {
     ostringstream ss;
     ss << Number;
     return ss.str();
  }


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


vector<string> RegMngr::restore_all_regs_from_stack(int num_of_reg_to_restore) const {
  vector<string> cmds;
  // the +1 is to save the $ra
  int sp_change = 4*(num_of_reg_to_restore);
  for (int i=0,offset=sp_change; i<num_of_reg_to_restore; i++,offset-=4)
  {
      std::string line = std::string("\tlw ") + tmpRegI(i) +","+intToString(offset)+"($sp)" ;
      cmds.push_back(line);
  }
  return cmds;

}

