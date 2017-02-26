class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        for index_i, item_i in enumerate(nums):
            for index_j, item_j in enumerate(nums[index_i+1:]):
                if item_i + item_j == target:
                    return [index_i, index_j + index_i + 1]
