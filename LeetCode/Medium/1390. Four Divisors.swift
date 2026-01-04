//
//  1390. Four Divisors.swift
//  LeetCode
//
//  Created by Andrew on 04.01.2026.
//

import Foundation

class Solution1390 {
    func sumFourDivisors(_ nums: [Int]) -> Int {
        let expectedDivisorsCount: Int = 4
        var answer: Int = 0
        
        for num in nums {
            var divisorsCount: Int = 0
            var divisorsSum: Int = 0
            var divisor: Int = 1
            while divisor * divisor <= num {
                if num % divisor == 0 {
                    divisorsCount += 1
                    divisorsSum += divisor
                    let oppositeDivisor = num / divisor
                    if divisor != oppositeDivisor {
                        divisorsCount += 1
                        divisorsSum += oppositeDivisor
                    }
                    if divisorsCount > expectedDivisorsCount {
                        break
                    }
                }
                divisor += 1
            }
            if divisorsCount == expectedDivisorsCount {
                answer += divisorsSum
            }
        }
                
        return answer
    }
}
