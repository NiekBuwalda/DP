//
// Created by pim on 23-1-18.
//

#include <stdexcept>
#include <iostream>
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
void createBuckets(CNF *cnf, int numVars, vector<Variable> order, vector<vector<BDD>> &buckets){
  LACE_ME;
  for(Clause *clause: cnf->clauses){
    bool found = false;
    
    for (int i = 0; i < numVars; i++) {
      found = clause->findBucket(order[i].var);
      if (found) {
        BDD Cx = clause->makeBDD();//create BDD for clause
        buckets[i].push_back(Cx);
        //cout << buckets[i].size() << endl;
        i = numVars;
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


  //create and fill buckets
  int numVars = order.size();
  cout << "#vars: " << numVars<< endl;
  vector<vector<BDD>> buckets(numVars);
  createBuckets(cnf, numVars, order, buckets);
  vector<BDD *> bucketBDDs(numVars);
  /*
  Create a BDD for each bucket, add to vector of bucketBDDs
  */


  
  for (int i = 0; i < numVars; i++){//loop over bucktes
    BDD bucketBDD = new BDD;
    bucketBDD = sylvan_true;
    sylvan_protect(&bucketBDD);
    bool empty = true;
    cout << "iteratie " << i << endl;
    for (int j = 0; j < buckets[i].size(); j++){//loop over BDDs
      empty = false;
      BDD Cx = buckets[i][j];
      sylvan_protect(&Cx);
      cout << "Cx: " << Cx << "   bucketBDD: "  << bucketBDD <<endl;
      bucketBDD = sylvan_and(bucketBDD, Cx);//add it to the bucket BDD
      cout << "combined: "<< bucketBDD << endl;
      sylvan_unprotect(&Cx);
    }
    //now we have a BDD of a bucket
    if(!empty) {
      bucketBDDs[i] = &bucketBDD;
      cout<< *bucketBDDs[i] << endl;
    }
    sylvan_unprotect(&bucketBDD);
    //bdd_refs_pop(1);
  }

  cout << "BDDs created." << endl;
  /*
  Now existentialy quantificatify the bucketBDDs, in order,
  and put resolvent clauses in correct bucket.

  */
  for (int i = 0; i < numVars; i++){//loop over BDDs
    cout << *bucketBDDs[i] << endl;
    if (bucketBDDs[i] != sylvan_false) {
      cout << "Non empty bucket. "<< i << endl;
      cout << order[i].var << endl;
      BDD Z = sylvan_exists(*bucketBDDs[i], order[i].var);
      sylvan_protect(&Z);
      cout << "Z = " << Z << endl;
      for (int j = 1; i < numVars; j++){
        if (Z == sylvan_false) return false;
        Var var = mtbdd_getvar(Z); //hoe te verzekeren dat BDD geordered is
        if (order[j].var == var){
          BDD R = sylvan_exists(Z, var);
          sylvan_protect(&R);
          cout << "R = " << R << endl;
          BDD resolvent = sylvan_diff(Z, R);
          sylvan_protect(&resolvent);
          *bucketBDDs[j] = sylvan_and(*bucketBDDs[j], resolvent);
          sylvan_unprotect(&resolvent);
          cout << "resolvent = " << resolvent << endl;
          Z = R;
          sylvan_unprotect(&R);
        }
      }
      sylvan_unprotect(&Z);
    }
  }
  return true;

  sylvan_stats_report(stdout);
  sylvan_quit();
  lace_exit(); 
}
  


