#include<stdio.h>
#include<math.h>
#define PI 3.14159265
int k = 20;
 
struct DFT_Coefficient {
    double real, img;
};
 
int main(int argc, char **argv) {
    int N = 10;
    float a, b, c;
    int i, j;
    struct DFT_Coefficient dft_val[k];
    double cosine[N];
    double sine[N];
 
    printf("Discrete Fourier Transform using naive method\n");
    printf("Enter the coefficient of simple linear function:\n");
    printf("ax + by = c\n");
    printf("where a = 1, b =2 and c = 3");
    //scanf("%f", &a);
    //scanf("%f", &b);
    //scanf("%f", &c);
    double function[N];
    for (i = 0; i < N; i+=4) {
        function[i]   = (((a * (double) i)   + (b * (double) i  )) - c);
        function[i+1] = (((a * (double) i+1) + (b * (double) i+1)) - c);
        function[i+2] = (((a * (double) i+2) + (b * (double) i+2)) - c);
        function[i+3] = (((a * (double) i+3) + (b * (double) i+3)) - c);
        //System.out.print( "  "+function[i] + "  ");
    }

    for (i = 0; i < N; i+=4) {
        cosine[i] = cos((2 * i * k * PI) / N);
        sine  [i] = sin((2 * i * k * PI) / N);
 
        cosine[i+1] = cos((2 * (i+1) * k * PI) / N);
        sine  [i+1] = sin((2 * (i+1) * k * PI) / N);

        cosine[i+2] = cos((2 * (i+2) * k * PI) / N);
        sine  [i+2] = sin((2 * (i+2) * k * PI) / N);

        cosine[i+3] = cos((2 * (i+3) * k * PI) / N);
        sine  [i+3] = sin((2 * (i+3) * k * PI) / N);
    }
 
    printf("The coefficients are: ");
    for (j = 0; j < k; j++) {
        for (i = 0; i < N; i+=4) {
            dft_val[j].real += function[i] * cosine[i];
            dft_val[j].img  += function[i] * sine  [i];

            dft_val[j].real += function[i+1] * cosine[i+1];
            dft_val[j].img  += function[i+1] * sine  [i+1];

            dft_val[j].real += function[i+2] * cosine[i+2];
            dft_val[j].img  += function[i+2] * sine  [i+2];

            dft_val[j].real += function[i+3] * cosine[i+3];
            dft_val[j].img  += function[i+3] * sine  [i+3];
        }
        printf("( %e ) - ( %e i)\n", dft_val[j].real, dft_val[j].img);
    }
    return 0;
}