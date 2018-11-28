//
// Created by pim on 23-1-18.
//

#ifndef PISAT_DPLL_H
#define PISAT_DPLL_H

#include "structures/CNF.h"


/**
 * The DPLL backtracking based algorithm used to solve sat
 * instances. The algorithm chooses a variable which is then
 * assigned a value. The algorithm then recursively calls itself
 * for the newly generated expression untill either sat or unsat
 * is found. If sat is found the algorithm is done. If unsat is
 * found the the other value for the chosen literal will be tried
 * until all assignments are found to be unsat.
 *
 * The algorithm can be sped up by using BCP (boolean constraint
 * propagation) which is our case is unit propagation.
 * The algorithm also makes use of watchlists, which greatly
 * decreases the amount of times we need to inspect clauses.
 *
 * @param cnf CNF exression that is being solved.
 * @param depth Current depth of the DPLL search.
 * @return true if sat, false if unsat.
 */
bool DPLL(CNF *cnf, size_t depth, Var toAssign, TruthValue valuation);

#endif //PISAT_DPLL_H
