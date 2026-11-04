//
//  33. Search in Rotated Sorted Array.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 04.11.2026.
//

class Solution33 {
    func search(_ nums: [Int], _ target: Int) -> Int {
        // find pivot
        // left and right Binary Search
        
        let pivot = findPivot(nums)
        let left = search(target: target, nums: nums, left: 0, right: pivot - 1)
        let right = search(target: target, nums: nums, left: pivot, right: nums.count - 1)
        
        return max(left, right)
    }
    
    private func findPivot(_ nums: [Int]) -> Int {
        guard let first = nums.first,
              let last = nums.last,
              last < first else {
            return 0
        }
        
        var left: Int = 0
        var right: Int = nums.count - 1 // pivot - min value
        while left < right - 1 {
            let mid: Int = left + (right - left) / 2
            if nums[mid] > nums[left] {
                left = mid
            } else {
                right = mid
            }
        }
        
        return right
    }
    
    private func search(
        target: Int,
        nums: [Int],
        left: Int,
        right: Int
    ) -> Int {
        var left = left
        var right = right
        while left <= right {
            let mid: Int = left + (right - left) / 2
            if nums[mid] == target { return mid }
            if nums[mid] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return -1
    }
}
