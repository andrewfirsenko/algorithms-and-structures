//
//  696. Count Binary Substrings.swift
//  LeetCode
//
//  Created by Andrew on 19.02.2026.
//

import Foundation

class Solution696 {
    func countBinarySubstrings(_ s: String) -> Int {
        var result: Int = 0
        
        guard var lastCh: Character = s.first else { return 0 }
        var zeroCount: Int = 0
        var oneCount: Int = 0
        for ch in s {
            if lastCh != ch {
                result += min(zeroCount, oneCount)
                if ch == "0" {
                    zeroCount = 0
                } else {
                    oneCount = 0
                }
            }
            if ch == "0" {
                zeroCount += 1
            } else {
                oneCount += 1
            }
            lastCh = ch
        }
        result += min(zeroCount, oneCount)
        
        return result
    }
}
