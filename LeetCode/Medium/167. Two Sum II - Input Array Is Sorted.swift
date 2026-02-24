//
//  167. Two Sum II - Input Array Is Sorted.swift
//  LeetCode
//
//  Created by Andrew on 24.02.2026.
//

import Foundation

class Solution167 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var leftIndex: Int = 0
        var rightIndex: Int = numbers.count - 1
        
        while leftIndex < rightIndex {
            if numbers[leftIndex] + numbers[rightIndex] > target {
                rightIndex -= 1
            } else if numbers[leftIndex] + numbers[rightIndex] < target {
                leftIndex += 1
            } else {
                return [leftIndex + 1, rightIndex + 1]
            }
        }
        
        return []
    }
}
