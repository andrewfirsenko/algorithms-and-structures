import Foundation

class Solution {
    func countDays(_ days: Int, _ meetings: [[Int]]) -> Int {
        var starts: [Int] = []
        var ends: [Int] = []
        meetings.forEach { request in
            starts.append(request[0])
            ends.append(request[1])
        }
        starts.sort()
        ends.sort()
        
        var count: Int = ends[0] - starts[0] + 1
        for i in 1..<starts.count {
            if ends[i - 1] >= starts[i] {
                count += ends[i] - ends[i - 1]
            } else {
                count += ends[i] - starts[i] + 1
            }
        }
        
        return days - count
    }
}

let solution = Solution()
solution.countDays(10, [[5,7],[1,3],[9,10]]) // 2
solution.countDays(5, [[2,4],[1,3]]) // 1
solution.countDays(6, [[1,6]]) // 0
solution.countDays(8, [[3,4],[4,8],[2,5],[3,8]]) // 1

