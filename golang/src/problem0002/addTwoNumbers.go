package problem0002

func addTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
	head := &ListNode{Val: 0}
	current, carry := head, 0

	// * 同时遍历两个链表，逐步计算它们的和，并与当前进位值相加
	// * 遍历结束，如果还有进位值，则在链表末尾添加一个新节点
	for l1 != nil || l2 != nil || carry != 0 {
		sum := carry

		if l1 != nil {
			sum += l1.Val
			l1 = l1.Next
		}

		if l2 != nil {
			sum += l2.Val
			l2 = l2.Next
		}

		current.Next = &ListNode{Val: sum % 10}
		current = current.Next
		carry = sum / 10
	}

	return head.Next
}
