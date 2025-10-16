
typedef struct this{
	int x;
} *This;

main()
{
	int y;
	This thing,true;
	true = mymalloc(sizeof(struct this));
        MIGRATE();
        MIGRPH();
	thing = mymalloc(sizeof(struct this));
	switch(y)
	{
	case 1: thing->x = 2; break;
	case 2: thing->x = 3; break;
	case 3: true->x = 78; break;
	default: true = thing; break;
	}
	y = thing->x;
}	
