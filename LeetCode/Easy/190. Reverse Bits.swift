//
//  190. Reverse Bits.swift
//  LeetCode
//
//  Created by Andrew on 16.02.2026.
//

import Foundation

class Solution190 {
    func reverseBits(_ n: Int) -> Int {
        var n = n
        var result = 0
        for _ in 0..<32 {
            result = result << 1
            result = result | (n & 1)
            n = n >> 1
        }
        return result
    }
}
