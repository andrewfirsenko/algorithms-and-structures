//
//  961. N-Repeated Element in Size 2N Array.swift
//  LeetCode
//
//  Created by Andrew on 02.01.2026.
//

import Foundation

class Solution961 {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var uniqueNums: Set<Int> = Set()
        for num in nums {
            if uniqueNums.contains(num) {
                return num
            }
            uniqueNums.insert(num)
        }
        return -1
    }
}
