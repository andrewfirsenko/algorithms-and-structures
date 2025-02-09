import Foundation

class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var stack: [(value: Int, index: Int)] = []
        var answer: Int = 0
        
        for i in 0..<heights.count {
            guard stack.count > 0 else {
                stack.append((value: heights[i], index: i))
                continue
            }
            
            if heights[i] > stack[stack.count - 1].value {
                stack.append((value: heights[i], index: i))
            } else {
                // Calculate
                var sum: Int = 0
                while let peek = stack.last, heights[i] <= peek.value {
                    if stack.count > 1 {
                        let beforePeek = stack[stack.count - 2]
                        sum = max(sum, peek.value * (i - beforePeek.index - 1))
                    } else {
                        sum = max(sum, peek.value * i)
                    }
                    stack.removeLast()
                }
                answer = max(answer, sum)
                stack.append((value: heights[i], index: i))
            }
        }
        
        // Calculate
        var sum: Int = 0
        while let peek = stack.last {
            if stack.count > 1 {
                let beforePeek = stack[stack.count - 2]
                sum = max(sum, peek.value * (heights.count - beforePeek.index - 1))
            } else {
                sum = max(sum, peek.value * heights.count)
            }
            stack.removeLast()
        }
        answer = max(answer, sum)
        
        return answer
    }
}

let solution = Solution()
solution.largestRectangleArea([2,1,5,6,2,3])
solution.largestRectangleArea([2,4])
solution.largestRectangleArea([1,1,1,1])
solution.largestRectangleArea([6,1,1,1])
solution.largestRectangleArea([1,1,1,6])
solution.largestRectangleArea([1,1,6,1,1])
solution.largestRectangleArea([1,0,2,0,1])
solution.largestRectangleArea([2,1,2])
solution.largestRectangleArea([4,2,0,0,0,3,2,5])
