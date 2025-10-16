
typedef struct this{
	int x;
} *This;

extern This mymalloc();

main()
{
	int y = 1;
	This thing,true;
	true = mymalloc(sizeof(struct this));
        MIGRATE();
        MIGRPH();
	thing = mymalloc(sizeof(struct this));
/***
	while(1)
	{	
	true->x = 3 ;
	y = 0;
*/
	while(1)
	{
     if (y>4) break;
	  thing->x = 4;
     if (y>4) 
       thing->x = 5;
     else 
       thing->x = 6;
   }
/*
	}
	y = thing->x;
*/
}	
