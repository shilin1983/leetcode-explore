const std = @import("std");
const two_sum = @import("two_sum.zig").two_sum;

const Case = struct {
    expected: []const i32,
    nums: []const i32,
    target: i32,
};

test "1.两数之和" {
    const cases: [3]Case = .{
        .{
            .expected = &[_]i32{ 0, 1 },
            .nums = &[_]i32{ 2, 7, 11, 15 },
            .target = 9,
        },
        .{
            .expected = &[_]i32{ 1, 2 },
            .nums = &[_]i32{ 3, 2, 4 },
            .target = 6,
        },
        .{
            .expected = &[_]i32{ 0, 1 },
            .nums = &[_]i32{ 3, 3 },
            .target = 6,
        },
    };

    for (cases) |c| {
        try std.testing.expectEqualSlices(
            i32,
            c.expected,
            two_sum(c.nums, c.target),
        );
    }
}
