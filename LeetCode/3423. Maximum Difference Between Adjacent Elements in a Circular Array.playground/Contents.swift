import UIKit

class Solution {
    func maxAdjacentDistance(_ nums: [Int]) -> Int {
        var maxDifference: Int = abs(nums[0] - nums[1])
        for i in 0..<nums.count {
            let nextIndex = (i + 1) % nums.count
            maxDifference = max(
                maxDifference,
                abs(nums[i] - nums[nextIndex])
            )
        }
        return maxDifference
    }
}
