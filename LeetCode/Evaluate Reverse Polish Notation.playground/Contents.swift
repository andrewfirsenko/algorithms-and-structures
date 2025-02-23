import Foundation

class Solution {
    private let validOperaitons: Set<String> = ["+", "-", "*", "/"]
    
    func evalRPN(_ tokens: [String]) -> Int {
        var numbers: [Int] = []
        
        tokens.forEach { token in
            if validOperaitons.contains(token) {
                let b: Int = numbers.removeLast()
                let a: Int = numbers.removeLast()
                switch token {
                case "+": numbers.append(a + b)
                case "-": numbers.append(a - b)
                case "*": numbers.append(a * b)
                case "/": numbers.append(a / b)
                default: break
                }
            } else if let number = Int(token) {
                numbers.append(number)
            }
        }
        
        return numbers.last ?? 0
    }
}

let solution = Solution()
solution.evalRPN(["2","1","+","3","*"]) // 9
solution.evalRPN(["4","13","5","/","+"]) // 6
solution.evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]) // 22
