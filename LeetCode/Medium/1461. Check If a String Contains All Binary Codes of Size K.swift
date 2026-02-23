//
//  1461. Check If a String Contains All Binary Codes of Size K.swift
//  LeetCode
//
//  Created by Andrew on 23.02.2026.
//

import Foundation

class Solution1461 {
    func hasAllCodes(_ s: String, _ k: Int) -> Bool {
        guard k < s.count else { return false }
        
        var uniqueSubstrings: Set<Substring> = []
        let allOptionsCount: Int = (pow(2, k) as NSDecimalNumber).intValue
        
        var leftIndex = s.startIndex
        var rightIndex = s.index(leftIndex, offsetBy: k - 1)
        while rightIndex < s.endIndex {
            let substring = s[leftIndex...rightIndex]
            uniqueSubstrings.insert(substring)
            
            if uniqueSubstrings.count == allOptionsCount {
                return true
            }
            
            leftIndex = s.index(after: leftIndex)
            rightIndex = s.index(after: rightIndex)
        }
        
        return false
    }
}
