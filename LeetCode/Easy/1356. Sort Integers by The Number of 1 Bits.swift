//
//  1356. Sort Integers by The Number of 1 Bits.swift
//  LeetCode
//
//  Created by Andrew on 25.02.2026.
//

import Foundation

class Solution1356 {
    func sortByBits(_ arr: [Int]) -> [Int] {
        return arr.sorted { lhs, rhs in
            let lNonzeroBitCount = lhs.nonzeroBitCount
            let rNonzeroBitCount = rhs.nonzeroBitCount
            guard lNonzeroBitCount != rNonzeroBitCount else {
                return lhs < rhs
            }
            return lNonzeroBitCount < rNonzeroBitCount
        }
    }
}
