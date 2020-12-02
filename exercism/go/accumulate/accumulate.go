package accumulate

// Accumulate acts like a map
func Accumulate(input []string, f func(string) string) []string {
	var new []string
	for _, val := range input {
		new = append(new, f(val))
	}
	return new
}
