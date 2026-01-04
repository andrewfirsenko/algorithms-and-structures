//
//  1390. Four Divisors Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 04.01.2026.
//

import Testing
@testable import LeetCode

struct Solution1390Tests {
    // MARK: - Private Properties
    private let sut = Solution1390()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.sumFourDivisors([21,4,7])
        // then
        #expect(result == 32)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.sumFourDivisors([21,21])
        // then
        #expect(result == 64)
    }
    
    @Test
    func test3() {
        // when
        let result = sut.sumFourDivisors([1,2,3,4,5])
        // then
        #expect(result == 0)
    }
}
