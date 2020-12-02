package triangle

import "math"

// Kind represents the function return type
type Kind string

const (
	// NaT not a triangle
	NaT = "nat"
	// Equ equilateral
	Equ = "equ"
	// Iso isosceles
	Iso = "iso"
	// Sca scalene
	Sca = "sca"
)

func isTriangle(a, b, c float64) bool {
	if a == 0 || b == 0 || c == 0 || math.IsInf(a, 0) || math.IsInf(b, 0) || math.IsInf(c, 0) {
		return false
	}
	return (a+b) >= c && (b+c) >= a && (a+c) >= b
}

// KindFromSides returns a triangle type based on his size lenghts
func KindFromSides(a, b, c float64) Kind {
	if !isTriangle(a, b, c) {
		return NaT
	}

	if a == b && a == c && b == c {
		return Equ
	}

	if a == b || a == c || b == c {
		return Iso
	}

	return Sca
}
