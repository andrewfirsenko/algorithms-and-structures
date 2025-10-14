import UIKit

class Solution {
    func hasIncreasingSubarrays(_ nums: [Int], _ k: Int) -> Bool {
        var prevIncreasingLenght: Int = 1
        var currentIncreasingLenght: Int = 1
        for i in 1..<nums.count {
            if nums[i - 1] < nums[i] {
                currentIncreasingLenght += 1
            } else {
                prevIncreasingLenght = currentIncreasingLenght
                currentIncreasingLenght = 1
            }
            
            if currentIncreasingLenght >= k * 2 {
                return true
            }
            if prevIncreasingLenght >= k, currentIncreasingLenght >= k {
                return true
            }
        }
        return false
    }
}

let solution = Solution()
solution.hasIncreasingSubarrays([2,5,7,8,9,2,3,4,3,1], 3)
solution.hasIncreasingSubarrays([1,2,3,4,4,4,4,5,6,7], 5)
solution.hasIncreasingSubarrays([-15,-13,4,7], 2)
