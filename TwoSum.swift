// https://leetcode.com/problems/two-sum/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count >= 2 else {
            return []
        }
        var map: [Int: Int] = [:]
        for (offset, value) in nums.enumerated() {
            let key = target - value
            if let i = map[key] {
                return [i, offset]
            }
            map[value] = offset
        }
        return []
    }
}