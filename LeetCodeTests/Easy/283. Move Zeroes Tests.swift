//
//  283. Move Zeroes Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 28.12.2025.
//

import Testing
@testable import LeetCode

struct Solution283Tests {
    // MARK: - Private Properties
    private let sut = Solution283()
    
    // MARK: - Tests
    @Test
    func test1() {
        // given
        var nums = [0,1,0,3,12]
        // when
        sut.moveZeroes(&nums)
        // then
        #expect(nums == [1,3,12,0,0])
    }
    
    @Test
    func test2() {
        // given
        var nums = [0]
        // when
        sut.moveZeroes(&nums)
        // then
        #expect(nums == [0])
    }
}
