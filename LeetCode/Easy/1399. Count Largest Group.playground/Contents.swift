import Foundation

class Solution {
    
    func countLargestGroup(_ n: Int) -> Int {
        var sums: [Int: Int] = [:] // Sum : Size
        for num in 1...n {
            let key = sumDigits(number: num)
            sums[key, default: 0] += 1
        }
        
        var countEqualSize: [Int: Int] = [:] // Size : Count
        sums.values.forEach { value in
            countEqualSize[value, default: 0] += 1
        }
        
        let maxKey: Int = countEqualSize.keys.max()!
        return countEqualSize[maxKey]!
    }
    
    private func sumDigits(number: Int) -> Int {
        var number = number
        var sum: Int = 0
        while number > 0 {
            sum += number % 10
            number /= 10
        }
        return sum
    }
}

let solution = Solution()
solution.countLargestGroup(13) // 4
solution.countLargestGroup(2) // 2
