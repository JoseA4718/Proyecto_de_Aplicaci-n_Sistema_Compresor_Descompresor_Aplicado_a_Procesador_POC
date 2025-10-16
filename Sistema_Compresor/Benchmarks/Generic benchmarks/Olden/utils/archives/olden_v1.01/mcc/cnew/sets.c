/* For copyright information, see olden_v1.0/mcc/[COPYRIGHT,LCC-COPYRIGHT] */
#include "sets.h"
#define NULL 0

#define SetNoExist NULL
#define SymNotInSet NULL

/* Some procedures may appear to do funny things-- keep in mind how everything
affects SetLists and local!!! */

EBSet New_Set(top, b)
/* returns a new set containing b. */
EBSet *top;
Symbol b;
{
  EBSet s;
  if(top == NULL) return NULL;

  s = (EBSet)calloc(1, sizeof (struct EBset));
  s->next = NULL;
  s->nextel = NULL;
  s->b = b;
  s->placed = 0;
  s->prev = NULL;
  if (*top == NULL) {
    *top = s;
  }
  else {
    s->next = *top;
    (*top)->prev = s;
    *top = s;
  }
  return s;
}


int Is_Local(local, b)
/* returns 1 if the element is found, and 0 if it is not */
EBSet local;
Symbol b;
{
  EBSet look;
  look = local;
  
  if (local == NULL) return 0;
  while (look != NULL && (strcmp(look->b->name, b->name) != 0)) look = look->nextel;
  if(look == NULL) return 0;
  if (!strcmp(look->b->name,b->name)) return 1;
  return 0;
}

EBSet Set_Add(s, b)
/* add b to the set s */
EBSet s;
Symbol b;
{
  EBSet look, e;
  look = s;
  
  if (s == NULL) 
    {
      return SetNoExist;
    }

  e = (EBSet)malloc(sizeof(struct EBset));
  e->b = b;
  e->next = NULL;
  e->prev = NULL;
  e->nextel = NULL;

  while (look->nextel != NULL && (strcmp(look->nextel->b->name,e->b->name) != 0))
    look = look->nextel;
  /* we now have the last nonNULL element */
   
  if (!(strcmp(look->b->name, e->b->name))) { free(e); return s;}
  /* is already there */
    
  else {
    e->nextel = look->nextel;
    e->prevel = look;
    look->nextel = e;
   }
  return s;
}


EBSet Set_Delete(s, b)
EBSet s;
Symbol b;
/* delete the element b from the set s */
{
  EBSet look,look2;
  look = s;
  
  if (s == NULL)
    { return SetNoExist;}
  if(!strcmp(s->b->name, b->name))
    {
      if(s->nextel == NULL) /* this is the only element; remove set */
        {
	  if(s->prev && s->next) {
	    s->prev->next = s->next;
	    s->next->prev = s->prev;
	  }
	  else if (!s->prev && s->next) {
	    look2 = s->next; 
	    s->b = look2->b;
	    s->next = look2->next;
	    s->nextel = look2->nextel;
	    if(s->next) s->next->prev = s;
	    if(s->nextel) s->nextel->prevel = s;
	    free(look2);
	    return NULL;
	  }
	  else if (s->prev && !s->next) {
	    s->prev->next = NULL;
	    free(s);
	    return NULL;

	  }
	}
      else            /* this is the first element of several */
	{
	  s->b = s->nextel->b;
	  look2 = s->nextel;
	  s->nextel = look2->nextel;
	  free(look2);
	  if(s->nextel) s->nextel->prevel = s;
	  return s;
	}
    }
  else /* b != s->b */
    {
      look = s;
      while(look->nextel && strcmp(look->nextel->b->name, b->name))
	look = look->nextel;   
      if(!strcmp(look->nextel->b->name, b->name)) /* we found the same */
	{
	  look2 = look->nextel;
	  look->nextel = look2->nextel;
	  if(look->nextel) look->nextel->prevel = look;
	  free(look2);
	  return s;
	}
      else return s; /* the same did not exist. */
    } 
}



