//
//  1351. Count Negative Numbers in a Sorted Matrix.swift
//  LeetCode
//
//  Created by Andrew on 28.12.2025.
//

import Foundation

class Solution1351 {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var result: Int = 0
        
        var xIndex = grid.count - 1 // last column
        var yIndex = 0
        while xIndex >= 0, yIndex < grid[0].count {
            yIndex = findMaxNegY(grid, inColumn: xIndex, yIndex: yIndex)
            result += grid[0].count - yIndex
            xIndex -= 1
        }
        
        return result
    }
    
    private func findMaxNegY(_ grid: [[Int]], inColumn: Int, yIndex: Int) -> Int {
        var low = yIndex
        var high = grid[0].count
        while low < high {
            let mid: Int = (low + high) / 2
            if grid[inColumn][mid] >= 0 {
                low = mid + 1
            } else {
                high = mid // answer
            }
        }
        return high
    }
}
