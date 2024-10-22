const std = @import("std");

pub const ListNode = struct {
    val: i32 = 0,
    next: ?*ListNode = null,
};

pub fn int_2_list(nums: []const i32) ?*ListNode {
    const length = nums.len;

    if (length == 0) {
        return null;
    }

    var head: ?*ListNode = null;

    for (0..length) |i| {
        const node = std.heap.page_allocator.create(ListNode) catch unreachable;

        node.* = .{
            .val = nums[length - i - 1],
        };
        node.next = head;
        head = node;
    }

    return head;
}
