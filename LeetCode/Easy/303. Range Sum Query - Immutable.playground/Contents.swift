import UIKit

class NumArray {

    private var prefixSumArray: [Int]
    
    init(_ nums: [Int]) {
        prefixSumArray = Array(repeating: 0, count: nums.count + 1)
        for i in 0..<nums.count {
            prefixSumArray[i + 1] = prefixSumArray[i] + nums[i]
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        return prefixSumArray[right + 1] - prefixSumArray[left]
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */

// -2, 0, 3, -5, 2, -1
// -2, -2, 1, -4, -2, -3
