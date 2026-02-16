//
//  190. Reverse Bits Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 16.02.2026.
//

import Testing
@testable import LeetCode

struct Solution190Tests {
    // MARK: - Private Properties
    private let sut = Solution190()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.reverseBits(43261596)
        // then
        #expect(result == 964176192)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.reverseBits(2147483644)
        // then
        #expect(result == 1073741822)
    }
}
