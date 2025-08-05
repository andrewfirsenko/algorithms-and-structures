import Foundation

class Solution {
    func removeOccurrences(_ s: String, _ part: String) -> String {
        var stack: [Character] = []
        s.forEach { ch in
            stack.append(ch)
            while stack.suffix(part.count).contains(part) {
                stack.removeLast(part.count)
            }
        }
        return String(stack)
    }
}

let solution = Solution()
solution.removeOccurrences("daabcbaabcbc", "abc")
solution.removeOccurrences("axxxxyyyyb", "xy")
