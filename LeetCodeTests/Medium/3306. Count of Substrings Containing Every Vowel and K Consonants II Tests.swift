//
//  3306. Count of Substrings Containing Every Vowel and K Consonants II Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 29.12.2025.
//

import Testing
@testable import LeetCode

struct Solution3306Tests {
    // MARK: - Private Methods
    private let sut = Solution3306()
    
    // MARK: - Tests
    @Test
    func test1() async throws {
        // when
        let result = sut.countOfSubstrings("aeioqq", 1)
        // then
        #expect(result == 0)
    }
    
    @Test
    func test2() async throws {
        // when
        let result = sut.countOfSubstrings("aeiou", 0)
        // then
        #expect(result == 1)
    }
    
    @Test
    func test3() async throws {
        // when
        let result = sut.countOfSubstrings("ieaouqqieaouqq", 1)
        // then
        #expect(result == 3)
    }
    
    @Test
    func test4() async throws {
        // when
        let result = sut.countOfSubstrings("iqeaouqi", 2)
        // then
        #expect(result == 3)
    }
    
    @Test
    func test5() async throws {
        // when
        let result = sut.countOfSubstrings("ouououaeiqq", 2)
        // then
        #expect(result == 5)
    }
    
    @Test
    func test6() async throws {
        // when
        let result = sut.countOfSubstrings("auauauoeiqqieoua", 1)
        // then
        #expect(result == 6)
    }
    
    @Test
    func test7() async throws {
        // when
        let result = sut.countOfSubstrings("aeouih", 0)
        // then
        #expect(result == 1)
    }
    
    @Test
    func test8() async throws {
        // when
        let result = sut.countOfSubstrings("auoeia", 0)
        // then
        #expect(result == 3)
    }
    
    @Test
    func test9() async throws {
        // when
        let result = sut.countOfSubstrings("aoaiuefi", 1)
        // then
        #expect(result == 4)
    }
    
    @Test
    func test10() async throws {
        // when
        let result = sut.countOfSubstrings("aeueio", 0)
        // then
        #expect(result == 1)
    }
}
