use std::collections::HashMap;

pub struct Solution;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        // * 创建哈希表，存储已遍历元素及其索引
        let mut hash_table = HashMap::<i32, i32>::with_capacity(nums.len());

        for (key, &value) in nums.iter().enumerate() {
            // * 计算当前元素与目标值的差值
            let diff = target - value;

            if let Some(&idx) = hash_table.get(&diff) {
                return vec![idx, key as i32];
            }

            hash_table.insert(value, key as i32);
        }

        vec![]
    }
}