Print_Set(s) EBSet s;
/* print the set, if DEBUG is defined */
{
#ifdef DEBUG
  if (s == NULL) return;
  do {
    fprint(2,"%s ",s->b->name);
    s = s->nextel;
  }while (s != NULL);
  fprint(2,"\n");
#endif
}



EBSet EBSet_Duplicate(s, parent)
EBSet s;
EBSet parent;
{
  EBSet s2;
  if (s == NULL) return NULL;
  s2 = (struct EBset *)calloc(1, sizeof(struct EBset));
  s2->b = s->b;
  s2->prevel = parent;
  s2->nextel = EBSet_Duplicate(s->nextel, s2);
  return s2;
}


 
static EBSet El_Of(s, p)
EBSet s;
Symbol p;
/* return the set element containing p in the set s. */
{
  EBSet find;
 
  find = s;
  while(find!= NULL && (strcmp(find->b->name, p->name) != 0)) find = find->nextel;
  if(find == NULL) return NULL;
  if (!strcmp(find->b->name, p->name)) return find;
  return NULL;
}
 
EBSet Set_Of(sl, p)
/* return the set that contains p, given the setlist */
EBSetList sl;
Symbol p;
{
  EBSet a,b;
 
  a = sl->sets;
  b = sl->sets;
  while(a != NULL)
    {
      if (Is_Local(a, p)) break;
      else a = a->next;
    }
 
  if (a == NULL){
    New_Set(&(sl->sets),p);
 
    return sl->sets;
  }
  else return a;
}
 
void AddToSetOf(sl, p, q)
/* add p to the set of q */
EBSetList sl;
Symbol p, q;
{
  EBSet s;
  s = Set_Of(sl, q);
  s = Set_Add(s, p);
}
 
int MoveLocalTo(sl,p)
/* move the local designation to the set with p. */
EBSetList sl;
Symbol p;
{
  if(!Is_Local(sl->local, p))
    {
      sl->local = Set_Of(sl,p);
      return 1;
    }
  return 0;
}
 
void AddToLocal(sl,p)
/* add p to the local set */
EBSetList sl;
Symbol p;
{
  if (sl->local == NULL)
    {
      sl->local = Set_Of(sl,p);
    }
  else {
    RemoveFromItsSet(sl,p);
    sl->local = Set_Add(sl->local, p);
  }
}
 
 
void RemoveFromItsSet(sl,p)
/* remove p from its set */
EBSetList sl;
Symbol p;
{
  EBSet s, sb;
  /*if(sl->sets == NULL) return;*/
  if (sl == NULL || sl->sets == NULL) return;
  s = Set_Of(sl, p);
  if(sl->sets == s && s->next == NULL && s->nextel == NULL) {
    free(sl->sets);
    sl->sets = NULL;
    sl->local = NULL;
    return;
  }
  /* this is a HACK */
  if(sl->local!= NULL && (sl->local->b == s->b)) sl->local = s;
  if(sl->local == s && s->nextel == NULL) sl->local = NULL;
  if(sl->local && (sl->local == s->next) && (s->nextel == NULL)) sl->local = s;
  /* because of the way set-delete is implemented, s->next is free'd and
     the data in it moved into s */
  s = Set_Delete(s, p); /* at least something is worth saving. */
}
 
 
void PrintSets(sl)
EBSetList sl;
/* Print ALL the sets, if DEBUG is defined. */
{
#ifdef DEBUG
  EBSet s;
  fprint(2,"-----------------------\n");
  if(sl != NULL) {
    for(s=sl->sets;s != NULL; s = s->next)
      Print_Set(s);
    if(sl->local!= NULL) {
      fprint(2, "local:");
      Print_Set(sl->local);
    }
  }
  fprint(2,"************************\n");
#endif
}
 
void EB_init_setlist(sl)
EBSetList sl;
/* make a new, blank set list. pass this function an allocated setlist.  */
{
  if (sl == NULL) return;
  sl->local = NULL;
  sl->sets = NULL;
  sl->test = 0;
}
 
