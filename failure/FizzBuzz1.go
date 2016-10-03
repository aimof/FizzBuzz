package main

/**
* GOPATH直下でないと動きません。
**/

import (
	"fmt"
	"time"
)

func main() {
	cFizz := make(chan int, 10)
	cBuzz := make(chan int, 10)
	go fizz(cFizz)
	time.Sleep(100 * time.Millisecond)
	go buzz(cBuzz)
	time.Sleep(100 * time.Millisecond)
	for i := 0; i <= 100; {
		tmp := ""
		select {
		case <-cFizz:
			tmp = tmp + "Fizz"
		default:
		}
		select {
		case <-cBuzz:
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
	close(cFizz)
	close(cBuzz)
}

func fizz(cFizz chan<- int) {
	for {
		time.Sleep(3 * time.Second)
		cFizz <- 1
	}
}

func buzz(cBuzz chan<- int) {
	for {
		time.Sleep(5 * time.Second)
		cBuzz <- 2
	}
}
