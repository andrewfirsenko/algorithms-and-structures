import Foundation

class Solution {
    func applyOperations(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else { return nums }
        
        var nums: [Int] = nums
        var answer: [Int] = Array(repeating: 0, count: nums.count)
        var count: Int = 0
        
        for i in 0..<(nums.count - 1) {
            if nums[i] == nums[i + 1] {
                nums[i] *= 2
                nums[i + 1] = 0
            }
            if nums[i] > 0 {
                answer[count] = nums[i]
                count += 1
            }
        }
        if let last: Int = nums.last, last > 0 {
            answer[count] = last
        }
        
        return answer
    }
}

let solution = Solution()
solution.applyOperations([1,2,2,1,1,0]) // [1,4,2,0,0,0]
solution.applyOperations([0,1]) // [1,0]
