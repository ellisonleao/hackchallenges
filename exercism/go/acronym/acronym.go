package acronym

import "strings"

// Abbreviate returns the abbreviation of a given string
func Abbreviate(input string) string {
	var out string
	input = strings.Replace(input, "-", " ", -1)
	splitted := strings.Split(input, " ")

	for _, val := range splitted {
		out += strings.ToUpper(string(val[0]))
		continue
	}
	return out
}
