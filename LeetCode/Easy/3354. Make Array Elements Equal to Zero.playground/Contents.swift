import Foundation

class Solution {
    func countValidSelections(_ nums: [Int]) -> Int {
        var sumArray = Array(repeating: 0, count: nums.count)
        sumArray[0] = nums[0]
        for i in 1..<nums.count {
            sumArray[i] = sumArray[i - 1] + nums[i]
        }
        
        var result: Int = 0
        for i in 0..<nums.count where nums[i] == 0 {
            let leftSum = i > 0 ? sumArray[i - 1] : 0
            let rightSum = sumArray[nums.count - 1] - sumArray[i]
            let diff = abs(leftSum - rightSum)
            if diff == 0 {
                result += 2
            } else if diff == 1 {
                result += 1
            }
        }
        
        return result
    }
}

let solution = Solution()
solution.countValidSelections([1,0,2,0,3]) // 2
solution.countValidSelections([2,3,4,0,4,1,0]) // 0
