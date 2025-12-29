import Foundation
import DataStructures

class Solution {
    
    func openLock(_ deadends: [String], _ target: String) -> Int {
        let deadends: Set<String> = Set(deadends)
        var codes: Set<String> = Set()
        var count: Int = 0
        
        // BFS
        var queue = Queue<String>()
        queue.enqueue("0000")
        codes.insert("0000")
                        
        while !queue.isEmpty {
            let size = queue.size
            for _ in 0..<size {
                let code = queue.dequeue()!
                if deadends.contains(code) {
                    continue
                }
                if code == target {
                    return count
                }
                
                neighborCodes(code: code).forEach { neighbor in
                    if !deadends.contains(neighbor) && !codes.contains(neighbor) {
                        codes.insert(neighbor)
                        queue.enqueue(neighbor)
                    }
                }
            }
            count += 1
        }
        
        return -1
    }
    
    private func neighborCodes(code: String) -> [String] {
        var neighbors: [String] = []
        for i in 0..<code.count {
            neighbors.append(contentsOf: turn(code: code, turn: i))
        }
        return neighbors
    }
    
    private func turn(code: String, turn: Int) -> [String] {
        let index = code.index(code.startIndex, offsetBy: turn)
        let turnNumber: Int = Int(String(code[index]))!
        let leftNumber: Int = turnNumber > 0 ? turnNumber - 1 : 9
        let rightNumber: Int = (turnNumber + 1) % 10
        var left: [Character] = Array(code)
        var right: [Character] = Array(code)
        
        left[turn] = Character(String(leftNumber))
        right[turn] = Character(String(rightNumber))
        
        return [String(left), String(right)]
    }
}

let solution = Solution()
solution.openLock(["0201","0101","0102","1212","2002"], "0202") // 6
solution.openLock(["8888"], "0009") // 1
solution.openLock(["8887","8889","8878","8898","8788","8988","7888","9888"], "8888") // -1
solution.openLock(["0000"], "8888") // -1
solution.openLock(["0201","0101","0102","1212","2002"], "0000") // 0

