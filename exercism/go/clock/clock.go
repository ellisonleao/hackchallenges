package clock

import "fmt"

// Clock is the main struct to handle the clock object
type Clock struct {
	h int
	m int
}

// New creates a new Clock object
func New(hour, minute int) Clock {
	newMinute := minute % 60
	if newMinute < 0 {
		newMinute += 60
		hour--
	}

	newHour := (hour + (minute / 60)) % 24
	if newHour < 0 {
		newHour += 24
	}
	return Clock{h: newHour, m: newMinute}
}

// String returns a human readable time
func (c Clock) String() string {
	return fmt.Sprintf("%02d:%02d", c.h, c.m)
}

// Add handles adding time into the clock object
func (c Clock) Add(minutes int) Clock {
	return New(c.h, c.m+minutes)
}
