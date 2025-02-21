import Foundation

class Solution {
    
    private let endLetters: Set<Character> = [")", "]", "}"]
    
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        
        for i in s.indices {
            let ch: Character = s[i]
            if endLetters.contains(ch) {
                if stack.last == startLetter(endLetter: ch) {
                    stack.removeLast()
                } else {
                    return false
                }
            } else {
                stack.append(ch)
            }
        }
        
        return stack.isEmpty
    }
    
    private func startLetter(endLetter: Character) -> Character {
        switch endLetter {
        case ")": return "("
        case "]": return "["
        case "}": return "{"
        default: return "-"
        }
    }
}

let solution = Solution()
solution.isValid("()")
solution.isValid("()[]{}")
solution.isValid("(]")
solution.isValid("([])")
