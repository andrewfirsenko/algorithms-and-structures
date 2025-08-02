import UIKit

class Solution {
    enum Direction {
        case up
        case down
    }

    func countHillValley(_ nums: [Int]) -> Int {
        var direction: Direction?
        var startIndex: Int?
        for i in 1..<nums.count {
            if nums[i] > nums[i - 1] {
                // up
                direction = .up
                startIndex = i
                break
            }
            if nums[i] < nums[i - 1] {
                // down
                direction = .down
                startIndex = i
                break
            }
        }
        guard var direction, let startIndex else { return 0 }

        var answer: Int = 0
        for i in startIndex..<nums.count {
            if nums[i] > nums[i - 1] {
                // up
                if direction == .down {
                    answer += 1
                    direction = .up
                    continue
                }
            }
            if nums[i] < nums[i - 1] {
                // down
                if direction == .up {
                    answer += 1
                    direction = .down
                    continue
                }
            }
        }

        return answer
    }
}
