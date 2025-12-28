//
//  1346. Check If N and Its Double Exist Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 28.12.2025.
//

import Testing
@testable import LeetCode

struct Solution1346Tests {
    // MARK: - Private Properties
    private let sut = Solution1346()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.checkIfExist([10,2,5,3])
        // then
        #expect(result == true)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.checkIfExist([3,1,7,11])
        // then
        #expect(result == false)
    }
    
    @Test
    func test3() {
        // when
        let result = sut.checkIfExist([0,-2,2])
        // then
        #expect(result == false)
    }
}
