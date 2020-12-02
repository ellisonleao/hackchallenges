package etl

import "strings"

func Transform(input map[int][]string) map[string]int {
	output := map[string]int{}
	for key, val := range input {
		for _, char := range val {
			output[strings.ToLower(char)] = key
		}
	}
	return output
}
