#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "table.h"
#define assert(ex,num) if (!(ex)) { printf("Table assertion %d failed\n",num); die(-1); }

#define TABLESIZE 101  /* arbitrary hash table size */

struct elem {void *ident; void *info; struct elem *next;}; 
/* "void *info" holds all necessary information on "ident" */
struct Table_struct {struct elem *entry[TABLESIZE];};


static die(exitval)
{
  exit(exitval);
}

/* "Table_New" initializes the symbol table */

Table_T Table_new() 
{
  int i; 
  Table_T table = (Table_T) malloc(sizeof(struct Table_struct));
  assert(table,1);
  for (i = 0; i < TABLESIZE; i++)
    table->entry[i] = NULL;     /* set every block of array equal to NULL */
  return table;
}

/* free a previously created table */
void Table_destroy(table)
Table_T table;
{
  int i;
  struct elem *p;
  assert(table,16);
  for(i=0; i<TABLESIZE; i++)
    for (p=table->entry[i]; p; )
      {
        struct elem *tmp=p;
        p = p->next;
        free(tmp);
      }
  free(table);
}

/* If "ident" is already present in table, "Table_put" adds "info" to "table";
 * else "Table_put" adds the "ident" and "info" to the list */
void Table_put(table,ident,info)
Table_T table;
void *ident;
void *info;
{
  int i;
  struct elem *p;  /* p is a variable pointer, which will point to the
                      identifier if it exists.  */
  assert(table,3);
  assert(ident,4);
  assert(info,5);
  i = ((int) ident)%TABLESIZE;
  for (p = table->entry[i]; p; p = p->next)
    if (p->ident==ident)  /* if "ident" is in table */
      {
        p->info = info;        /* add "info" to table and return */
        assert(p->info,6);
        return;
      }
  assert(p == NULL,7);         /* verifies "ident" is not in table */
  p = (struct elem *) malloc(sizeof(struct elem));
  p->ident = ident;
  assert(p,8);
  assert(p->ident,9);
  p->info = info;
  assert(p->info,10);
  p->next = table->entry[i];  /* links "ident" into table */
  table->entry[i] = p; 
}

/* "Table_get" returns the pointer to the information corresponding to "ident" 
 * if that "ident" is in the table; otherwise it returns NULL */

void *Table_get(table,ident)
Table_T table;
void *ident;
{
  int i;
  struct elem *p;
  assert(table,11);
  assert(ident,12);
  i = ((int) ident)%TABLESIZE;
  for (p = table->entry[i]; p; p = p->next)
    if (p->ident==ident)  /* if "ident" is in table */
      return p->info;             /* returns pointer to "info" about "ident" */
  assert(p == NULL,13);     /* verifying "ident" isn't in table */
  return p;
}
	  
/* "Table_forEach" calls the function "foreach" for each entry in the table */

void Table_forEach(table, foreach,foreach_cl)
Table_T table;
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

void Table_remove(table,ident)
Table_T table;
void *ident;
{
  int i;
  struct elem **p;
  struct elem *q;
  
  assert(table,17);
  assert(ident,18);
  i = ((int) ident)%TABLESIZE;
  for (p = &(table->entry[i]); *p; p = &((*p)->next)) {
    if ((*p)->ident==ident) { /* if "ident" is in table */
      q = *p;
      *p = q->next;
      free(q);
      }
    } /* for */
}
