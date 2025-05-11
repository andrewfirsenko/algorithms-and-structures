import Cocoa

class Solution {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        var count: Int = 0
        for num in arr {
            if num % 2 == 0 {
                count = 0
            } else {
                count += 1
            }
            
            if count >= 3 {
                return true
            }
        }

        return false
    }
}
