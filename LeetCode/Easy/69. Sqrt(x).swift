//
//  69. Sqrt(x).swift
//  LeetCode
//
//  Created by Andrew on 19.03.2026.
//

import Foundation

class Solution69 {
    func mySqrt(_ x: Int) -> Int {
        guard x >= 1 else { return 0 }
        guard x >= 4 else { return 1 }
        
        var l: Int = 0
        var r: Int = x
        while r - l > 1 {
            let mid: Int = (l + r) / 2
            if mid * mid > x {
                r = mid
            } else {
                l = mid // answer
            }
        }
        
        return l
    }
}
