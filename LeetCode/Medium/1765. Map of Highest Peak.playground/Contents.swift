import Foundation
import DataStructures

class Solution {
    
    struct Point {
        let x: Int
        let y: Int
    }
    
    func highestPeak(_ isWater: [[Int]]) -> [[Int]] {
        let m: Int = isWater.count
        let n: Int = isWater[0].count
        var heights: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
        
        // BFS
        var queue: Queue<Point> = Queue()
        for i in 0..<m {
            for j in 0..<n {
                if isWater[i][j] == 1 {
                    let point = Point(x: j, y: i)
                    queue.enqueue(point)
                    visited[i][j] = true
                }
            }
        }
        var height: Int = 0
        while !queue.isEmpty {
            let size = queue.size
            for i in 0..<size {
                let point: Point = queue.dequeue()!
                heights[point.y][point.x] = height
                neighbours(point: point, m: m, n: n).forEach { neighbor in
                    if visited[neighbor.y][neighbor.x] == false {
                        queue.enqueue(Point(x: neighbor.x, y: neighbor.y))
                        visited[neighbor.y][neighbor.x] = true
                    }
                }
            }
            height += 1
        }
        
        return heights
    }
    
    private func neighbours(point: Point, m: Int, n: Int) -> [Point] {
        var result: [Point] = []
        if point.x > 0 {
            result.append(Point(x: point.x - 1, y: point.y))
        }
        if point.x < n - 1 {
            result.append(Point(x: point.x + 1, y: point.y))
        }
        if point.y > 0 {
            result.append(Point(x: point.x, y: point.y - 1))
        }
        if point.y < m - 1 {
            result.append(Point(x: point.x, y: point.y + 1))
        }
        return result
    }
}

let solution = Solution()
print(solution.highestPeak([[0,1],[0,0]])) // [[1,0],[2,1]]
print(solution.highestPeak([[0,0,1],[1,0,0],[0,0,0]])) // [[1,1,0],[0,1,1],[1,2,2]]
