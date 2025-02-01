import Foundation

class Solution {
    func findValidPair(_ s: String) -> String {
        var dictionary: [Character: Int] = [:]
        s.forEach { ch in
            dictionary[ch, default: 0] += 1
        }
        
        for i in s.indices.dropLast() {
            let current: Character = s[i]
            let next: Character = s[s.index(after: i)]
            if dictionary[current] == current.wholeNumberValue,
               dictionary[next] == next.wholeNumberValue,
               current != next {
                return String([current, next])
            }
        }
        
        return ""
    }
}

func test(input: String, output: String) {
    let solution = Solution()
    print("test", solution.findValidPair(input) == output)
}

test(input: "2523533", output: "23")
test(input: "221", output: "21")
test(input: "22", output: "")
