package bob

import (
	"strings"
)

const (
	chillOut = "Whoa, chill out!"
	whatever = "Whatever."
	sure     = "Sure."
	silence  = "Fine. Be that way!"
)

// Hey is the main function for bob answers
func Hey(input string) string {
	input = strings.TrimSpace(input)

	// silence
	if len(input) == 0 {
		return silence
	}

	// shout
	if strings.ToUpper(input) == input && strings.ToLower(input) != input {
		return chillOut
	}

	// question
	if input[len(input)-1] == '?' {
		return sure
	}

	return whatever
}
