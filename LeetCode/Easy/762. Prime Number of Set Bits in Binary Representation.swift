//
//  762. Prime Number of Set Bits in Binary Representation.swift
//  LeetCode
//
//  Created by Andrew on 21.02.2026.
//

import Foundation

class Solution762 {
    private let primeNumbers: Set<Int> = [2, 3, 5, 7, 11, 13, 17, 19] // 10^6 -> 2^20
    
    func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
        var result: Int = 0
        for number in left...right { // 10^4
            if primeNumbers.contains(number.nonzeroBitCount) {
                result += 1
            }
        }
        return result
    }
}
