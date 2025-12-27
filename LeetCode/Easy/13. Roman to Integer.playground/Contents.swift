import Foundation

class Solution {
    
    private let romanCharacters: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    func romanToInt(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        
        var index = s.index(before: s.endIndex)
        var result: Int = romanCharacters[s[index], default: 0]
        
        while index > s.startIndex {
            let nextIndex = s.index(before: index)
            let value = romanCharacters[s[index], default: 0]
            let nextValue = romanCharacters[s[nextIndex], default: 0]
            
            if nextValue < value {
                result -= nextValue
            } else {
                result += nextValue
            }
            
            index = nextIndex
        }
        
        return result
    }
}

let solution = Solution()
solution.romanToInt("III") // 3
solution.romanToInt("LVIII") // 58
solution.romanToInt("MCMXCIV") // 1994
solution.romanToInt("D") // 500
