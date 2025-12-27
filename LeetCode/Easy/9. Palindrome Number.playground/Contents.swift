import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }

        var reversed: Int = 0
        var copy: Int = x
        while copy > 0 {
            reversed *= 10
            reversed += copy % 10
            copy /= 10
        }
        
        return x == reversed
    }
}

let solution = Solution()
solution.isPalindrome(121)
solution.isPalindrome(-121)
solution.isPalindrome(10)
solution.isPalindrome(11)
solution.isPalindrome(22)
solution.isPalindrome(2)
