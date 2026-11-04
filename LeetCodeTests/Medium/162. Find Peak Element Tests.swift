//
//  162. Find Peak Element Tests.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 04.11.2026.
//

import Testing
@testable import LeetCode

struct Solution162Tests {
    // Private
    private let sut = Solution162()

    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.findPeakElement([1, 2, 3, 1])
        // then
        #expect(result == 2)
    }

    @Test
    func test_2() {
        // when
        let result = sut.findPeakElement([1, 2, 1, 3, 5, 6, 4])
        // then
        #expect([1, 5].contains(result)) // any peak is a valid answer
    }
}
