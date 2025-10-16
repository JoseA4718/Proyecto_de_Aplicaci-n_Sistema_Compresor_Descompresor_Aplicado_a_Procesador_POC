/* tree.h
 */

typedef struct tree {
    int		val;
    struct tree *left, *right;
} tree_t;

#define NULL	0

extern tree_t *TreeAlloc (/*int level, int lo, int hi*/);

