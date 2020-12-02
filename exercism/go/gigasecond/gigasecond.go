package gigasecond

// import path for the time package from the standard library
import (
	"time"
)

const giga = 1000000000

// AddGigasecond will add a gigasecond duration to a given time
func AddGigasecond(input time.Time) time.Time {
	return input.Add(time.Second * time.Duration(giga))
}
