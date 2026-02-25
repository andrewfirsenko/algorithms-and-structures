//
//  1356. Sort Integers by The Number of 1 Bits Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 25.02.2026.
//

import Testing
@testable import LeetCode

struct Solution1356Tests {
    // Private
    let sut = Solution1356()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.sortByBits([0,1,2,3,4,5,6,7,8])
        // then
        #expect(result == [0,1,2,4,8,3,5,6,7])
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.sortByBits([1024,512,256,128,64,32,16,8,4,2,1])
        // then
        #expect(result == [1,2,4,8,16,32,64,128,256,512,1024])
    }
}
