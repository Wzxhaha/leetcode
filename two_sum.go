func twoSum(nums []int, target int) []int {
	m := make(map[int]int)

	for index, value := range nums {
		m[value] = index
	}

	for index, value := range nums {
		key := target - value
		mm, _ := m[key]
		if mm > 0 {
			return []int{index, mm}
		}
	}

	return []int{0, 0}
}