import Foundation

class Solution {
    
    func repairCars(_ ranks: [Int], _ cars: Int) -> Int {
        guard ranks.count > 0 else { return 0 }
        
        var l: Int = 0 // Min time
        var r: Int = ranks[0] * cars * cars // Max time
        
        while r - l > 1 {
            let mid: Int = (l + r) / 2
            if maxCars(min: mid, ranks: ranks) < cars {
                l = mid
            } else {
                r = mid // Right ansewr
            }
        }
        
        return r
    }
    
    
    func maxCars(min: Int, ranks: [Int]) -> Int {
        var answer: Int = 0
        ranks.forEach { rank in
            answer += Int(sqrt(Double(min / rank)))
        }
        return answer
    }
}

let solution = Solution()
solution.repairCars([4,2,3,1], 10) // 16
solution.repairCars([5,1,8], 6) // 16
