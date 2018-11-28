//
// Created by pim on 16-1-18.
//

#include <iostream>

#include <assert.h>

extern "C"{
  #include "sylvan.h"
  #include "lace.h"
}
#include "structures/Clause.h"

using std::vector;
using std::runtime_error;
using std::cout;
using std::endl;
using namespace sylvan;

Clause::~Clause() = default;

bool Clause::findBucket(Var variable){
  for(int i = 0; i < literals.size(); i++){
    Lit *lit = &literals.at(i);
    if(lit->var == variable){
      return true;
    }
  }
  return false;
}

BDD* allocate_var() {
    BDD* my_var = (BDD*)calloc(sizeof(BDD), 1);
    sylvan_protect(my_var);
    return my_var;
}

BDD* free_var(BDD* my_var) {
    sylvan_unprotect(my_var);
    free(my_var);
}

BDD Clause::makeBDD(){
  LACE_ME;
  BDD* Cx = allocate_var();
  for(int i = 0; i < literals.size(); i++){//loop over literals
    Lit *lit = &literals.at(i);
    BDD* result = allocate_var();
    if (!lit->sign) {
      *result = sylvan_makenode(lit->var, sylvan_false, sylvan_true);
    } else {
      *result = sylvan_makenode(lit->var, sylvan_true, sylvan_false);
    };
    //mtbdd_fprintdot_nc(stdout, *result);
    *Cx = sylvan_or(*Cx, *result);
    //mtbdd_fprintdot_nc(stdout, *Cx);
    free_var(result);
  }
  //mtbdd_fprintdot_nc(stdout, *Cx);
  return *Cx;
  free_var(Cx);
}


Lit *Clause::getImpliedLiteral() {
/*
    for (int i = 0; i< size(); i++){
      if(formula.value(literals[i]) == 2){
        Lit &lit = literals[i];
        return &lit;
      }
    }
    
*/
    // TODO(step 3): Return implied watched literal
    // Improve the implementation by using watchlists.


  if(formula.value(literals.at(watchedLiterals[0])) == 2){
    Lit &lit = literals.at(watchedLiterals[0]);
    return &lit;
  }             
  else if(formula.value(literals.at(watchedLiterals[1])) == 2){
    Lit &lit = literals.at(watchedLiterals[1]);
    return &lit;
  }
  else {
    cout << "ERROR: No implied literal found, while clause is unit.." << endl;
  }
}

void Clause::addToWatchlists(int index) { //parameter? which i
// check in which watchlist it should be.
    Variable *variable = formula.variables.at(literals.at(watchedLiterals[index]).var);
    if (variable != NULL) {
      if(literals.at(watchedLiterals[index]).sign){
        variable->addWatchlistClauseF(this);
      }
      else{
        variable->addWatchlistClauseT(this);
      }
    }
}

bool Clause::updateWatchedLiteral(Var oldVar) { //negation of oldVar is always watched in this clause, so we must update the watches
  for(int i=0;i < size(); i++){    
    //find new unset literal
    //Var newVar = literals[i;
    if((formula.value(literals[i]) == Undef || formula.value(literals[i]) == 1) && i != watchedLiterals[0] && i != watchedLiterals[1]){      
      // determine which watchedLiteral was watching
      if(literals.at(watchedLiterals[0]).var == oldVar){
        watchedLiterals[0] = i;
        addToWatchlists(0); //update watch list of newvar (add this clause)
      }
      else{
        watchedLiterals[1] = i;
        addToWatchlists(1); //update watch list of newvar (add this clause)
      }
      return true;
    }
  }
  return false;
/*
    //index = veranderende literal

    // TODO(step 3): Update watched literals
    // The clause watches two of the literals it contains
    // when one of these literals becomes false the the clause
    // will try to watch a new non-false literal.
    // if this is not possible then the clause is either unit or empty.
    // Remember to update the watchlists for the new watched literal and
    // add the clause to a list of unit clauses when it is unit.
*/
}

bool Clause::hasPositiveWatchedLiteral() {
    for (size_t watchedLiteral : watchedLiterals) {
        Lit &lit = literals[watchedLiteral];
        if (formula.value(lit) == True) {
            return true;
        }
    }

    return false;
}


void Clause::print() {
    cout << endl;
    for (auto lit : literals) {
        cout << (lit.sign ? "~" : "") << lit.var << "(" << formula.value(lit) << ") ";
    }
    cout << endl;
}

void Clause::initWatchedLits(){
  if(size() < 2){
    watchedLiterals[0] = 0;
    watchedLiterals[1] = 0;
    unitClause = true;
  }
  else{
    /*int biggest, biggest2 = 0;
    int index, index2 = 0;
    for(int i = 0; i < size(); i++){
      if(literals[i].var > biggest){
        biggest2 = biggest;
        index2 = index;
        biggest = literals[i].var;
        index = i;
      }
      else if(literals[i].var > biggest2){
        biggest2 = literals[i].var;
        index2 = i;
      }
    }*/ //optimalisatie????????????
    watchedLiterals[0] = 0;
    watchedLiterals[1] = 1;
  }
  addToWatchlists(0);
  addToWatchlists(1);
}
