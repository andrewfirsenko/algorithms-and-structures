//
//  1299. Replace Elements with Greatest Element on Right Side.swift
//  LeetCode
//
//  Created by Andrew on 28.12.2025.
//

import Foundation

class Solution1299 {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var arr = arr
        var maxElement: Int = arr[arr.endIndex - 1]
        arr[arr.endIndex - 1] = -1
        for i in stride(from: arr.endIndex - 1, to: 0, by: -1) {
            let newMaxElement = max(maxElement, arr[i - 1])
            arr[i - 1] = maxElement
            maxElement = newMaxElement
        }
        return arr
    }
}
