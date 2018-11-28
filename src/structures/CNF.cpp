//
// Created by pim on 16-1-18.
//

#include <algorithm>
#include <iostream>

#include "assert.h"

#include "structures/CNF.h"
#include "structures/Clause.h"
#include "structures/Variable.h"

using namespace std;


CNF::~CNF() {
    for (Clause *clause: clauses) {
        delete clause;
    }

    for (Variable *variable: variables) {
        delete variable;
    }
}

void CNF::add(Clause *clause) {
    clauses.push_back(clause);
}

void CNF::finalize() {
    assignment.resize(variables.size(), Undef);

    // Add dummy variables to create a consecutive list
    for (size_t i = 0; i < variables.size(); ++i) {
        if (variables[i] == nullptr) {
            variables[i] = new Variable(i);
        }
    }
 }

TruthValue CNF::value(Var var) {
    return assignment[var];
}

TruthValue CNF::value(Lit lit) {
    Var var = lit.var;

    TruthValue t = assignment.at(var);
    return static_cast<TruthValue>(((t != Undef) & lit.sign) ^ t);
}

TruthValue value(Lit lit);

void CNF::setLiteral(Var x, TruthValue value) {

//    TruthValue old = assignment[x];

    assignment[x] = value;

    // TODO(step 3): Updating watchlists
    // To make the algorithm more efficient it is useful to limit
    // the amount of clauses that have to be visited.
    // This method should update all clauses in the watchlist of the
    // variable. Each of these clauses will also have to be updated
    // to make sure it watches the correct literals.
}

bool CNF::isEmpty() {
    for (Clause *clause: clauses) {
        if (!clause->hasPositiveWatchedLiteral()) {
            return false;
        }
    }
    return true;
}

void CNF::printAssignment() {
    for (auto value: assignment) {
        cout << value;
    }
    cout << endl;
}

void CNF::print() {
    cout << "CNFExpression:" << endl;
    for (Clause *clause: clauses) {
        clause->print();
    }
    cout << "Assignment: " << endl;
    printAssignment();
}

void CNF::initClauses(){
  //init watched literals in clauses
    for(Clause *clause: this->clauses){
      clause->initWatchedLits();
    }
}
