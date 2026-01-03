//
//  747. Largest Number At Least Twice of Others Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 03.01.2026.
//

import Testing
@testable import LeetCode

struct Solution747Tests {
    // MARK: - Private Properties
    private let sut = Solution747()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.dominantIndex([3,6,1,0])
        // then
        #expect(result == 1)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.dominantIndex([1,2,3,4])
        // then
        #expect(result == -1)
    }
    
    @Test
    func test3() {
        // when
        let result = sut.dominantIndex([0,0,3,2])
        // then
        #expect(result == -1)
    }
}
