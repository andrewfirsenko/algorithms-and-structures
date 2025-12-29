//
//  3306. Count of Substrings Containing Every Vowel and K Consonants II.swift
//  LeetCode
//
//  Created by Andrew on 29.12.2025.
//

import Foundation

class Solution3306 {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    
    func countOfSubstrings(_ word: String, _ k: Int) -> Int {
        var answer: Int = 0
        
        var vowelsCount: [Character: Int] = [:]
        var consonantsCount: Int = 0
        var characters = Array(word)
        
        var lowIndex: Int = 0
        var highIndex: Int = 0
        
        return answer
    }
}
