#include<stdio.h>

int largest(int arr[], int n) 
{ 
	int i; 
	
	// Initialize maximum element 
	int max = arr[0]; 

	// Traverse array elements 
	// from second and compare 
	// every element with current max 
	for (i = 1; i < n; i++){
		if (arr[i] > max) 
			max = arr[i]; 
		if (arr[i+1] > max) 
			max = arr[i+1]; 
	}
		
	return max; 
} 

int main() 
{ 
	int arr[] = {10, 324, 45, 90, 9808}; 
	int n = sizeof(arr) / sizeof(arr[0]); 
    int num = 0;

    num = largest(arr, n);

    printf("The largest number is %d \n", num);
	return 0; 
}
