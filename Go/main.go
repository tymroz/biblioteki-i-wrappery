package main

import "fmt"

func main() {
	fmt.Printf("rekurencja: 7! = %d\n", silnia_rekurencja(7))
	fmt.Printf("petla: 7! = %d\n", silnia_petla(7))

	fmt.Printf("petla: NWD(170, 136) = %d\n", NWD_petla(170, 136))
	fmt.Printf("rekurencja: NWD(170, 136) = %d\n", NWD_rekurencja(170, 136))
}