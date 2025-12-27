//
//  26. Remove Duplicates from Sorted Array.swift
//  LeetCode
//
//  Created by Andrew on 28.12.2025.
//

import Foundation

class Solution26 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return 1 }
        
        var index: Int = nums.startIndex
        for i in (index + 1)..<nums.endIndex {
            if nums[index] < nums[i] {
                index += 1
                nums.swapAt(index, i)
            }
        }
        
        return index + 1
    }
}
