#include "grammar.h"
#include <stdio.h>


bool is_RHS_nullable(std::vector<bool> nullable , std::vector<int> RHS){

    // res=TRUE
    bool res=true;
    int rh_val=0;
    // for all tokens in RHS
    for(std::vector<int>::iterator it=RHS.begin() ; it != RHS.end() ; ++it){
        
        rh_val=*it;
        // if a token on rhs is a terminal, rule cant be nullable
        if(rh_val>NONTERMINAL_ENUM_SIZE){
            return false;
        }
        // if token is nullable, res=false
        //printf("nullabe[rh_val] is eq to %s\n",nullable[rh_val]?"true":"false");
        if(nullable[rh_val]==false){
            res=false;
        }
    }
    // returns here if rhs was all variable
    return res;


}

std::vector<bool> calculate_nullables(std::vector<grammar_rule> grammar){


    std::vector<bool> nullable=std::vector<bool>(NONTERMINAL_ENUM_SIZE);
    // for all grammar rules
    for(std::vector<grammar_rule>::iterator it=grammar.begin() ; it != grammar.end() ; ++it){
        // if rhs is empty then lhs is nullable
        if(it->rhs.size()==0){
            nullable[it->lhs]=true;
        }
    }

    bool change=true;
    // until an iteration doesnt change nullable
    while(change){
        //print_nullable(nullable);
        change=false;
        //for i in grammar
        for(std::vector<grammar_rule>::iterator it=grammar.begin() ; it != grammar.end() ; ++it){
            //if i is already nullable
            if(nullable[it->lhs]){
                continue;
            }
            // if RHS now became nullable
            // update that we changed somthing
            else if( is_RHS_nullable(nullable,it->rhs)==true ){
                nullable[it->lhs]=true;
                change=true;
            }
        
        }
    }

    return nullable;

}


int get_last_consecutive_nullable(std::vector<bool> nullable , std::vector<int> RHS){

    // set count to zero
    int count=0;
    // for each token in RHS 
    for(std::vector<int>::iterator it = RHS.begin() ; it != RHS.end() ; ++it){
        // if token is terminal its not nullable break
        if(*it>NONTERMINAL_ENUM_SIZE){
            break;
        }
        //if token is nullable count ++
        if(nullable[*it]){
            count++;
        }else{
            break;
        }
        
    }

    return count;


}

// true if a is a sub set of b, else false
bool subseteq(std::set<tokens>& a,std::set<tokens>& b){
    
    for(std::set<tokens>::iterator it = a.begin() ; it != a.end() ; ++it){
        tokens tok =*it;
        if(b.count(tok)==0){
            return false;
        }
    }
    return true;

}

std::set<tokens> set_union(std::set<tokens>& a,std::set<tokens>& b){

    std::set<tokens> uni = std::set<tokens>();
    for(std::set<tokens>::iterator it = a.begin() ; it != a.end() ; ++it ){
        uni.insert(*it);
    }
    for(std::set<tokens>::iterator it = b.begin() ; it != b.end() ; ++it ){
        uni.insert(*it);
    }

    return uni;

}


std::vector<std::set<tokens > > calculate_first(std::vector<grammar_rule> grammar){
    // calculate nullable
    std::vector<bool>nullables=calculate_nullables(grammar);
    // initialize first of all variables to empty set
    std::vector<std::set<tokens> > first = std::vector<std::set<tokens> >(NONTERMINAL_ENUM_SIZE,std::set<tokens>());


    bool change =true;
    int last_nullable=0;
    while(change){
        change=false;

        // for every rule
        for(std::vector<grammar_rule>::iterator it=grammar.begin() ; it != grammar.end() ; ++it){

            //skip null rules
            if(it->rhs.size()==0){
                continue;
            }
            // get last consecutive nullable j
            last_nullable=get_last_consecutive_nullable(nullables,it->rhs);
            // for every token i in rhs from 0 to j including j
            for(int i=0, rhs_enum=it->rhs[i] ; i<=last_nullable; i++,rhs_enum++){
                std::set<tokens>first_rhs=std::set<tokens>();
                // if rhs is terminal it first is itself
                if(rhs_enum>NONTERMINAL_ENUM_SIZE){
                    first_rhs.insert((tokens)(rhs_enum));
                }
                // if rhs is nonterminal get its first set from first vector
                else{
                    first_rhs=first[rhs_enum];
                }

                // if first(rhs[i]) is not in first(lhs)
                if(subseteq(first_rhs,first[it->lhs])==0){
                    // add first(rhs[i]) to first(lhs)
                    first[it->lhs]= set_union(first_rhs,first[it->lhs]);
                    // change =True
                    change=true;
                }
            }
            
        }


    }

    return first;


}




int main(){
    std::vector<bool>nullable=calculate_nullables(grammar);
    print_nullable(nullable);

    std::vector<std::set<tokens > > first =calculate_first(grammar);
    print_first(first);




}
