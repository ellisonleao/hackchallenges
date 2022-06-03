package romannumerals

import "fmt"

type numbers struct {
	numeral int
	roman   string
}

func ToRomanNumeral(input int) (string, error) {

	if input <= 0 || input > 3000 {
		return "", fmt.Errorf("wrong input")
	}

	mappings := []numbers{
		{1000, "M"},
		{900, "CM"},
		{500, "D"},
		{400, "CD"},
		{100, "C"},
		{90, "XC"},
		{50, "L"},
		{40, "XL"},
		{10, "X"},
		{9, "IX"},
		{5, "V"},
		{4, "IV"},
		{1, "I"},
	}
	var output string

	fmt.Println("=========== START")
	for _, num := range mappings {
		for input >= num.numeral {
			fmt.Println("output -> ", output)
			output += num.roman
			input -= num.numeral
		}
	}
	fmt.Println("=========== END = ", output)
	return output, nil
}
