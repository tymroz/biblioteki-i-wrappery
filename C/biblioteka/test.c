#include "biblioteka.h"

int main(){
    int n = 7;
    printf("rekurencja: %d! = %llu\n", n, silnia_rekurencja(n));
    printf("petla: %d! = %llu\n\n", n, silnia_petla(n));

    int k = 170;
    int l = 136;
    printf("rekurencja: NWD(%d, %d) = %u\n", k, l, NWD_rekurencja(k, l));
    printf("petla: NWD(%d, %d) = %u\n\n", k, l, NWD_petla(k, l));

    int a = 170;
    int b = 134;
    int c = 48;
    printf("%dx + %dy = %d\n", a, b, c);
    RownanieDiofantyczne wynik_rek = rozwiaz_rekurencja(a, b, c);
    RownanieDiofantyczne wynik_petla = rozwiaz_petla(a, b, c);
    if(c % wynik_rek.nwd != 0){
        printf("Brak rozwiazan\n");
    } else{
        printf("rekurencyjne: x = %d + %dk, y = %d - %dk\n", wynik_rek.x, wynik_rek.b/wynik_rek.nwd, wynik_rek.y, wynik_rek.a/wynik_rek.nwd);
        printf("petla: x = %d + %dk, y = %d - %dk\n", wynik_petla.x, wynik_petla.b / wynik_petla.nwd, wynik_petla.y, wynik_petla.a / wynik_petla.nwd);
    }
    
    return 0;
}