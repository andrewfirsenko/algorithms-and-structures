//
//  1266. Minimum Time Visiting All Points.swift
//  LeetCode
//
//  Created by Andrew on 12.01.2026.
//

import Foundation

class Solution1266 {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var answer: Int = 0
        
        for i in 0..<points.count - 1 {
            let h = abs(points[i][0] - points[i + 1][0])
            let v = abs(points[i][1] - points[i + 1][1])
            let moveDiagonally = min(h, v)
            let moveStraight = max(h, v) - moveDiagonally
            answer += moveDiagonally + moveStraight
        }
        
        return answer
    }
}
