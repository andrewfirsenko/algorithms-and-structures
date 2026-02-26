//
//  1404. Number of Steps to Reduce a Number in Binary Representation to One.swift
//  LeetCode
//
//  Created by Andrew on 26.02.2026.
//

import Foundation

class Solution1404 {
    func numSteps(_ s: String) -> Int {
        var result: Int = 0
        
        var index = s.endIndex
        while index > s.startIndex {
            index = s.index(before: index)
            if s[index] == "0" {
                result += 1
            } else {
                break
            }
        }
        
        var zeroCount: Int = 0
        var totalCount: Int = 0
        while index > s.startIndex {
            if s[index] == "0" {
                zeroCount += 1
            }
            totalCount += 1
            index = s.index(before: index)
        }
        if totalCount > 0 {
            result += zeroCount + 1
            result += totalCount + 1
        }
        
        return result
    }
}
