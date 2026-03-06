//
//  1784. Check if Binary String Has at Most One Segment of Ones.swift
//  LeetCode
//
//  Created by Andrew on 06.03.2026.
//

import Foundation

class Solution1784 {
    func checkOnesSegment(_ s: String) -> Bool {
        var numberOfOnesSegments: Int = 0
        var nowOnesSegment: Bool = false
        
        var index = s.startIndex
        if s[index] == "1" {
            nowOnesSegment = true
            numberOfOnesSegments = 1
        }
        while index < s.endIndex {
            if s[index] == "1" {
                if !nowOnesSegment {
                    nowOnesSegment = true
                    numberOfOnesSegments += 1
                    if numberOfOnesSegments > 1 {
                        return false
                    }
                }
            } else {
                nowOnesSegment = false
            }
            
            index = s.index(after: index)
        }
        
        return numberOfOnesSegments == 1
    }
}
