//
//  344. Reverse String.swift
//  LeetCode
//
//  Created by Andrew on 23.02.2026.
//

import Foundation

class Solution344 {
    func reverseString(_ s: inout [Character]) {
        var leftIndex: Int = 0
        var rightIndex: Int = s.count - 1
        while leftIndex < rightIndex {
            s.swapAt(leftIndex, rightIndex)
            leftIndex += 1
            rightIndex -= 1
        }
    }
}
