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

        //cout << Cx << " wordt toegevoegd aan bucket " << i<<endl;
        //mtbdd_fprintdot_nc(stdout, buckets[i]);
        buckets[i] = sylvan_and(Cx, buckets[i]);
        mtbdd_refs_popptr(1);

        //cout << "bucket " << i << " : "<< buckets[i] << endl;
        //mtbdd_fprintdot_nc(stdout, buckets[i]);

      if(sylvan_set_isempty(buckets[i])) {
        //cout<< "UNSAT"<< endl;
        exit(1);
      }

        break;
      }
    }
  }
  //cout << "createBuckets is done" << endl;
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

  //cout << "BDDs created." << endl;
  /*
  Now existentialy quantificatify the bucketBDDs, in order,
  and put resolvent clauses in correct bucket.
  */

  for (int i = 0; i < numVars; i++){//loop over BDDs
  	//cout << "i = " << i << endl;
    if (buckets[i] == sylvan_true) continue;
    if (buckets[i] == sylvan_false) {
    	//cout << "exit at " << i << endl;
    	return false;
    }
    //cout << buckets[i]<< endl;
    BDD varSet = mtbdd_set_empty();
    varSet = mtbdd_set_add(varSet, order[i].var);
    mtbdd_refs_pushptr(&varSet);
    buckets[i] = sylvan_exists(buckets[i], varSet);
    mtbdd_refs_popptr(1);
    buckets[i+1] = sylvan_and(buckets[i+1], buckets[i]);

  }
  for (int i = 0; i < numVars; i++) {
    sylvan_unprotect(&buckets[i]);
  }

  sylvan_stats_report(stdout);
  sylvan_quit();
  lace_exit();
  return true;

}



