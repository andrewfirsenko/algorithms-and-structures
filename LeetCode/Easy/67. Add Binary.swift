//
//  67. Add Binary.swift
//  LeetCode
//
//  Created by Firsenko Andrew on 11.01.2026.
//

import Foundation

class Solution67 {
	/// 1ms solution
	func addBinary(_ a: String, _ b: String) -> String {
		let maxCount = max(a.count, b.count)
		let digitsA = Array(repeating: "0", count: maxCount - a.count) + Array(a)
		let digitsB = Array(repeating: "0", count: maxCount - b.count) + Array(b)

		var addOne: Bool = false
		var answer: [Character] = []
		answer.reserveCapacity(maxCount + 1)
		for i in stride(from: maxCount - 1, through: 0, by: -1) {
			let sum: Int = Int(addOne ? 1 : 0) + Int(String(digitsA[i]))! + Int(String(digitsB[i]))!
			answer.append(Character("\(sum % 2)"))
			addOne = sum > 1
		}
		if addOne {
			answer.append("1")
		}

		return String(answer.reversed())
	}

//	/// 3ms solution
//	func addBinary(_ a: String, _ b: String) -> String {
//		let maxCount = max(a.count, b.count)
//		let digitsA: [Int] = Array(repeating: 0, count: maxCount - a.count) + Array(a.map { Int($0.description)! })
//		let digitsB: [Int] = Array(repeating: 0, count: maxCount - b.count) + Array(b.map { Int($0.description)! })
//
//		var addOne: Bool = false
//		var answer: [Int] = []
//		answer.reserveCapacity(maxCount + 1)
//		for i in stride(from: maxCount - 1, through: 0, by: -1) {
//			let sum: Int = Int(addOne ? 1 : 0) + digitsA[i] + digitsB[i]
//			answer.append(sum % 2)
//			addOne = sum > 1
//		}
//		if addOne {
//			answer.append(1)
//		}
//
//		return answer.reversed().reduce("") { partialResult, num in
//			return partialResult + String(num)
//		}
//	}
}
