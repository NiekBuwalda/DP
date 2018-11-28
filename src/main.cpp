#include <iostream>
#include <vector>
#include "DP/DP.h"
#include "util/parsefile.h"
extern "C"{
  #include <sylvan.h>
  #include <lace.h>
}
using namespace std;
using namespace sylvan;
int cnfsize = 0;

int main(int argc, const char *argv[]) {
    const char *fileName = nullptr;
    if (argc > 1) {
        fileName = argv[1];
        //cout << "Parsing expression from " << fileName <<  endl;
    }
    CNF *cnf = parseFile(fileName);
    cnf->initClauses();
    vector<Variable> order;
    for(Variable *variable: cnf->variables){
        order.push_back(*variable);
    }
    order.erase(order.begin());
    //cout << "Executing DP" << endl;
    //bool result = DPLL(cnf, 0, 0, True);
    bool result = DP(cnf, order);

    if (result) {
        cout << "SAT!" << endl;
    } else {
        cout << "UNSAT!" << endl;
    }

    exit(result ? 10 : 20);  // (faster than "return", which will invoke the destructors)
    //delete cnf;
}
