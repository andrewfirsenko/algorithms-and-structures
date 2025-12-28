import Foundation

class Solution {
    func numRabbits(_ answers: [Int]) -> Int {
        var dict: [Int: Int] = [:] // answer : count
        answers.forEach { answer in
            dict[answer, default: 0] += 1
        }
        
        var result: Int = 0
        dict.forEach { key, value in
            let maxRabbits: Int = key + 1
            var countColors: Int = value / maxRabbits
            if value % maxRabbits != 0 {
                countColors += 1
            }
            result += countColors * maxRabbits
        }
        
        return result
    }
}

let solution = Solution()
solution.numRabbits([1,1,2]) // 5
solution.numRabbits([10,10,10]) // 11
solution.numRabbits([0,1,1]) // 3
solution.numRabbits([2,2,2,2]) // 6
