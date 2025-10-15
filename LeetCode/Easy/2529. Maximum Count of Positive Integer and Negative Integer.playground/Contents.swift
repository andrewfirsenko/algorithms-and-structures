import Foundation

class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        
        var positive: Int = 0
        if nums[nums.count - 1] > 0 {
            var l: Int = -1
            var r: Int = nums.count
            while r - l > 1 {
                let mid: Int = (l + r) / 2
                if nums[mid] > 0 {
                    r = mid
                } else {
                    l = mid
                }
            }
            positive = nums.count - r
        }
        
        var negative: Int = 0
        if nums[0] < 0 {
            var l: Int = -1
            var r: Int = nums.count
            while r - l > 1 {
                let mid: Int = (l + r) / 2
                if nums[mid] < 0 {
                    l = mid
                } else {
                    r = mid
                }
            }
            negative = l + 1
        }
        
        return max(positive, negative)
    }
}

let solution = Solution()
solution.maximumCount([-2,-1,-1,1,2,3]) // 3
solution.maximumCount([-3,-2,-1,0,0,1,2]) // 3
solution.maximumCount([5,20,66,1314]) // 4
