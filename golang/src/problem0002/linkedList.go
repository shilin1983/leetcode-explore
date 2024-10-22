package problem0002

type ListNode struct {
	Val  int
	Next *ListNode
}

func int2List(nums []int) *ListNode {
	if len(nums) == 0 {
		return nil
	}

	var head *ListNode

	for i := len(nums) - 1; i >= 0; i-- {
		node := &ListNode{Val: nums[i]}
		node.Next = head
		head = node
	}

	return head
}
