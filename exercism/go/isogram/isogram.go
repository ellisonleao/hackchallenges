package isogram

import (
	"unicode"
)

// IsIsogram returns if a word is an isogram, which means that is a word where there are no
// repeated chars
func IsIsogram(word string) bool {
	var counts = map[rune]int{}

	for _, t := range word {
		if !unicode.IsLetter(t) {
			continue
		}

		t = unicode.ToLower(t)
		if _, val := counts[t]; val {
			return false
		}

		counts[t] = 0
	}
	return true
}
