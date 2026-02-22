//
//  868. Binary Gap.swift
//  LeetCode
//
//  Created by Andrew on 22.02.2026.
//

import Foundation

class Solution868 {
    func binaryGap(_ n: Int) -> Int {
        guard n.nonzeroBitCount > 1 else { return 0 }
        
        var n = n
        var maxDistance: Int = 0
        var currDistance: Int = 0
        var canCount = false
        
        while n > 0 {
            if n % 2 == 1 {
                maxDistance = max(currDistance, maxDistance)
                currDistance = 1
                canCount = true
            } else if canCount {
                currDistance += 1
            }
            n /= 2
        }
        
        return maxDistance
    }
}
