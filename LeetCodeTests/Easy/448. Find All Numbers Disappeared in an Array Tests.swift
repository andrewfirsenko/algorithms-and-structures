//
//  448. Find All Numbers Disappeared in an Array Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 02.01.2026.
//

import Testing
@testable import LeetCode

struct Solution448Tests {
    // MARK: - Private Properties
    private let sut = Solution448()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.findDisappearedNumbers([4,3,2,7,8,2,3,1])
        // then
        #expect(result == [5,6])
    }
    
    @Test
    func test2() {
        // when
        let result = sut.findDisappearedNumbers([1,1])
        // then
        #expect(result == [2])
    }
}
