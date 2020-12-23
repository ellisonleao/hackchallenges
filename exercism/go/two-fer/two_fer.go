package twofer

import "strings"

// ShareWith returns the right phase given an input
func ShareWith(input string) string {
	input = strings.ToLower(input)
	switch input {
	case "alice":
		return "One for Alice, one for me."
	case "bob":
		return "One for Bob, one for me."
	default:
		return "One for you, one for me."
	}
}
