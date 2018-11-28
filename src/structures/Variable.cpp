//
// Created by pim on 16-1-18.
//

#include "structures/Clause.h"
#include "structures/Variable.h"


Variable::Variable(Var var) {
    this->var = var;
}

void Variable::addWatchlistClauseT(Clause *clause) {
    watchlistClausesT.push_back(clause);
}

void Variable::addWatchlistClauseF(Clause *clause) {
    watchlistClausesF.push_back(clause);
}


void Variable::updateWatchlistF(Clause *clause, int &i, int &j, Var toAssign) {
	if(!clause->updateWatchedLiteral(toAssign)){
  	watchlistClausesF[j] = clause;
  	j++;
	}
	i++;
	if(watchlistClausesF[i-1] == watchlistClausesF.back()){
  	while(i-j>0){
    	watchlistClausesF.pop_back();
    	j++;
  	}
	}
}

void Variable::updateWatchlistT(Clause *clause, int &i, int &j, Var toAssign) {
	if(!clause->updateWatchedLiteral(toAssign)){
  	watchlistClausesT[j] = clause;
  	j++;
	}
	i++;
	if(watchlistClausesT[i-1] == watchlistClausesT.back()){
  	while(i-j>0){
    	watchlistClausesT.pop_back();
    	j++;
  	}
	}
}
