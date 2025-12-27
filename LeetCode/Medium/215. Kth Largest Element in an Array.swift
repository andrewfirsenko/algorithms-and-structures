//
//  215. Kth Largest Element in an Array.swift
//  LeetCode
//
//  Created by Andrew on 27.12.2025.
//

import Foundation

class Solution215 {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        incompleteSort(select: k - 1, array: &nums, l: nums.startIndex, r: nums.endIndex - 1)
        return nums[k - 1]
    }
    
    func incompleteSort(select: Int, array: inout [Int], l: Int, r: Int) {
        guard l < r else { return }
        
        let pivot: Int = Int.random(in: l...r)
        swap(lhs: l, rhs: pivot, array: &array)
        // [p][unsorted]
        
        var endMorePivot: Int = l
        for i in (l + 1)...r {
            if array[i] > array[l] {
                endMorePivot += 1
                swap(lhs: endMorePivot, rhs: i, array: &array)
            }
        }
        swap(lhs: l, rhs: endMorePivot, array: &array)
        // [> p][p][<= p]
        
        if endMorePivot < select {
            incompleteSort(select: select, array: &array, l: endMorePivot + 1, r: r)
        } else if endMorePivot > select {
            incompleteSort(select: select, array: &array, l: l, r: endMorePivot - 1)
        } else {
            return
        }
    }
    
    func swap(lhs: Int, rhs: Int, array: inout [Int]) {
        let temp = array[lhs]
        array[lhs] = array[rhs]
        array[rhs] = temp
    }
}
