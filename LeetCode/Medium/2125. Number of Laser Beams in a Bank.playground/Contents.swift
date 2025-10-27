import Foundation

class Solution {
    func numberOfBeams(_ bank: [String]) -> Int {
        let devicesCountInRow: [Int] = bank.compactMap { row in
            let devicesCount = row.count(where: { $0 == "1" })
            if devicesCount > 0 {
                return devicesCount
            } else {
                return nil
            }
        }
        
        guard devicesCountInRow.count > 1 else {
            return 0
        }
        
        var result: Int = 0
        for i in 1..<devicesCountInRow.count {
            result += devicesCountInRow[i - 1] * devicesCountInRow[i]
        }
        return result
    }
}

let solution = Solution()
solution.numberOfBeams(["011001","000000","010100","001000"]) // 8
solution.numberOfBeams(["000","111","000"]) // 0

