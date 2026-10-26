//
//  ReverseWordsTests.swift
//  PlaygroundTests
//
//  Created by Andrew on 21.10.2026.
//

import Testing
@testable import Playground

struct ReverseWordsTests {
    // Private
    private let sut = ReverseWords()

    // MARK: - Tests
    @Test
    func test_1() {
        // given
        let text = "Hey, hello world!"
        // when
        let result = sut.reverse(text)
        // then
        #expect(result == "World, hello hey!")
    }

    @Test
    func test_2() {
        // given
        let text = "Hello world"
        // when
        let result = sut.reverse(text)
        // then
        #expect(result == "World hello")
    }

    @Test
    func test_3() {
        // given
        let text = "Hello!"
        // when
        let result = sut.reverse(text)
        // then
        #expect(result == "Hello!")
    }

    @Test
    func test_4() {
        // given
        let text = "Good morning, my friend."
        // when
        let result = sut.reverse(text)
        // then
        #expect(result == "Friend my, morning good.")
    }

    @Test
    func test_5() {
        // given
        let text = ""
        // when
        let result = sut.reverse(text)
        // then
        #expect(result == "")
    }
    
    @Test
    func test_6() {
        // given
        let text = "Friend my,,, morning good.--+"
        // when
        let result = sut.reverse(text)
        // then
        #expect(result == "Good morning,,, my friend.--+")
    }
}
