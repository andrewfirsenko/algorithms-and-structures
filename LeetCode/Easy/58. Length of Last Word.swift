//
//  58. Length of Last Word.swift
//  LeetCode
//
//  Created by Andrew on 19.02.2026.
//

import Foundation

class Solution58 {
    func lengthOfLastWord(_ s: String) -> Int {
        var endIndex = s.endIndex
        
        var lastWordLength: Int = 0
        while endIndex > s.startIndex {
            let index = s.index(before: endIndex)
            if s[index] == " " {
                if lastWordLength > 0 {
                    return lastWordLength
                }
            } else {
                lastWordLength += 1
            }
            endIndex = index
        }
        
        return lastWordLength
    }
}
