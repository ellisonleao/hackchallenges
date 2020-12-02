package leap

// IsLeapYear returns the result if a giver year is leap or not
func IsLeapYear(input int) bool {
	if input%4 == 0 && input%100 != 0 {
		return true
	} else if input%400 == 0 {
		return true
	}
	return false
}
