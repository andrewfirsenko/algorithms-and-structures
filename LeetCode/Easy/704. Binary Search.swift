//
//  704. Binary Search.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 02.11.2026.
//

class Solution704 {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0 // potensial answer
        var right = nums.count
        
        while left < right - 1 {
            let mid = (left + right) / 2
            if nums[mid] <= target {
                left = mid
            } else {
                right = mid
            }
        }
        
        return nums[left] == target ? left : -1
    }
}
