//
//  868. Binary Gap Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 22.02.2026.
//

import Testing
@testable import LeetCode

struct Solution868Tests {
    // Private
    private let sut = Solution868()
    
    // MARK: - Tests
    @Test
    func test_1() {
        #expect(sut.binaryGap(22) == 2)
    }
    
    @Test
    func test_2() {
        #expect(sut.binaryGap(8) == 0)
    }
    
    @Test
    func test_3() {
        #expect(sut.binaryGap(5) == 2)
    }
}
