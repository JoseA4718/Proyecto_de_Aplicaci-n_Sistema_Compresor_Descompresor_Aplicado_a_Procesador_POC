/* For copyright information, see olden_v1.0/mcc/[COPYRIGHT,LCC-COPYRIGHT] */
/* Call/Flow Graph data structures

   By:  Martin C. Carlisle
   April 29, 1994 
*/
#ifndef CALLFLOW_H
#define CALLFLOW_H
#include "c.h"
#include "vector.h"
#include "sets.h"

typedef enum {forward, backward} EdgeType;

typedef enum {call, head, tail, iscontinue, other} NodeType;

typedef struct fn {
  int index;  /* index in flownode! */
  int stopflag; 
  int checksdone;
  NodeType type;
  Node node;
  struct fn *tail;
  short nsucc,npred;
  struct fnlist *succ,*pred;
  struct EBsetlist *sl;
} *FlowNode;

typedef struct cs {
  Node node;
  FlowNode flow;
  struct cs *next;
} *CallSite;

typedef struct fnlist {
  EdgeType dir;
  FlowNode fn;
  struct fnlist *next;
} *FlowNodeList;

typedef struct {
  Symbol f;
  FlowNode flow;
  CallSite sites;
  Vector flowvec;
  int flowvecsz;
} *CallFlowGraph;

/* This procedure takes a codelist and returns a CallGraph node
   for a particular function */
char *NodeTypeToName(/* nodetype */);
CallFlowGraph callflowgraph(/*Code codelist, Symbol f*/);
FlowNode getsmallestsucc(/*FlowNode fn*/);
#endif


