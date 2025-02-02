import Foundation

class Solution {
    func check(_ nums: [Int]) -> Bool {
        var problemsCount: Int = 0
        for i in nums.indices {
            if nums[i] > nums[(i + 1) % nums.count] {
                problemsCount += 1
                if problemsCount > 1 {
                    return false
                }
            }
        }
        return true
    }
}

func test(input: [Int], output: Bool) {
    let solution = Solution()
    print("test", solution.check(input) == output)
}

test(input: [3,4,5,1,2], output: true)
test(input: [2,1,3,4], output: false)
test(input: [1,2,3], output: true)
