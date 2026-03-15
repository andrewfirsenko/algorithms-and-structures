//
//  401. Binary Watch Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 17.02.2026.
//

import Testing
@testable import LeetCode

struct Solution401Tests {
    // MARK: - Private Properties
    private let sut = Solution401()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // given
        let expected: [String] = ["0:01","0:02","0:04","0:08","0:16","0:32","1:00","2:00","4:00","8:00"]
        // when
        let result = sut.readBinaryWatch(1)
        // then
        #expect(result == expected)
    }
    
    @Test
    func test_2() {
        // given
        let expected: [String] = []
        // when
        let result = sut.readBinaryWatch(9)
        // then
        #expect(result == expected)
    }
}
