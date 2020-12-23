package letter

// FreqMap records the frequency of each rune in a given text.
type FreqMap map[rune]int

// Frequency counts the frequency of each rune in a given text and returns this
// data as a FreqMap.
func Frequency(s string) FreqMap {
	m := FreqMap{}
	for _, r := range s {
		m[r]++
	}
	return m
}

// ConcurrentFrequency is a (not necessarily ideal) example of how to call Frequency() concurrently.
func ConcurrentFrequency(words []string) FreqMap {
	f := FreqMap{}
	ch := make(chan FreqMap, len(words)/2)

	for _, word := range words {
		go func(word string) {
			ch <- Frequency(word)
		}(word)
	}

	for range words {
		for k, v := range <-ch {
			f[k] += v
		}
	}

	return f
}
