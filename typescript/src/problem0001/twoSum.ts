export default function twoSum(nums: number[], target: number): number[] {
  // * 创建哈希表，存储已遍历元素及其索引
  const hashTable = new Map<number, number>();

  for (const [key, value] of nums.entries()) {
    // * 计算当前元素与目标值的差值
    const diff = target - value;

    if (hashTable.has(diff)) {
      // * 如果哈希表中存在差值，则返回差值与当前元素的索引
      return [hashTable.get(diff)!, key];
    }

    // * 将当前元素及其索引存入哈希表
    hashTable.set(value, key);
  }

  return [];
}
