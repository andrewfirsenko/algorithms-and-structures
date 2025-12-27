//
//  215. Kth Largest Element in an Array Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 27.12.2025.
//

import Testing
@testable import LeetCode

struct Solution215Tests {
    // MARK: - Private Properties
    let sut = Solution215()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.findKthLargest([3,2,1,5,6,4], 2)
        // then
        #expect(result == 5)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.findKthLargest([3,2,3,1,2,4,5,5,6], 4)
        // then
        #expect(result == 4)
    }
}
