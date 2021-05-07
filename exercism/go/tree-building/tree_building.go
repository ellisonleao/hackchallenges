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
	errBase = errors.New("wrong tree")
)

// Build grabs a slice of records and outputs a tree
func Build(records []Record) (*Node, error) {
	if len(records) == 0 {
		return nil, nil
	}

	sort.Slice(records, func(i, j int) bool {
		return records[i].ID < records[j].ID
	})

	nodes := make([]*Node, len(records))
	for idx, r := range records {
		if r.ID != idx || r.Parent > r.ID || r.ID > 0 && r.Parent == r.ID {
			return nil, errBase
		}

		nodes[idx] = &Node{ID: r.ID}
		if r.ID != 0 {
			nodes[r.Parent].Children = append(nodes[r.Parent].Children, nodes[r.ID])
		}

	}

	return nodes[0], nil
}
