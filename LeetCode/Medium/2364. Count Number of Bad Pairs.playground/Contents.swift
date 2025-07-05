import Foundation

class Solution {
    func countBadPairs(_ nums: [Int]) -> Int {
        var digits: [Int: Int] = [:] // nums[i] - i : Count
        for i in 0..<nums.count {
            digits[nums[i] - i, default: 0] += 1
        }
        
        let allPairs = countPairs(for: nums.count)
        let goodPairs: Int = digits.values
            .filter { $0 > 1 }
            .reduce(0) { partialResult, value in
                return partialResult + countPairs(for: value)
            }
        
        return allPairs - goodPairs
    }
    
    private func countPairs(for number: Int) -> Int {
        guard number > 1 else { return 0 }
        return number * (number - 1) / 2
    }
}

let solution = Solution()
solution.countBadPairs([4,1,3,3])
solution.countBadPairs([1,2,3,4,5])
solution.countBadPairs([56,30,2,73,28,81,75,75,18,63,54,10,69,85,33,89,12,78,57,60,54,65,74,63,53,77])

