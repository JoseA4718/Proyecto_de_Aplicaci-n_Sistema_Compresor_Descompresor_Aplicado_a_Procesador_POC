#include "stdio.h"
#include "vector.h"
#define assert(c) if (!(c)) die();
#define BASE_SIZE 50

struct Vector_struct {int size; void **vec;};

die()
{
  printf("Needless death\n");
  exit(-1);
}

Vector makevector(i)
int i;
{
  int j = (i > 0) ? i : BASE_SIZE;
  Vector retval = (Vector) malloc(sizeof(*retval));
  assert(retval);
  retval->vec = (void **) malloc(j * (sizeof(void *)));
  retval->size = j;
  for (i=0; i<j; i++) retval->vec[i]=NULL;
  assert(retval->vec);
  return retval;
}

void destroyvector(v)
Vector v;
{
  assert(v->vec);
  assert(v);
  free(v->vec);
  free(v);
}

void *getelement(v,i)
Vector v;
int i;
{ 
  assert(v);
  assert(i<v->size);
  assert(v->vec);
  return v->vec[i];
}

void setelement(v,i,e)
Vector v;
int i;
void *e;
{
  assert(v);
  assert(v->vec);
  assert(i>=0);
  if (i>=v->size) {
    v->vec = (void **) realloc(v->vec,v->size*2*sizeof(void *));
    assert(v->vec);
    v->size = v->size * 2;
  }
  v->vec[i]=e;
}
