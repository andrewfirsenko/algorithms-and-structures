import Foundation

class Solution {
    
    func findDifferentBinaryString(_ nums: [String]) -> String {
        let exists: Set<String> = Set(nums)
        guard let n = nums.first?.count else { return String() }
        
        var answer: String?
        findFreeNumber(answer: &answer, exists: exists, n: n, string: "")
        
        return answer ?? String()
    }
    
    func findFreeNumber(answer: inout String?, exists: Set<String>, n: Int, string: String) {
        if answer != nil { return }
        
        if n <= 0 {
            if !exists.contains(string) {
                answer = string
                return
            }
        } else {
            findFreeNumber(answer: &answer, exists: exists, n: n - 1, string: string + "0")
            findFreeNumber(answer: &answer, exists: exists, n: n - 1, string: string + "1")
        }
    }
}

let solution = Solution()
solution.findDifferentBinaryString(["01","10"])
solution.findDifferentBinaryString(["00","01"])
solution.findDifferentBinaryString(["111","011","001"])
