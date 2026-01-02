//
//  961. N-Repeated Element in Size 2N Array Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 02.01.2026.
//

import Testing
@testable import LeetCode

struct Solution961Tests {
    // MARK: - Private Properties
    private let sut = Solution961()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.repeatedNTimes([1,2,3,3])
        // then
        #expect(result == 3)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.repeatedNTimes([2,1,2,5,3,2])
        // then
        #expect(result == 2)
    }
    
    @Test
    func test3() {
        // when
        let result = sut.repeatedNTimes([5,1,5,2,5,3,5,4])
        // then
        #expect(result == 5)
    }
}
