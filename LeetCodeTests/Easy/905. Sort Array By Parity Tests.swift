//
//  905. Sort Array By Parity Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 29.12.2025.
//

import Testing
@testable import LeetCode

struct Solution905Tests {
    // MARK: - Private Properties
    private let sut = Solution905()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.sortArrayByParity([3,1,2,4])
        // then
        #expect(result == [2,4,3,1])
    }
    
    @Test
    func test2() {
        // when
        let result = sut.sortArrayByParity([0])
        // then
        #expect(result == [0])
    }
}
