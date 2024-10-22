export default function lengthOfLongestSubstring(s: string): number {
  const hashTable = new Map<string, number>();
  let left = 0,
    right = 0,
    res = 0;

  while (right < s.length) {
    const char = s[right];
    // * 如果哈希表中存在重复字符，则更新滑动窗口的左边界到重复字符的下一个位置
    if (hashTable.has(char) && hashTable.get(char)! >= left) {
      left = hashTable.get(char)! + 1;
    }

    // * 将当前字符存入哈希表，并更新滑动窗口的右边界
    hashTable.set(char, right++);
    // * 更新最长无重复子串的长度
    res = Math.max(res, right - left);
  }

  return res;
}
