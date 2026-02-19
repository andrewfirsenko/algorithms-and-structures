//
//  696. Count Binary Substrings Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 19.02.2026.
//

import Testing
@testable import LeetCode

struct Solution696Tests {
    // MARK: - Private Properties
    private let sut = Solution696()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.countBinarySubstrings("00110011")
        // then
        #expect(result == 6)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.countBinarySubstrings("10101")
        // then
        #expect(result == 4)
    }
}
