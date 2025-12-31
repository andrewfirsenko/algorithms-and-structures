//
//  414. Third Maximum Number Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 31.12.2025.
//

import Testing
@testable import LeetCode

struct Solution414Tests {
    // MARK: - Private Properties
    private let sut = Solution414()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.thirdMax([3,2,1])
        // then
        #expect(result == 1)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.thirdMax([1,2])
        // then
        #expect(result == 2)
    }
    
    @Test
    func test3() {
        // when
        let result = sut.thirdMax([2,2,3,1])
        // then
        #expect(result == 1)
    }
}
