//
// Created by pim on 16-1-18.
//

#ifndef PISAT_PARSEFILE_H
#define PISAT_PARSEFILE_H

#include "../structures/CNF.h"

/**
 * Parses a file and loads the contents into a CNF object.
 *
 * @param fileName - location of the file containing
 * the cnf formula
 * @return CNF - a cnf expression that contains the
 * variables and the clauses from the file.
 */
CNF * parseFile (const char *fileName);

#endif //PISAT_PARSEFILE_H
