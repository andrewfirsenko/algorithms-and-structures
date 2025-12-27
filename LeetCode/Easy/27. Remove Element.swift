//
//  27. Remove Element.swift
//  LeetCode
//
//  Created by Andrew on 28.12.2025.
//

import Foundation

class Solution27 {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.count > 0 else { return 0 }
        
        var lastIndex: Int = nums.endIndex - 1
        var index: Int = nums.startIndex
        while index <= lastIndex {
            if nums[index] == val {
                nums.swapAt(index, lastIndex)
                lastIndex -= 1
            } else {
                index += 1
            }
        }
        
        return lastIndex + 1
    }
}
