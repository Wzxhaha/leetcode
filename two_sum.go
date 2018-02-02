func twoSum(nums []int, target int) []int {
	if len(nums) < 2 {
    	return nil
    }
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
	return nil
}