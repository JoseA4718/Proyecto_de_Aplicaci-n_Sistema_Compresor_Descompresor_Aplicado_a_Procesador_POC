#include <stdio.h>
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
