import Foundation

class Solution {
    func closestPrimes(_ left: Int, _ right: Int) -> [Int] {
        guard right > 1 else { return [-1, -1] }
        
        var sieveOfEratosthene: [Bool] = Array(repeating: true, count: right + 1)
        sieveOfEratosthene[0] = false
        sieveOfEratosthene[1] = false
        
        let maxNum: Int = Int(Double(right).squareRoot())
        for i in 2...maxNum {
            if sieveOfEratosthene[i] == false { continue }
            for j in stride(from: i * i, to: sieveOfEratosthene.count, by: i) {
                sieveOfEratosthene[j] = false
            }
        }
        let validNumbers: [Int] = sieveOfEratosthene
            .enumerated()
            .compactMap { index, isPrime in
                if isPrime && index >= left && index <= right {
                    return index
                } else {
                    return nil
                }
            }
        
        guard validNumbers.count > 1 else {  return [-1, -1]  }
        
        var answer: [Int] = [validNumbers[0], validNumbers[1]]
        var minDelta: Int = validNumbers[1] - validNumbers[0]
        if minDelta <= 2 { return answer }
        
        for i in 1..<validNumbers.count {
            if validNumbers[i] - validNumbers[i - 1] < minDelta {
                minDelta = validNumbers[i] - validNumbers[i - 1]
                answer = [validNumbers[i - 1], validNumbers[i]]
                if minDelta <= 2 { return answer }
            }
        }
        
        return answer
    }
}

let solution = Solution()
solution.closestPrimes(10, 19) // [11,13]
solution.closestPrimes(4, 6) // [-1,-1]
solution.closestPrimes(19, 31) // [29,31]
