#ifdef FUTURES
#include "future-cell.h"
#endif
#include "mem-ref.h"
#ifdef PLAIN
#define MLOCAL(ptr)
#endif

#include "hash.h"

#ifndef MAX_PROC
#define MAX_PROC 32
#endif

#ifndef NULL
#define NULL 0
#endif

typedef struct vert_st {
  int mindist;
  struct vert_st *next ;
  Hash edgehash;
  } *Vertex;

typedef struct graph_st {
  Vertex vlist[MAXPROC];
  } *Graph;

Graph MakeGraph(int numvert, int numproc);
