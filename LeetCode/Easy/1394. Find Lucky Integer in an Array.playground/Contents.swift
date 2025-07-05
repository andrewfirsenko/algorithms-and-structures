import UIKit

class Solution {
    func findLucky(_ arr: [Int]) -> Int {
//        var countOfNumber: [Int: Int] = [:] // num : count
//        for num in arr {
//            countOfNumber[num, default: 0] += 1
//        }
//        
//        var maxValue: Int = -1
//        for (key, value) in countOfNumber {
//            if key == value {
//                maxValue = max(maxValue, key)
//            }
//        }
//        
//        return maxValue
        
        var countOfNumber: [Int] = Array(repeating: 0, count: 501)
        for num in arr {
            countOfNumber[num] += 1
        }
        
        for i in stride(from: 500, to: 0, by: -1) {
            if countOfNumber[i] == i {
                return i
            }
        }
        
        return -1
    }
}
