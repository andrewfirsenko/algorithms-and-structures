//
//  1051. Height Checker Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 29.12.2025.
//

import Testing
@testable import LeetCode

struct Solution1051Tests {
    // MARK: - Private Properties
    private let sut = Solution1051()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.heightChecker([1,1,4,2,1,3])
        // then
        #expect(result == 3)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.heightChecker([5,1,2,3,4])
        // then
        #expect(result == 5)
    }
    
    @Test
    func test3() {
        // when
        let result = sut.heightChecker([1,2,3,4,5])
        // then
        #expect(result == 0)
    }
}
