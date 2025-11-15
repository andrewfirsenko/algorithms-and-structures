import Foundation

class Solution {
    func rangeAddQueries(_ n: Int, _ queries: [[Int]]) -> [[Int]] {
        var sumArray: [[Int]] = Array(
            repeating: Array(repeating: .zero, count: n),
            count: n
        )
        
        for query in queries {
            let row1 = query[0]
            let row2 = query[2]
            
            for row in row1...row2 {
                sumArray[row]
                let col1 = query[1]
                let col2 = query[3]
                
                sumArray[row][col1] += 1
                if col2 + 1 < n {
                    sumArray[row][col2 + 1] -= 1
                }
            }
        }
        
        for i in 0..<n {
            for j in 1..<n {
                sumArray[i][j] = sumArray[i][j-1] + sumArray[i][j]
            }
        }
        
        return sumArray
    }
}
