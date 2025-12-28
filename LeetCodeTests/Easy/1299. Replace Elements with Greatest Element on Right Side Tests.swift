//
//  1299. Replace Elements with Greatest Element on Right Side Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 28.12.2025.
//

import Testing
@testable import LeetCode

struct Solution1299Tests {
    // MARK: - Private Properties
    private let sut = Solution1299()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.replaceElements([17,18,5,4,6,1])
        // then
        #expect(result == [18,6,6,6,1,-1])
    }
    
    @Test
    func test2() {
        // when
        let result = sut.replaceElements([400])
        // then
        #expect(result == [-1])
    }
}
