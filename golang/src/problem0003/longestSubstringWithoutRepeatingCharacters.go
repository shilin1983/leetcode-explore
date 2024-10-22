package problem0003

func lengthOfLongestSubstring(s string) int {
	length := len(s)
	hashTable, left, right, res := make(map[byte]int, length), 0, 0, 0

	for right < length {
		// * 如果哈希表中存在重复字符，则更新滑动窗口的左边界到重复字符的下一个位置
		if idx, ok := hashTable[s[right]]; ok && idx >= left {
			left = idx + 1
		}

		// * 将当前字符存入哈希表
		hashTable[s[right]] = right
		// * 更新滑动窗口的右边界
		right++
		// * 更新最长无重复子串的长度
		res = max(res, right-left)
	}

	return res
}
