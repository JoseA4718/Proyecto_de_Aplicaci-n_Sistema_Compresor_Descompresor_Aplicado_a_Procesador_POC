#include <stdio.h>
#define dx 2144
#define dy 6640

int main(void)
{
   FILE *ifp, *ofp;
   int i, j, x, y, w=2, sum;
   static int image[dx][dy];
   static int imageN[dx][dy];

   ifp = fopen("pano.txt","r");
   for (i=0; i<dx; i=i+1)
      for (j=0; j<dy; j=j+1)
         fscanf(ifp,"%d", &image[i][j]);
	 fscanf(ifp,"%d", &image[i+1][j+1]);
	 fscanf(ifp,"%d", &image[i+2][j+2]);
	 fscanf(ifp,"%d", &image[i+3][j+3]);
   fclose(ifp);

   for (i=0; i<dx; i=i+1)
      for (j=0; j<dy; j=j+1)
         imageN[i][j] = image[i][j];

   for (i=w; i<dx-w; i=i+1)
      for (j=w; j<dy-w; j=j+1){
         sum = 0;
         for (x=-w; x<=w; x=x+1)
            for (y=-w; y<=w; y=y+1)
               sum = sum + image[i+x][j+y];
         imageN[i][j] = (int) sum/25.0;
       }

   ofp = fopen("meanPano.txt","w");
   for(i=0; i<dx; i=i+1){
      for (j=0; j<dy; j=j+1)
         fprintf(ofp,"%d ", imageN[i][j]);
      fprintf(ofp,"\n");
   }
   fclose(ofp);

   return 0;
}
