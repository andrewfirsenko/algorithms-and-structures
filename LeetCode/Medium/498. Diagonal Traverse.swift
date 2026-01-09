//
//  498. Diagonal Traverse.swift
//  LeetCode
//
//  Created by Andrew on 09.01.2026.
//

import Foundation

class Solution498 {
    enum Direction {
        case up
        case down
    }
    
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
        var order: [Int] = []
        order.reserveCapacity(mat.count * mat[0].count)
        
        var i: Int = 0
        var j: Int = 0
        var direction: Direction = .up
        
        while i < mat.count && j < mat[0].count {
            order.append(mat[i][j])
            next(i: &i, j: &j, direction: &direction, mat: mat)
        }
        
        return order
    }
    
    func next(i: inout Int, j: inout Int, direction: inout Direction, mat: [[Int]]) {
        switch direction {
        case .up:
            if i > 0, j < mat[0].count - 1 {
                i -= 1
                j += 1
            } else if i <= 0, j < mat[0].count - 1 {
                j += 1
                direction = .down
            } else {
                i += 1
                direction = .down
            }
        case .down:
            if i < mat.count - 1, j > 0 {
                i += 1
                j -= 1
            } else if i < mat.count - 1, j <= 0 {
                i += 1
                direction = .up
            } else {
                j += 1
                direction = .up
            }
        }
    }
}
