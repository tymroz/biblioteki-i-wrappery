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