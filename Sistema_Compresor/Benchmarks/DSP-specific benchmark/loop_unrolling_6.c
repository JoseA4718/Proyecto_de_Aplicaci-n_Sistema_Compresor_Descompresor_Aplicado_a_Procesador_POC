#include<stdio.h>

void iirfilter(float* in, int buffersize, float* xmem, float* ymem, float scale, float* coeffs)
{
    int i = 0;
    for (i = 0 ; i < buffersize; i+=5)
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

