#include <iostream>
#include <vector>
#include "RegMngr.hpp"

int main() {

    RegMngr &RM = RegMngr::getRegMngr();
    for (int i=0; i<=20; i++)
    {
        std::cout << "Reg[" << i << "]: " << RM.tmpRegI(i) << std::endl;
    }
    for (int i=0; i<=5; i++)
    {
        std::cout << "new free (" << i << "):" << RM.get_next_free_reg() << std::endl;
    }
    std::cout << "SAVING all regs" << std::endl;
    std::cout << RM.save_all_regs_to_stack() << std::endl;
    std::cout << "RESTORING all regs" << std::endl;
    std::cout << RM.restore_all_regs_from_stack(5) << std::endl;

    return 0;
}
