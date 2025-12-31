//
//  414. Third Maximum Number.swift
//  LeetCode
//
//  Created by Andrew on 31.12.2025.
//

import Foundation

class Solution414 {
    func thirdMax(_ nums: [Int]) -> Int {
        let nums = Set(nums)
        guard nums.count >= 3 else {
            return nums.max()!
        }
        
        let min = nums.min()!
        
        var max1: Int = min
        var max2: Int = min
        var max3: Int = min
        for num in nums {
            if num > max1 {
                max3 = max2
                max2 = max1
                max1 = num
            } else if num > max2 {
                max3 = max2
                max2 = num
            } else if num > max3 {
                max3 = num
            }
        }
        
        return max3
    }
}
