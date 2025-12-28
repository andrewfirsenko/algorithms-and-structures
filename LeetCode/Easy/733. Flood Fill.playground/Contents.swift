import Foundation
import DataStructures

struct Point {
    let x: Int
    let y: Int
}

class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        let fromColor: Int = image[sr][sc]
        guard fromColor != color else { return image }
        
        // BFS
        var image: [[Int]] = image
        var queue: Queue<Point> = Queue()
        queue.enqueue(Point(x: sc, y: sr))
        while !queue.isEmpty {
            let size = queue.size
            for _ in 0..<size {
                let point: Point = queue.dequeue()!
                image[point.y][point.x] = color
                neighbors(point: point, w: image[0].count, h: image.count).forEach { neighbor in
                    if image[neighbor.y][neighbor.x] == fromColor {
                        queue.enqueue(neighbor)
                    }
                }
            }
        }
        
        return image
    }
    
    private func neighbors(point: Point, w: Int, h: Int) -> [Point] {
        var neighbors: [Point] = []
        if point.x > 0 { neighbors.append(Point(x: point.x - 1, y: point.y)) }
        if point.y > 0 { neighbors.append(Point(x: point.x, y: point.y - 1)) }
        if point.x < w - 1 { neighbors.append(Point(x: point.x + 1, y: point.y)) }
        if point.y < h - 1 { neighbors.append(Point(x: point.x, y: point.y + 1)) }
        return neighbors
    }
}

let solution = Solution()
let img1 = solution.floodFill([[1,1,1],[1,1,0],[1,0,1]], 1, 1, 2) // [[2,2,2],[2,2,0],[2,0,1]]
let img2 = solution.floodFill([[0,0,0],[0,0,0]], 0, 0, 0) // [[2,2,2],[2,2,0],[2,0,1]]
print(img1)
print(img2)
