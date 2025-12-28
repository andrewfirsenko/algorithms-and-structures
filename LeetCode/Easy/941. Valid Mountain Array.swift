//
//  941. Valid Mountain Array.swift
//  LeetCode
//
//  Created by Andrew on 28.12.2025.
//

import Foundation

class Solution941 {
    func validMountainArray(_ arr: [Int]) -> Bool {
        guard arr.count >= 3 else { return false }
        
        var index: Int = 0
        
        while index < arr.count - 1, arr[index] < arr[index + 1] {
            index += 1
        }
        if index == 0 || index == arr.count - 1 {
            return false
        }
        
        while index < arr.count - 1, arr[index] > arr[index + 1] {
            index += 1
        }
        return index == arr.count - 1
    }
}
