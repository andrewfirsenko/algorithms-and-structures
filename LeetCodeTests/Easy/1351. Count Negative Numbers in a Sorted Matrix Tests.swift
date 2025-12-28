//
//  1351. Count Negative Numbers in a Sorted Matrix Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 28.12.2025.
//

import Testing
@testable import LeetCode

struct Solution1351Tests {
    // MARK: - Private Properties
    private let sut = Solution1351()
    
    // MARK: - Tests
    @Test
    func test1() {
        // given
        let grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
        // when
        let result = sut.countNegatives(grid)
        // then
        #expect(result == 8)
    }
    
    @Test
    func test2() {
        // given
        let grid = [[3,2],[1,0]]
        // when
        let result = sut.countNegatives(grid)
        // then
        #expect(result == 0)
    }
}
