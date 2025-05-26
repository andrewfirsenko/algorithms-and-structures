import UIKit

class Solution {
    func triangleType(_ nums: [Int]) -> String {
        let a: Int = nums[0]
        let b: Int = nums[1]
        let c: Int = nums[2]
        guard isTriangle(a: a, b: b, c: c) else { return "none" }

        let sides: Set<Int> = [a, b, c]
        switch sides.count {
            case 1: return "equilateral"
            case 2: return "isosceles"
            default: return "scalene"
        }
    }

    private func isTriangle(a: Int, b: Int, c: Int) -> Bool {
        return a + b > c && b + c > a && c + a > b
    }
}
