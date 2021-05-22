package robotname

import (
	"fmt"
	"math/rand"
	"time"
)

var (
	r     = rand.New(rand.NewSource(time.Now().UTC().UnixNano()))
	names = map[string]bool{"": true}
)

func randomSequence() string {
	randChars := string(rune(r.Intn(26) + 'A'))
	randChars += string(rune(r.Intn(26) + 'A'))
	randInts := string(fmt.Sprintf("%03d", r.Intn(1000)))
	return randChars + randInts
}

// Robot is the main struct for the robot object
type Robot struct {
	name string
}

// Reset clears the robot name
func (r *Robot) Reset() string {
	for names[r.name] {
		r.name = randomSequence()
	}

	names[r.name] = true
	return r.name
}

// Name returns the robot name
func (r *Robot) Name() string {
	if r.name == "" {
		r.name = r.Reset()
	}
	return r.name
}
