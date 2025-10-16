
typedef struct this{
	int x;
} *This;

main()
{
	int y;
	This thing,true,new;
	true = (This)mymalloc(sizeof(struct this));
        MIGRATE();
        MIGRPH();
	thing = (This)mymalloc(sizeof(struct this));
	y = thing->x;
	true = thing;
	y = true->x;
	y = thing->x;
	thing = new;
	thing->x = y;
	y = true->x;
}	
