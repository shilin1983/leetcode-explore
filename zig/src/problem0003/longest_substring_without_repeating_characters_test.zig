const std = @import("std");
const length_of_longestSubstring = @import("./longest_substring_without_repeating_characters.zig").length_of_longestSubstring;

const Case = struct {
    expected: i32,
    s: []const u8,
};

test "3.无重复字符的最长子串" {
    const cases: [3]Case = .{
        .{
            .expected = 3,
            .s = "abcabcbb",
        },
        .{
            .expected = 1,
            .s = "bbbbb",
        },
        .{
            .expected = 3,
            .s = "pwwkew",
        },
    };

    for (cases) |c| {
        try std.testing.expectEqual(c.expected, length_of_longestSubstring(c.s));
    }
}
