use std::collections::HashMap;

pub struct Solution;

impl Solution {
    pub fn length_of_longest_substring(s: String) -> i32 {
        let length = s.len();
        let (mut hash_table, mut left, mut right, mut res) =
            (HashMap::<char, i32>::with_capacity(length), 0, 0, 0);

        while right < length {
            let char = s.chars().nth(right).unwrap();
            // * 如果哈希表中存在重复字符，则更新滑动窗口的左边界到重复字符的下一个位置
            if let Some(&idx) = hash_table.get(&char) {
                if idx >= left {
                    left = idx + 1;
                }
            }

            // * 将当前字符存入哈希表
            hash_table.insert(char, right as i32);
            // * 更新滑动窗口的右边界
            right += 1;
            // * 更新最长无重复子串的长度
            res = res.max(right as i32 - left);
        }

        res
    }
}
