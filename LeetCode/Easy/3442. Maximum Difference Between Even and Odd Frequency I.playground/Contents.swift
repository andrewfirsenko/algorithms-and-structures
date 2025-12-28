import UIKit

class Solution {
    func maxDifference(_ s: String) -> Int {
        var dict: [Character: Int] = [:]
        for ch in s {
            dict[ch, default: 0] += 1
        }

        let oddMaxValue: Int = dict.values
            .filter { $0 % 2 != 0 }
            .max()!
        let evenMinValue: Int = dict.values
            .filter { $0 % 2 == 0 }
            .min()!

        return oddMaxValue - evenMinValue
    }
}
