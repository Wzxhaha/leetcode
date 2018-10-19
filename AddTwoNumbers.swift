// https://leetcode.com/problems/add-two-numbers/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var i = 0
        var node: ListNode?
        var next: ListNode?
        var currentNode1 = l1
        var currentNode2 = l2
        while (currentNode1 != nil) || (currentNode2 != nil) {
            let total = (currentNode1?.val ?? 0) + (currentNode2?.val ?? 0) + i
            i = total >= 10 ? 1 : 0
            let val = total - i * 10
            if node != nil {
                next?.next = ListNode(val)
                next = next?.next
            } else {
                node = ListNode(val)
                next = node
            }
            currentNode1 = currentNode1?.next
            currentNode2 = currentNode2?.next
        }
        if i > 0 {
            next?.next = ListNode(i)
        }
        return node
    }
}