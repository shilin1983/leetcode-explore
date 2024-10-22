package problem0001

func twoSum(nums []int, target int) []int {
	// * 创建哈希表，存储已遍历元素及其索引
	hashTable := make(map[int]int, len(nums))

	for key, value := range nums {
		// * 计算当前元素与目标值的差值
		diff := target - value

		// * 如果哈希表中存在差值，则返回差值与当前元素的索引
		if idx, ok := hashTable[diff]; ok {
			return []int{idx, key}
		}

		// * 将当前元素及其索引存入哈希表
		hashTable[value] = key
	}

	return []int{}
}
