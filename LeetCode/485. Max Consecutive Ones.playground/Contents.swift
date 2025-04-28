import Foundation

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxCount: Int = 0
        var currentCount: Int = 0
        
        for num in nums {
            if num == 1 {
                currentCount += 1
            } else {
                maxCount = max(currentCount, maxCount)
                currentCount = 0
            }
        }
        maxCount = max(currentCount, maxCount)
        
        return maxCount
    }
}
