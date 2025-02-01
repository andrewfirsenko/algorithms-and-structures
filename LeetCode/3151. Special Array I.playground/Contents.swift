import Foundation

class Solution {
    func isArraySpecial(_ nums: [Int]) -> Bool {
        for i in 0..<(nums.count - 1) {
            let first: Int = nums[i] % 2
            let second: Int = nums[i + 1] % 2
            if first == second {
                return false
            }
        }
        return true
    }
}

func test(input: [Int], output: Bool) {
    let solution = Solution()
    print("test", solution.isArraySpecial(input) == output)
}

test(input: [1], output: true)
test(input: [2,1,4], output: true)
test(input: [4,3,1,6], output: false)
