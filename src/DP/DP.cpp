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

//static bool comp (int i,int j) { return (i<j); }


/**
 * CVreate buckets with clauses renumbered according to the new ordering
 */
void createBucketsLit(CNF *cnf, vector<Var> &order, vector<vector<vector<Lit> *> *> *buckets) {
	bool litSign = false;
    size_t numVars = cnf->variables.size() - 1;
	for (Clause *clause : cnf->clauses) {
        vector<Lit> *literals = &clause->getVec();
        for (Var v = 1; v <= numVars; v++) {
            Var var = order[v];
            assert (var <= numVars);

            bool found = clause->hasVariable(var, litSign);
            if (!found) continue;

            vector<Lit> *literals2 = new vector<Lit>();
            for (Lit &l : *literals) {
                Lit x;
                x.l(order[l.var], l.sign);
                literals2->push_back(x);
            }
            std::sort(literals2->begin(), literals2->end());

            buckets[litSign][var]->push_back(literals2);
            break;
        }
    }
    cout << "createBuckets is done" << endl;
}

bool exQuant(vector<vector<vector<Lit> *> *> *buckets, size_t var)
{
	cout << "pos size: " << buckets[0][var]->size() << endl;
	cout << "neg size: " << buckets[1][var]->size() << endl;
	if (buckets[0][var]->empty() && buckets[1][var]->empty()) return true;
	//cout << "Non empty bucket var" << order[index].var << endl;

    for (vector<Lit> *pos : *buckets[0][var]) {
        for (vector<Lit> *neg : *buckets[1][var]) {

            vector<Lit> *resolvent = new vector<Lit>();
            vector<Lit>::iterator p, n;
            for (p=pos->begin(), n=neg->begin();  p != pos->end() && n != neg->end(); ) {
                vector<Lit>::iterator x = *p < *n ? p : n;

                if (x->var != var) {
                    resolvent->push_back(*x);
                }
                if (p->var == n->var && p->sign != n->sign) break;
                p += x->var == p->var;
                n += x->var == n->var;
            }

            if (p != pos->end() && n != neg->end()) {
                delete resolvent;
            } else {
                while (p != pos->end()) resolvent->push_back(*p++);
                while (n != neg->end()) resolvent->push_back(*n++);

                if (resolvent->empty()) return false;

                Lit min = Lit::Parse(VAR_MAX);
                for (Lit &l : *resolvent)  min = min < l ? min : l;

                assert (min.var > var);

                buckets[min.sign][min.var]->push_back(resolvent);
            }
        }
        delete pos;
    }

    for (vector<Lit> *neg : *buckets[1][var]) {
        delete neg;
    }

	return true;
}


bool DP(CNF *cnf, vector<Var> &order){

    //create and fill bucketsBDD
    size_t numVars = cnf->variables.size() - 1;
    vector<vector<vector<Lit> *> *> buckets[2];
    buckets[0].resize(numVars + 1);
    buckets[1].resize(numVars + 1);
    for (Var v = 1; v <= numVars; v++) {
        cout << "Mapping var "<< v <<" to "<< order[v] << endl;
        buckets[0][v] = new vector<vector<Lit> *>();
        buckets[1][v] = new vector<vector<Lit> *>();
    }
    createBucketsLit(cnf, order, buckets);

    /*
    Now existentialy quantificatify the bucketBDDs, in order,
    and put resolvent clauses in correct bucket.
    */

    bool SAT = true;
    for (Var v = 1; v <= numVars; v++){

        cout << "iteration: " << v << " variable: "<< v << endl;

        SAT = exQuant(buckets, v);

        if (!SAT) return false;
    }

    return SAT;
}
