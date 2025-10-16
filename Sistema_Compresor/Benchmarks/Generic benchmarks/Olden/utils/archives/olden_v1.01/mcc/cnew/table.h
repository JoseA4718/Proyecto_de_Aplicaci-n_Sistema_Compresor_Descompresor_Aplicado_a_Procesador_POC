#ifndef TABLE_INCLUDED
#define TABLE_INCLUDED

/* Code courtesy of Dan Vitale CS 217 Spring 1994 
   modified by mcc May 4, 1994 to use void * and old-style C */

typedef struct Table_struct *Table_T;

Table_T Table_new(/*void*/);
/* initializes the table */

void Table_destroy(/*Table_T table */);
/* free a table */

void Table_put(/*Table_T table, void *ident, void *info*/);
/* adds an entry to the symbol table "table".
 * "ident" must be the first appearance of the word in the
 * specified file. "info" will always be added to "table".
 */

void *Table_get(/*Table_T table, void *ident*/);
/* checks to see if "ident" is already in "table".
 * If it is, the pointer to all information concerning "ident"
 * is returned; else, NULL is returned.  
 */

void Table_remove(/*Table_T table, void *ident*/);
/* remove "ident" from "table" if present
 */

void Table_forEach(/*Table_T table,
		   void foreach(void *arg1, char *arg2, void *arg3),
		   void *foreach_cl*/);

/* executes the function "foreach" for every entry in "table" */
/* foreach_cl is first argument, ident is second, info is third */
 
/* It is a checked run-time error to pass a NULL to any function
 * in this interface.  
 */
 
#endif
