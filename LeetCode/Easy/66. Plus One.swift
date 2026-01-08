//
//  66. Plus One.swift
//  LeetCode
//
//  Created by Andrew on 08.01.2026.
//

import Foundation

class Solution66 {
    func plusOne(_ digits: [Int]) -> [Int] {
        if digits.allSatisfy({ $0 == 9 }) {
            var answer = Array(repeating: 0, count: digits.count + 1)
            answer[0] = 1
            return answer
        }
        
        var digits = digits
        for i in stride(from: digits.count - 1, through: 0, by: -1) {
            if digits[i] >= 9 {
                digits[i] = 0
                continue
            } else {
                digits[i] += 1
                return digits
            }
        }
        
        return digits
    }
}
