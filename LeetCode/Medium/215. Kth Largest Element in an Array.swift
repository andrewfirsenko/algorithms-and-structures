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
        array.swapAt(l, pivot)
        // [p][unsorted]
        
        var endMorePivot: Int = l
        for i in (l + 1)...r {
            if array[i] > array[l] {
                endMorePivot += 1
                array.swapAt(endMorePivot, i)
            }
        }
        array.swapAt(l, endMorePivot)
        // [> p][p][<= p]
        
        if endMorePivot < select {
            incompleteSort(select: select, array: &array, l: endMorePivot + 1, r: r)
        } else if endMorePivot > select {
            incompleteSort(select: select, array: &array, l: l, r: endMorePivot - 1)
        } else {
            return
        }
    }
}
