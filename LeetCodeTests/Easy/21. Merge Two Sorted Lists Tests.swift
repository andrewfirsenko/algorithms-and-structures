//
//  21. Merge Two Sorted Lists Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 10.01.2026.
//

import Testing
@testable import LeetCode
import DataStructures

struct Solution21Tests {
    // MARK: - Private Properties
    private let sut = Solution21()
    
    // MARK: - Tests
    @Test
    func test1() {
        // given
        let list1 = ListNode([1,2,4])
        let list2 = ListNode([1,3,4])
        // when
        let result = sut.mergeTwoLists(list1, list2)
        // then
        #expect(result.array == [1,1,2,3,4,4])
    }
    
    @Test
    func test2() {
        // given
        let list1 = ListNode([])
        let list2 = ListNode([])
        // when
        let result = sut.mergeTwoLists(list1, list2)
        // then
        #expect(result == nil)
    }
    
    @Test
    func test3() {
        // given
        let list1 = ListNode([])
        let list2 = ListNode([0])
        // when
        let result = sut.mergeTwoLists(list1, list2)
        // then
        #expect(result.array == [0])
    }
    
    @Test
    func test4() {
        // given
        let list1 = ListNode([-9,3])
        let list2 = ListNode([5,7])
        // when
        let result = sut.mergeTwoLists(list1, list2)
        // then
        #expect(result.array == [-9,3,5,7])
    }
}
