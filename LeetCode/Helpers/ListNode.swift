//
//  ListNode.swift
//  LeetCode
//
//  Created by Andrew on 05.05.2026.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// MARK: - Init from Array
public extension ListNode {
    convenience init?(values: [Int]) {
        guard !values.isEmpty else { return nil }
        
        var prevNode: ListNode?
        values.dropFirst().reversed().forEach { value in
            let node = ListNode(value, prevNode)
            prevNode = node
        }
        
        self.init(values.first!, prevNode)
    }
    
    func toArray() -> [Int] {
        var result: [Int] = []
        
        var next: ListNode? = self
        while let val = next?.val {
            result.append(val)
            next = next?.next
        }
        
        return result
    }
}
