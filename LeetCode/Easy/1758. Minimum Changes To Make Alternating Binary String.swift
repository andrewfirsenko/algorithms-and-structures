//
//  1758. Minimum Changes To Make Alternating Binary String.swift
//  LeetCode
//
//  Created by Andrew on 05.03.2026.
//

import Foundation

class Solution1758 {
    func minOperations(_ s: String) -> Int {
        var countChanges = [0, 0] // str 0..., str 1...
        s.enumerated().forEach { index, ch in
            if ch == "1" {
                countChanges[index % 2] += 1
            } else {
                countChanges[(index + 1) % 2] += 1
            }
        }
        return countChanges.min() ?? .zero
    }
}
