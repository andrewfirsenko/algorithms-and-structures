import UIKit

class Solution {
    func numOfUnplacedFruits(_ fruits: [Int], _ baskets: [Int]) -> Int {
        var availableBaskets: [Bool] = Array(
            repeating: true,
            count: baskets.count
        )
        
        var answer: Int = 0
        for fruit in fruits {
            var wasFruitPlaced: Bool = false
            for i in 0..<baskets.count {
                if availableBaskets[i], baskets[i] >= fruit {
                    availableBaskets[i] = false
                    wasFruitPlaced = true
                    break
                }
            }
            if !wasFruitPlaced {
                answer += 1
            }
        }
        
        return answer
    }
}
