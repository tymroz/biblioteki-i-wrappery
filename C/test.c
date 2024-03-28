#include "biblioteka.h"

int main(){
    printf("rekurencja: 7! = %llu\n", silnia_rekurencja(7));
    printf("petla: 7! = %llu\n", silnia_petla(7));

    printf("rekurencja: NWD(170, 136) = %u\n", NWD_rekurencja(170, 136));
    printf("petla: NWD(170, 136) = %u\n", NWD_petla(170, 136));

    return 0;
}