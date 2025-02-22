import Foundation

class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var answer: [Int] = Array(repeating: 0, count: temperatures.count)
        
        var stack: [Int] = [] // indexes
        for i in 0..<temperatures.count {
            guard let last = stack.last else {
                stack.append(i)
                continue
            }
            
            if temperatures[i] > temperatures[last] {
                while let last = stack.last, temperatures[i] > temperatures[last] {
                    stack.removeLast()
                    answer[last] = i - last
                }
            }
            
            stack.append(i)
        }
        
        return answer
    }
}

let solution = Solution()
solution.dailyTemperatures([73,74,75,71,69,72,76,73]) // [1,1,4,2,1,1,0,0]
solution.dailyTemperatures([30,40,50,60]) // [1,1,1,0]
solution.dailyTemperatures([30,60,90]) // [1,1,0]
