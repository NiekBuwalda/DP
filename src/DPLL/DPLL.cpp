//
// Created by pim on 23-1-18.
//

#include <stdexcept>
#include <iostream>


#include "structures/Clause.h"
#include "structures/CNF.h"
#include "DPLL/DPLL.h"

using namespace std;


/**
 * Unit propagation algorithm, which propagates all forced
 * variables in the expression, this greatly speeds up the
 * algorithm, since it prevents it from going through a search
 * tree that forces unsat.
 *
 * @param cnf expression for which all unit clauses are being
 * propagated.
 * @return false if a contradiction is found, true otherwise.
 */

bool unitPropagate(CNF *cnf) {
 
    // TODO(Step 2): unit propagation
    // While the CNF expression has unit clauses (clauses with one non-false literal)
    // Assign the forced value to the literal. Keep doing this until all unit clauses
    // are satisfied or a contradiction is found.
  bool unitFound = true;
  while(unitFound){
    //cout << "hoi" << endl;
    unitFound = false;
    for(Clause *clause: cnf->clauses){
      if(clause->unitClause || clause->isUnitClause()){
        unitFound = true;
        Lit *lit;
        if(clause->unitClause){
          lit = clause->getFirstLiteral();
          clause->unitClause = false; // set back so that we won't find it again and loop forever  
        }
        else{
          lit = clause->getImpliedLiteral();
        }
        bool litIsNegated = false;
        if(lit->sign){
          litIsNegated = true;      
        }
        if(!litIsNegated){
          if(cnf->assignment[lit->var] == False){
            return false;
          }
          else{
            for(Clause *clause: cnf->clauses){
                if(clause->unitClause || clause->isUnitClause()){
                  Lit *lit2;
                  if(clause->unitClause){
                    lit2 = clause->getFirstLiteral(); 
                    clause->unitClause = false; // set back so that we won't find it again and loop forever   
                  }
                  else{
                    lit2 = clause->getImpliedLiteral();
                  }
                  if(lit2->var == lit->var){
                    if(lit2->sign != lit->sign){
                      return false;
                    }
                  }
                }
            }
            cnf->setLiteral(lit->var, True);
            //cout << "we set " << lit->var << " to 1" << endl; 
            Variable *variable = cnf->variables.at(lit->var); //update watch list of toAssign (delete this clause)
            int i = 0, j = 0;
            for(Clause *clause: variable->getWatchlistClausesF()){//loop over al clauses in watchlist of variable toAssign:
              //updatewatchlists & watched literals
              variable->updateWatchlistF(clause, i, j, lit->var);           
            }
            //variable->substituteWatchlistClausesF(watchlistClausesF2);
          }
        }
        else{
          if(cnf->assignment[lit->var] == True){
            return false;
          }
          else{
            for(Clause *clause: cnf->clauses){
                if(clause->unitClause || clause->isUnitClause()){
                  Lit *lit2;
                  if(clause->unitClause){
                    lit2 = clause->getFirstLiteral();  
                    clause->unitClause = false; // set back so that we won't find it again and loop forever  
                  }
                  else{
                    lit2 = clause->getImpliedLiteral();
                  }
                  if(lit2->var == lit->var){
                    if(lit2->sign != lit->sign){
                      return false;
                    }
                  }
                }
            }
            cnf->setLiteral(lit->var, False);
            //cout << "we set " << lit->var << " to 0" << endl; 
            Variable *variable = cnf->variables.at(lit->var); //update watch list of toAssign (delete this clause)
            int i = 0, j = 0;
            for(Clause *clause: variable->getWatchlistClausesT()){//loop over al clauses in watchlist of variable toAssign:
              //updatewatchlists & watched literals
              variable->updateWatchlistT(clause, i, j, lit->var);
            }
            //variable->substituteWatchlistClausesT(watchlistClausesT2);
          }
        }
      }
    }
  }
  return true;
}

//http://www.cs.cmu.edu/~hjain/papers/cmusat-solvers.pdf !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
bool DPLL(CNF *cnf, size_t depth, Var toAssign, TruthValue valuation) {
    //cout << "Diepte: " << depth << " Here I am setting " << toAssign << "to " << valuation << " " << endl;
    vector<TruthValue> assignment2;
    for(int i = 0; i < cnf->assignment.size(); i++){
      assignment2.push_back(cnf->assignment[i]);        
    }
    //cnf->print();
    // TODO(step 1): Implement backtracking
    // The first step is to implement the DPLL backtracking algorithm.
    // For each literal, assign a value and then recursively call DPLL.
    //
    // The algorithm should return sat if a satisfying assignment is found.
    // It returns unsat if both assignments are unsat.
    if(depth>0){
      if (cnf->assignment[toAssign] != Undef && cnf->assignment[toAssign] != valuation) {
        return false;
      }
      else{
        cnf->setLiteral(toAssign, valuation);
        Variable *variable = cnf->variables.at(toAssign); //update watch list of toAssign (delete this clause)
        if(valuation == False){
          int i = 0, j = 0;
          for(Clause *clause: variable->getWatchlistClausesT()){//loop over al clauses in watchlist of variable toAssign:
            //updatewatchlists & watched literals
            variable->updateWatchlistT(clause, i, j, toAssign);        
          }   
          //variable->substituteWatchlistClausesT(watchlistClausesT2);   
        }
        else{
          int i = 0, j = 0;
          for(Clause *clause: variable->getWatchlistClausesF()){//loop over al clauses in watchlist of variable toAssign:
            //updatewatchlists & watched literals
            variable->updateWatchlistF(clause, i, j, toAssign);        
          }   
          //variable->substituteWatchlistClausesF(watchlistClausesF2);
        }
        if(!unitPropagate(cnf)){
          cnf->assignment = assignment2;
          return false;        
        }
      }
    }
    bool allDefined = true;
    int toSet = depth;
    for (int i = 0; i < cnf->assignment.size(); i++){
      if (cnf->assignment[i] == Undef){
        toSet = i;
        allDefined = false;
        break;
      }
    }
    if (allDefined){
        //cnf->print();
      return true; 
    }
    if(DPLL(cnf, depth+1, toSet, True)){
      return true;
    }
    else if(DPLL(cnf, depth+1, toSet, False)){
      return true;
    }
    else{
      cnf->assignment = assignment2;
      return false;
    }


    // TODO(step 2): Unit propagation
    // The simple backtracking implementation tries all possible assignments
    // until it finds a satisfying assignment. We can do better.
    // Many literals are implied by the assignment, so before we choose a new
    // variable it is useful to give all implied literals a value. This greatly
    // reduces the space that backtracking has to search.
    //
    // The function CNF::setLiteral() can be extended to aid with
    // quick identification of unit clauses


    return false;
}
