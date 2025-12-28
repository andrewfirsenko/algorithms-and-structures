//
//  941. Valid Mountain Array Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 28.12.2025.
//

import Testing
@testable import LeetCode

struct Solution941Tests {
    // MARK: - Private Properties
    private let sut = Solution941()
    
    // MARK: - Tests
    @Test
    func test1() {
        // when
        let result = sut.validMountainArray([2,1])
        // then
        #expect(result == false)
    }
    
    @Test
    func test2() {
        // when
        let result = sut.validMountainArray([3,5,5])
        // then
        #expect(result == false)
    }
    
    @Test
    func test3() {
        // when
        let result = sut.validMountainArray([0,3,2,1])
        // then
        #expect(result == true)
    }
    
    @Test
    func test4() {
        // when
        let result = sut.validMountainArray([0,1,2,3,4,5,6,7,8,9])
        // then
        #expect(result == false)
    }
    
    @Test
    func test5() {
        // when
        let result = sut.validMountainArray([9,7,6,0,1,3,4])
        // then
        #expect(result == false)
    }
    
    @Test
    func test6() {
        // when
        let result = sut.validMountainArray([9,8,7,6,5,4,3,2,1,0])
        // then
        #expect(result == false)
    }
}
