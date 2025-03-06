import Foundation

class Solution {
    func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
        var numbers: Set<Int> = Set(1...(grid.count * grid.count))
        var twiceNumber: Int = 0
        grid.forEach {
            $0.forEach { number in
                if numbers.contains(number) {
                    numbers.remove(number)
                } else {
                    twiceNumber = number
                }
            }
        }
        
        return [twiceNumber, numbers.first!]
    }
}

let solution = Solution()
solution.findMissingAndRepeatedValues([[1,3],[2,2]]) // [2,4]
solution.findMissingAndRepeatedValues([[9,1,7],[8,9,2],[3,4,6]]) // [9,5]

