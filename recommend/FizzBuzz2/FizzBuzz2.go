package main

import (
	"fmt"
	"time"
)

func main() {
	cFizz := time.NewTicker(3 * time.Second)
	cBuzz := time.NewTicker(5 * time.Second)
	time.Sleep(100 * time.Millisecond)
	for i := 0; i <= 100; {
		tmp := ""
		select {
		case <-cFizz.C:
			tmp = tmp + "Fizz"
		default:
		}
		select {
		case <-cBuzz.C:
			tmp = tmp + "Buzz"
		default:
		}
		if i != 0 {
			if tmp == "" {
				fmt.Printf("%d\n", i)
			} else {
				fmt.Printf("%s\n", tmp)
			}
		}
		time.Sleep(1 * time.Second)
		i++
	}
}
