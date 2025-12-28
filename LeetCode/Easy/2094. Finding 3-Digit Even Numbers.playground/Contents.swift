import UIKit

class Solution {

    func findEvenNumbers(_ digits: [Int]) -> [Int] {
        var countNumbers: [Int] = Array(repeating: 0, count: 10)
        for i in digits {
            countNumbers[i] += 1
        }

        var result: [Int] = []
        generateNumber(
            countNumbers: &countNumbers,
            count: 3,
            number: 0,
            result: &result
        )

        return result
    }

    func generateNumber(
        countNumbers: inout [Int],
        count: Int,
        number: Int,
        result: inout [Int]
    ) {
        guard count > 0 else {
            result.append(number)
            return
        }

        var start: Int = count == 3 ? 1 : 0
        for i in start..<countNumbers.count {
            if countNumbers[i] > 0 {
                countNumbers[i] -= 1
                generateNumber(
                    countNumbers: &countNumbers,
                    count: count - 1,
                    number: number * 10 + countNumbers[i],
                    result: &result
                )
                return
            }
        }
    }
}
