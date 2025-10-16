#include <stdio.h>

static void convolve(
    float *Signal,
    float *Filter, size_t FilterLength,
    float *Output, size_t OutputLength)
{
    for (size_t i = 0; i < OutputLength; ++i)
    {
        double sum = 0;
        for (size_t j = 1; j < FilterLength; j+=4){
            sum += Signal[i+j]   * Filter[FilterLength - 1 - j];
            sum += Signal[i+j+1] * Filter[FilterLength - 1 - j+1];
            sum += Signal[i+j+2] * Filter[FilterLength - 1 - j+2];
            sum += Signal[i+j+3] * Filter[FilterLength - 1 - j+3];
        }
        Output[i] = sum;

        sum=0;
        for (size_t j = 1; j < FilterLength; j+=4){
            sum += Signal[i+1+j]   * Filter[FilterLength - 1 - j];
            sum += Signal[i+1+j+1] * Filter[FilterLength - 1 - j+1];
            sum += Signal[i+1+j+2] * Filter[FilterLength - 1 - j+2];
            sum += Signal[i+1+j+3] * Filter[FilterLength - 1 - j+3];
        }
        Output[i+1] = sum;
    }
}

void iirfilter(float* in, int buffersize, float* xmem, float* ymem, float scale, float* coeffs)
{
    int i = 0;
    for (i = 0 ; i < buffersize; i++)
    {
        xmem[ 0 ] = xmem[ 1 ];
        xmem[ 1 ] = xmem[ 2 ];
        xmem[ 2 ] = (*in)*scale;
        ymem[ 0 ] = ymem[ 1 ];
        ymem[ 1 ] = ymem[ 2 ];
        ymem[ 2 ] = xmem[ 0 ] * coeffs [ 2 ];
        ymem[ 2 ] += xmem[ 1 ] * coeffs [ 1 ];
        ymem[ 2 ] += xmem[ 2 ] * coeffs [ 0 ];
        ymem[ 2 ] -= ymem[ 0 ] * coeffs [ 4 ];
        ymem[ 2 ] -= ymem[ 1 ] * coeffs [ 3 ];
        *in = ymem[ 2 ];
        in ++;
    }
}

void iirfilter_unscaled(float * in, int buffersize , float * xmem, float * ymem, float scale, float * coeffs)
{
    int i = 0;
    for(i = 0 ; i < buffersize ; i++)
    {
        xmem[ 0 ] = xmem[ 1 ];
        xmem[ 1 ] = xmem[ 2 ];
        xmem[ 2 ] = *in;
        ymem[ 0 ] = ymem[ 1 ];
        ymem[ 1 ] = ymem[ 2 ];
        ymem[ 2 ] = xmem[ 0 ] * coeffs [ 2 ];
        ymem[ 2 ] += xmem[ 1 ] * coeffs [ 1 ];
        ymem[ 2 ] += xmem[ 2 ] * coeffs [ 0 ];
        ymem[ 2 ] -= ymem[ 0 ] * coeffs [ 4 ];
        ymem[ 2 ] -= ymem[ 1 ] * coeffs [ 3 ];
        *in = ymem[ 2 ];
        in ++;
}
}
