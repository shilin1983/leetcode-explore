package problem0003

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

type Case struct {
	expected int
	s        string
}

func TestLengthOfLongestSubstring(t *testing.T) {
	cases := [3]Case{
		{3, "abcabcbb"},
		{1, "bbbbb"},
		{3, "pwwkew"},
	}

	for _, c := range cases {
		t.Run("3.无重复字符的最长子串", func(t *testing.T) {
			assert.Equal(t, c.expected, lengthOfLongestSubstring(c.s))
		})
	}
}
