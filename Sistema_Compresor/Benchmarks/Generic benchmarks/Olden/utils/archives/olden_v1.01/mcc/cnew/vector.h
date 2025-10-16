#ifndef VECTOR_INCLUDED
#define VECTOR_INCLUDED

typedef struct Vector_struct *Vector;

Vector makevector(/* int i */);
/* create a vector with hint on initial size == 0 for default */

void destroyvector(/* Vector v */);
/* destroy a vector */

void *getelement(/* Vector v, int i */);
/* get ith element of vector v */

void setelement(/* Vector v, int i, void *e */);
/* set ith element of v to e */

#endif
