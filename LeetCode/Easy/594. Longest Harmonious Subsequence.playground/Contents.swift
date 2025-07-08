import UIKit

class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        let countOfNums: [Int: Int] = Dictionary(
            nums.map { ($0, 1) },
            uniquingKeysWith: +
        )
        
        return countOfNums
            .compactMap { (num, count) in
                if let pair = countOfNums[num + 1] {
                    return count + pair
                }
                return nil
            }
            .max() ?? 0
    }
}

let solution = Solution()
solution.findLHS([1,3,2,2,5,2,3,7]) // 5
solution.findLHS([1,2,3,4]) // 2
solution.findLHS([1,1,1,1]) // 0
