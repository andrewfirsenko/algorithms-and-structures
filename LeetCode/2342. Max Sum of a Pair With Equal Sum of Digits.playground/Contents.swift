import Foundation

class Solution {
    func maximumSum(_ nums: [Int]) -> Int {
        var sumsOfDigits: [Int: [Int]] = [:] // Sum of digits : Number
        for i in 0..<nums.count {
            sumsOfDigits[sumOfDigits(number: nums[i]), default: []].append(nums[i])
        }
        
        let sums = sumsOfDigits.values
            .filter { $0.count > 1 }
            .compactMap {
                $0.sorted(by: >)
                    .prefix(2)
                    .reduce(0, +)
            }
        
        return sums.max() ?? -1
    }
                
    private func sumOfDigits(number: Int) -> Int {
        var number = number
        var result: Int = 0
        
        while number >= 10 {
            result += number % 10
            number /= 10
        }
        result += number
        
        return result
    }
}

let solution = Solution()
solution.maximumSum([18,43,36,13,7])
solution.maximumSum([10,12,19,14])
