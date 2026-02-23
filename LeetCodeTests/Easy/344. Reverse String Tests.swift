//
//  344. Reverse String Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 23.02.2026.
//

import Testing
@testable import LeetCode

struct Solution344Tests {
    // Private
    private let sut = Solution344()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // given
        var str: [Character] = ["h","e","l","l","o"]
        // when
        sut.reverseString(&str)
        // then
        #expect(str == ["o","l","l","e","h"])
    }
    
    @Test
    func test_2() {
        // given
        var str: [Character] = ["H","a","n","n","a","h"]
        // when
        sut.reverseString(&str)
        // then
        #expect(str == ["h","a","n","n","a","H"])
    }
}
