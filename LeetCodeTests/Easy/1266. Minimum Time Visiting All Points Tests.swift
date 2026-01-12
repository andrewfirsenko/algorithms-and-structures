//
//  1266. Minimum Time Visiting All Points Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 12.01.2026.
//

import Testing
@testable import LeetCode

struct Solution1266Tests {
    // MARK: - Private Properties
    private let sut = Solution1266()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.minTimeToVisitAllPoints([[1,1],[3,4],[-1,0]])
        // then
        #expect(result == 7)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.minTimeToVisitAllPoints([[3,2],[-2,2]])
        // then
        #expect(result == 5)
    }
}
