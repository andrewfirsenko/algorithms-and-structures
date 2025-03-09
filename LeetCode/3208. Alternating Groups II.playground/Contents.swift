import Foundation

class Solution {
    func numberOfAlternatingGroups(_ colors: [Int], _ k: Int) -> Int {
        guard colors.count >= k else { return 0 }
        guard colors.count > 1 else { return 1 }
        
        var slices: [Int] = []
        var current: Int = 1
        for i in 1..<colors.count {
            if colors[i] != colors[i - 1] {
                current += 1
            } else {
                slices.append(current)
                current = 1
            }
        }
        slices.append(current)
        if colors[0] != colors[colors.count - 1] {
            if slices.count > 1 {
                slices[0] += slices.removeLast()
            } else {
                slices[0] += k - 1
            }
        }
        
        var answer: Int = 0
        slices.forEach { slice in
            if slice >= k {
                answer += slice - k + 1
            }
        }
        
        return answer
    }
}

let solution = Solution()
solution.numberOfAlternatingGroups([0,1,0,1,0], 3) // 3
solution.numberOfAlternatingGroups([0,1,0,0,1,0,1], 6) // 2
solution.numberOfAlternatingGroups([1,1,0,1], 4) // 0
solution.numberOfAlternatingGroups([1,0,1,0], 4) // 4
