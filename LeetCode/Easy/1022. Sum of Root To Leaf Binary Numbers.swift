//
//  1022. Sum of Root To Leaf Binary Numbers.swift
//  LeetCode
//
//  Created by Andrew on 24.02.2026.
//

import Foundation
 
class Solution1022 {
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
        
        var result: Int = 0
        addVal(node: root, number: 0, result: &result)
        return result
    }
    
    private func addVal(node: TreeNode, number: Int, result: inout Int) {
        var number = number << 1
        number += node.val
        
        var isFinish = true
        if let left = node.left {
            isFinish = false
            addVal(node: left, number: number, result: &result)
        }
        if let right = node.right {
            isFinish = false
            addVal(node: right, number: number, result: &result)
        }
        if isFinish {
            result += number
        }
    }
    
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init() { self.val = 0; self.left = nil; self.right = nil; }
        public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
        public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
            self.val = val
            self.left = left
            self.right = right
        }
    }
}
