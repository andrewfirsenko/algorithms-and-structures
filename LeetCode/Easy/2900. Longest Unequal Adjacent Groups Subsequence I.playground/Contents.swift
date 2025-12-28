import UIKit

class Solution {
    func getLongestSubsequence(_ words: [String], _ groups: [Int]) -> [String] {
        var indexes: [Int] = [0]
        for i in 1..<groups.count {
            if groups[i] != groups[indexes.last!] {
                indexes.append(i)
            }
        }
        return indexes.map { words[$0] }
    }
}
