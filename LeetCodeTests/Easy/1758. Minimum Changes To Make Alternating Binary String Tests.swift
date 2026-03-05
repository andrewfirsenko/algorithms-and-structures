//
//  1758. Minimum Changes To Make Alternating Binary String Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 05.03.2026.
//

import Testing
@testable import LeetCode

struct Solution1758Tests {
    // Private
    private let sut = Solution1758()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.minOperations("0100")
        // then
        #expect(result == 1)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.minOperations("10")
        // then
        #expect(result == 0)
    }
    
    @Test
    func test_3() {
        // when
        let result = sut.minOperations("1111")
        // then
        #expect(result == 2)
    }
}
