//
//  61. Rotate List.swift
//  LeetCode
//
//  Created by Andrew on 05.05.2026.
//

import Foundation

class Solution61 {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard let head else { return nil }
        
        var listCount: Int = 1
        var lastNode: ListNode = head
        
        var next = head.next
        while next != nil {
            lastNode = next ?? lastNode
            listCount += 1
            next = next?.next
        }
        
        let k = k % listCount
        guard k > 0 else { return head }
        
        var kNode: ListNode = head
        var kIndex: Int = 1
        next = head.next
        while next != nil, kIndex < listCount - k {
            kNode = next ?? kNode
            next = next?.next
            kIndex += 1
        }
        
        let newHead = kNode.next
        kNode.next = nil
        lastNode.next = head
        
        return newHead
    }
}
