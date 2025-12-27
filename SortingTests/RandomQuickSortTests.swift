//
//  RandomQuickSortTests.swift
//  SortingTests
//
//  Created by Andrew on 27.12.2025.
//

import Testing
@testable import Sorting

struct RandomQuickSortTests {
    // MARK: - Private Properties
    private let sut = RandomQuickSort<Int>()
    
    // MARK: - Tests
    @Test
    func testEmptyArray() {
        // when
        let result = sut.sort(array: [])
        // then
        #expect(result == [])
    }
    
    @Test
    func testOneItemArray() {
        // when
        let result = sut.sort(array: [1])
        // then
        #expect(result == [1])
    }
    
    @Test
    func testSortedArray() {
        // when
        let result = sut.sort(array: [1, 2, 3, 4, 5])
        // then
        #expect(result == [1, 2, 3, 4, 5])
    }
    
    @Test
    func testNotSortedArray() {
        // when
        let result = sut.sort(array: [5, 4, 3, 2, 1])
        // then
        #expect(result == [1, 2, 3, 4, 5])
    }
    
    @Test
    func testPartiallyNotSortedArray() {
        // when
        let result = sut.sort(array: [1, 2, 5, 4, 3])
        // then
        #expect(result == [1, 2, 3, 4, 5])
    }
    
    @Test
    func testPartially2NotSortedArray() {
        // when
        let result = sut.sort(array: [5, 6, 3, 4, 1, 2])
        // then
        #expect(result == [1, 2, 3, 4, 5, 6])
    }
}
