//
//  448. Find All Numbers Disappeared in an Array.swift
//  LeetCode
//
//  Created by Andrew on 02.01.2026.
//

import Foundation

class Solution448 {
//    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
//        // Если на позиции nums[i] уже есть нужный елемент index += 1
//        var nums = nums
//        var index: Int = 0
//        while index < nums.count {
//            let value = nums[index]
//            if nums[value - 1] == value {
//                index += 1
//                continue
//            } else {
//                nums.swapAt(index, value - 1)
//            }
//        }
//        
//        var answer: [Int] = []
//        for i in 0..<nums.count {
//            if nums[i] != i + 1 {
//                answer.append(i + 1)
//            }
//        }
//        return answer
//    }
    
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var countNums = Array(repeating: 0, count: nums.count)
        for num in nums {
            countNums[num - 1] = num
        }
        
        var result: [Int] = []
        for i in 0..<nums.count {
            if countNums[i] == 0 {
                result.append(i + 1)
            }
        }
        return result
    }
}
