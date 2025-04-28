import Foundation

class Solution {
    func longestNiceSubarray(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var maxLength: Int = 0
        var length: Int = 0
        var bits: Int = 0
        
        var l: Int = 0
        var r: Int = 0
        while r < nums.count {
            maxLength = max(length, maxLength)
            
            while bits & nums[r] != 0 {
                bits = bits ^ nums[l]
                length -= 1
                l += 1
            }
            
            bits = bits | nums[r]
            length += 1
            r += 1
        }
        maxLength = max(length, maxLength)
        
        return maxLength
    }
}

let solution = Solution()
solution.longestNiceSubarray([1,3,8,48,10]) // 3
solution.longestNiceSubarray([3,1,5,11,13]) // 1
solution.longestNiceSubarray([135745088,609245787,16,2048,2097152]) // 3
solution.longestNiceSubarray([84139415,693324769,614626365,497710833,615598711,
                              264,65552,50331652,1,1048576,16384,544,270532608,
                              151813349,221976871,678178917,845710321,751376227,
                              331656525,739558112,267703680]) // 8
