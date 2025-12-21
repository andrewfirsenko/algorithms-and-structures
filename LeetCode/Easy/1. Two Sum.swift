//
//  1. Two Sum.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 21.12.2025.
//

import Foundation

final class TwoSumSolution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Set<Int>] = [:] // Num : Indexes
        nums.enumerated().forEach { index, num in
            dict[num, default: []].insert(index)
        }
        
        
        for (index, num) in nums.enumerated() {
            let need: Int = target - num
            
            let minCount: Int
            if need == num {
                minCount = 2
            } else {
                minCount = 1
            }
            
            guard let indexes = dict[need], indexes.count >= minCount else {
                continue
            }
            
            return [index, indexes.first(where: { $0 != index })!]
        }
        
        return []
    }
}
