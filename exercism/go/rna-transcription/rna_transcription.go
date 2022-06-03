package strand

func ToRNA(dna string) string {
	nucleotides := map[rune]rune{
		'G': 'C',
		'C': 'G',
		'T': 'A',
		'A': 'U',
	}
	var rna string

	for _, n := range dna {
		rna += string(nucleotides[n])
	}
	return rna
}
