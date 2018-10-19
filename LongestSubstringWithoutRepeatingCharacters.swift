// https://leetcode.com/problems/longest-substring-without-repeating-characters/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var longest = 0
        var m = 0
        var map: [Character: Int] = [:]
        for (i, c) in s.enumerated() {
            m = max((map[c] ?? -1) + 1, m)
            map[c] = i
            longest = max(longest, i - m + 1)
        }
        return longest
    }
}