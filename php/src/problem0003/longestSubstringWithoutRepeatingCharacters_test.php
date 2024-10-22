<?php

namespace problem0003;

$solution = new Solution();

dataset("test", [
    [3, "abcabcbb"],
    [1, "bbbbb"],
    [3, "pwwkew"],
]);

test("3.无重复字符的最长子串", function (int $expected, string $s) use ($solution): void {
    expect($expected)->toEqual($solution->lengthOfLongestSubstring($s));
})->with("test");
