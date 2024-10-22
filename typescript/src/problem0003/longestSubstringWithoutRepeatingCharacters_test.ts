import { describe, expect, test } from "bun:test";
import lengthOfLongestSubstring from "./longestSubstringWithoutRepeatingCharacters";

interface Case {
  expected: number;
  s: string;
}

describe("3.无重复字符的最长子串", (): void => {
  const cases: Case[] = [
    {
      expected: 3,
      s: "abcabcbb",
    },
    {
      expected: 1,
      s: "bbbbb",
    },
    {
      expected: 3,
      s: "pwwkew",
    },
  ];

  test.each(cases)("示例 %#", ({ expected, s }): void => {
    expect(expected).toEqual(lengthOfLongestSubstring(s));
  });
});
