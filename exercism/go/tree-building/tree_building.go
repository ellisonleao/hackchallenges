package tree

import (
	"errors"
	"sort"
)

// Record represents the tree inputs
type Record struct {
	ID     int
	Parent int
}

// Node represents a tree node data
type Node struct {
	ID       int
	Children []*Node
}

// Records represents a slice of Record types
type Records []Record

var (
	errRootWithParent = errors.New("Root must not have parents")
	errNoRoot         = errors.New("tree does not have root node")
	errMissingNode    = errors.New("missing node")
)

func (r Records) Len() int           { return len(r) }
func (r Records) Swap(i, j int)      { r[i], r[j] = r[j], r[i] }
func (r Records) Less(i, j int) bool { return r[i].ID < r[j].ID }

// Build grabs a slice of records and outputs a tree
func Build(records []Record) (*Node, error) {
	if len(records) == 0 {
		return nil, nil
	}

	sort.Sort(Records(records))

	if records[0].ID != 0 {
		return nil, errNoRoot
	}

	if records[0].Parent != 0 {
		return nil, errRootWithParent
	}

	root := &Node{}
	nodes := make([]*Node, len(records))
	nodes[0] = root

	for i := 1; i < len(records); i++ {
		r := records[i]
		if r.ID != i {
			return nil, errMissingNode
		}

		child := &Node{ID: r.ID}
		parent := nodes[r.Parent]
		if parent == nil {
			return nil, errMissingNode
		}

		if parent.Children == nil {
			parent.Children = []*Node{}
		}
		parent.Children = append(parent.Children, child)
		nodes[r.ID] = child
	}

	return root, nil
}
