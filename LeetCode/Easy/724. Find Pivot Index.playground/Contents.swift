import UIKit

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var prefixSum: [Int] = Array(repeating: 0, count: nums.count + 1)
        for i in 0..<nums.count {
            prefixSum[i + 1] = prefixSum[i] + nums[i]
        }
        
        for i in 0..<nums.count {
            let leftSum: Int = prefixSum[i]
            let rightSum: Int = prefixSum.last! - prefixSum[i + 1]
            if leftSum == rightSum {
                return i
            }
        }
        
        return -1
    }
}

let solution = Solution()
solution.pivotIndex([1,7,3,6,5,6]) // 3

// 1,7,3,6,5,6
// 0, 1, 8, 11, 17, 22, 28
