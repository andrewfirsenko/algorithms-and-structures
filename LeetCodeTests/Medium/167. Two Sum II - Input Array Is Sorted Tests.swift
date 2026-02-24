//
//  167. Two Sum II - Input Array Is Sorted Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 24.02.2026.
//

import Testing
@testable import LeetCode

struct Solution167Tests {
    // Private
    let sut = Solution167()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.twoSum([2,7,11,15], 9)
        // then
        #expect(result == [1, 2])
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.twoSum([2,3,4], 6)
        // then
        #expect(result == [1, 3])
    }
    
    @Test
    func test_3() {
        // when
        let result = sut.twoSum([-1,0], -1)
        // then
        #expect(result == [1,2])
    }
}
