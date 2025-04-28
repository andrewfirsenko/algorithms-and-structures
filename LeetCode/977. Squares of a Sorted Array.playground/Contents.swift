import Foundation

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums.map { $0 * $0 } }
    
        var l: Int = 0
        var r: Int = nums.count - 1
        while r - l > 1 {
            let mid: Int = (l + r) / 2
            if nums[mid] < 0 {
                l = mid
            } else {
                r = mid
            }
        }
        
        var answer: [Int] = Array(repeating: 0, count: nums.count)
        var index: Int = 0
        while l >= 0 && r < nums.count {
            if abs(nums[l]) < abs(nums[r]) {
                answer[index] = nums[l] * nums[l]
                l -= 1
            } else {
                answer[index] = nums[r] * nums[r]
                r += 1
            }
            index += 1
        }
        while l >= 0 {
            answer[index] = nums[l] * nums[l]
            l -= 1
            index += 1
        }
        while r < nums.count {
            answer[index] = nums[r] * nums[r]
            r += 1
            index += 1
        }
        
        return answer
    }
}
