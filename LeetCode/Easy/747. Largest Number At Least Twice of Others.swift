//
//  747. Largest Number At Least Twice of Others.swift
//  LeetCode
//
//  Created by Andrew on 03.01.2026.
//

import Foundation

class Solution747 {
    func dominantIndex(_ nums: [Int]) -> Int {
        var minIndex = 0
        for i in 0..<nums.count {
            if nums[i] < nums[minIndex] {
                minIndex = i
            }
        }
        
        var maxIndex = minIndex
        var max2Index = minIndex
        for i in 0..<nums.count {
            if nums[i] > nums[maxIndex] {
                max2Index = maxIndex
                maxIndex = i
            } else if nums[i] > nums[max2Index] {
                max2Index = i
            }
        }
        
        if nums[maxIndex] >= nums[max2Index] * 2 {
            return maxIndex
        } else {
            return -1
        }
    }
}
