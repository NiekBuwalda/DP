//
// Created by pim on 23-1-18.
//

#include <stdexcept>
#include <iostream>
#include <typeinfo>
#include <deque>
#include <array>
#include <algorithm>
extern "C"{
  #include "sylvan.h"
  #include "lace.h"
}
#include "structures/Clause.h"
#include "structures/CNF.h"
#include "structures/Variable.h"
#include "DP/DP.h"

using namespace std;
using namespace sylvan;

void createBucketsLit(CNF *cnf, int numVars, vector<Variable> order, vector<vector<vector<Lit>>> &bucketsUnsigned, vector<vector<vector<Lit>>> &bucketsSigned){
	bool litSign = false;
	  for(Clause *clause: cnf->clauses){
	  	vector<Lit> literals = clause->getVec();
	  	bool found = false;
	    for (int i = 0; i < numVars; i++) {
	      found = clause->findBucket2(order[i].var, litSign);
	      if (found) {
	    	  if(litSign){
	    		  bucketsSigned[i].push_back(literals);
	    	  }
	    	  else bucketsUnsigned[i].push_back(literals);
	    	  //cout << bucketsSigned[i].size() << " ,"  << bucketsUnsigned[i].size() << endl;
	    	  break;
	      }

	    }
	  }
	  cout << "createBuckets is done" << endl;

}


bool cleanClause(vector<Lit> &clause, vector<Variable> order){
	/*
	//cout << "clause size: " << clause.size() << endl;
	for (size_t l= 0; l < clause.size(); ++l){
		Lit *lit = &clause.at(l);
		cout << lit->var << lit->sign << ", ";
	}
	//cout << endl;
	*/
	for(uint32_t j = 0; j < order.size(); ++j){
		Var var = order[j].var;
		bool first = true;
		bool firstSign;
		for (size_t z = 0; z < clause.size(); ++z){
			Lit *lit = &clause.at(z);
			if (lit->var == var && first){
				first = false;
				if (lit->sign) firstSign = true;
				else firstSign = false;
			}
			else if (lit->var == var && !first){
				if (firstSign && lit->sign) {
					clause.erase(clause.begin()+z);
					//cout << "case 1" << endl;
				}
				else if (firstSign && !lit->sign){
					//cout << "case 2" << endl;
					return true;
				}
				else if (!firstSign && lit->sign){
					//cout << "case 3" << endl;
					return true;
				}
				else if (!firstSign && !lit->sign){
					clause.erase(clause.begin()+z);
					//cout << "case 4" << endl;
				}
			}
		}
	}
	return false;
}



bool exQuant(vector<vector<vector<Lit>>> &bucketsUnsigned, vector<vector<vector<Lit>>> &bucketsSigned, vector<Variable> order, int index, int numVars){

	vector<vector<Lit>> pos = bucketsUnsigned[index];//bucketi+
	vector<vector<Lit>> neg = bucketsSigned[index];//bucketi-
	cout << "pos size: " << pos.size() << endl;
	cout << "neg size: " << neg.size() << endl;
	if (!(pos.empty() && neg.empty())){
	//cout << "Non empty bucket var" << order[index].var << endl;
              
		for (unsigned i = 0; i < pos.size(); ++i){
			vector<Lit> resUnsigned = pos.at(i);
			if (resUnsigned.empty()) return false;
			int nextIndexPos = numVars;
			bool nextSignPos = false;
			for (size_t j=0; j < resUnsigned.size(); ++j ){
				Lit *lit = &resUnsigned.at(j);
				if(lit->var == index+1){
					resUnsigned.erase(resUnsigned.begin()+j);
				}
				//check index in order for next bucket
				for (int x = 0; x < nextIndexPos; ++x){
					if (order[x].var == lit->var && lit->var != index+1){
						nextIndexPos = x;
						if (lit->sign){
							nextSignPos = true;
						}
					}
				}
			}
			for(unsigned k = 0; k < neg.size(); ++k ){
				vector<Lit> resSigned = neg.at(k);
				if (resUnsigned.empty()) return false;
				int nextIndexNeg = numVars;
				bool nextSignNeg = false;
				for (size_t l = 0; l < resSigned.size(); ++l){
					Lit *lit = &resSigned.at(l);
					if(lit->var == index+1){
						resSigned.erase(resSigned.begin()+l);
					}
					//check index in order for next bucket
					for (int x = 0; x < nextIndexNeg; ++x){
						if (order[x].var == lit->var && lit->var != index+1){
							nextIndexNeg = x;
							if (lit->sign){
								nextSignNeg = true;
							}
						}
					}
				}

                            //combine two clauses
				vector<Lit> res = resUnsigned;
				res.insert( res.end(), resSigned.begin(), resSigned.end() );
				//cout << "resSize: " << res.size() << endl;
                            //simplify combined clasue if possible
				bool result = cleanClause(res, order);
				if (result) continue; //clause is true, no resolvent
				bool nextSign;
				int nextIndex;
				if (nextIndexPos <= nextIndexNeg){
					nextIndex = nextIndexPos;
					nextSign = nextSignPos;
				}
				else {
					nextIndex = nextIndexNeg;
					nextSign = nextSignNeg;
				}
				//cout << "nextIndex: " << nextIndex << ", sign: " << nextSign << endl;
				if (nextSign){
					bucketsSigned[nextIndex].insert(bucketsSigned[nextIndex].end(), res);
				}
				else bucketsUnsigned[nextIndex].insert(bucketsUnsigned[nextIndex].end(), res);

			}
		}
	}
	return true;
}

bool DP(CNF *cnf, vector<Variable> order){
  //create and fill bucketsBDD
  int numVars = order.size();
  bool SAT = true;

  vector<vector<vector<Lit>>> bucketsUnsigned(numVars);
  vector<vector<vector<Lit>>> bucketsSigned(numVars);
  createBucketsLit(cnf, numVars, order, bucketsUnsigned, bucketsSigned);

  /*
  Now existentialy quantificatify the bucketBDDs, in order,
  and put resolvent clauses in correct bucket.
  */

  for (int i = 0; i < numVars; i++){
  	cout << "iteration: " << i << endl;
  	SAT = exQuant(bucketsUnsigned, bucketsSigned, order, i, numVars);
  	if (!SAT) return false;
  }

  return SAT;
}
  


