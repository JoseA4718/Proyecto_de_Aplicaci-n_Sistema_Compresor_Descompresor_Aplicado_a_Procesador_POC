CC=gcc
CFLAGS=-S

LIBS=-lm

all: dft fir_filter vectors iir_filter filters

dft:
	$(CC) discrete_fourier_transform.c -o dft.s $(CFLAGS) $(LIBS)

fir_filter:
	$(CC) fir_filter.c -o fir_filter.s $(CFLAGS) $(LIBS)

iir_filter:
	$(CC) iir_filter.c -o iir_filter.s $(CFLAGS) $(LIBS)

#vector_add:
#	$(CC) vector_add.c -o vector_add.s $(CFLAGS) $(LIBS)

#dot_and_cross_product:
#	$(CC) dot_and_cross_product.c -o dot_and_cross_product.s $(CFLAGS) $(LIBS)

#vector_max:
#	$(CC) vector_max.c -o vector_max.s $(CFLAGS) $(LIBS)

vectors:
	$(CC) vectors.c -o vectors.s $(CFLAGS) $(LIBS)

filters:
	$(CC) filters.c -o filters.s $(CFLAGS) $(LIBS)

clean:
	rm -f dft.s vectors.s fir_filter.s iir_filter.s filters.s
