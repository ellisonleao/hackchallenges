package grains

import (
	"errors"
)

// Square implements the grain square calculation
func Square(i int) (uint64, error) {
	if i <= 0 || i > 64 {
		return 0, errors.New("Negative numbers and numbers higher than 64 are not allowed")
	}

	return 1 << (i - 1), nil
}

// Total returns the total # of grains in a square
func Total() uint64 {
	return (1 << 64) - 1
}
