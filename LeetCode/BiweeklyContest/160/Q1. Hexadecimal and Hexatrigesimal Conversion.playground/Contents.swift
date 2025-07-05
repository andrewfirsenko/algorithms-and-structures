import UIKit

class Solution {
    private let letters: [Character] = [
        "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
        "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
        "U", "V", "W", "X", "Y", "Z"
    ]
    
    func concatHex36(_ n: Int) -> String {
        let n2 = n * n
        let n3 = n2 * n
        return convertTo16(n2) + convertTo36(n3)
    }
    
    private func convertTo16(_ n: Int) -> String {
        var result: [Character] = []
        var n: Int = n
        while n > 0 {
            result.append(letters[n % 16])
            n /= 16
        }
        return String(result.reversed())
    }
    
    private func convertTo36(_ n: Int) -> String {
        var result: [Character] = []
        var n: Int = n
        while n > 0 {
            result.append(letters[n % 36])
            n /= 36
        }
        return String(result.reversed())
    }
}

let solution = Solution()
solution.concatHex36(13) // "A91P1"
solution.concatHex36(36) // "5101000"
