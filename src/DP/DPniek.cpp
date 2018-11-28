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
  //cout << "createBuckets is done" << endl;
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

  //create and fill buckets
  int numVars = order.size();
  vector<vector<BDD>> buckets(numVars);
  createBuckets(cnf, numVars, order, buckets);
  vector<BDD *> bucketBDDs(numVars);
  /*
  Create a BDD for each bucket, add to vector of bucketBDDs
  */  
  for (int i = 0; i < numVars; i++){//loop over bucktes
    BDD *bucketBDD = new BDD;
    *bucketBDD = sylvan_true;
    sylvan_protect(bucketBDD);
    bool empty = true;
    cout << "iteratie " << i << endl;
    for (int j = 0; j < buckets[i].size(); j++){//loop over BDDs
      empty = false;
      BDD Cx = buckets[i][j];
      sylvan_protect(&Cx);
      cout << "Cx: " << Cx << "   bucketBDD: "  << *bucketBDD <<endl;
      *bucketBDD = sylvan_and(*bucketBDD, Cx);//add it to the bucket BDD
      cout << "combined: "<< *bucketBDD << endl;
      sylvan_unprotect(&Cx);
    }
    //now we have a BDD of a bucket
    if(!empty) {
      bucketBDDs[i] = bucketBDD;
      cout<< *bucketBDDs[i] << endl;
      //mtbdd_fprintdot_nc(stdout, *bucketBDDs[i]);
      //mtbdd_printsha(*bucketBDDs[i]);
    }
    sylvan_unprotect(bucketBDD);
  }

  cout << "BDDs created." << endl;
  /*
  Now existentialy quantificatify the bucketBDDs, in order,
  and put resolvent clauses in correct bucket.
  */

  for (int i = 0; i < numVars; i++){//loop over BDDs
    cout << "i = " << i << endl; 
      if (bucketBDDs[i] != 0) {
      if (*bucketBDDs[i] == sylvan_false) return false;

      cout << "Non empty bucket. "<< i << ", " <<*bucketBDDs[i] <<endl; 
      BDD varSet = mtbdd_set_empty();
      sylvan_protect(&varSet);
      varSet = mtbdd_set_add(varSet, order[i].var);
      cout << "*bucketBDDs = " << *bucketBDDs[i] << ", varSet = " << varSet <<endl;
      //mtbdd_fprintdot(stdout, *bucketBDDs[i]);
      cout << "----------------------------------" << endl;
      BDD Z = sylvan_exists(*bucketBDDs[i], varSet);
      cout << "Z = " << Z << endl;
      sylvan_protect(&Z);
      for (int j = i+1; j < numVars; j++){
        Var var = mtbdd_getvar(Z);
        cout << "var = " << var << endl;
        if (var == 0) break;
        //cout << "j = "<< j << " , order = " << order[j].var << endl;
        if (order[j].var == var){
          BDD varSet = mtbdd_set_empty();

          varSet = mtbdd_set_add(varSet, var);
          BDD R = sylvan_exists(Z, varSet);
          sylvan_protect(&R);
          cout << "R = " << R << endl;
          BDD *resolvent = new BDD;
          *resolvent = sylvan_constrain(Z, R);
          sylvan_protect(resolvent);
          cout << "resolvent = " << *resolvent << endl;
          //mtbdd_fprintdot(stdout, *resolvent);
          if (bucketBDDs[j] == 0){
            //cout << "bucketBDDs[j]: " <<  bucketBDDs[j] << endl;
            bucketBDDs[j] = resolvent;
          }
          else{
            cout <<"bucket j = " << *bucketBDDs[j] << endl;
            BDD *newBucket = new BDD;
            *newBucket = sylvan_and(*bucketBDDs[j], *resolvent);
            cout << "new bucket = " << *newBucket << endl;
            bucketBDDs[j] = newBucket;
            cout<<  "bucket " << j << " now contains " << *bucketBDDs[j] << endl;
          }
          sylvan_unprotect(resolvent);
          delete(resolvent);
          Z = R;
          sylvan_unprotect(&R);
        }
      }
      sylvan_unprotect(&varSet);
      sylvan_unprotect(&Z);
    }
  }
  return true;

  sylvan_stats_report(stdout);
  sylvan_quit();
  lace_exit(); 
}
  


