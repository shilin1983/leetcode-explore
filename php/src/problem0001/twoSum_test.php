<?php

namespace problem0001;

$solution = new Solution();

dataset("test", [
    [[0, 1], [2, 7, 11, 15], 9],
    [[1, 2], [3, 2, 4], 6],
    [[0, 1], [3, 3,], 6],
]);

test("1.两数之和", function (array $expected, array $nums, int $target) use ($solution): void {
    expect($expected)->toEqual($solution->twoSum($nums, $target));
})->with("test");
