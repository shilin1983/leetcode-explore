import { describe, expect, test } from "bun:test";
import { int2List } from "./linkedList";
import addTwoNumbers from "./addTwoNumbers";

interface Case {
  expected: number[];
  nums1: number[];
  nums2: number[];
}

describe("2.两数相加", (): void => {
  const cases: Case[] = [
    {
      expected: [7, 0, 8],
      nums1: [2, 4, 3],
      nums2: [5, 6, 4],
    },
    {
      expected: [0],
      nums1: [0],
      nums2: [0],
    },
    {
      expected: [8, 9, 9, 9, 0, 0, 0, 1],
      nums1: [9, 9, 9, 9, 9, 9, 9],
      nums2: [9, 9, 9, 9],
    },
  ];

  test.each(cases)("示例 %#", ({ expected, nums1, nums2 }): void => {
    expect(addTwoNumbers(int2List(nums1), int2List(nums2))).toEqual(int2List(expected));
  });
});
