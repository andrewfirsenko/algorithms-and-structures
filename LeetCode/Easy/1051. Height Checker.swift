//
//  1051. Height Checker.swift
//  LeetCode
//
//  Created by Andrew on 29.12.2025.
//

import Foundation

class Solution1051 {
    func heightChecker(_ heights: [Int]) -> Int {
        var count: Int = 0
        let expectedHeights = heights.sorted()
        for (height, expected) in zip(heights, expectedHeights) {
            if height != expected {
                count += 1
            }
        }
        return count
    }
}
