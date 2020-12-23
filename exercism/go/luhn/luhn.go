package luhn

import (
	"strings"
	"unicode"
)

// Valid returns if an input string matches luhn's algorithm checksum
func Valid(input string) bool {
	input = strings.TrimSpace(input)
	runes := []rune(input)
	var (
		digit int
		size  = len(runes)
	)

	if size <= 1 {
		return false
	}

	total := 0
	l := 0
	for i := size - 1; i >= 0; i-- {
		r := runes[i]
		if unicode.IsSpace(r) {
			continue
		}

		if !unicode.IsDigit(r) {
			return false
		}

		l++
		digit = int(r - '0')
		if l%2 == 0 {
			digit *= 2
			if digit > 9 {
				digit -= 9
			}
		}
		total += digit

	}
	return total%10 == 0
}
