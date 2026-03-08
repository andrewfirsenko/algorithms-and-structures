//
//  1980. Find Unique Binary String Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 08.03.2026.
//

import Testing
@testable import LeetCode

struct Solution1980Tests {
    // Private
    let sut = Solution1980()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.findDifferentBinaryString(["01","10"])
        // then
        #expect(result == "00")
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.findDifferentBinaryString(["00","01"])
        // then
        #expect(result == "10")
    }
    
    @Test
    func test_3() {
        // when
        let result = sut.findDifferentBinaryString(["111","011","001"])
        // then
        #expect(result == "000")
    }
    
    @Test
    func test_4() {
        // when
        let result = sut.findDifferentBinaryString(["0"])
        // then
        #expect(result == "1")
    }
}
