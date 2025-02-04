import Foundation

class Solution {
    func maxAscendingSum(_ nums: [Int]) -> Int {
        guard let firstNum = nums.first else { return .zero }
        var maxSum: Int = firstNum
        var currentSum: Int = firstNum
        
        for i in 0..<(nums.count - 1) {
            if nums[i] < nums[i + 1] {
                currentSum += nums[i + 1]
            } else {
                currentSum = nums[i + 1]
            }
            maxSum = max(maxSum, currentSum)
        }
        
        return maxSum
    }
}

func test(input: [Int], output: Int) {
    let solution = Solution()
    print("test", solution.maxAscendingSum(input) == output)
}

test(input: [10,20,30,5,10,50], output: 65)
test(input: [10,20,30,40,50], output: 150)
test(input: [12,17,15,13,10,11,12], output: 33)
test(input: [12,17,15,150,150,11,12], output: 165)
test(input: [150,17,15,120,120,11,12], output: 150)
test(input: [150,17,15,150,150,30,150], output: 180)
