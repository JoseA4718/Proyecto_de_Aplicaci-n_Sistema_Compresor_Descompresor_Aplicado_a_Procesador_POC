
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
	y = thing->x;
	y = true->x;
	true->x = y;
	thing->x = y;
}	
