import Foundation

class Solution {
    func queryResults(_ limit: Int, _ queries: [[Int]]) -> [Int] {
        var balls: [Int: Int] = [:] // Ball : Color
        var colors: [Int: Int] = [:] // Color : Counr
        var answer: [Int] = []
        
        queries.forEach { command in
            let ball: Int = command[0]
            let color: Int = command[1]
            
            if let oldColor = balls[ball] {
                if colors[oldColor, default: 0] > 1 {
                    colors[oldColor, default: 0] -= 1
                } else {
                    colors[oldColor] = nil
                }
            }
            balls[ball] = color
            colors[color, default: 0] += 1
            
            answer.append(colors.count)
        }
        
        return answer
    }
}

func test(_ limit: Int, _ queries: [[Int]], expected: [Int]) {
    let result = Solution().queryResults(limit, queries)
    print("test", result == expected, result)
}

test(4, [[1,4],[2,5],[1,3],[3,4]], expected: [1,2,2,3])
test(4, [[0,1],[1,2],[2,2],[3,4],[4,5]], expected: [1,2,2,3,4])
