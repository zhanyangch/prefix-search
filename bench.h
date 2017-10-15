#ifndef BENCH_H
#define BENCH_H

#include "tst.h"
double tvgetf();
double bench(const tst_node *root,
             char **a,
             int *n,
             const int max);
#endif