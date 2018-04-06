package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	var s string = ""
	fmt.Scan(&s)

	runes := strToRune(s)
	fizz := strToRune("Fizz")
	buzz := strToRune("Buzz")

	result := make([]rune, 0, 4*len(runes))
	for _, r := range runes {
		n := int(r)
		if n%15 == 0 {
			result = append(result, fizz...)
			result = append(result, buzz...)
		} else if n%3 == 0 {
			result = append(result, fizz...)
		} else if n%5 == 0 {
			result = append(result, buzz...)
		} else {
			result = append(result, rune(n))
		}
	}

	buf := make([]byte, 4*len(result))
	for _, r := range result {
		b := make([]byte, 4)
		utf8.EncodeRune(b, r)
		buf = append(buf, b...)
	}

	fmt.Println(string(buf))
}

func strToRune(s string) []rune {
	runes := make([]rune, 0, utf8.RuneCountInString(s))
	for len(s) > 0 {
		r, size := utf8.DecodeRuneInString(s)
		runes = append(runes, r)
		s = s[size:]
	}
	return runes
}
