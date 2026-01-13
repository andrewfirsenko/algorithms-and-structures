//
//  3453. Separate Squares I Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 13.01.2026.
//


import Testing
@testable import LeetCode

struct Solution3453Tests {
    // MARK: - Private Methods
    private let sut = Solution3453()
    
    // MARK: - Tests
    @Test
    func test1() async throws {
        // when
        let result = sut.separateSquares([[0,0,1],[2,2,1]])
        // then
        #expect(result == 1.00000)
    }
    
    @Test
    func test2() async throws {
        // when
        let result = sut.separateSquares([[0,0,2],[1,1,1]])
        // then
        #expect(result == 1.16667)
    }
    
    @Test
    func test3() async throws {
        // when
        let result = sut.separateSquares([[0,0,2]])
        // then
        #expect(result == 1.00000)
    }
}
