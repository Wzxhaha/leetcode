class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        for index, value in enumerate(list(str(x))):
            if value != list(str(x))[len(list(str(x))) - index - 1]:
                return False
            if index + 1 >= len(list(str(x)))/2:
                break
        return True
        
