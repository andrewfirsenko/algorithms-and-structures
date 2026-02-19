//
//  58. Length of Last Word Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 19.02.2026.
//

import Testing
@testable import LeetCode

struct Solution58Tests {
    // MARK: - Private Properties
    private let sut = Solution58()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.lengthOfLastWord("Hello World")
        // then
        #expect(result == 5)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.lengthOfLastWord("   fly me   to   the moon  ")
        // then
        #expect(result == 4)
    }
    
    @Test
    func test_3() {
        // when
        let result = sut.lengthOfLastWord("luffy is still joyboy")
        // then
        #expect(result == 6)
    }
}
