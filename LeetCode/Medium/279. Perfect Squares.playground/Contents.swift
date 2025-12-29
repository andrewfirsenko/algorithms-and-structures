import Foundation
import DataStructures

class Solution {
    func numSquares(_ n: Int) -> Int {
        let target: Double = Double(n)
        var sums: Set<Int> = Set()
        var count: Int = 0
        
        // BFS
        var queue: Queue<Int> = Queue()
        queue.enqueue(0)
        while !queue.isEmpty {
            let size = queue.size
            for _ in 0..<size {
                let current: Int = queue.dequeue()!
                if current == n {
                    return count
                }
                
                
                let rest: Double = target - Double(current)
                let max: Int = Int(rest.squareRoot())
                for next in stride(from: max, through: 1, by: -1) {
                    let sum: Int = current + next * next
                    if !sums.contains(sum) {
                        queue.enqueue(current + next * next)
                        sums.insert(sum)
                    }
                }
            }
            count += 1
        }
        
        return count
    }
}

let solution = Solution()
solution.numSquares(12) // 3
solution.numSquares(13) // 2
