#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "chartable.h"
#define assert(ex,num) if (!(ex)) { printf("charTable assertion %d failed\n",num); exit(-1); }

#define TABLESIZE 101  /* arbitrary hash table size */

struct elem {char *ident; void *info; struct elem *next;}; 
   /* "void *info" holds all necessary information on "ident" */
struct charTable_struct {struct elem *entry[TABLESIZE];};

/* "charTable_New" initializes the symbol table */

charTable_T charTable_new() 
{
  int i; 
  charTable_T table = (charTable_T) malloc(sizeof(struct charTable_struct));
  assert(table,1);
  for (i = 0; i < TABLESIZE; i++)
    table->entry[i] = NULL;     /* set every block of array equal to NULL */
  return table;
}

/* "hash" is a cheap and adequate hash function */

static unsigned hash(ident)
char *ident;
{
  unsigned h = 0;
  assert(ident,2);
  while (*ident)
    h = (h<<1) ^ *ident++;
  return h;
}

/* If "ident" is already present in table, "charTable_put" adds "info" to "table";
 * else "charTable_put" adds the "ident" and "info" to the list */

void charTable_put(table, ident, info)
charTable_T table;
char *ident;
void *info;
{
  int i;
  struct elem *p;  /* p is a variable pointer, which will point to the
		    * identifier if it exists.  */
  assert(table,3);
  assert(ident,4);
  assert(info,5);
  i = hash(ident)%TABLESIZE;
  for (p = table->entry[i]; p; p = p->next)
    if (strcmp(p->ident, ident) == 0)  /* if "ident" is in table */
      {
	p->info = info;        /* add "info" to table and return */
	assert(p->info,6);
	return;
      }
  assert(p == NULL,7);         /* verifies "ident" is not in table */
  p = (struct elem *) malloc(sizeof(struct elem));
  p->ident = (char *) malloc(strlen(ident) + 1);
  assert(p,8);
  assert(p->ident,9);
  strcpy(p->ident, ident);
  p->info = info;
  assert(p->info,10);
  p->next = table->entry[i];  /* links "ident" into table */
  table->entry[i] = p; 
}

/* "charTable_get" returns the pointer to the information corresponding to "ident" 
 * if that "ident" is in the table; otherwise it returns NULL */

void *charTable_get(table, ident)
charTable_T table;
char *ident;
{
  int i;
  struct elem *p;
  assert(table,11);
  assert(ident,12);
  i = hash(ident)%TABLESIZE;
  for (p = table->entry[i]; p; p = p->next)
    if (strcmp(p->ident, ident) == 0)  /* if "ident" is in table */
      return p->info;             /* returns pointer to "info" about "ident" */
  assert(p == NULL,13);     /* verifying "ident" isn't in table */
  return p;
}
	  
/* "charTable_forEach" calls the function "foreach" for each entry in the table */

void charTable_forEach(table, foreach, foreach_cl)
charTable_T table;
void (*foreach)();
void *foreach_cl;
{
  int i;
  struct elem *p;
  assert(table,14);
  assert(foreach,15);
  for (i = 0; i < TABLESIZE; i++)
    {
      for (p = table->entry[i]; p; p = p->next)
	(*foreach)(foreach_cl, p->ident, p->info);
    }
}


