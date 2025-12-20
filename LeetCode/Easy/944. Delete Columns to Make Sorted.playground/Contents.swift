import Foundation

//class Solution {
//    func minDeletionSize(_ strs: [String]) -> Int {
//        var answer: Int = 0
//        
//        var index = strs[0].startIndex
//        while index < strs[0].endIndex {
//            for row in 0..<(strs.count - 1) {
//                if strs[row][index] > strs[row + 1][index] {
//                    answer += 1
//                    break
//                }
//            }
//            index = strs[0].index(after: index)
//        }
//        
//        return answer
//    }
//}

class Solution {
    func minDeletionSize(_ strs: [String]) -> Int {
        var answer: Int = 0
        let characters: [[Character]] = strs.map { Array($0) }
        
        for numberOfCharacter in 0..<characters[0].count {
            for row in 1..<characters.count {
                if characters[row - 1][numberOfCharacter] > characters[row][numberOfCharacter] {
                    answer += 1
                    break
                }
            }
        }
        
        return answer
    }
}

let solution = Solution()
solution.minDeletionSize(["cba","daf","ghi"]) // 1
solution.minDeletionSize(["a","b"]) // 0
solution.minDeletionSize(["zyx","wvu","tsr"]) // 3
