package main

func silnia_rekurencja(n uint) uint {
	if n < 2 {
		return 1
	} else {
		return n * silnia_rekurencja(n-1)
	}
}

func silnia_petla(n uint) uint {
	var wynik uint = 1
	var i uint = 2
	for ; i <= n; i++ {
		wynik = wynik * i
	} 
	return wynik
}

func NWD_rekurencja(a, b uint) uint {
	if b == 0 {
		return a
	} else {
		return NWD_rekurencja(b, a % b)
	}
}

func NWD_petla(a, b uint) uint {
	var temp uint
	for b != 0 {
		temp = b
		b = a % b
		a = temp
	}
	return a
}