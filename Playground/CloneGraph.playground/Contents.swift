import Foundation

public class Node: CustomStringConvertible {
    
    public var description: String {
        "\(val) [\(neighbors.compactMap { $0?.val })]"
    }
    
    public var val: Int
    public var neighbors: [Node?]
    public init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}

class Solution {
    
    func cloneGraph(_ node: Node?) -> Node? {
        guard let node else { return nil }
        
        let copy: Node = Node(node.val)
        var copied: [Int: Node] = [:] // Value : Node
        copied[copy.val] = copy
        
        dfs(node: node, copy: copy, copied: &copied)
        
        return copy
    }
    
    func dfs(node: Node, copy: Node, copied: inout [Int: Node]) {
        node.neighbors
            .compactMap { $0 }
            .forEach { neighbor in
                if let value = copied[neighbor.val] {
                    copy.neighbors.append(value)
                } else {
                    let copyNeighbor = Node(neighbor.val)
                    copy.neighbors.append(copyNeighbor)
                    copied[neighbor.val] = copyNeighbor
                    
                    dfs(node: neighbor, copy: copyNeighbor, copied: &copied)
                }
            }
    }
}

// [[2,4],[1,3],[2,4],[1,3]]
let node1 = Node(1)
let node2 = Node(2)
let node3 = Node(3)
let node4 = Node(4)
node1.neighbors = [node2, node4]
node2.neighbors = [node1, node3]
node3.neighbors = [node2, node4]
node4.neighbors = [node1, node3]

let solution = Solution()
let copyNode1 = solution.cloneGraph(node1)
print(copyNode1)
copyNode1?.neighbors.forEach {
    print($0)
}

