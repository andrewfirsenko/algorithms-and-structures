import Foundation

// Brute Force

class Solution {
    
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        return countWaysToTarget(nums: nums, target: target, index: nums.startIndex, sum: 0)
    }
    
    func countWaysToTarget(nums: [Int], target: Int, index: Int, sum: Int) -> Int {
        guard index < nums.count else {
            return target == sum ? 1 : 0
        }
        
        return countWaysToTarget(nums: nums, target: target, index: index + 1, sum: sum + nums[index])
        + countWaysToTarget(nums: nums, target: target, index: index + 1, sum: sum - nums[index])
    }
}

let solution = Solution()
solution.findTargetSumWays([1,1,1,1,1], 3) // 5
solution.findTargetSumWays([1], 1) // 1
