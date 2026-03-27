//
//  2946. Matrix Similarity After Cyclic Shifts Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 27.03.2026.
//

import Testing
@testable import LeetCode

struct Solution2946Tests {
    // Private
    private let sut = Solution2946()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // when
        let result = sut.areSimilar([[1,2,3],[4,5,6],[7,8,9]], 4)
        // then
        #expect(result == false)
    }
    
    @Test
    func test_2() {
        // when
        let result = sut.areSimilar([[1,2,1,2],[5,5,5,5],[6,3,6,3]], 2)
        // then
        #expect(result == true)
    }
    
    @Test
    func test_3() {
        // when
        let result = sut.areSimilar([[2,2],[2,2]], 3)
        // then
        #expect(result == true)
    }
}
