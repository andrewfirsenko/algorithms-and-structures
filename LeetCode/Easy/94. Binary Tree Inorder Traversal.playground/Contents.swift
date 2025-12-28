import Foundation

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

class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root else { return [] }
        
        var leftStack: [TreeNode] = []
        var rightStack: [TreeNode] = []
        leftStack.append(root)
        rightStack.append(root)
        // DFS
        var answer: [Int] = []
        while !leftStack.isEmpty || !rightStack.isEmpty  {
            if let left = leftStack.last {
                leftStack.removeLast()
                if let next = left.left {
                    leftStack.append(next)
                    rightStack.append(next)
                }
                continue
            }
            if let right = rightStack.last {
                answer.append(right.val)
                rightStack.removeLast()
                if let next = right.right {
                    leftStack.append(next)
                    rightStack.append(next)
                }
            }
        }
        
        return answer
    }
}

let node3 = TreeNode(3)
let node2 = TreeNode(2, node3, nil)
let node1 = TreeNode(1, nil, node2)

let solution = Solution()
solution.inorderTraversal(node1) // 132
