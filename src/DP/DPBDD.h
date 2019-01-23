//
// Created by pim on 23-1-18.
//

#ifndef PISAT_DP_H
#define PISAT_DP_H
#include "structures/CNF.h"
extern "C"{
  #include "sylvan.h"
  #include "lace.h"
}
using namespace sylvan;
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
//bool DPLL(CNF *cnf, size_t depth, Var toAssign, TruthValue valuation);
//bool DPLL(CNF *cnf);

bool DPBDD(CNF *cnf, vector<Variable> order);
bool cleanClause(vector<Lit> &clause, vector<Variable> order);
void createBucketsLit(CNF *cnf, int numVars, vector<Variable> order, vector<vector<vector<Lit>>> &bucketsUnsigned, vector<vector<vector<Lit>>> &bucketsSigned);
//void createBucketsUnsigned(CNF *cnf, int numVars, vector<Variable> order, vector<vector<Clause>> &bucketsUnsigned);
//void createBucketsSigned(CNF *cnf, int numVars, vector<Variable> order, vector<vector<Clause>> &bucketsSigned);
bool exQuant(vector<vector<vector<Lit>>> &bucketsUnsigned, vector<vector<vector<Lit>>> &bucketsSigned, vector<Variable> order, int i, int numVars);
#endif //PISAT_DPLL_H
