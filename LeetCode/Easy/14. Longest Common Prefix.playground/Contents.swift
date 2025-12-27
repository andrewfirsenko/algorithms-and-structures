import Foundation

class Solution {

    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }
        
        var index: String.Index = strs[0].startIndex
        while isEqualCharacter(index: index, strs: strs) {
            index = strs[0].index(after: index)
        }
        
        return String(strs[0][strs[0].startIndex..<index])
    }

    private func isEqualCharacter(index: String.Index, strs: [String]) -> Bool {
        guard index < strs[0].endIndex else { return false }
        let character = strs[0][index]
        
        for str in strs {
            guard index < str.endIndex else { return false }
            if str[index] != character {
                return false
            }
        }
        
        return true
    }
}

let solution = Solution()
solution.longestCommonPrefix(["flower","flow","flight"]) // "fl"
solution.longestCommonPrefix(["dog","racecar","car"]) // ""
