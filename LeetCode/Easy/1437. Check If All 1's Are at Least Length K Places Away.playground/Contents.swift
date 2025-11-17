import Foundation

class Solution {
    func kLengthApart(_ nums: [Int], _ k: Int) -> Bool {
        guard let startIndex = nums.firstIndex(where: { $0 == 1 }) else {
            return true
        }
        
        var zeroPlace: Int = 0
        for i in (startIndex + 1)..<nums.count {
            if nums[i] == 1 {
                guard zeroPlace >= k else {
                    return false
                }
                zeroPlace = 0
            } else {
                zeroPlace += 1
            }
        }
        
        return true
    }
}

let solution = Solution()
solution.kLengthApart([0,1,0,0,1,0,0,1], 2) // true
