//
//  2946. Matrix Similarity After Cyclic Shifts.swift
//  LeetCode
//
//  Created by Andrew on 27.03.2026.
//

import Foundation

class Solution2946 {
    func areSimilar(_ mat: [[Int]], _ k: Int) -> Bool {
        let k = k % mat[0].count
        guard k > 0 else { return true }
        
        for row in 0..<mat.count {
            for i in 0..<mat[row].count {
                let kIndex: Int
                if row % 2 == 0 {
                    // left -
                    kIndex = (i - k + mat[row].count) % mat[row].count
                } else {
                    // right +
                    kIndex = (i + k) % mat[row].count
                }
                
                if mat[row][i] != mat[row][kIndex] {
                    return false
                }
            }
        }
        
        return true
    }
}
