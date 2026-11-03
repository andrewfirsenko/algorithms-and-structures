//
//  374. Guess Number Higher or Lower.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 03.11.2026.
//

// Local stand-in for the guess API provided by LeetCode
class GuessGame {
    private let pick: Int

    init(pick: Int) {
        self.pick = pick
    }

    /// - Returns: -1 if num is higher than the picked number,
    ///             1 if num is lower than the picked number,
    ///             0 if num is equal to the picked number
    func guess(_ num: Int) -> Int {
        if num > pick {
            return -1
        } else if num < pick {
            return 1
        }
        return 0
    }
}

class Solution374: GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var left: Int = 1
        var right: Int = n
        
        while left <= right {
            let mid: Int = left + (right - left) / 2
            let guess = guess(mid)
            if guess == 0 { return mid }
            if guess > 0 {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return -1
    }
}
