import Foundation

class Solution {
    func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
        var mistakes: [(ch1: Character, ch2: Character)] = []
        
        for (ch1, ch2) in zip(s1, s2) {
            if ch1 == ch2 { continue }
            if mistakes.count >= 2 { return false }
            
            mistakes.append((ch1, ch2))
        }
        
        if mistakes.count == 0 {
            return true
        } else if mistakes.count == 2 {
            return mistakes[0].ch1 == mistakes[1].ch2
            && mistakes[0].ch2 == mistakes[1].ch1
        } else {
            return false
        }
    }
}

func test(_ s1: String, _ s2: String, expected: Bool) {
    let solution = Solution()
    print("test", solution.areAlmostEqual(s1, s2) == expected)
}

test("bank", "kanb", expected: true)
test("attack", "defend", expected: false)
test("kelb", "kelb", expected: true)
