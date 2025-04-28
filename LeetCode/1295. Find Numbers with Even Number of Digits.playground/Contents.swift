import Foundation

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var count: Int = 0
        for num in nums {
            if isEven(num: num) {
                count += 1
            }
        }
        return count
    }
    
    private func isEven(num: Int) -> Bool {
        var num: Int = num
        
        var count: Int = 0
        while num > 0 {
            num /= 10
            count += 1
        }
        
        return count % 2 == 0
    }
}
