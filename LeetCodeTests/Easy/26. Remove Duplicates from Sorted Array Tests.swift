//
//  26. Remove Duplicates from Sorted Array Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 28.12.2025.
//

import Testing
@testable import LeetCode

struct Solution26Tests {
    // MARK: - Private Properties
    private let sut = Solution26()
    
    // MARK: - Tests
    @Test
    func test1() {
        // given
        var nums = [1,1,2]
        // when
        let result = sut.removeDuplicates(&nums)
        // then
        #expect(result == 2)
    }
    
    @Test
    func test2() {
        // given
        var nums = [0,0,1,1,1,2,2,3,3,4]
        // when
        let result = sut.removeDuplicates(&nums)
        // then
        #expect(result == 5)
    }
}
