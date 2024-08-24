import Foundation

class Solution {
    func reformatNumber(_ number: String) -> String {
        var number = number
            .replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: "-", with: "")
        
        var result: String = ""
        while number.count > 4 {
            result += "\(number.prefix(3))-"
            number = String(number.dropFirst(3))
        }
        
        switch number.count {
        case 4: result += "\(number.prefix(2))-\(number.suffix(2))"
        default: result += number
        }
        
        return result
    }
}

func test(input: String, output: String) -> Bool {
    let solution = Solution()
    return solution.reformatNumber(input) == output
}

test(input: "1-23-45 6", output: "123-456")
test(input: "123 4-567", output: "123-45-67")
test(input: "123 4-5678", output: "123-456-78")
