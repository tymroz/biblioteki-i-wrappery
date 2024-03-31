#ifndef _BIBLIOTEKA_H_
#define _BIBLIOTEKA_H_

extern unsigned long long silnia_rekurencja(int n);

extern unsigned long long silnia_petla(int n);

extern unsigned int NWD_rekurencja(int a, int b);

extern unsigned int NWD_petla(int a, int b);

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