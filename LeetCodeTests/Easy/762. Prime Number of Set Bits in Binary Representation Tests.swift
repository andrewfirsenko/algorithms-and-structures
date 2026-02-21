//
//  762. Prime Number of Set Bits in Binary Representation Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 21.02.2026.
//

import Testing
@testable import LeetCode

struct Solution762Tests {
    // Private
    private let sut = Solution762()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.countPrimeSetBits(6, 10)
        // then
        #expect(result == 4)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.countPrimeSetBits(10, 15)
        // then
        #expect(result == 5)
    }
}

