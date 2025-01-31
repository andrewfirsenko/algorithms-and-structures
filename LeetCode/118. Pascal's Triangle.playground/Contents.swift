import Foundation

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 1 else { return [[1]] }
        
        var answer: [[Int]] = [[1],[1,1]]
        for row in 1..<(numRows - 1) {
            let lastLine = answer.last ?? []
            let lastLineCount = lastLine.count
            let middleIndex = lastLineCount / 2
            
            var new: [Int] = Array(repeating: 1, count: lastLineCount + 1)
            for i in 0..<middleIndex {
                let element = lastLine[i] + lastLine[i + 1]
                new[i + 1] = element
                new[lastLineCount - i - 1] = element
            }
            answer.append(new)
        }
        return answer
    }
}

func test(input: Int, output: [[Int]]) {
    let solution = Solution()
    let result = solution.generate(input)
    print("test", result == output, "output", result)
}

test(input: 5, output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]])
test(input: 3, output: [[1],[1,1],[1,2,1]])
test(input: 2, output: [[1],[1,1]])
test(input: 1, output: [[1]])
