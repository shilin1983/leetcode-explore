const std = @import("std");
const ListNode = @import("./linked_list.zig").ListNode;

pub fn add_two_numbers(l1: ?*ListNode, l2: ?*ListNode) ?*ListNode {
    const head = std.heap.page_allocator.create(ListNode) catch unreachable;

    var current = head;
    var l1_ptr = l1;
    var l2_ptr = l2;
    var carry: i32 = 0;

    // * 同时遍历两个链表，逐步计算它们的和，并与当前进位值相加
    // * 遍历结束，如果还有进位值，则在链表末尾添加一个新节点
    while (l1_ptr != null or l2_ptr != null or carry != 0) {
        var sum = carry;

        if (l1_ptr != null) {
            sum += l1_ptr.?.val;
            l1_ptr = l1_ptr.?.next;
        }

        if (l2_ptr != null) {
            sum += l2_ptr.?.val;
            l2_ptr = l2_ptr.?.next;
        }

        current.next = std.heap.page_allocator.create(ListNode) catch unreachable;
        current = current.next.?;
        current.* = .{ .val = @mod(sum, 10) };
        carry = @divFloor(sum, 10);
    }

    return head.next;
}
