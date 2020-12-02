package hamming

import "errors"

// Distance returns the hamming difference between 2 DNA strands
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return 0, errors.New("Sizes must be the same")
	}
	size := len(a)
	distance := 0
	for i := 0; i < size; i++ {
		if a[i] != b[i] {
			distance++
		}
	}
	return distance, nil
}
