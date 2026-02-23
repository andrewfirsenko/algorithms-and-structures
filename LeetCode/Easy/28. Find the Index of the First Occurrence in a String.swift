//
//  28. Find the Index of the First Occurrence in a String.swift
//  LeetCode
//
//  Created by Andrew on 23.02.2026.
//

import Foundation

class Solution28 {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var haystack = Array(haystack)
        var needle = Array(needle)
        
        var startCheckIndex: Int = 0
        var containsCount: Int = 0
        while startCheckIndex + containsCount < haystack.count {
            let hCh = haystack[startCheckIndex + containsCount]
            let nCh = needle[containsCount]
            if hCh == nCh {
                containsCount += 1
            } else {
                startCheckIndex += 1
                containsCount = 0
            }
            
            if containsCount >= needle.count {
                return startCheckIndex
            }
        }
        if containsCount >= needle.count {
            return startCheckIndex
        }
        
        return -1
    }
}
