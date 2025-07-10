import UIKit

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefixAndSuffixProduct: [Int] = Array(repeating: 1, count: nums.count + 2)
        for i in 0..<nums.count {
            prefixAndSuffixProduct[prefixAndSuffixProduct.count - i - 2] =
                prefixAndSuffixProduct[prefixAndSuffixProduct.count - i - 1] *
                nums[nums.count - i - 1]
        }
        
        var answer: [Int] = Array(repeating: 0, count: nums.count)
        for i in 0..<nums.count {
            let prefixProduct: Int = prefixAndSuffixProduct[i]
            let sufixProduct: Int = prefixAndSuffixProduct[i + 2]
            
            answer[i] = prefixProduct * sufixProduct
            prefixAndSuffixProduct[i + 1] = prefixAndSuffixProduct[i] * nums[i]
        }
        
        return answer
    }
}

let solution = Solution()
solution.productExceptSelf([1,2,3,4]) // [24,12,8,6]
solution.productExceptSelf([-1,1,0,-3,3]) // [0,0,9,0,0]
