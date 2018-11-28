//
// Created by pim on 16-1-18.
//

#ifndef PISAT_VARIABLE_H
#define PISAT_VARIABLE_H


#include <vector>

#include "structures/Literal.h"

extern int cnfsize;

using std::vector;

class Clause;

/**
 * A variable object contains all relevant information of
 * the variable with id v.
 *
 * The object contains a vector containing the clauses in
 * which it occurs as a positive literal and it contains
 * a vector in which it occurs as a negative literal.
 *
 * The object can also keep track of the clauses it
 * will break if the value of the variable is changed.
 * TODO: watch literal support is not yet implemented
  *
 * @param Var v
 */
class Variable {
public:
    Var var;

    explicit Variable(Var v);

    void addWatchlistClauseT(Clause *clause);

    void addWatchlistClauseF(Clause *clause);

    void updateWatchlistF(Clause *clause, int &i, int &j, Var toAssign);

    void updateWatchlistT(Clause *clause, int &i, int &j, Var toAssign);

    vector<Clause *> &getWatchlistClausesT() { return watchlistClausesT; }

    vector<Clause *> &getWatchlistClausesF() { return watchlistClausesF; }

    void resetWatchlistClausesT() { watchlistClausesT.clear(); }

    void resetWatchlistClausesF() { watchlistClausesF.clear(); }

    void setOldAssignment(TruthValue value) {
        old = value;
    }

    TruthValue getOldAssignment() {
        return old;
    }

    /**
     * Positive (occurences[1]) and negative occurances (occurences[0])
     * of this variable. So any clause which contains this variables
     * without negation is in occurrences[1] and with negation is in
     * occurrences[0].
     */
    vector<Clause *> occurences[2];

private:

    vector<Clause *> watchlistClausesT; // clauses in which this variable (eg: (a)) is watched

    vector<Clause *> watchlistClausesF; // clauses in which the negation of this variable (eg: (not a)) is watched

    TruthValue old;
};


#endif //PISAT_VARIABLE_H
