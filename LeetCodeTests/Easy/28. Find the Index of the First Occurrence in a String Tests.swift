//
//  28. Find the Index of the First Occurrence in a String Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 23.02.2026.
//

import Testing
@testable import LeetCode

struct Solution28Tests {
    // Private
    private let sut = Solution28()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let firstIndex = sut.strStr("sadbutsad", "sad")
        // then
        #expect(firstIndex == 0)
    }
    
    @Test
    func test_2() {
        // when
        let firstIndex = sut.strStr("leetcode", "leeto")
        // then
        #expect(firstIndex == -1)
    }
}
