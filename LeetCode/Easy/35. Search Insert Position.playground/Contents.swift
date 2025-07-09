import UIKit

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l: Int = -1
        var r: Int = nums.count // answer
        while r - l > 1 {
            let mid = (r + l) / 2
            if nums[mid] >= target {
                r = mid
            } else {
                l = mid
            }
        }
        
        return r
    }
}
