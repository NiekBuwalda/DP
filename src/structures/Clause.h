//
// Created by pim on 16-1-18.
//

#ifndef PISAT_CLAUSE_H
#define PISAT_CLAUSE_H

#include <iostream>
#include <vector>
#include <tuple>

extern "C"{
  #include "sylvan.h"
  #include "lace.h"
}
#include "structures/CNF.h"

using std::runtime_error;
using std::vector;
using namespace sylvan;

/**
 * A Clause contains a vector of literals.
 *
 * The false count is not yet updated.
 */
class Clause {
public:
    Clause(CNF &cnf) : formula(cnf)
    {
        false_literal_count = 0;
    }

    ~Clause();

    BDD makeBDD();
    vector<Lit> &getVec();
    bool findBucket2(Var variable, bool &litSign);
    bool findBucket(Var variable);

    void add(Lit lit) {
        literals.push_back(lit);
        formula.variables[lit.var]->occurences[lit.sign].push_back(this);
    }

    void incFalseLiteralCount()   { false_literal_count++; };
    void decFalseLiteralCount()   { false_literal_count--; };
    size_t getFalseLiteralCount() { return false_literal_count; };

    /**
     * Add the clause to the watchlist of both of its watched
     * literals.
     */
    void addToWatchlists(int index);

    /**
     * Return the first non-false watched literal
     *
     * @return Lit - non-false watched literal
     */
    Lit *getImpliedLiteral();

    /**
     * Checks efficiently whether the clause contains exactly one Undef literal
     * and the other literals are all false.
     *
     * @return true if unit, false otherwise
     */
    bool isUnitClause()
    {
      if(formula.value(literals.at(watchedLiterals[0])) == 0){
        if(formula.value(literals.at(watchedLiterals[1])) == 2){
          /*std::cout << "watchedliteral0 = " << literals.at(watchedLiterals[0]).var << std::endl;
          std::cout << "watchedliteral1 = " << literals.at(watchedLiterals[1]).var << std::endl;*/
          return true;
        }             
      }
      else if(formula.value(literals.at(watchedLiterals[0])) == 2){
        if(formula.value(literals.at(watchedLiterals[1])) == 0){
          /*std::cout << "watchedliteral0 = " << literals.at(watchedLiterals[0]).var << std::endl;
          std::cout << "watchedliteral1 = " << literals.at(watchedLiterals[1]).var << std::endl;*/
          return true;
        }
      }
      else return false;  //toevoegen aan unitClause list bij 10/01 ????

      return false;
    }

    /**
     * If the value of the literal that was changed to False,
     * this means the watched variable has to be set to another
     * non-false literal in the clause. This to keep the invariant
     * true. The clause is then added to the watchlist of the new
     * watched variable.
     *
     * If the only non-false (and Undef) literal is the other watched literal then
     * we add the clause to unit clauses.
     *
     * If no such literal is found then the clause is empty.
     *
     * @param i - id of the literal that is being updated.
     * @return bool - if the watched variable pointer stays the same
     * then the we return true, this makes sure that this clause stays
     * in the watchlist for that variable.
     */
    bool updateWatchedLiteral(Var i);

    /**
     * Checks whether any of the watched literals is positive
     * because then the clause is sat.
     *
     * @return true if sat, false otherwise.
     */
    bool hasPositiveWatchedLiteral();

    bool unitClause = false;

    size_t size() { return literals.size(); };

    void print();

    size_t watchedLiterals[2];

    vector<Lit> unsignedList;
    vector<Lit> signedList;

    void initWatchedLits();

    Lit *getFirstLiteral(){ return &literals[0]; };

private:
    CNF &formula;

    vector<Lit> literals;

    size_t false_literal_count;
};


#endif //PISAT_CLAUSE_H
