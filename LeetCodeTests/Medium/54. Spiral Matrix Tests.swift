//
//  54. Spiral Matrix Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 10.01.2026.
//

import Testing
@testable import LeetCode

struct Solution54Tests {
    // MARK: - Private Properties
    let sut = Solution54()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.spiralOrder([[1,2,3],[4,5,6],[7,8,9]])
        // then
        #expect(result == [1,2,3,6,9,8,7,4,5])
    }
    
    @Test
    func test2() {
        // when
        let result = sut.spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]])
        // then
        #expect(result == [1,2,3,4,8,12,11,10,9,5,6,7])
    }
}
