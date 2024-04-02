#ifndef _BIBLIOTEKA_H_
#define _BIBLIOTEKA_H_

extern int silnia_rekurencja(int n);

extern int silnia_petla(int n);

extern int NWD_rekurencja(int a, int b);

extern int NWD_petla(int a, int b);

typedef struct {
    int a;
    int b;
    int c;
    int x;
    int y;
	int nwd; 
} RownanieDiofantyczne;

extern RownanieDiofantyczne rozwiaz_rekurencja(int a, int b, int c);

extern RownanieDiofantyczne rozwiaz_petla(int a, int b, int c);

#endif