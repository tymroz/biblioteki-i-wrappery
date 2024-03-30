package main

import "fmt"

func main() {
	n := 5
	silniaRec := SilniaRekurencja(n)
	fmt.Printf("rekurencja: %d! = %d\n", n, silniaRec)
	silniaPetla := SilniaPetla(n)
	fmt.Printf("petla: %d! = %d\n", n, silniaPetla)

	a, b := 170, 136
	nwdRec := NWDRekurencja(a, b)
	fmt.Printf("rekurencja: NWD(%d, %d) = %d\n", a, b, nwdRec)
	nwdPetla := NWDPetla(a, b)
	fmt.Printf("petla: NWD(%d, %d) = %d\n", a, b, nwdPetla)
	
	a, b, c := 170, 134, 48
	wynik_rek := RozwiazRekurencja(a, b, c)
	wynik_petla := RozwiazPetla(a, b, c)
	fmt.Printf("%dx + %dy = %d\n", a, b, c)
	if c % wynik_rek.NWD != 0 {
        fmt.Printf("Brak rozwiazan\n")
    } else {
        fmt.Printf("rekurencyjne: x = %d + %dk, y = %d - %dk\n", wynik_rek.X, wynik_rek.B/wynik_rek.NWD, wynik_rek.Y, wynik_rek.A/wynik_rek.NWD)
        fmt.Printf("petla: x = %d + %dk, y = %d - %dk\n", wynik_petla.X, wynik_petla.B/wynik_petla.NWD, wynik_petla.Y, wynik_petla.A/wynik_petla.NWD)
    }

}
