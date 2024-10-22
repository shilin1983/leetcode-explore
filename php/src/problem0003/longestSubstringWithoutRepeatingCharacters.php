<?php

namespace problem0003;

class Solution
{
    public function lengthOfLongestSubstring(string $s): int
    {
        $hashTable = [];
        $left = $right = $res = 0;

        while ($right < strlen($s)) {
            // * 如果哈希表中存在重复字符，则更新滑动窗口的左边界到重复字符的下一个位置
            $char = $s[$right];
            if (array_key_exists($char, $hashTable) && $hashTable[$char] >= $left) {
                $left = $hashTable[$char] + 1;
            }

            // * 将当前字符存入哈希表，并更新滑动窗口的右边界
            $hashTable[$char] = $right++;
            // * 更新最长无重复子串的长度
            $res = max($res, $right - $left);
        }

        return $res;
    }
}
