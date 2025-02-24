import Foundation

struct Point: Hashable {
    let x: Int
    let y: Int
}

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var needToVisit: Set<Point> = Set()
        grid.enumerated().forEach { i, line in
            line.enumerated().forEach { j, _ in
                needToVisit.insert(Point(x: j, y: i))
            }
        }
        
        var answer: Int = 0
        while let point: Point = needToVisit.first {
            needToVisit.remove(point)
            if grid[point.y][point.x] == "1" {
                answer += 1
                // DFS
                dfs(for: point, needToVisit: &needToVisit, grid: grid)
            }
        }
        
        return answer
    }
    
    private func dfs(for point: Point, needToVisit: inout Set<Point>, grid: [[Character]]) {
        unsafeNeighbors(point: point).forEach { neighbor in
            if needToVisit.contains(neighbor) {
                needToVisit.remove(neighbor)
                if grid[neighbor.y][neighbor.x] == "1" {
                    dfs(for: neighbor, needToVisit: &needToVisit, grid: grid)
                }
            }
        }
    }
    
    private func unsafeNeighbors(point: Point) -> [Point] {
        return [
            Point(x: point.x, y: point.y + 1),
            Point(x: point.x + 1, y: point.y),
            Point(x: point.x, y: point.y - 1),
            Point(x: point.x - 1, y: point.y)
        ]
    }
}

let solution = Solution()
solution.numIslands(
    [
      ["1","1","1","1","0"],
      ["1","1","0","1","0"],
      ["1","1","0","0","0"],
      ["0","0","0","0","0"]
    ]
) // 1
solution.numIslands(
    [
      ["1","1","0","0","0"],
      ["1","1","0","0","0"],
      ["0","0","1","0","0"],
      ["0","0","0","1","1"]
    ]
) // 3
