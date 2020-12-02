package listops

// IntList represents the slice of int type
type IntList []int

type binFunc func(x, y int) int
type unaryFunc func(x int) int
type predFunc func(x int) bool

// Foldl implements a fold left method for the Intlist type
func (il IntList) Foldl(fn binFunc, initial int) int {
	for i := range il {
		initial = fn(initial, il[i])
	}
	return initial
}

// Foldr implements a fold right method for the IntList type
func (il IntList) Foldr(fn binFunc, initial int) int {
	for i := il.Length() - 1; i >= 0; i-- {
		initial = fn(il[i], initial)
	}
	return initial
}

// Filter implements a filter method for the IntList type
func (il IntList) Filter(fn predFunc) IntList {
	var cp IntList
	if il.Length() == 0 {
		return il
	}
	for _, val := range il {
		if fn(val) {
			cp = cp.Append(IntList([]int{val}))
		}
	}
	return cp
}

// Length implements a length method for the IntList type
func (il IntList) Length() int {
	count := 0
	for range il {
		count++
	}
	return count
}

// Map implements a map method for the IntList type
func (il IntList) Map(fn unaryFunc) IntList {
	for i, val := range il {
		il[i] = fn(val)
	}
	return il
}

// Reverse implements a reverse method for the IntList type
func (il IntList) Reverse() IntList {
	for i, j := 0, il.Length()-1; i < j; i, j = i+1, j-1 {
		il[i], il[j] = il[j], il[i]
	}
	return il
}

// Append implements a append method for the IntList type
func (il IntList) Append(list IntList) IntList {
	newSize := il.Length() + list.Length()
	newList := make(IntList, newSize)
	j := 0
	for i := 0; i < newSize; i++ {
		if i < il.Length() {
			newList[i] = il[i]
		} else {
			newList[i] = list[j]
			j++
		}
	}
	return newList
}

// Concat implements a concat method for the IntList type
func (il IntList) Concat(lists []IntList) IntList {
	var newList IntList

	newList = newList.Append(il)
	for _, list := range lists {
		newList = newList.Append(list)
	}
	return newList
}