EBSetList EBSetListDuplicate(sl)
EBSetList sl;
{
  EBSetList sl2;
  EBSet s,r,q;
  
  if (sl == NULL) return NULL;
  /* sl is fine here */
  sl2 = (struct EBsetlist *)calloc(1, sizeof(struct EBsetlist));
  /* and ruined here. could we be forgetting to allocate something?*/
  sl2->test = 0;
  q = sl->sets;
  r = EBSet_Duplicate(q, NULL);
  sl2->sets = r;
  s = sl2->sets;
  if(s) s->prev = NULL;
  while(q != NULL && q->next != NULL)
    {
      q = q->next;
      r = EBSet_Duplicate(q, NULL);
      s->next = r;
      r->prev = s;
      s = r;
    }
  if(sl->local == NULL) 
    {
      sl2->local = NULL;
    }
  else if (sl->local->b == NULL)
    {
      sl2->local = NULL;
    }
  else
    {
      sl2->local = Set_Of(sl2, sl->local->b);
      /* which will always look the same. */
    }
  return sl2;
}
 
EBSetList EBSetListMerge(sl1, sl2)
EBSetList sl1;
EBSetList sl2;
{
  EBSetList newSetList;
  EBSet currentSet, foundSet, newSet, currentEl, lookEl, foundEl;
  EBSet holdSets = NULL;
  
  newSet = NULL;
  /** trace through all elements in sl1 **/
  if(sl1 == NULL) return EBSetListDuplicate(sl2);
  if(sl2 == NULL) return EBSetListDuplicate(sl1);
 
  for(currentSet = sl1->sets; currentSet != NULL; currentSet = currentSet->next)    {
      for(currentEl = currentSet; currentEl != NULL; currentEl = currentEl->nextel)
        {
          if(currentEl->placed == 0)
            {
              New_Set(&newSet, currentEl->b);
              currentEl->placed = 1;
              foundSet = Set_Of(sl2, currentEl->b);
              foundEl = El_Of(foundSet, currentEl->b);
              foundEl->placed = 1;
              
              lookEl = currentEl;
              while(lookEl->nextel != NULL)
                {
                  lookEl = lookEl->nextel;
                  if((int)Set_Of(sl2, lookEl->b) == (int)foundSet)
                    {
                      lookEl->placed = 1;
                      foundEl = El_Of(foundSet, lookEl->b);
                      foundEl->placed = 1;
                      newSet = Set_Add(newSet, lookEl->b);
                    }
                }
              newSet->next = holdSets;
              if(holdSets != NULL) holdSets->prev = newSet;
              holdSets = newSet;
            }
          /* if it has already been placed, ignore it. */
        }
    }
 
  /** trace through all remaining singleton elements in sl2 **/
 
  for(currentSet = sl2->sets; currentSet != NULL; currentSet = currentSet->next)    {
      for(currentEl = currentSet; currentEl != NULL; currentEl = currentEl->nextel)
        {
          if(currentEl->placed == 0)
            {
              newSet = New_Set(&newSet, currentEl->b);
              currentEl->placed = 1;
              newSet->next = holdSets;
              if(holdSets != NULL) holdSets->prev = newSet;
              holdSets = newSet;
            }
        }
    }
  for(currentSet = sl1->sets; currentSet != NULL; currentSet = currentSet->next)    {
      for(currentEl = currentSet; currentEl != NULL; currentEl = currentEl->nextel)
        {
          currentEl->placed = 0;
        }
    }
  for(currentSet = sl2->sets; currentSet != NULL; currentSet = currentSet->next)    {
      for(currentEl = currentSet; currentEl != NULL; currentEl = currentEl->nextel)
        {
          currentEl->placed = 0;
        }
    }
 
  newSetList = (EBSetList)calloc(1, sizeof(struct EBsetlist));
  EB_init_setlist(newSetList);
  newSetList->sets = holdSets;
 
  /** trace through local sets. **/
  currentSet = sl1->local;
  foundSet = sl2->local;
  for(currentEl = currentSet; currentEl != NULL; currentEl = currentEl->nextel)
    {
      if((int)Set_Of(sl2, currentEl->b) == (int)foundSet) /* local to both */
        {
          newSetList->local = Set_Of(newSetList->sets, currentEl->b);
          break;
        }
    }
 
  return newSetList;
}
