use super::linked_list::ListNode;

pub struct Solution;

impl Solution {
    pub fn add_two_numbers(
        l1: Option<Box<ListNode>>,
        l2: Option<Box<ListNode>>,
    ) -> Option<Box<ListNode>> {
        let mut head = Some(Box::new(ListNode::new(0)));
        let (mut current, mut carry, mut l1, mut l2) = (&mut head, 0, l1, l2);

        // * 同时遍历两个链表，逐步计算它们的和，并与当前进位值相加
        // * 遍历结束，如果还有进位值，则在链表末尾添加一个新节点
        while l1.is_some() || l2.is_some() || carry != 0 {
            let sum = l1.as_ref().map_or(0, |n| n.val) + l2.as_ref().map_or(0, |n| n.val) + carry;

            l1 = l1.and_then(|n| n.next);
            l2 = l2.and_then(|n| n.next);

            current.as_mut().unwrap().next = Some(Box::new(ListNode::new(sum % 10)));
            current = &mut current.as_mut().unwrap().next;
            carry = sum / 10;
        }

        head.unwrap().next
    }
}
