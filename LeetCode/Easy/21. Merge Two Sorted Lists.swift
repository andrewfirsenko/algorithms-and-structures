//
//  21. Merge Two Sorted Lists.swift
//  LeetCode
//
//  Created by Andrew on 10.01.2026.
//

import Foundation

class Solution21 {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard let list1, let list2 else {
            if let list1 {  return list1 }
            if let list2 {  return list2 }
            return nil
        }
        
        var list1Next: ListNode? = list1
        var list2Next: ListNode? = list2
        let result = ListNode()
        var tail: ListNode = result
        
        while let val1 = list1Next?.val,
              let val2 = list2Next?.val {
            if val1 < val2 {
                let node = ListNode(val1)
                tail.next = node
                tail = node
                list1Next = list1Next?.next
            } else {
                let node = ListNode(val2)
                tail.next = node
                tail = node
                list2Next = list2Next?.next
            }
        }
        while let val1 = list1Next?.val {
            let node = ListNode(val1)
            tail.next = node
            tail = node
            list1Next = list1Next?.next
        }
        while let val2 = list2Next?.val {
            let node = ListNode(val2)
            tail.next = node
            tail = node
            list2Next = list2Next?.next
        }
        
        return result.next
    }
}
