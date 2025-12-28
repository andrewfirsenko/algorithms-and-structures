//
//  283. Move Zeroes.swift
//  LeetCode
//
//  Created by Andrew on 28.12.2025.
//

import Foundation

class Solution283 {
    func moveZeroes(_ nums: inout [Int]) {
        var writeIndex: Int = 0
        var readIndex: Int = 0
        while readIndex < nums.endIndex {
            if nums[readIndex] != 0 {
                nums.swapAt(readIndex, writeIndex)
                writeIndex += 1
            }
            readIndex += 1
        }
    }
}
