package problem0001

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

type Case struct {
	expected []int
	nums     []int
	target   int
}

func TestTwoSum(t *testing.T) {
	cases := [3]Case{
		{[]int{0, 1}, []int{2, 7, 11, 15}, 9},
		{[]int{1, 2}, []int{3, 2, 4}, 6},
		{[]int{0, 1}, []int{3, 3}, 6},
	}

	for _, c := range cases {
		t.Run("1.两数之和", func(t *testing.T) {
			assert.Equal(t, c.expected, twoSum(c.nums, c.target))
		})
	}
}
