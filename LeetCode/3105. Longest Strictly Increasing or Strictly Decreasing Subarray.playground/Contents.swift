import Foundation

enum SequanceType {
    case increasing
    case decreasing
}

class Solution {
    func longestMonotonicSubarray(_ nums: [Int]) -> Int {
        var maxSequence: [SequanceType: Int] = [:]
        var currentSequence: (type: SequanceType, value: Int) = (.increasing, 1)
        
        for i in 0..<(nums.count - 1) {
            if nums[i] < nums[i + 1] {
                if currentSequence.type == .increasing {
                    currentSequence.value += 1
                } else {
                    currentSequence.type = .increasing
                    currentSequence.value = 2 // Pair numbers
                }
                maxSequence[.increasing] = max(maxSequence[.increasing] ?? 1, currentSequence.value)
            } else if nums[i] > nums[i + 1] {
                if currentSequence.type == .decreasing {
                    currentSequence.value += 1
                } else {
                    currentSequence.type = .decreasing
                    currentSequence.value = 2 // Pair numbers
                }
                maxSequence[.decreasing] = max(maxSequence[.decreasing] ?? 1, currentSequence.value)
            } else {
                currentSequence = (.increasing, 1)
            }
        }
        
        return maxSequence.values.max() ?? 1
    }
}

func test(input: [Int], output: Int) {
    let solution = Solution()
    print("test", solution.longestMonotonicSubarray(input) == output)
}

test(input: [1,4,3,3,2], output: 2)
test(input: [3,3,3,3], output: 1)
test(input: [3,2,1], output: 3)
