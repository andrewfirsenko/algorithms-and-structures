//
//  278. First Bad Version.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 04.11.2026.
//

// Local stand-in for the isBadVersion API provided by LeetCode
class VersionControl {
    private let bad: Int

    init(bad: Int) {
        self.bad = bad
    }

    /// - Returns: true if version is bad (the first bad version or any later one)
    func isBadVersion(_ version: Int) -> Bool {
        version >= bad
    }
}

class Solution278: VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left: Int = 1 // answer
        var right: Int = n
        while left <= right {
            let mid: Int = left + (right - left) / 2
            if isBadVersion(mid) {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return left
    }
}
