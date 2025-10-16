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
             
        printf("Addition vector:\n");
        for (i = 0; i < n; i++){
            printf("%d ", c[i]);
            printf("%d ", c[i+1]);
            printf("%d ", c[i+2]);
            printf("%d ", c[i+3]);
        }
            
        
        printf("\n");

}

#define n 3 

// Function that return 
// dot product of two vector array. 
int dotProduct(int vect_A[], int vect_B[]) 
{ 
	int product = 0; 

	// Loop for calculate dot product 
	for (int i = 0; i < n; i+=2){
		product += vect_A[i]   * vect_B[i];
		product += vect_A[i+1] * vect_B[i+1]; 
	}
	
	return product; 
} 

// Function to find 
// cross product of two vector array. 
void crossProduct(int vect_A[], int vect_B[], int cross_P[]) 
{ 

	cross_P[0] = vect_A[1] * vect_B[2] - vect_A[2] * vect_B[1]; 
	cross_P[1] = vect_A[2] * vect_B[0] - vect_A[0] * vect_B[2]; 
	cross_P[2] = vect_A[0] * vect_B[1] - vect_A[1] * vect_B[0]; 
} 
