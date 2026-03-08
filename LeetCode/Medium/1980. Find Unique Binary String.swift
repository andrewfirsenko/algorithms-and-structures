//
//  1980. Find Unique Binary String.swift
//  LeetCode
//
//  Created by Andrew on 08.03.2026.
//

import Foundation

class Solution1980 {
    func findDifferentBinaryString(_ nums: [String]) -> String {
        let uniqueNums = Set(nums.compactMap { Int($0, radix: 2) })
        let maxNum: Int = max(2, nums.count * nums.count)
        for num in 0..<maxNum {
            if !uniqueNums.contains(num) {
                let suffix = String(num, radix: 2)
                let prefix = String(repeating: "0", count: nums.count - suffix.count)
                return prefix + suffix
            }
        }
        return ""
    }
}
