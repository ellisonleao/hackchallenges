package diffsquares

import "math"

// SquareOfSums returns the square of a sum for a given range
func SquareOfSums(r int) int {
	sum := 0
	for i := 1; i <= r; i++ {
		sum += i
	}
	return int(math.Pow(float64(sum), 2.0))
}

// SumOfSquares returns a sum of square for a given range
func SumOfSquares(r int) int {
	sum := 0
	for i := 1; i <= r; i++ {
		sum += int(math.Pow(float64(i), 2.0))
	}
	return sum
}

// Difference returns a difference between a SumOfSquares and a SquareOfSums
func Difference(r int) int {
	sumOfSquares := SumOfSquares(r)
	squareOfSums := SquareOfSums(r)

	return squareOfSums - sumOfSquares
}
