package pangram

import "strings"

const alphabet = "abcdefghjiklmnopqrstuvwxyz"

// IsPangram returns if a given string is a pangram
func IsPangram(input string) bool {
	counter := make(map[rune]int, len(alphabet))
	input = strings.ToLower(input)
	for _, val := range input {
		if strings.Contains(alphabet, string(val)) {
			counter[val]++
		}
	}
	if len(counter) >= len(alphabet) {
		return true
	}
	return false
}
