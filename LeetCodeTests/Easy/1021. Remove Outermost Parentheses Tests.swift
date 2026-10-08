//
//  1021. Remove Outermost Parentheses Tests.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 08.10.2026.
//

import Testing
@testable import LeetCode

struct Solution1021Tests {
    // Private
    private let sut = Solution1021()

    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.removeOuterParentheses("(()())(())")
        // then
        #expect(result == "()()()")
    }

    @Test
    func test_2() {
        // when
        let result = sut.removeOuterParentheses("(()())(())(()(()))")
        // then
        #expect(result == "()()()()(())")
    }

    @Test
    func test_3() {
        // when
        let result = sut.removeOuterParentheses("()()")
        // then
        #expect(result == "")
    }
}
