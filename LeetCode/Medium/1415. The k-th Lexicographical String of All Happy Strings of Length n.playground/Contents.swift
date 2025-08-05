import Foundation

class Solution {
    
    private let letters: [Character] = ["a", "b", "c"]
    
    func getHappyString(_ n: Int, _ k: Int) -> String {
        var happyStrings: [String] = generateHappyStrings(step: n, string: "")
        guard k <= happyStrings.count else { return String() }
        
        return happyStrings[k - 1]
    }
    
    func generateHappyStrings(step: Int, string: String) -> [String] {
        guard step > 0 else { return [string] }
        
        var result: [String] = []
        for ch in letters where ch != string.last {
            result.append(contentsOf: generateHappyStrings(step: step - 1, string: string + String(ch)))
        }
        return result
    }
}

let solution = Solution()
solution.getHappyString(1, 3) // c
solution.getHappyString(1, 4) // empty
solution.getHappyString(3, 9) // cab
