import UIKit

class Solution {
    func differenceOfSums(_ n: Int, _ m: Int) -> Int {
        let dc: Int = n / m
        return n * (n + 1) / 2 - dc * (dc + 1) * m
    }
}
