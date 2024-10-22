<?php

namespace problem0002;

$solution = new Solution();

dataset("test", [
    [[7, 0, 8], [2, 4, 3], [5, 6, 4]],
    [[0], [0], [0]],
    [[8, 9, 9, 9, 0, 0, 0, 1], [9, 9, 9, 9, 9, 9, 9], [9, 9, 9, 9]],
]);

test("2.两数相加", function (array $expected, array $nums1, array $nums2) use ($solution): void {
    expect(int2List($expected))
        ->toEqual($solution->addTwoNumbers(int2List($nums1), int2List($nums2)));
})->with("test");
