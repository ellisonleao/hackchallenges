package dna

import "errors"

type (
	Histogram map[rune]int
	DNA       string
)

// Counts generates a histogram of valid nucleotides in the given DNA.
// Returns an error if d contains an invalid nucleotide.
func (d DNA) Counts() (Histogram, error) {
	h := Histogram{'A': 0, 'C': 0, 'G': 0, 'T': 0}

	for _, strand := range d {
		if _, ok := h[strand]; !ok {
			return h, errors.New("bad strand")
		}
		h[strand] += 1
	}

	return h, nil
}
