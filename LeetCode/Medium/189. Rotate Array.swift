//
//  189. Rotate Array.swift
//  LeetCode
//
//  Created by Andrew on 27.02.2026.
//

import Foundation

class Solution189 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let k: Int = k % nums.count
        guard k > 0 else { return }
        
        let steps = nums.count / gcd(nums.count, k)
        let iterations = nums.count / steps
        
        for iteration in 0..<iterations {
            var temp: Int = nums[iteration]
            for step in 0..<steps {
                let currentIndex = (iteration + k * step) % nums.count
                let nextIndex = (currentIndex + k) % nums.count
                
                let nextTemp = nums[nextIndex]
                nums[nextIndex] = temp
                temp = nextTemp
            }
        }
    }
    
    private func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        
        return a
    }
}
