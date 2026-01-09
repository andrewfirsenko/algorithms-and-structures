//
//  498. Diagonal Traverse Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 09.01.2026.
//

import Testing
@testable import LeetCode

struct Solution498Tests {
    // MARK: - Private Properties
    let sut = Solution498()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.findDiagonalOrder([[1,2,3],[4,5,6],[7,8,9]])
        // then
        #expect(result == [1,2,4,7,5,3,6,8,9])
    }
    
    @Test
    func test2() {
        // when
        let result = sut.findDiagonalOrder([[1,2],[3,4]])
        // then
        #expect(result == [1,2,3,4])
    }
}
