<?php

namespace problem0001;

class Solution
{
    public function twoSum(array $nums, int $target): array
    {
        // * 创建哈希表，存储已遍历元素及其索引
        $hashTable = [];

        foreach ($nums as $key => $value) {
            // * 计算当前元素与目标值的差值
            $diff = $target - $value;

            // * 如果哈希表中存在差值，则返回差值与当前元素的索引
            if (array_key_exists($diff, $hashTable)) {
                return [$hashTable[$diff], $key];
            }

            // * 将当前元素及其索引存入哈希表
            $hashTable[$value] = $key;
        }

        return [];
    }
}
