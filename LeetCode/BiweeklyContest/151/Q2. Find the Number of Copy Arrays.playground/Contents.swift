import Foundation

class Solution {
    func countArrays(_ original: [Int], _ bounds: [[Int]]) -> Int {
        var bounds: [[Int]] = bounds
        var template: [Int] = Array(repeating: 0, count: original.count - 1)
        for i in 1..<original.count {
            template[i - 1] = original[i] - original[i - 1]
        }
        
        var answer: Int = bounds[0][1] - bounds[0][0] + 1
        for i in 1..<bounds.count {
            let targetLower: Int = bounds[i - 1][0] + template[i - 1]
            let targetUpper: Int = bounds[i - 1][1] + template[i - 1]
            bounds[i][0] = max(targetLower, bounds[i][0])
            bounds[i][1] = min(targetUpper, bounds[i][1])
            
            let iLower: Int = bounds[i][0]
            let iUpper: Int = bounds[i][1]
            if iLower > iUpper { return 0 }
            
            let result = max(iUpper - iLower + 1, 0)
            answer = min(answer, result)
        }
        
        return answer
    }
}

let solution = Solution()
solution.countArrays([1,2,3,4], [[1,2],[2,3],[3,4],[4,5]]) // 2
solution.countArrays([1,2,3,4], [[1,10],[2,9],[3,8],[4,7]]) // 4
solution.countArrays([1,2,1,2], [[1,1],[2,3],[3,3],[2,3]]) // 0
solution.countArrays([2,76], [[93,110],[67,98]]) // 0
solution.countArrays([57,55,75], [[60,106],[43,60],[18,67]]) // 0

