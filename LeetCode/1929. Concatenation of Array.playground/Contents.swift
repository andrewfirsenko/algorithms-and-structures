import Foundation

class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        return nums + nums;
    }
}

func test(input: [Int], output: [Int]) {
    let solution = Solution()
    print("test", solution.getConcatenation(input) == output)
}

test(input: [1,2,1], output: [1,2,1,1,2,1])
test(input: [1,3,2,1], output: [1,3,2,1,1,3,2,1])
