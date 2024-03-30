package main

import "fmt"

func main() {
	var n uint64 = 7
    fmt.Printf("rekurencja: %d! = %d\n", n, silnia_rekurencja(n))
    fmt.Printf("petla: %d! = %d\n\n", n, silnia_petla(n))

    var k int = 170
    var l int = 136
    fmt.Printf("rekurencja: NWD(%d, %d) = %d\n", k, l, NWD_rekurencja(k, l))
    fmt.Printf("petla: NWD(%d, %d) = %d\n\n", k, l, NWD_petla(k, l))

    var a int = 170
    var b int = 134
    var c int = 48
    fmt.Printf("%dx + %dy = %d\n", a, b, c)
    var wynik_rek RownanieDiofantyczne = rozwiaz_rekurencja(a, b, c)
    var wynik_petla RownanieDiofantyczne = rozwiaz_petla(a, b, c)
    if c % wynik_rek.nwd != 0 {
        fmt.Printf("Brak rozwiazan\n")
    } else {
        fmt.Printf("rekurencyjne: x = %d + %dk, y = %d - %dk\n", wynik_rek.x, wynik_rek.b/wynik_rek.nwd, wynik_rek.y, wynik_rek.a/wynik_rek.nwd)
        fmt.Printf("petla: x = %d + %dk, y = %d - %dk\n", wynik_petla.x, wynik_petla.b/wynik_petla.nwd, wynik_petla.y, wynik_petla.a/wynik_petla.nwd)
    }
}