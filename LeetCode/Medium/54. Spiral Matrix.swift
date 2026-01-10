//
//  54. Spiral Matrix.swift
//  LeetCode
//
//  Created by Andrew on 10.01.2026.
//

import Foundation

class Solution54 {
    enum Direction {
        case left
        case right
        case up
        case down
    }
    
    struct Point {
        let x: Int
        let y: Int
    }
    
    class Bounds {
        var left: Int
        var right: Int
        var top: Int
        var bottom: Int
        
        init(left: Int, right: Int, top: Int, bottom: Int) {
            self.left = left
            self.right = right
            self.top = top
            self.bottom = bottom
        }
    }
    
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        let bounds = Bounds(left: 0, right: matrix[0].count - 1, top: 0, bottom: matrix.count - 1)
        var answerOrder: [Int] = []
        answerOrder.reserveCapacity(matrix.count * matrix[0].count)
        
        var point: Point? = Point(x: 0, y: 0)
        var direction: Direction = .right
        
        while let unwrappedPoint = point {
            answerOrder.append(matrix[unwrappedPoint.y][unwrappedPoint.x])
            
            if let next = nextPoint(current: unwrappedPoint, direction: direction, bounds: bounds) {
                point = next
            } else {
                reduceBoundsBeforeChangeDirection(bounds: bounds, direction: direction)
                direction = nextDirection(current: direction)
                point = nextPoint(current: unwrappedPoint, direction: direction, bounds: bounds)
            }
        }
        
        return answerOrder
    }
    
    func nextPoint(
        current: Point,
        direction: Direction,
        bounds: Bounds
    ) -> Point? {
        switch direction {
        case .left:
            guard current.x > bounds.left else { return nil }
            return Point(x: current.x - 1, y: current.y)
        case .right:
            guard current.x < bounds.right else { return nil }
            return Point(x: current.x + 1, y: current.y)
        case .up:
            guard current.y > bounds.top else { return nil }
            return Point(x: current.x, y: current.y - 1)
        case .down:
            guard current.y < bounds.bottom else { return nil }
            return Point(x: current.x, y: current.y + 1)
        }
    }
    
    func nextDirection(current: Direction) -> Direction {
        switch current {
        case .left:
            return .up
        case .right:
            return .down
        case .up:
            return .right
        case .down:
            return .left
        }
    }
    
    func reduceBoundsBeforeChangeDirection(bounds: Bounds, direction: Direction) {
        switch direction {
        case .left:
            bounds.bottom -= 1
        case .right:
            bounds.top += 1
        case .up:
            bounds.left += 1
        case .down:
            bounds.right -= 1
        }
    }
}
