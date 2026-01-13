//
//  3453. Separate Squares I.swift
//  LeetCode
//
//  Created by Andrew on 13.01.2026.
//

import Foundation

class Solution3453 {
    func separateSquares(_ squares: [[Int]]) -> Double {
        guard let maxY = squares.map({ $0[1] + $0[2] }).max() else {
            return 0.0
        }
        
        let scale: Int = 100_000
        var l: Int = 0
        var r: Int = maxY * scale
        while r - l > 1 {
            let mid = (l + r) / 2
            let y = Double(mid) / Double(scale)
            if isBelowMoreOrEqualSquare(y: y, squares: squares) {
                r = mid // answer
            } else {
                l = mid
            }
        }
        
        return Double(r) / Double(scale)
    }
    
    func isBelowMoreOrEqualSquare(y: Double, squares: [[Int]]) -> Bool {
        var aboveSquare: Double = 0.0
        var belowSquare: Double = 0.0
        // squares[i] = [xi, yi, li]
        for square in squares {
            if Double(square[1]) >= y {
                aboveSquare += Double(square[2] * square[2])
            } else if Double(square[1] + square[2]) <= y {
                belowSquare += Double(square[2] * square[2])
            } else {
                belowSquare += (y - Double(square[1])) * Double(square[2])
                aboveSquare += (Double(square[1] + square[2]) - y) * Double(square[2])
            }
        }
        return belowSquare >= aboveSquare
    }
}
