import Cocoa

class Solution {
    func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {
        var array: [Int] = Array(repeating: 0, count: 100)

        var result: Int = 0
        dominoes.forEach { domino in
            let index = hashDomino(domino)
            array[index] += 1
            result += array[index] - 1
        }
        
        return result
    }

    func hashDomino(_ domino: [Int]) -> Int {
        guard domino.count == 2 else { return 0 }
        let a = min(domino[0], domino[1])
        let b = max(domino[0], domino[1])
        return a * 10 + b
    }
}
