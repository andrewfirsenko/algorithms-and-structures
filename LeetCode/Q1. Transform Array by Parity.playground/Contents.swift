import Foundation

class Solution {
    func transformArray(_ nums: [Int]) -> [Int] {
        var answer: [Int] = Array(repeating: 0, count: nums.count)
        var i: Int = nums.count - 1
        
        for num in nums {
            if num % 2 != 0 {
                answer[i] = 1
                i -= 1
            }
        }
        
        return answer
    }
}

let solution = Solution()
solution.transformArray([4,3,2,1]) // [0,0,1,1]
solution.transformArray([1,5,1,4,2]) // [0,0,1,1,1]
