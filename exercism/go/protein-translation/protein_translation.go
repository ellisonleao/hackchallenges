package protein

import "errors"

var (
	ErrStop        = errors.New("stop error")
	ErrInvalidBase = errors.New("invalid base error")
)

func FromRNA(rna string) ([]string, error) {
	if len(rna)%3 != 0 {
		return nil, ErrInvalidBase
	}

	var results []string
	for i := 0; i < len(rna); i += 3 {
		var codon string
		for j := 0; j < 3; j++ {
			codon += string(rna[j+i])
		}

		c, err := FromCodon(codon)
		if err != nil {
			if errors.Is(err, ErrStop) {
				break
			}
			return nil, err
		}

		results = append(results, c)
	}

	return results, nil
}

func FromCodon(codon string) (string, error) {
	codons := map[string]string{
		"AUG": "Methionine",
		"UUU": "Phenylalanine",
		"UUC": "Phenylalanine",
		"UUA": "Leucine",
		"UUG": "Leucine",
		"UCU": "Serine",
		"UCC": "Serine",
		"UCA": "Serine",
		"UCG": "Serine",
		"UAU": "Tyrosine",
		"UAC": "Tyrosine",
		"UGU": "Cysteine",
		"UGC": "Cysteine",
		"UGG": "Tryptophan",
		"UAA": "STOP",
		"UAG": "STOP",
		"UGA": "STOP",
	}

	val, ok := codons[codon]
	if !ok {
		return "", ErrInvalidBase
	}

	if val == "STOP" {
		return "", ErrStop
	}

	return val, nil
}
