//
//  955. Delete Columns to Make Sorted II.swift
//  LeetCode
//
//  Created by Andrew on 21.12.2025.
//

import Foundation

class Solution955 {
    func minDeletionSize(_ strs: [String]) -> Int {
        let characters: [[Character]] = strs.map { Array($0) }
        var answer: Int = 0
        
        for i in 0..<characters[0].count {
            var isValidOrder: Bool = true
            var needContinue: Bool = false
            for row in 1..<characters.count {
                if characters[row - 1][i] > characters[row][i] {
                    isValidOrder = false
                } else if characters[row - 1][i] == characters[row][i] {
                    needContinue = true
                }
            }
            if isValidOrder {
                if needContinue {
                    continue
                } else {
                    break
                }
            } else {
                answer += 1
            }
        }
        
        return answer
    }
}
