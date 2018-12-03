//
// Created by pim on 16-1-18.
//

#ifndef PISAT_LITERAL_H
#define PISAT_LITERAL_H

#include <cstdio>

#include <assert.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>


using std::vector;

typedef uint32_t Var;

#define VAR_MAX (UINT32_MAX >> 1)

typedef enum : char {
    False = false,
    True = true,
    Undef = 2
} TruthValue;

/**
 * A literal is a dense object of 32-bit containing a variable index
 * and a sign bit.
 */
struct __attribute__((packed)) Lit {

public:
    Var var : 31;
    Var sign : 1;

    void l(Var v, bool sign) {
        this->var = v;
        this->sign = sign;
    };

    void print() { printf("%s%d\n", sign ? "~" : "", var); }

    static inline Lit Parse(int literal) {
        Lit r; r.var = abs(literal); r.sign = literal < 0; return r;
    }
    Lit invert() { Lit x = *this; x.sign = !x.sign; return x; }
    bool operator ==(Lit other) {
        return (*(int32_t *) this) == (*(int32_t *) &other);
    }
    bool operator <(Lit other) {
        return var < other.var;
    }
};

class LiteralSet {

    TruthValue     *seen;
    vector<Lit>     list;
    size_t          propagated = 0;

public:
    LiteralSet(size_t n_vars)
    {
        seen = (TruthValue *) malloc(sizeof(n_vars));
        memset(seen, Undef, sizeof(n_vars));
    }

    Lit *getNext() {
        if (size() == propagated) return nullptr;
        return &list[propagated++];
    }

    Lit *getPrev() {
        if (0 == propagated) return nullptr;
        return &list[--propagated];
    }

    bool add(Lit l) {
        TruthValue old = seen[l.var];
        if (old != Undef) {
            return old == (TruthValue)l.sign;
        }
        list.push_back(l);
        seen[l.var] = (TruthValue) l.sign;
        return true;
    }

    size_t size() {
        return list.size();
    }

    Lit pop() {
        Lit l = list.back();
        list.pop_back();
        assert (propagated <= size());
        seen[l.var] = Undef;
        return l;
    }
};

#endif //PISAT_LITERAL_H
