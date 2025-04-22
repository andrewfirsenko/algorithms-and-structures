import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Set<Int>] = [:] // Num : Indexes
        nums.enumerated().forEach { index, num in
            dict[num, default: []].insert(index)
        }
        
        
        for (index, num) in nums.enumerated() {
            let need: Int = target - num
            
            let minCount: Int
            if need == num {
                minCount = 2
            } else {
                minCount = 1
            }
            
            guard let indexes = dict[need], indexes.count >= minCount else {
                continue
            }
            
            return [index, indexes.first(where: { $0 != index })!]
        }
        
        return []
    }
}

let solution = Solution()
solution.twoSum([2,7,11,15], 9) // [0,1]
solution.twoSum([3,2,4], 6) // [1,2]
solution.twoSum([3,3], 6) // [0,1]
