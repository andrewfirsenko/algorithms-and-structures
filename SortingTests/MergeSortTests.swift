//
//  MergeSortTests.swift
//  SortingTests
//
//  Created by Andrew on 27.12.2025.
//

import Testing
@testable import Sorting

struct MergeSortTests {
    // MARK: - Private Properties
    let sut = MergeSort<Int>()
    
    // MARK: - Tests
    @Test
    func testEmptyArray() async throws {
        // when
        let result = sut.sort(array: [])
        // then
        #expect(result == [])
    }
    
    @Test
    func testOneItemArray() async throws {
        // when
        let result = sut.sort(array: [1])
        // then
        #expect(result == [1])
    }
    
    @Test
    func testSortedArray() async throws {
        // when
        let result = sut.sort(array: [1, 2, 3, 4, 5])
        // then
        #expect(result == [1, 2, 3, 4, 5])
    }
    
    @Test
    func testNotSortedArray() async throws {
        // when
        let result = sut.sort(array: [5, 4, 3, 2, 1])
        // then
        #expect(result == [1, 2, 3, 4, 5])
    }
    
    @Test
    func testPartiallyNotSortedArray() async throws {
        // when
        let result = sut.sort(array: [1, 2, 5, 4, 3])
        // then
        #expect(result == [1, 2, 3, 4, 5])
    }
    
    @Test
    func testPartially2NotSortedArray() async throws {
        // when
        let result = sut.sort(array: [5, 6, 3, 4, 1, 2])
        // then
        #expect(result == [1, 2, 3, 4, 5, 6])
    }
}
