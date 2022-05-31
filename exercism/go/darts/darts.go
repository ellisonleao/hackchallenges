package darts

import "math"

func Score(x, y float64) int {

	position := math.Sqrt(x*x + y*y)
    
	switch {
        case position <= 1.0:
    		return 10
		case position <= 5.0:
    		return 5
        case position <= 10.0:
    		return 1
        default:
    		return 0
    }

}
