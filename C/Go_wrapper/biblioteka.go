package main

import "C"

//export silnia_rekurencja
func silnia_rekurencja(n int) int {
	if n < 2 {
		return 1
	} else {
		return n * silnia_rekurencja(n-1)
	}
}

//export silnia_petla
func silnia_petla(n int) int {
	var wynik int = 1
	var i int = 2
	for ; i <= n; i++ {
		wynik = wynik * i
	} 
	return wynik
}

//export NWD_rekurencja
func NWD_rekurencja(a, b int) int {
	if b == 0 {
		return a
	} else {
		return NWD_rekurencja(b, a % b)
	}
}

//export NWD_petla
func NWD_petla(a, b int) int {
	var temp int
	for b != 0 {
		temp = b
		b = a % b
		a = temp
	}
	return a
}

//struktura nie wspierana w exporcie
//type RownanieDiofantyczne struct {
//	a int
//	b int
//	c int
//	x int
//	y int
//	nwd int
//}

//export rozwiaz_rekurencja
func rozwiaz_rekurencja(a, b, c int) (int, int, int, int, int, int) {
    nwd := NWD_petla(a, b)
	var x int;
	var y int;
    if b == 0 {
        x = c / a
        y = 0
    } else {
        _, _, _, x1, y1, _ := rozwiaz_rekurencja(b, a%b, c)
        x = y1
        y = x1 - (a/b)*y1
    }
    return a, b, c, x, y, nwd
}

//export rozwiaz_petla
func rozwiaz_petla(a, b, c int) (int, int, int, int, int, int) {
    nwd := NWD_petla(a, b)
    kopia_a := a
    kopia_b := b
    x0, y0, x1, y1 := 1, 0, 0, 1
    for kopia_b != 0 {
        q := kopia_a / kopia_b
        kopia_a, kopia_b = kopia_b, kopia_a%kopia_b
        x0, x1 = x1, x0-q*x1
        y0, y1 = y1, y0-q*y1
    }
    x := x0 * (c / kopia_a)
    y := y0 * (c / kopia_a)
    return a, b, c, x, y, nwd
}

func main() {}