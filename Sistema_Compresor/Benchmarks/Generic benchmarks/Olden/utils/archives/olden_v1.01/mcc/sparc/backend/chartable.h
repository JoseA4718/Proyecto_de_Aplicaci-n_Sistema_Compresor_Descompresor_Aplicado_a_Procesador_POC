#ifndef charTABLE_INCLUDED
#define charTABLE_INCLUDED

/* Code courtesy of Dan Vitale CS 217 Spring 1994 */

typedef struct charTable_struct *charTable_T;

charTable_T charTable_new(/*void*/);
/* initializes the table */

void charTable_put(/*charTable_T table, char *ident, void *info*/);
/* adds an entry to the symbol table "table".
 * "ident" must be the first appearance of the word in the
 * specified file.  The contents of "ident" will be copied by
 * Table_put if it is the first appearance of "ident" in the table.
 * "info" will always be added to "table".
 */

void *charTable_get(/*charTable_T table, char *ident*/);
/* checks to see if "ident" is already in "table".
 * If it is, the pointer to all information concerning "ident"
 * is returned; else, NULL is returned.  
 */

void charTable_forEach(/*charTable_T table,
		   void foreach(void *arg1, char *arg2, void *arg3),
		   void *foreach_cl*/);

/* executes the function "foreach" for every entry in "table" */
/* foreach_cl is first argument, ident is second, info is third */
 
/* It is a checked run-time error to pass a NULL to any function
 * in this interface.  
 */
 
#endif
