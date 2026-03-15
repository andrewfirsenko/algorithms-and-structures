//
//  189. Rotate Array Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 27.02.2026.
//

import Testing
@testable import LeetCode

struct Solution189Tests {
    // Private
    let sut = Solution189()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // given
        var nums = [1,2,3,4,5,6,7]
        // when
        sut.rotate(&nums, 3)
        // then
        #expect(nums == [5,6,7,1,2,3,4])
    }
    
    @Test
    func test_2() {
        // given
        var nums = [-1,-100,3,99]
        // when
        sut.rotate(&nums, 2)
        // then
        #expect(nums == [3,99,-1,-100])
    }
    
    @Test
    func test_3() {
        // given
        var nums = [1,2,3]
        // when
        sut.rotate(&nums, 2)
        // then
        #expect(nums == [2,3,1])
    }
    
    @Test
    func test_4() {
        // given
        var nums = [1]
        // when
        sut.rotate(&nums, 1)
        // then
        #expect(nums == [1])
    }
    
    @Test
    func test_5() {
        // given
        var nums = [1,2,3,4,5,6]
        // when
        sut.rotate(&nums, 4)
        // then
        #expect(nums == [3,4,5,6,1,2])
    }
}
