import Foundation

class Solution {
    func minCost(_ nums: [Int]) -> Int {
        var nums: [Int] = nums
        var cost: Int = 0
        
        var i: Int = 0
        while nums.count - i > 2 {
            if nums[i] >= nums[i+1], nums[i] >= nums[i+2] {
                // 0 - max
                if nums[i+1] <= nums[i+2] {
                    // 1 - min, 2 - avr
                    if nums[i] - nums[i+2] <= nums[i+2] - nums[i+1] {
                        cost += nums[i]
                        nums[i+2] = nums[i+1]
                    } else {
                        cost += nums[i+2]
                        nums[i+2] = nums[i]
                    }
                    i += 2
                    continue
                } else {
                    // 2 - min, 1 - avr
                    if nums[i] - nums[i+1] <= nums[i+1] - nums[i+2] {
                        cost += nums[i]
                    } else {
                        cost += nums[i+1]
                        nums[i+2] = nums[i]
                    }
                    i += 2
                    continue
                }
            }
            
            if nums[1] >= nums[0], nums[1] >= nums[2] {
                // 1 - max
                if nums[i] <= nums[i+2] {
                    // 0 - min, 2 - avr
                    if nums[i+1] - nums[i+2] <= nums[i+2] - nums[i] {
                        cost += nums[i+1]
                        nums[i+2] = nums[i]
                    } else {
                        cost += nums[i+2]
                        nums[i+2] = nums[i+1]
                    }
                    i += 2
                    continue
                } else {
                    // 2 - min, 0 - avr
                    if nums[i+1] - nums[i] <= nums[i] - nums[i+2] {
                        cost += nums[i+1]
                    } else {
                        cost += nums[i]
                        nums[i+2] = nums[i+1]
                    }
                    i += 2
                    continue
                }
            }
            
            if nums[2] >= nums[0], nums[2] >= nums[1] {
                // 2 - max
                if nums[i] <= nums[i+1] {
                    // 0 - min, 1 - avr
                    if nums[i+2] - nums[i+1] <= nums[i+1] - nums[i] {
                        cost += nums[i+2]
                        nums[i+2] = nums[i]
                    } else {
                        cost += nums[i+1]
                    }
                    i += 2
                    continue
                } else {
                    // 1 - min, 0 - avr
                    if nums[i+2] - nums[i] <= nums[i] - nums[i+1] {
                        cost += nums[i+2]
                        nums[i+2] = nums[i+1]
                    } else {
                        cost += nums[i]
                    }
                    i += 2
                    continue
                }
            }
        }
        cost += nums[i...].max() ?? 0
        
        return cost
    }
}

let solution = Solution()
solution.minCost([6,2,8,4]) // 12
solution.minCost([2,1,3,3]) // 5
