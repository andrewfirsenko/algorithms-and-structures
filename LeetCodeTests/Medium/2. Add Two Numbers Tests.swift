//
//  2. Add Two Numbers Tests.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 08.10.2026.
//

import Testing
@testable import LeetCode
import DataStructures

struct Solution2Tests {
    // Private
    private let sut = Solution2()
    
    // MARK: - Tests
    @Test
    func test_1() {
        // given
        let l1 = ListNode([2,4,3])
        let l2 = ListNode([5,6,4])
        // when
        let result = sut.addTwoNumbers(l1, l2)
        // then
        #expect(result.array == [7,0,8])
    }
    
    @Test
    func test_2() {
        // given
        let l1 = ListNode([0])
        let l2 = ListNode([0])
        // when
        let result = sut.addTwoNumbers(l1, l2)
        // then
        #expect(result.array == [0])
    }
    
    @Test
    func test_3() {
        // given
        let l1 = ListNode([9,9,9,9,9,9,9])
        let l2 = ListNode([9,9,9,9])
        // when
        let result = sut.addTwoNumbers(l1, l2)
        // then
        #expect(result.array == [8,9,9,9,0,0,0,1])
    }
}
