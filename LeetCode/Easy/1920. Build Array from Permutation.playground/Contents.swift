import Foundation

class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        return nums.map { nums[$0] }
    }
}

func test(input: [Int], output: [Int]) {
    let solution = Solution()
    print("test", solution.buildArray(input) == output)
}

test(input: [0,2,1,5,3,4], output: [0,1,2,4,5,3])
test(input: [5,0,1,2,3,4], output: [4,5,0,1,2,3])
