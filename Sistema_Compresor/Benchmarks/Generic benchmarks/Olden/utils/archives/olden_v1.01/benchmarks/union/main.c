#include "union.h"
#ifdef MIGRONLY
#define BLAH MIGRPH()
#else
#define BLAH
#endif

#ifdef VERIFY_AFFINITIES
#include "affinity.h"
CHECK4(QuadTree,nw,ne,sw,se,tree)
#endif

int CountTree(QuadTree tree) 
{
  QuadTree nw,ne,sw,se;

  BLAH;
  nw = tree->nw; ne = tree->ne; sw = tree->sw; se = tree->se;
  if (nw==NULL && ne==NULL && sw==NULL && se==NULL)
    return 1;
  else
    return CountTree(nw) + CountTree(ne) + CountTree(sw) +
      CountTree(se);
}

static QuadTree copy(QuadTree tree, QuadTree parent)
{
  QuadTree retval,child;

  BLAH;
  if (tree==NULL) return NULL;
#ifndef FUTURES
  retval = (QuadTree) mymalloc(sizeof(*retval));
#else
  retval = ALLOC(PID(tree),sizeof(*retval));
#endif
  retval->childtype = tree->childtype;  
  retval->color = tree->color;
  retval->parent = parent;

#ifndef FUTURES
  child = tree->sw;
  retval->sw = copy(child,retval);
  child = tree->se;
  retval->se = copy(child,retval);
  child = tree->nw;
  retval->nw = copy(child,retval);
  child = tree->ne;
  retval->ne = copy(child,retval);
#else
  { future_cell_pointer fc_sw,fc_se,fc_nw;
    
  child = tree->sw;
  FUTURE(child,retval,copy,&fc_sw);
  child = tree->se;
  FUTURE(child,retval,copy,&fc_se);
  child = tree->nw;
  FUTURE(child,retval,copy,&fc_nw);
  
  child = tree->ne;
  retval->ne = copy(child,retval);

  TOUCH(&fc_sw);
  TOUCH(&fc_se);
  TOUCH(&fc_nw);
  retval->sw = (QuadTree) fc_sw.value;
  retval->se = (QuadTree) fc_se.value;
  retval->nw = (QuadTree) fc_nw.value;
}
#endif

  return retval;
}
  
QuadTree TreeUnion(QuadTree tree1, QuadTree tree2, QuadTree parent)
{
  QuadTree retval,child,child2,nw;
  future_cell_pointer fc_sw,fc_se,fc_ne;

  BLAH;
  if (tree2->color==black 
      || tree1->color==white) {
    return copy(tree2,parent);
  }
  if (tree2->color==white 
      || tree1->color==black) {
    return copy(tree1,parent);
  }
  
  retval = (QuadTree) mymalloc(sizeof(*retval));

#ifndef FUTURES
      retval->childtype = tree1->childtype;
      retval->parent = parent;
      child = tree1->sw;
      child2 = tree2->sw;
      retval->sw = TreeUnion(child,child2,retval);
      child = tree1->se;
      child2 = tree2->se;
      retval->se = TreeUnion(child,child2,retval);
      child = tree1->ne;
      child2 = tree2->ne;
      retval->ne = TreeUnion(child,child2,retval);
      child = tree1->nw;
      child2 = tree2->nw;
      retval->nw = TreeUnion(child,child2,retval);
#else
      child = tree1->sw;
      child2 = tree2->sw;
      FUTURE(child,child2,retval,TreeUnion,&fc_sw);
      child = tree1->se;
      child2 = tree2->se;
      FUTURE(child,child2,retval,TreeUnion,&fc_se);
      child = tree1->ne;
      child2 = tree2->ne;
      FUTURE(child,child2,retval,TreeUnion,&fc_ne);

      child = tree1->nw;
      child2 = tree2->nw;
      retval->nw = TreeUnion(child,child2,retval);
      retval->childtype = tree1->childtype;
      retval->parent = parent;

      TOUCH(&fc_sw);
      TOUCH(&fc_se);
      TOUCH(&fc_ne);
      retval->sw = (QuadTree) fc_sw.value;
      retval->se = (QuadTree) fc_se.value;
      retval->ne = (QuadTree) fc_ne.value;
#endif
  return retval;
}

int main(int argc, char *argv[])
{
  QuadTree tree,tree2,tree_union;
  int count,count2;
  int level;

  BLAH;
#ifdef FUTURES
  level = SPMDInit(argc,argv);
#else
  level = dealwithargs(argc,argv);
  filestuff();
#endif

  chatting("Union with %d levels on %d processors\n",level,__NumNodes);
  tree=MakeTree(2048,0,0,0,__NumNodes-1,NULL,southeast,level);
  tree2=MakeTree(2048,10,10,0,__NumNodes-1,NULL,southeast,level);
#ifdef VERIFY_AFFINITIES
  Docheck_tree(tree);
  Docheck_tree(tree2);
#endif
  /*count=CountTree(tree);*/
  /*count2=CountTree(tree2);*/
  chatting("# of leaves is: %d,%d\n",count,count2);


  CMMD_node_timer_clear(0);
  CMMD_node_timer_start(0);
  tree_union=TreeUnion(tree,tree2,NULL);
  CMMD_node_timer_stop(0);

  chatting("TreeUnion is completed\n");
  /*count=CountTree(tree_union);*/
  chatting("# of leaves in union is %d\n",count);
  chatting("Time elapsed = %f seconds\n",CMMD_node_timer_elapsed(0));
#ifdef FUTURES
  __ShutDown();
#endif
  exit(0);
}

