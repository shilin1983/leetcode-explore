#[derive(Debug, PartialEq, Eq)]
pub struct ListNode {
    pub val: i32,
    pub next: Option<Box<ListNode>>,
}

impl ListNode {
    #[inline]
    pub fn new(val: i32) -> Self {
        Self { val, next: None }
    }
}

pub fn int_2_list(nums: Vec<i32>) -> Option<Box<ListNode>> {
    let mut head = None;

    for &num in nums.iter().rev() {
        let mut node = ListNode::new(num);
        node.next = head;
        head = Some(Box::new(node));
    }

    head
}
