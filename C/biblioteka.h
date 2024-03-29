#include <stdio.h>

unsigned long long silnia_rekurencja(int n){
	if (n == 0 || n == 1){
		return 1;
	} else {
		return n*silnia_rekurencja(n-1);
	}
}

unsigned long long silnia_petla(int n){
	unsigned long long wynik = 1;
	for (int i = 1; i <= n; i++){
		wynik = wynik*i;
	}
	return wynik;
}

unsigned int NWD_rekurencja(int a, int b){
	if(b == 0){
		return a;
	} else {
		return NWD_rekurencja(b, a % b);
	}
}

unsigned int NWD_petla(int a, int b){
	while(b != 0){
		int temp = b;
		b = a % b;
		a = temp;
	}
	return a;
}

typedef struct {
    int a;
    int b;
    int c;
    int x;
    int y;
	int nwd; 
} RownanieDiofantyczne;

RownanieDiofantyczne rozwiaz_rekurencja(int a, int b, int c) {
    RownanieDiofantyczne wynik;
	wynik.nwd = NWD_petla(a, b);
	wynik.a = a;
    wynik.b = b;
    wynik.c = c;
    if (b == 0) {
        wynik.x = c / a;
        wynik.y = 0;
    } else {
        RownanieDiofantyczne rozwiazanie = rozwiaz_rekurencja(b, a % b, c);
        wynik.x = rozwiazanie.y;
        wynik.y = rozwiazanie.x - (a / b) * rozwiazanie.y;
    }
    return wynik;
}

RownanieDiofantyczne rozwiaz_petla(int a, int b, int c) {
    RownanieDiofantyczne wynik;
	wynik.nwd = NWD_petla(a, b);
	wynik.a = a;
    wynik.b = b;
    wynik.c = c;
    int x0 = 1, y0 = 0, x1 = 0, y1 = 1;
    while (b != 0) {
        int q = a / b;
        int temp = b;
        b = a % b;
        a = temp;
        temp = x1;
        x1 = x0 - q * x1;
        x0 = temp;
        temp = y1;
        y1 = y0 - q * y1;
        y0 = temp;
    }
    wynik.x = x0 * (c / a);
    wynik.y = y0 * (c / a);
    return wynik;
}