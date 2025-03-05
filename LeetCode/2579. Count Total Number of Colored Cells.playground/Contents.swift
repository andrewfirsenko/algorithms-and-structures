import Foundation

class Solution {
    func coloredCells(_ n: Int) -> Int {
        return n * (n - 1) * 2 + 1
    }
}

let solution = Solution()
solution.coloredCells(1) // 1
solution.coloredCells(2) // 5
solution.coloredCells(5) // 41
