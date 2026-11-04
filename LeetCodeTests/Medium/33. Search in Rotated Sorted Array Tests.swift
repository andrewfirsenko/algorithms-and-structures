//
//  33. Search in Rotated Sorted Array Tests.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 04.11.2026.
//

import Testing
@testable import LeetCode

struct Solution33Tests {
    // Private
    private let sut = Solution33()

    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.search([4, 5, 6, 7, 0, 1, 2], 0)
        // then
        #expect(result == 4)
    }

    @Test
    func test_2() {
        // when
        let result = sut.search([4, 5, 6, 7, 0, 1, 2], 3)
        // then
        #expect(result == -1)
    }

    @Test
    func test_3() {
        // when
        let result = sut.search([1], 0)
        // then
        #expect(result == -1)
    }
}
