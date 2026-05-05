//
//  61. Rotate List Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 05.05.2026.
//

import Foundation

import Testing
@testable import LeetCode

struct Solution61Tests {
    // MARK: - Private Properties
    let sut = Solution61()
    
    // MARK: - Tests
    @Test
    func test1() {
        // given
        let head = ListNode(values: [1,2,3,4,5])
        // when
        let result = sut.rotateRight(head, 2)
        // then
        #expect(result?.toArray() == [4,5,1,2,3])
    }
    
    @Test
    func test2() {
        // given
        let head = ListNode(values: [0,1,2])
        // when
        let result = sut.rotateRight(head, 4)
        // then
        #expect(result?.toArray() == [2,0,1])
    }
}
