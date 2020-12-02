package summultiples

// Source: exercism/problem-specifications
// Commit: bd2d4d9 sum-of-multiples: the factor 0 does not affect the sum of multiples of other factors
// Problem Specifications Version: 1.5.0

var varTests = []struct {
	name     string
	divisors []int
	limit    int
	sum      int
}{
	{"no multiples within limit", []int{3, 5}, 1, 0},
	{"one factor has multiples within limit", []int{3, 5}, 4, 3},
	{"more than one multiple within limit", []int{3}, 7, 9},
	{"more than one factor with multiples within limit", []int{3, 5}, 10, 23},
	{"each multiple is only counted once", []int{3, 5}, 100, 2318},
	{"a much larger limit", []int{3, 5}, 1000, 233168},
	{"three factors", []int{7, 13, 17}, 20, 51},
	{"factors not relatively prime", []int{4, 6}, 15, 30},
	{"some pairs of factors relatively prime and some not", []int{5, 6, 8}, 150, 4419},
	{"one factor is a multiple of another", []int{5, 25}, 51, 275},
	{"much larger factors", []int{43, 47}, 10000, 2203160},
	{"all numbers are multiples of 1", []int{1}, 100, 4950},
	{"no factors means an empty sum", []int{}, 10000, 0},
	{"the only multiple of 0 is 0", []int{0}, 1, 0},
	{"the factor 0 does not affect the sum of multiples of other factors", []int{3, 0}, 4, 3},
	{"solutions using include-exclude must extend to cardinality greater than 3", []int{2, 3, 5, 7, 11}, 10000, 39614537},
}
