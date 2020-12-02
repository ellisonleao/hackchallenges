package raindrops

import "strconv"

func Convert(input int) string {
	var out string
	if input%3 == 0 {
		out += "Pling"
	}

	if input%5 == 0 {
		out += "Plang"
	}

	if input%7 == 0 {
		out += "Plong"
	}

	if len(out) == 0 {
		return strconv.Itoa(input)
	}
	return out
}
