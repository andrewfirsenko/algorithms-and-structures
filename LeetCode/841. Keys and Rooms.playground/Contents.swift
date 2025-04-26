import Foundation
import DataStructures

class Solution {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        // BFS
        var visited: [Bool] = Array(repeating: false, count: rooms.count)
        var queue: Queue<Int> = Queue()
        queue.enqueue(0)
        while !queue.isEmpty {
            let size = queue.size
            for _ in 0..<size {
                let index: Int = queue.dequeue()!
                rooms[index].forEach { next in
                    if !visited[next] {
                        queue.enqueue(next)
                    }
                }
                visited[index] = true
            }
        }
        
        return visited.allSatisfy { $0 }
    }
}

let solution = Solution()
solution.canVisitAllRooms([[1],[2],[3],[]]) // true
solution.canVisitAllRooms([[1,3],[3,0,1],[2],[0]]) // false
