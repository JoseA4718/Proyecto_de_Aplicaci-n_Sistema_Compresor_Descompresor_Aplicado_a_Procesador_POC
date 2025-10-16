
typedef struct this{
	int x;
} *This;

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
	while(1)
	{
	thing->x = 4;
   if (y==4) break;
	thing->x = 5;
        }
	y = 0;
	}
	y = thing->x;
}	
