import Foundation

class Solution {
    func countSubarrays(_ nums: [Int]) -> Int {
        var count: Int = 0
        for i in 0..<(nums.count - 2) {
            if (nums[i] + nums[i + 2]) * 2 == nums[i + 1] {
                count += 1
            }
        }
        return count
    }
}

Solution().countSubarrays([-1,-4,-1,4])
