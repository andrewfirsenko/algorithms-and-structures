//
//  374. Guess Number Higher or Lower Tests.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 03.11.2026.
//

import Testing
@testable import LeetCode

struct Solution374Tests {
    // MARK: - Tests
    @Test
    func test_1() {
        // given
        let sut = Solution374(pick: 6)
        // when
        let result = sut.guessNumber(10)
        // then
        #expect(result == 6)
    }

    @Test
    func test_2() {
        // given
        let sut = Solution374(pick: 1)
        // when
        let result = sut.guessNumber(1)
        // then
        #expect(result == 1)
    }

    @Test
    func test_3() {
        // given
        let sut = Solution374(pick: 1)
        // when
        let result = sut.guessNumber(2)
        // then
        #expect(result == 1)
    }
}
