//
//  278. First Bad Version Tests.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 04.11.2026.
//

import Testing
@testable import LeetCode

struct Solution278Tests {
    // MARK: - Tests
    @Test
    func test_1() {
        // given
        let sut = Solution278(bad: 4)
        // when
        let result = sut.firstBadVersion(5)
        // then
        #expect(result == 4)
    }

    @Test
    func test_2() {
        // given
        let sut = Solution278(bad: 1)
        // when
        let result = sut.firstBadVersion(1)
        // then
        #expect(result == 1)
    }
}
