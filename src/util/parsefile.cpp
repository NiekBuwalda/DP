//
// Created by pim on 16-1-18.
//

#include <vector>
#include <iostream>

#include <assert.h>
#include "structures/CNF.h"
#include "structures/Clause.h"

using std::vector;
using std::runtime_error;
using std::cout;
using std::endl;

CNF *
parseFile (const char *fileName)
{
    FILE *fp;
    if (fileName) {
        fp = fopen(fileName, "r");
        if (!fp) {
            throw std::runtime_error("File not found.");
        }
    } else {
        fp = stdin;
    }

    unsigned int nr_variables;
    unsigned int nr_clauses;
    cnfsize = nr_clauses;


    while (fscanf(fp, "p cnf %u %u\n", &nr_variables, &nr_clauses) != 2) {
        char c;
        int ret = fscanf(fp, "%c", &c);
        if (ret != 1) {
            throw runtime_error("Invalid file type");
        }
        if (c == 'c') {
            while(c != '\n') {
                int ret = fscanf(fp, "%c", &c);
                if (ret != 1) {
                    throw runtime_error("invalid file format");
                }
            }
        } else {
            throw runtime_error("error: expected: p cnf <variables> <clauses>");
        }
    }

    cout << "variables:\t " << nr_variables << endl;
    cout << "clauses:\t" << nr_clauses << endl;

    size_t nvars = 0;
    vector<Clause*> clauses;
    int *var_clause = (int *) calloc (sizeof(int), nr_variables+1);

    CNF *F = new CNF(nr_variables+1);

    for (unsigned int i = 1; i < nr_clauses + 1; ++i) {
        start:
        Clause *clause = new Clause(*F);

        bool satisfied = false;
        while (1) {

            int literal;
            if (fscanf(fp, "%d", &literal) != 1) {
                if (i == 1) {
                    char c;
                    int ret = fscanf(fp, "%c", &c);
                    if (ret != 1) {
                        throw runtime_error("invalid file format");
                    }
                    if (c == 'c') {
                        while(c != '\n') {
                            int ret = fscanf(fp, "%c", &c);
                            if (ret != 1) {
                                throw runtime_error("invalid file format");
                            }
                        }
                        i++;
                        goto start;
                    }
                }

                throw runtime_error("error: expected literal");
            }
            if (!literal) break;

            Lit l = Lit::Parse(literal);
            if (l.var > F->variables.size()) {
                throw std::domain_error("Variable out of range");
            }

            int lclause = literal < 0 ? -i : i;
            if (__builtin_expect((var_clause[l.var] == lclause), 0)) {
                continue; // duplicate variable
            } else if (__builtin_expect((var_clause[l.var] == -lclause), 0)) {
                satisfied = true; // both positive and negative variable
                break;
            }
            nvars += var_clause[l.var] == 0;
            var_clause[l.var] = lclause;


            if (F->variables[l.var] == nullptr) {
                F->variables[l.var] = new Variable(l.var);
            }
            clause->add(l);
        }

        if (!satisfied) {
            if (clause->size() == 0) {
                throw runtime_error("Trivially unsat");
            }

            F->add(clause);
        }
    }


    free (var_clause);

    F->finalize (); // add missing vars

    return F;
}
