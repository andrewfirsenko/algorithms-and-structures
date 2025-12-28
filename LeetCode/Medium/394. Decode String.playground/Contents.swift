import Foundation

class Solution {
    func decodeString(_ s: String) -> String {
        var stack: [Character] = []
        s.forEach { ch in
            if ch == "]" {
                var repeatString: String = ""
                while let last = stack.last, last != "[" {
                    repeatString.append(stack.removeLast())
                }
                let repeatStringReversed: String = String(repeatString.reversed())
                stack.removeLast()
                
                var countString: String = ""
                while let last = stack.last, last.isNumber {
                    countString.append(stack.removeLast())
                }
                let countStringReversed: String = String(countString.reversed())
                let count: Int = Int(countStringReversed) ?? 0
                
                stack.append(contentsOf: String(repeating: repeatStringReversed, count: count))
            } else {
                stack.append(ch)
            }
        }
        
        return String(stack)
    }
}

let solution = Solution()
solution.decodeString("3[a]2[bc]") // "aaabcbc"
solution.decodeString("3[a2[c]]") // "accaccacc"
solution.decodeString("2[abc]3[cd]ef") // "abcabccdcdcdef"
solution.decodeString("31[a]")

