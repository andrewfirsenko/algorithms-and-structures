//
//  RandomQuickSelectTests.swift
//  SearchingTests
//
//  Created by Andrew on 27.12.2025.
//

import Testing
@testable import Searching

struct RandomQuickSelectTests {
    // MARK: - Private Properties
    private let sut = RandomQuickSelect<Int>()
    
    // MARK: - Tests
    @Test
    func testSelectFirstElement() {
        // when
        let result = sut.select(i: 0, inArray: [5, 3, 0, -4, 7, 8])
        // then
        #expect(result == -4)
    }
    
    @Test
    func testSelectLastElement() {
        // when
        let result = sut.select(i: 6, inArray: [5, 3, 0, -4, 7, 10, 44])
        // then
        #expect(result == 44)
    }
    
    @Test
    func testSelectMidElement() {
        // when
        let result = sut.select(i: 2, inArray: [5, 3, 0, -4, 7, 66])
        // then
        #expect(result == 3)
    }
    
    @Test
    func testSelectNonExistElement() {
        // when
        let result = sut.select(i: 5, inArray: [5, 3, 0, -4])
        // then
        #expect(result == nil)
    }
}
