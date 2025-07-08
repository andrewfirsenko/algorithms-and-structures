import UIKit

class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var prefixSum: [Int] = Array(repeating: 0, count: nums.count + 1)
        for i in 0..<nums.count {
            prefixSum[i + 1] = prefixSum[i] + nums[i]
        }
        
        var l: Int = 1
        var r: Int = 1
        var minLength: Int = prefixSum.count + 1
        while r < prefixSum.count, l <= r {
            if prefixSum[r] - prefixSum[l - 1] >= target {
                minLength = min(r - l + 1, minLength)
                l += 1
            } else {
                r += 1
            }
        }
        
        if minLength >= prefixSum.count + 1 {
            return 0
        } else {
            return minLength
        }
    }
}

let solution = Solution()
solution.minSubArrayLen(7, [2,3,1,2,4,3]) // 2
solution.minSubArrayLen(4, [1,4,4]) // 1
solution.minSubArrayLen(11, [1,1,1,1,1,1,1,1]) // 0
