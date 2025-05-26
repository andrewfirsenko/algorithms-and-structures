import Foundation

class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        var answer: [Int] = []
        for (index, word) in words.enumerated() {
            if word.contains(x) {
                answer.append(index)
            }
        }
        return answer
    }
}
