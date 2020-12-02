package summultiples

// SumMultiples returns the sum of all numbers that are multiple of a given divisors list
// in a given limit
func SumMultiples(limit int, divisors ...int) int {
	sum := 0
	for i := 1; i < limit; i++ {
		if !isDivisibleBy(i, divisors...) {
			continue
		}
		sum += i
	}
	return sum
}

func isDivisibleBy(num int, divisors ...int) bool {
	numDivisors := 0
	for _, divisor := range divisors {
		if divisor == 0 || num%divisor != 0 {
			continue
		}
		numDivisors++
	}

	return numDivisors != 0
}
