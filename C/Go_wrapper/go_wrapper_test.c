#include "biblioteka.h"
#include <stdio.h>

int main(){
    GoInt n = 7;
    printf("rekurencja: %lli! = %lli\n", n, silnia_rekurencja(n));
    printf("petla: %lli! = %lli\n\n", n, silnia_petla(n));

    GoInt k = 170;
    GoInt l = 136;
    printf("rekurencja: NWlli(%lli, %lli) = %lli\n", k, l, NWD_rekurencja(k, l));
    printf("petla: NWlli(%lli, %lli) = %lli\n\n", k, l, NWD_petla(k, l));

    GoInt a = 170;
    GoInt b = 134;
    GoInt c = 48;
    printf("%llix + %lliy = %lli\n", a, b, c);
    struct rozwiaz_rekurencja_return wynik_rek = rozwiaz_rekurencja(a, b, c);
    struct rozwiaz_petla_return wynik_petla = rozwiaz_petla(a, b, c);
    if(c % wynik_rek.r5 != 0){
        printf("Brak rozwiazan\n");
    } else{
        printf("rekurencyjne: x = %lli + %llik, y = %lli - %llik\n", wynik_rek.r3, wynik_rek.r1/wynik_rek.r5, wynik_rek.r4, wynik_rek.r0/wynik_rek.r5);
        printf("petla: x = %lli + %llik, y = %lli - %llik\n", wynik_petla.r3, wynik_petla.r1 / wynik_petla.r5, wynik_petla.r4, wynik_petla.r0 / wynik_petla.r5);
    }
    
    return 0;
}