package main

func silnia_rekurencja(n uint64) uint64 {
	if n < 2 {
		return 1
	} else {
		return n * silnia_rekurencja(n-1)
	}
}

func silnia_petla(n uint64) uint64 {
	var wynik uint64 = 1
	var i uint64 = 2
	for ; i <= n; i++ {
		wynik = wynik * i
	} 
	return wynik
}

func NWD_rekurencja(a, b int) int {
	if b == 0 {
		return a
	} else {
		return NWD_rekurencja(b, a % b)
	}
}

func NWD_petla(a, b int) int {
	var temp int
	for b != 0 {
		temp = b
		b = a % b
		a = temp
	}
	return a
}

type RownanieDiofantyczne struct {
	a int
	b int
	c int
	x int
	y int
	nwd int
}

func rozwiaz_rekurencja(a, b, c int) RownanieDiofantyczne {
    var wynik RownanieDiofantyczne
    wynik.nwd = NWD_petla(a, b)
    wynik.a = a
    wynik.b = b
    wynik.c = c
    if b == 0 {
        wynik.x = c / a
        wynik.y = 0
    } else {
        rozwiazanie := rozwiaz_rekurencja(b, a%b, c)
        wynik.x = rozwiazanie.y
        wynik.y = rozwiazanie.x - (a/b)*rozwiazanie.y
    }
    return wynik
}

func rozwiaz_petla(a, b, c int) RownanieDiofantyczne {
    var wynik RownanieDiofantyczne
    wynik.nwd = NWD_petla(a, b)
    wynik.a = a
    wynik.b = b
    wynik.c = c
    x0, y0, x1, y1 := 1, 0, 0, 1
    for b != 0 {
        q := a / b
        a, b = b, a%b
        x0, x1 = x1, x0-q*x1
        y0, y1 = y1, y0-q*y1
    }
    wynik.x = x0 * (c / a)
    wynik.y = y0 * (c / a)
    return wynik
}