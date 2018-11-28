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
Put all clauses in correct buckets as BDD
*/
void createBuckets(CNF *cnf, int numVars, vector<Variable> order, vector<BDD> &buckets){
  LACE_ME;

  for (int i = 0; i < numVars; i++) {
    buckets[i] = sylvan_true;
    sylvan_protect(&buckets[i]);
  }

  for(Clause *clause: cnf->clauses){
    bool found = false;
    for (int i = 0; i < numVars; i++) {
      found = clause->findBucket(order[i].var);
      if (found) {
        BDD Cx = clause->makeBDD();//create BDD for clause
        mtbdd_refs_pushptr(&Cx);
        buckets[i] = sylvan_and(Cx, buckets[i]);
        mtbdd_refs_popptr(1);
        //mtbdd_fprintdot_nc(stdout, buckets[i]);

      if(sylvan_set_isempty(buckets[i])) {
        //cout<< "UNSAT"<< endl;
        exit(1);
      }

        break;
      }
    }
  }
  cout << "createBuckets is done" << endl;
}


bool DP(CNF *cnf, vector<Variable> order){
  int n_workers = 1; // auto-detect
  lace_init(n_workers, 0);
  lace_startup(0, NULL, NULL);
  LACE_ME;

  // use at most 512 MB, nodes:cache ratio 2:1, initial size 1/32 of maximum
  sylvan_set_limits(512*1024*1024, 1, 5);
  sylvan_init_package();
  sylvan_init_mtbdd();
  /* ... do stuff ... */
  //sylvan_gc_disable();

  //create and fill buckets
  int numVars = order.size();
  vector<BDD> buckets(numVars);
  createBuckets(cnf, numVars, order, buckets);

  cout << "BDDs created." << endl;
  /*
  Now existentialy quantificatify the bucketBDDs, in order,
  and put resolvent clauses in correct bucket.
  */

  for (int i = 0; i < numVars; i++){//loop over BDDs
    cout << "i = " << i << endl;
    if (buckets[i] == sylvan_true) continue;
    if (buckets[i] == sylvan_false) return false;

    cout << "Non empty bucket. "<< i << ", " <<buckets[i] <<endl;
    BDD varSet = mtbdd_set_empty();
    varSet = mtbdd_set_add(varSet, order[i].var);
    mtbdd_refs_pushptr(&varSet);
    BDD Z = sylvan_exists(buckets[i], varSet);
    mtbdd_refs_popptr(1);
    mtbdd_refs_pushptr(&Z);
    cout << "Z = " << Z << endl;
    for (int j = i+1; j < numVars; j++){
      Var var = mtbdd_getvar(Z);
      cout << "var = " << var << endl;
      if (var == 0) break;
      cout << "j = "<< j << " , order = " << order[j].var << endl;
      if (order[j].var == var){
    	BDD varSet = mtbdd_set_empty();
        varSet = mtbdd_set_add(varSet, var);
        mtbdd_refs_pushptr(&varSet);
        BDD R = sylvan_exists(Z, varSet);
        mtbdd_refs_popptr(1);
        mtbdd_refs_pushptr(&R);
        cout << "R = " << R << endl;
        BDD resolvent = sylvan_constrain(Z, R);
        mtbdd_refs_pushptr(&resolvent);
        cout << "resolvent = " << resolvent << endl;
        //mtbdd_fprintdot(stdout, resolvent);
        if(j == 17){
        	cout << buckets[j] << ", " <<resolvent << endl;
        }
        buckets[j] = sylvan_and(buckets[j], resolvent);

        mtbdd_refs_popptr(1);//resolvent
        Z = R;
        mtbdd_refs_popptr(1);//R

      }
    }
    mtbdd_refs_popptr(1); //Z
    sylvan_unprotect(&buckets[i]);
  }

  sylvan_stats_report(stdout);
  sylvan_quit();
  lace_exit();

  return true;
}
  


