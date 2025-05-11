import Foundation

class Solution {
    
    private let allVowels: Set<Character> = ["a","e","i","o","u"]
    
    func maxFreqSum(_ s: String) -> Int {
        var vowels: [Character: Int] = [:]
        var consonant: [Character: Int] = [:]
        for ch in s {
            if allVowels.contains(ch) {
                vowels[ch, default: 0] += 1
            } else {
                consonant[ch, default: 0] += 1
            }
        }
        
        return (vowels.values.max() ?? 0) + (consonant.values.max() ?? 0)
    }
}
