package flatten

import (
	"reflect"
)

// Flatten returns
func Flatten(input interface{}) []interface{} {
	flatten := []interface{}{}

	slice, ok := input.([]interface{})
	if !ok {
		return flatten
	}

	for _, item := range slice {
		val := reflect.TypeOf(item)
		if val == nil {
			continue
		}

		if val.Kind() == reflect.Slice {
			flatten = append(flatten, Flatten(item)...)
		} else {
			flatten = append(flatten, item)
		}
	}

	return flatten
}
