
typedef struct this{
	int x;
} *This;

extern void *mymalloc();

main()
{
	int y = 1;
	This thing,true;
	true = mymalloc(sizeof(struct this));
        MIGRATE();
        MIGRPH();
	thing = mymalloc(sizeof(struct this));
	while(1)
	{	
	true->x = 3 ;
	true = thing;
	y = 0;
	}
	y = thing->x;
}	
