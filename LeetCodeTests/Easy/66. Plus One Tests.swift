//
//  66. Plus One Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 08.01.2026.
//

import Testing
@testable import LeetCode

struct Solution66Tests {
    // MARK: - Private Properties
    private let sut = Solution66()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.plusOne([1,2,3])
        // then
        #expect(result == [1,2,4])
    }
    
    @Test
    func test2() {
        // when
        let result = sut.plusOne([4,3,2,1])
        // then
        #expect(result == [4,3,2,2])
    }
    
    @Test
    func test3() {
        // when
        let result = sut.plusOne([9])
        // then
        #expect(result == [1,0])
    }
}
