//
//  955. Delete Columns to Make Sorted II Tests.swift
//  LeetCodeTests
//
//  Created by Andrew on 21.12.2025.
//

import Testing
@testable import LeetCode

struct Solution955Tests {
    let solution = Solution955()
    
    @Test
    func test1() async throws {
        let result = solution.minDeletionSize(["ca","bb","ac"])
        #expect(result == 1)
    }
    
    @Test
    func test2() async throws {
        let result = solution.minDeletionSize(["xc","yb","za"])
        #expect(result == 0)
    }
    
    @Test
    func test3() async throws {
        let result = solution.minDeletionSize(["zyx","wvu","tsr"])
        #expect(result == 3)
    }
    
    @Test
    func test4() async throws {
        let result = solution.minDeletionSize(["xga","xfb","yfa"])
        #expect(result == 1)
    }
}
