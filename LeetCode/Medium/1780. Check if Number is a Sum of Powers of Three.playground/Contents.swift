import Foundation

class Solution {
    func checkPowersOfThree(_ n: Int) -> Bool {
        var number: Int = n
        while number > 0 {
            if number % 3 == 2 {
                return false
            }
            number /= 3
        }
        return true
    }
}

let solution = Solution()
solution.checkPowersOfThree(12) // true
solution.checkPowersOfThree(91) // true
solution.checkPowersOfThree(21) // false
