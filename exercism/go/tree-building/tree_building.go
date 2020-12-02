package tree

type Record []Node
type Node struct {
	ID       int
	Parent   int
	Children []*Node
}

func Build(records []Record) (*Node, error) {
	return nil, nil
}
