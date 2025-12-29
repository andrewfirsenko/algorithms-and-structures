//
//  905. Sort Array By Parity.swift
//  LeetCode
//
//  Created by Andrew on 29.12.2025.
//

import Foundation

class Solution905 {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var nums = nums
        
        var writeIndex: Int = 0
        var readIndex: Int = 0
        while readIndex < nums.endIndex {
            if nums[readIndex] % 2 == 0 {
                nums.swapAt(readIndex, writeIndex)
                writeIndex += 1
            }
            readIndex += 1
        }
        
        return nums
    }
}
