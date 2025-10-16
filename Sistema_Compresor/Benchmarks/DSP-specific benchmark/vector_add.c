/* Vector addition */
#include<stdio.h>

int vector_add() 
{

        int a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
        int b[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
        /* result vector */
        int c[10];     
        int n = 10;
        int i;

        /* perform vector addition */
        for (i = 0; i < n; i+=4){
            c[i]   = a[i]   + b[i];
            c[i+1] = a[i+1] + b[i+1];
            c[i+2] = a[i+2] + b[i+2];
            c[i+3] = a[i+3] + b[i+3];
        }

        /*    
        printf("Addition vector:\n");
        for (i = 0; i < n; i++){
            printf("%d ", c[i]);
            printf("%d ", c[i+1]);
            printf("%d ", c[i+2]);
            printf("%d ", c[i+3]);
        }
        */

        printf("%d ", c[0]);
        printf("%d ", c[1]);
        printf("%d ", c[2]);
        printf("%d ", c[3]);
        printf("%d ", c[4]);
        printf("%d ", c[5]);
        printf("%d ", c[6]);
        printf("%d ", c[7]);
        printf("%d ", c[8]);
        printf("%d ", c[9]);        
        
        printf("\n");

}
