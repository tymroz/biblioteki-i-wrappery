extern void adainit (void);
extern void adafinal (void);
extern int Silnia_Rekurencja (int);
extern int Silnia_Petla (int); 
extern int NWD_Rekurencja (int, int);
extern int NWD_Petla (int, int);
typedef struct {
    int a;
    int b;
    int c;
    int x;
    int y;
	int nwd; 
} RownanieDiofantyczne;
extern RownanieDiofantyczne Rozwiaz_Rekurencja (int, int, int);
extern RownanieDiofantyczne Rozwiaz_Petla (int, int, int);