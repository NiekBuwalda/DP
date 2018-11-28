//
// Created by pim on 16-1-18.
//

#ifndef PISAT_CNF_H
#define PISAT_CNF_H

#include <vector>

#include "structures/Literal.h"
#include "structures/Variable.h"


using std::vector;

class Clause;

/**
 * A CNF expression containing variables and clauses.
 *
 * Variables are numbered consecutively from 0 .. vairables.size() - 1
 * For each number a variable object exits in the vairables vector.
 * Invariant: forall i : variables[i].var == i
 *
 */
class CNF {
public:

    vector<Clause *> clauses;           // clauses

    vector<Variable *> variables;
    vector<TruthValue> assignment;

    /*********** INITIALIZATION *************/

    CNF(size_t nr_vars)
    {
       variables.resize(nr_vars, nullptr);
    }

    ~CNF();

    /**
     * Finalize initialization
     */
    void finalize();

    /**
     * Adds clause to the cnf expression and adds
     * the cnf expression to the clause.
     *
     * @param clause - Clause that is part of the expression.
     */
    void add(Clause *clause);

    /*********** INTERFACE *************/

    TruthValue value(Var var);
    TruthValue value(Lit lit);

    bool isSatisfied() {
        // TODO naively evaluate the truthvalue of the formula
        // or introduce counters / watches to keep track of
        // unassigned literals in clauses
    	return true;
        // Counters and watches should be updated in setLiteral()
    };

    /**
     * Set variable i to value param
     *
     * TODO Watchlists are not yet updated
     *
     * @param i - id of the Variable/Literal to set the value of
     * @param value - value to change the literal to.
     */
    void setLiteral(Var i, TruthValue value);

    /**
     *
     * @return
     */
    bool isEmpty();


    /*********** HELPERS *************/

    void printAssignment();

    /**
     * Non-verbose print
     */
    void print();

    void initClauses();
};

#endif //PISAT_CNF_H
