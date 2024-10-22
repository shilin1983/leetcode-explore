const std = @import("std");
const int_2_list = @import("./linked_list.zig").int_2_list;
const add_two_numbers = @import("./add_two_numbers.zig").add_two_numbers;

const Case = struct {
    expected: []const i32,
    nums1: []const i32,
    nums2: []const i32,
};

test "2.两数相加" {
    const cases: [3]Case = .{
        .{
            .expected = &.{ 7, 0, 8 },
            .nums1 = &.{ 2, 4, 3 },
            .nums2 = &.{ 5, 6, 4 },
        },
        .{
            .expected = &.{0},
            .nums1 = &.{0},
            .nums2 = &.{0},
        },
        .{
            .expected = &.{ 8, 9, 9, 9, 0, 0, 0, 1 },
            .nums1 = &.{ 9, 9, 9, 9, 9, 9, 9 },
            .nums2 = &.{ 9, 9, 9, 9 },
        },
    };

    for (cases) |c| {
        var expected = int_2_list(c.expected);
        var actual = add_two_numbers(
            int_2_list(c.nums1),
            int_2_list(c.nums2),
        );

        while (expected != null and actual != null) {
            try std.testing.expectEqual(expected.?.val, actual.?.val);

            expected = expected.?.next;
            actual = actual.?.next;
        }
    }
}
