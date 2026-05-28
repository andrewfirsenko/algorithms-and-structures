//
//  268. Missing Number.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 28.05.2026.
//

class Solution268 {
    func missingNumber(_ nums: [Int]) -> Int {
        let fullSum: Int = (nums.count * (nums.count + 1)) / 2
        let currSum: Int = nums.reduce(0, +)
        return fullSum - currSum
    }
}
