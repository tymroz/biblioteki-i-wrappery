#include <stdio.h>
#include "biblioteka.h"

int main (int argc, char *argv[])
{
   int k = 170, l = 136, n = 7, a = 170, b = 134, c = 48;

   adainit();

   printf("rekurencja: %d! = %d\n", n, Silnia_Rekurencja(n));
   printf("petla: %d! = %d\n\n", n, Silnia_Petla(n));

   printf("rekurencja: NWD(%d, %d) = %d\n", k, l, NWD_Rekurencja(k, l));
   printf("petla: NWD(%d, %d) = %d\n\n", k, l, NWD_Petla(k, l));

   printf("%dx + %dy = %d\n", a, b, c);
   RownanieDiofantyczne wynik_rek = Rozwiaz_Rekurencja(a, b, c);
   RownanieDiofantyczne wynik_petla = Rozwiaz_Petla(a, b, c);
   if(c % wynik_rek.nwd != 0){
      printf("Brak rozwiazan\n");
   } else{
      printf("rekurencyjne: x = %d + %dk, y = %d - %dk\n", wynik_rek.x, wynik_rek.b/wynik_rek.nwd, wynik_rek.y, wynik_rek.a/wynik_rek.nwd);
      printf("petla: x = %d + %dk, y = %d - %dk\n", wynik_petla.x, wynik_petla.b / wynik_petla.nwd, wynik_petla.y, wynik_petla.a / wynik_petla.nwd);
   }

   adafinal();
}