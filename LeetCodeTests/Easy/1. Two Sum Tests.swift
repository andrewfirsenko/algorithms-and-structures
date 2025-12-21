//
//  1. Two Sum Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 21.12.2025.
//

import Testing
@testable import LeetCode

struct Solution1Tests {
    private let solution = Solution1()
    
    @Test
    func test1() async throws {
        // when
        let result = solution.twoSum([2,7,11,15], 9)
        // then
        #expect(result == [0,1])
    }
    
    @Test
    func test2() async throws {
        // when
        let result = solution.twoSum([3,2,4], 6)
        // then
        #expect(result == [1,2])
    }
    
    @Test
    func test3() async throws {
        // when
        let result = solution.twoSum([3,3], 6)
        // then
        #expect(result == [0,1])
    }
}
