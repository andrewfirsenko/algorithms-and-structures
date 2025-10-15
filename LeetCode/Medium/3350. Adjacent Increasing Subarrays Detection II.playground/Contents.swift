import UIKit

class Solution {
    func maxIncreasingSubarrays(_ nums: [Int]) -> Int {
        var maxLength: Int = 0
        
        var prevIncreasingLength: Int = 1
        var currentIncreasingLength: Int = 1
        for i in 1..<nums.count {
            if nums[i - 1] < nums[i] {
                currentIncreasingLength += 1
            } else {
                prevIncreasingLength = currentIncreasingLength
                currentIncreasingLength = 1
            }
            
            maxLength = max(maxLength, currentIncreasingLength / 2)
            maxLength = max(maxLength, min(prevIncreasingLength, currentIncreasingLength))
        }
        
        return maxLength
    }
}

let solution = Solution()
solution.maxIncreasingSubarrays([2,5,7,8,9,2,3,4,3,1])
solution.maxIncreasingSubarrays([1,2,3,4,4,4,4,5,6,7])
