//
//  1461. Check If a String Contains All Binary Codes of Size K Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 23.02.2026.
//

import Testing
@testable import LeetCode

struct Solution1461Tests {
    // Private
    let sut = Solution1461()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.hasAllCodes("00110110", 2)
        // then
        #expect(result == true)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.hasAllCodes("0110", 1)
        // then
        #expect(result == true)
    }
    
    @Test
    func test_3() {
        // when
        let result = sut.hasAllCodes("0110", 2)
        // then
        #expect(result == false)
    }
    
    @Test
    func test_4() {
        // when
        let result = sut.hasAllCodes("00110", 2)
        // then
        #expect(result == true)
    }
}
