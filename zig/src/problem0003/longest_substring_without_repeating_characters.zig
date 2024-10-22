const std = @import("std");

pub fn length_of_longestSubstring(s: []const u8) i32 {
    var hash_table = std.AutoHashMap(u8, i32).init(std.heap.page_allocator);
    defer hash_table.deinit();

    var left: i32 = 0;
    var right: i32 = 0;
    var res: i32 = 0;

    while (right < s.len) {
        const char = s[@intCast(right)];
        // * 如果哈希表中存在重复字符，则更新滑动窗口的左边界到重复字符的下一个位置
        if (hash_table.contains(char) and hash_table.get(char).? >= left) {
            left = hash_table.get(char).? + 1;
        }

        // * 将当前字符存入哈希表
        hash_table.put(char, right) catch unreachable;
        // * 更新滑动窗口的右边界
        right += 1;

        res = @max(res, right - left);
    }

    return res;
}
