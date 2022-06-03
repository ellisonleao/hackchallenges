package anagram

import (
	"sort"
	"strings"
)

type sortedRunes []rune

func (s sortedRunes) Len() int {
	return len(s)
}

func (s sortedRunes) Less(i, j int) bool {
	return s[i] < s[j]
}

func (s sortedRunes) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func Detect(subject string, candidates []string) []string {
	var anagrams []string

	subjectRunes := []rune(strings.ToLower(subject))
	sort.Sort(sortedRunes(subjectRunes))
	sortedSubject := string(subjectRunes)

	for _, candidate := range candidates {
		if strings.EqualFold(candidate, subject) {
			continue
		}

		candidateRunes := []rune(strings.ToLower(candidate))
		sort.Sort(sortedRunes(candidateRunes))
		sortedCandidate := string(candidateRunes)
		if sortedCandidate == sortedSubject {
			anagrams = append(anagrams, candidate)
		}
	}

	return anagrams
}
