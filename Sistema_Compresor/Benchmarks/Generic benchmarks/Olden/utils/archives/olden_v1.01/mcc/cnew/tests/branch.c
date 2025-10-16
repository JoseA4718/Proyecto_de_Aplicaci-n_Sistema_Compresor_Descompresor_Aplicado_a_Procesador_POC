
typedef struct this{
	int x;
} *This;

extern void *mymalloc();

main()
{
	int y;
	This thing,true;
	true = mymalloc(sizeof(struct this));
        MIGRATE();
        MIGRPH();
	thing = mymalloc(sizeof(struct this));
	if(y)
	{thing->x = 2;}
	else true->x = 7;
	y = thing->x;
	y = true->x;
	y = thing->x;
}	
