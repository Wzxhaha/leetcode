class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        result = ""
        if x < 0:
            result = "-"
            x = abs(x)

        i = len(list(str(x)))

        while i > 0:
            i -= 1
            result += list(str(x))[i]

        result = int(result)

        if result > 2147483647 or result < -2147483648:
            return 0

        return result
