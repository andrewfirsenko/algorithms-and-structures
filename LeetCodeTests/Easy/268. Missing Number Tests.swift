//
//  268. Missing Number Tests.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 28.05.2026.
//

import Testing
@testable import LeetCode

struct Solution268Tests {
    // Private
    private let sut = Solution268()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.missingNumber([3,0,1])
        // then
        #expect(result == 2)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.missingNumber([0,1])
        // then
        #expect(result == 2)
    }
    
    @Test
    func test_3() {
        // when
        let result = sut.missingNumber([9,6,4,2,3,5,7,0,1])
        // then
        #expect(result == 8)
    }
}
