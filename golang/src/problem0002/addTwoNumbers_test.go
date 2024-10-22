package problem0002

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

type Case struct {
	expected []int
	nums1    []int
	nums2    []int
}

func TestAddTwoNumbers(t *testing.T) {
	cases := [3]Case{
		{[]int{7, 0, 8}, []int{2, 4, 3}, []int{5, 6, 4}},
		{[]int{0}, []int{0}, []int{0}},
		{[]int{8, 9, 9, 9, 0, 0, 0, 1}, []int{9, 9, 9, 9, 9, 9, 9}, []int{9, 9, 9, 9}},
	}

	for _, c := range cases {
		t.Run("2.两数相加", func(t *testing.T) {
			assert.Equal(
				t,
				int2List(c.expected),
				addTwoNumbers(int2List(c.nums1), int2List(c.nums2)),
			)
		})
	}
}
