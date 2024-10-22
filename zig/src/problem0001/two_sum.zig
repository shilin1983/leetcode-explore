const std = @import("std");

pub fn two_sum(nums: []const i32, target: i32) []const i32 {
    // * 创建哈希表，存储已遍历元素及其索引
    var hash_table = std.AutoHashMap(i32, i32).init(std.heap.page_allocator);

    for (nums, 0..) |value, key| {
        // * 计算单签元素与目标值的差值
        const diff = target - value;

        // * 如果哈希表中存在差值，则返回差值与当前元素的索引
        if (hash_table.contains(diff)) {
            return &[_]i32{ hash_table.get(diff).?, @intCast(key) };
        }

        // * 将当前元素及其索引存入哈希表
        hash_table.put(value, @intCast(key)) catch unreachable;
    }

    return &[_]i32{};
}
