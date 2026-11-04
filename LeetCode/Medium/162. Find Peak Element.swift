//
//  162. Find Peak Element.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 04.11.2026.
//

class Solution162 {
    func findPeakElement(_ nums: [Int]) -> Int {
        var left: Int = 0
        var right: Int = nums.count - 1
        
        while left < right {
            let mid: Int = left + (right - left) / 2
            if isPeak(nums, index: mid) {
                return mid
            }
            if isIncreasing(nums, index: mid) {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return left
    }
    
    func isPeak(_ nums: [Int], index: Int) -> Bool {
        let leftValue = nums[max(0, index - 1)]
        let rightValue = nums[min(nums.count - 1, index + 1)]
        return nums[index] >= leftValue && nums[index] >= rightValue
    }
    
    func isIncreasing(_ nums: [Int], index: Int) -> Bool{
        let leftValue = nums[max(0, index - 1)]
        return nums[index] >= leftValue
    }
}
