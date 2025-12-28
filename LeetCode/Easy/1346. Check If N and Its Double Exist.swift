//
//  1346. Check If N and Its Double Exist.swift
//  LeetCode
//
//  Created by Andrew on 28.12.2025.
//

import Foundation

class Solution1346 {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var uniqueElements: Set<Int> = Set()
        for num in arr {
            var hasExistNum = uniqueElements.contains(num * 2)
            if num % 2 == 0, !hasExistNum {
                hasExistNum = uniqueElements.contains(num / 2)
            }
            if hasExistNum {
                return true
            }
            
            uniqueElements.insert(num)
        }
        return false
    }
}
