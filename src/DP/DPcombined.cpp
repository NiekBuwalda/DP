//
// Created by pim on 23-1-18.
//

#include <stdexcept>
#include <iostream>
#include <typeinfo>
#include <deque>
#include <array>
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


/*
Put all clauses in correct bucketsBDD as BDD
*/
void createBucketsBDD(CNF *cnf, int numVars, vector<Variable> order, vector<BDD> &bucketsBDD){
  LACE_ME;

  for (int i = 0; i < numVars; i++) {
    bucketsBDD[i] = sylvan_true;
    sylvan_protect(&bucketsBDD[i]);
  }

  for(Clause *clause: cnf->clauses){
    bool found = false;
    for (int i = 0; i < numVars; i++) {
      found = clause->findBucket(order[i].var);
      if (found) {
        BDD Cx = clause->makeBDD();//create BDD for clause
        mtbdd_refs_pushptr(&Cx);
        bucketsBDD[i] = sylvan_and(Cx, bucketsBDD[i]);
        mtbdd_refs_popptr(1);
        //mtbdd_fprintdot_nc(stdout, bucketsBDD[i]);
        
      if(sylvan_set_isempty(bucketsBDD[i])) {
        //cout<< "UNSAT"<< endl;
        exit(1);
      }

        break;
      }
    }
  }
  cout << "createBucketsBDD is done" << endl;
}

void createBuckets(CNF *cnf, int numVars, vector<Variable> order, vector<vector<Clause>> &bucketsUnsigned, vector<vector<Clause>> &bucketsSigned){
  bool litSign = false;
  for(Clause *clause: cnf->clauses){
    bool found = false;
    for (int i = 0; i < numVars; i++) {
      found = clause->findBucket2(order[i].var, litSign);
      if (found) {
    	  if(litSign){
    		  bucketsSigned[i].push_back(*clause);
    	  }
    	  else bucketsUnsigned[i].push_back(*clause);
        break;
      }
    }
  }
  cout << "createBuckets is done" << endl;
}



bool DP(CNF *cnf, vector<Variable> order){
  int n_workers = 0; // auto-detect
  lace_init(n_workers, 0);
  lace_startup(0, NULL, NULL);
  LACE_ME;

  // use at most 512 MB, nodes:cache ratio 2:1, initial size 1/32 of maximum
  sylvan_set_limits(512*1024*1024, 1, 5);
  sylvan_init_package();
  sylvan_init_mtbdd();
  /* ... do stuff ... */
  //sylvan_gc_disable();

  //create and fill bucketsBDD
  int numVars = order.size();
  vector<BDD> bucketsBDD(numVars);
  vector<vector<Clause>> bucketsUnsigned(numVars);
  vector<vector<Clause>> bucketsSigned(numVars);
  createBucketsBDD(cnf, numVars, order, bucketsBDD);
  createBuckets(cnf, numVars, order, bucketsUnsigned, bucketsSigned);
  cout << bucketsUnsigned.size() << endl;
  cout << bucketsSigned.size() << endl;

  cout << "BDDs created." << endl;
  /*
  Now existentialy quantificatify the bucketBDDs, in order,
  and put resolvent clauses in correct bucket.
  */

  for (int i = 0; i < numVars; i++){//loop over BDDs
    //BDD
    if (bucketsBDD[i] == sylvan_true) continue;
    if (bucketsBDD[i] == sylvan_false) return false;
    //Clause
    //BDD
    BDD varSet = mtbdd_set_empty();
    varSet = mtbdd_set_add(varSet, order[i].var);
    mtbdd_refs_pushptr(&varSet);
    BDD Z = sylvan_exists(bucketsBDD[i], varSet);
    mtbdd_refs_popptr(1);
    mtbdd_refs_pushptr(&Z);
    cout << "Z = " << Z << endl;


    for (int j = i+1; j < numVars; j++){
      Var var = mtbdd_getvar(Z);
      //cout << "var = " << var << endl;
      if (var == 0) break;
      //cout << "j = "<< j << " , order = " << order[j].var << endl;
      if (order[j].var == var){
    	BDD varSet = mtbdd_set_empty();
        varSet = mtbdd_set_add(varSet, var);
        mtbdd_refs_pushptr(&varSet);
        BDD R = sylvan_exists(Z, varSet);
        mtbdd_refs_popptr(1);
        mtbdd_refs_pushptr(&R);
        //cout << "R = " << R << endl;
        BDD resolvent = sylvan_constrain(Z, R);
        mtbdd_refs_pushptr(&resolvent);
        cout << "resolvent = " << resolvent << endl;
        //mtbdd_fprintdot(stdout, resolvent);
        if(j == 17){
        	cout << bucketsBDD[j] << ", " <<resolvent << endl;
        }
        bucketsBDD[j] = sylvan_and(bucketsBDD[j], resolvent);

        mtbdd_refs_popptr(1);//resolvent
        Z = R;
        mtbdd_refs_popptr(1);//R

      }
    }
    mtbdd_refs_popptr(1); //Z
    sylvan_unprotect(&bucketsBDD[i]);

  }

  sylvan_stats_report(stdout);
  sylvan_quit();
  lace_exit();

  return true;
}
  


