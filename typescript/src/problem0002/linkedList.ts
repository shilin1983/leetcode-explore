export default class ListNode {
  val: number;
  next: ListNode | null;

  constructor(val: number = 0, next: ListNode | null = null) {
    this.val = val;
    this.next = next;
  }
}

export const int2List = (nums: number[]): ListNode | null => {
  if (nums.length === 0) {
    return null;
  }

  let head = null;

  for (const num of nums.reverse()) {
    let node = new ListNode(num);
    node.next = head;
    head = node;
  }

  return head;
};
