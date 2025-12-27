//
//  27. Remove Element Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 28.12.2025.
//

import Testing
@testable import LeetCode

struct Solution27Tests {
    // MARK: - Private Properties
    private let sut = Solution27()
    
    // MARK: - Tests
    @Test
    func test1() {
        // given
        var nums = [3,2,2,3]
        // when
        let result = sut.removeElement(&nums, 2)
        // then
        #expect(nums == [3,3,2,2])
        #expect(result == 2)
    }
    
    @Test
    func test2() {
        // given
        var nums = [0,1,2,2,3,0,4,2]
        // when
        let result = sut.removeElement(&nums, 2)
        // then
        #expect(nums == [0,1,4,0,3,2,2,2])
        #expect(result == 5)
    }
}
