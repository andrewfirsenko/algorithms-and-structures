import UIKit

class Solution {
    func canBeTypedWords(_ text: String, _ brokenLetters: String) -> Int {
        let brokenLetters: Set<Character> = Set(brokenLetters)
        var answer: Int = 0
        for word in text.split(separator: " ") {
            var isBroken = false
            for ch in word {
                if brokenLetters.contains(ch) {
                    isBroken = true
                    break
                }
            }
            if !isBroken {
                answer += 1
            }
        }
        return answer
    }
}
