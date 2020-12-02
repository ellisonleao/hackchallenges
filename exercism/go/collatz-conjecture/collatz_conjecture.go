package collatzconjecture

import (
	"errors"
)

// CollatzConjecture implements the collatz conjecture and return
// the # of steps until the input number reaches 1
func CollatzConjecture(number int) (int, error) {
	if number <= 0 {
		return 0, errors.New("input number must be positive")
	}

	steps := 0
	for {
		if number <= 1 {
			break
		}

		if number%2 == 0 {
			number /= 2
		} else {
			number = 3*number + 1
		}
		steps++
	}

	return steps, nil
}
