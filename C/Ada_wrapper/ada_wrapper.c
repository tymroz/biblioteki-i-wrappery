#include <stdio.h>
#include "biblioteka.h"

int main (int argc, char *argv[])
{
   int k = 170, l = 136, n = 7;

   adainit();

   printf("rekurencja: %d! = %d\n", n, Silnia_Rekurencja(n));
   printf("petla: %d! = %d\n\n", n, Silnia_Petla(n));
   printf("rekurencja: NWD(%d, %d) = %d\n", k, l, NWD_Rekurencja(k, l));
   printf("petla: NWD(%d, %d) = %d\n\n", k, l, NWD_Petla(k, l));

   adafinal();
}