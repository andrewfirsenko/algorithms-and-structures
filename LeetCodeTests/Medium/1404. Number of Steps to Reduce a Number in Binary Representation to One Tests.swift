//
//  1404. Number of Steps to Reduce a Number in Binary Representation to One Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 26.02.2026.
//

import Testing
@testable import LeetCode

struct Solution1404Tests {
    // Private
    private let sut = Solution1404()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.numSteps("1101")
        // then
        #expect(result == 6)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.numSteps("10")
        // then
        #expect(result == 1)
    }
    
    @Test
    func test_3() {
        // when
        let result = sut.numSteps("1")
        // then
        #expect(result == 0)
    }
}
