//
//  189. Rotate Array.swift
//  LeetCode
//
//  Created by Andrew on 27.02.2026.
//

import Foundation

class Solution189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard k > 0 else { return }
        let k = k % nums.count
        
        nums.reverse()
        nums[0..<k].reverse()
        nums[k..<nums.count].reverse()
    }
}
