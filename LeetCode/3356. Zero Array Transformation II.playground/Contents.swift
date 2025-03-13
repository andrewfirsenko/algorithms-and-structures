import Foundation

class Solution {
    
    func minZeroArray(_ nums: [Int], _ queries: [[Int]]) -> Int {
        guard nums.count > 0, queries.count > 0 else { return -1 }
        if nums.allSatisfy({ $0 == 0 }) { return 0 }
        
        var l: Int = -1
        var r: Int = queries.count // min correct answer
        while r - l > 1 {
            let mid: Int = (r + l) / 2
            let diff: [Int] = fillDiff(queries: queries, limit: mid, numsCount: nums.count)
            if numsIsZero(nums: nums, diff: diff) {
                r = mid
            } else {
                l = mid
            }
        }
        
        if r >= queries.count {
            return -1
        } else {
            return r + 1
        }
    }
    
    func fillDiff(queries: [[Int]], limit: Int, numsCount: Int) -> [Int] {
        guard limit < queries.count else { return [] }
        
        var diff: [Int] = Array(repeating: 0, count: numsCount)
        for i in 0...limit {
            let query = queries[i]
            diff[query[0]] += query[2]
            if query[1] + 1 < numsCount {
                diff[query[1] + 1] -= query[2]
            }
        }
        
        return diff
    }
    
    func numsIsZero(nums: [Int], diff: [Int]) -> Bool {
        guard nums.count > 0, diff.count == nums.count else { return false }
        
        var value: Int = 0
        for i in 0..<diff.count {
            value += diff[i]
            if value < nums[i] {
                return false
            }
        }
        return true
    }
}

let solution = Solution()
// 200
solution.minZeroArray([2,0,2], [[0,2,1],[0,2,1],[1,1,3]]) // 2
solution.minZeroArray([4,3,2,1], [[1,3,2],[0,2,1]]) // -1
solution.minZeroArray([5], [[0,0,5],[0,0,1],[0,0,3],[0,0,2]]) // 1
solution.minZeroArray([0,8], [[0,1,4],[0,1,1],[0,1,4],[0,1,1],[1,1,5],[0,1,2],[1,1,4],[0,1,1],[1,1,3],[0,0,2],[1,1,3],[1,1,2],[0,1,5],[1,1,2],[1,1,5]]) // 3
