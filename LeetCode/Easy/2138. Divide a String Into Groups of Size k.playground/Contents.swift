import UIKit

class Solution {
    func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
        var index: String.Index = s.startIndex
        var result: [String] = []
        
        while index < s.endIndex {
            if let offsetIndex = s.index(index, offsetBy: k, limitedBy: s.endIndex) {
                result.append(String(s[index..<offsetIndex]))
                index = offsetIndex
            } else {
                let distance = k - s.distance(from: index, to: s.endIndex)
                result.append(String(s[index..<s.endIndex]) + String(repeating: fill, count: distance))
                index = s.endIndex
            }
        }
        
        return result
    }
}

let solution = Solution()
solution.divideString("abcdefghi", 3, "x")
solution.divideString("abcdefghij", 3, "x")
