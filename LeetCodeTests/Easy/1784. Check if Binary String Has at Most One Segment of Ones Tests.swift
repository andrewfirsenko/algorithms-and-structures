//
//  1784. Check if Binary String Has at Most One Segment of Ones Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 06.03.2026.
//

import Testing
@testable import LeetCode

struct Solution1784Tests {
    // Private
    private let sut = Solution1784()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.checkOnesSegment("1001")
        // then
        #expect(result == false)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.checkOnesSegment("110")
        // then
        #expect(result == true)
    }
    
    @Test
    func test_3() {
        // when
        let result = sut.checkOnesSegment("1")
        // then
        #expect(result == true)
    }
}
