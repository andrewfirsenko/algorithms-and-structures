import Foundation

class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var answer: [Int] = Array(repeating: pivot, count: nums.count)
        
        var lessIndex: Int = 0
        var moreIndex: Int = nums.count - 1
        for i in 0..<nums.count {
            if nums[i] < pivot {
                answer[lessIndex] = nums[i]
                lessIndex += 1
            }
            if nums[nums.count - i - 1] > pivot {
                answer[moreIndex] = nums[nums.count - i - 1]
                moreIndex -= 1
            }
        }
        
        return answer
    }
}

let solution = Solution()
solution.pivotArray([9,12,5,10,14,3,10], 10)
solution.pivotArray([-3,4,3,2], 2)
