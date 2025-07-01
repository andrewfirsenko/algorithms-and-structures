import UIKit

class Solution {
    func possibleStringCount(_ word: String) -> Int {
        var result: Int = 1
        var index = word.index(after: word.startIndex)
        while index < word.endIndex {
            if word[index] == word[word.index(before: index)] {
                result += 1
            }
            index = word.index(after: index)
        }
        return result
    }
}

let solution = Solution()
solution.possibleStringCount("abbcccc")
solution.possibleStringCount("abcd")
solution.possibleStringCount("aaaa")
