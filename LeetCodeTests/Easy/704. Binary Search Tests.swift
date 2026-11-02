//
//  704. Binary Search Tests.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 02.11.2026.
//

import Testing
@testable import LeetCode

struct Solution704Tests {
    // Private
    private let sut = Solution704()

    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.search([-1, 0, 3, 5, 9, 12], 9)
        // then
        #expect(result == 4)
    }

    @Test
    func test_2() {
        // when
        let result = sut.search([-1, 0, 3, 5, 9, 12], 2)
        // then
        #expect(result == -1)
    }
}
