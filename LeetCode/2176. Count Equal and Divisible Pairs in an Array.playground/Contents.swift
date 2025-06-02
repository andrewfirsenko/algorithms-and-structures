import UIKit

class Solution {
    func countPairs(_ nums: [Int], _ k: Int) -> Int {
        var dict: [Int: [Int]] = [:] // num : indexes
        for (index, num) in nums.enumerated() {
            dict[num, default: []].append(index)
        }

        var count: Int = 0
        dict.values
            .filter { $0.count > 1 }
            .forEach { array in
                for i in 0..<(array.count - 1) {
                    for j in (i + 1)..<array.count {
                        if array[i] * array[j] % k == 0 {
                            count += 1
                        }
                    }
                }
            }

        return count
    }
}

let solution = Solution()
solution.countPairs([3,1,2,2,2,1,3], 2) // 4
