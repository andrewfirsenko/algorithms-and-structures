import Foundation

class Solution {
    func clearDigits(_ s: String) -> String {
        var characters: [Character] = []
        s.forEach { ch in
            if ch.isNumber {
                characters.removeLast()
            } else {
                characters.append(ch)
            }
        }
        return String(characters)
    }
}

let solution = Solution()
solution.clearDigits("abc")
solution.clearDigits("cb34")
