package main

/*
#cgo CFLAGS: -Wall
#cgo LDFLAGS: -L. -lbiblioteka -Wl,-rpath=/home/tymoteusz/Desktop/JPP/biblioteki-i-wrappery/Go/C_wrapper
#include "biblioteka.h"
*/
import "C"

func SilniaRekurencja(n int) int {
	return int(C.silnia_rekurencja(C.int(n)))
}

func SilniaPetla(n int) int {
	return int(C.silnia_petla(C.int(n)))
}

func NWDRekurencja(a, b int) int {
	return int(C.NWD_rekurencja(C.int(a), C.int(b)))
}

func NWDPetla(a, b int) int {
	return int(C.NWD_petla(C.int(a), C.int(b)))
}

type RownanieDiofantyczne struct {
	A   int
	B   int
	C   int
	X   int
	Y   int
	NWD int
}

func RozwiazRekurencja(a, b, c int) RownanieDiofantyczne {
	cResult := C.rozwiaz_rekurencja(C.int(a), C.int(b), C.int(c))
	return RownanieDiofantyczne{
		A:   int(cResult.a),
		B:   int(cResult.b),
		C:   int(cResult.c),
		X:   int(cResult.x),
		Y:   int(cResult.y),
		NWD: int(cResult.nwd),
	}
}

func RozwiazPetla(a, b, c int) RownanieDiofantyczne {
	cResult := C.rozwiaz_petla(C.int(a), C.int(b), C.int(c))
	return RownanieDiofantyczne{
		A:   int(cResult.a),
		B:   int(cResult.b),
		C:   int(cResult.c),
		X:   int(cResult.x),
		Y:   int(cResult.y),
		NWD: int(cResult.nwd),
	}
}