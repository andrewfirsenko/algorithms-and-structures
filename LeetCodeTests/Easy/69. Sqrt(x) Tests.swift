//
//  69. Sqrt(x) Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 19.03.2026.
//

import Testing
@testable import LeetCode

struct Solution69Tests {
    // Private
    private let sut = Solution69()

    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.mySqrt(4)
        // then
        #expect(result == 2)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.mySqrt(8)
        // then
        #expect(result == 2)
    }
    
    @Test
    func test3() {
        // when
        let result = sut.mySqrt(1)
        // then
        #expect(result == 1)
    }
}
