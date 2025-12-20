import Foundation

class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        var dict: [Int: Int] = [:] // Num : Count
        nums.forEach { num in
            dict[num, default: 0] += 1
        }
        
        for value in dict.values {
            if value % 2 != 0 {
                return false
            }
        }
        return true
    }
}

let solution = Solution()
solution.divideArray([3,2,3,2,2,2]) // true
solution.divideArray([1,2,3,4]) // false
