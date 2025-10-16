/* For copyright information, see olden_v1.0/mcc/[COPYRIGHT,LCC-COPYRIGHT] */
#ifndef EBSETS_INC
#define EBSETS_INC

#include "c.h"



struct EBset {
  Symbol b;
  int placed;
  struct EBset *nextel;
  struct EBset *next;
  struct EBset *prevel;
  struct EBset *prev;
};
typedef struct EBset *EBSet;

struct EBsetlist{
        EBSet local;
        EBSet sets;
        int test;
};
typedef struct EBsetlist *EBSetList;
 

dclproto(EBSet New_Set,(EBSet *));
dclproto(int Is_Local,(EBSet, Symbol));
dclproto(EBSet Set_Add,(EBSet, Symbol));
dclproto(EBSet Set_Delete,(EBSet, Symbol));
dclproto(Print_Set,(EBSet));
dclproto(EBSet EBSet_Duplicate, (EBSet, EBSet));

 
dclproto(EBSet Set_Of,(EBSetList, Symbol));
dclproto(void AddToSetOf,(EBSetList, Symbol, Symbol));
dclproto(int MoveLocalTo,(EBSetList, Symbol));
dclproto(void AddToLocal,(EBSetList, Symbol));
dclproto(void RemoveFromItsSet,(EBSetList, Symbol));
dclproto(void PrintSets,(EBSetList));
dclproto(void EB_init_setlist,(EBSetList));
dclproto(EBSetList EBSetListDuplicate,(EBSetList));
dclproto(EBSetList EBSetListMerge,(EBSetList, EBSetList));
#endif
