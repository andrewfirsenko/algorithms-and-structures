import Foundation

class Solution {
    func longestNiceSubarray(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var dict: [Int: Int] = [:] // Index : Count `1`
        var maxLength: Int = 0
        
        var l: Int = 0
        var r: Int = 0
        var currentLength: Int = 0
        while r < nums.count {
            add(num: nums[r], dict: &dict)
            
            while !isDictValid(dict: dict) {
                maxLength = max(currentLength, maxLength)
                remove(num: nums[l], dict: &dict)
                currentLength -= 1
                l += 1
            }
            
            currentLength += 1
            r += 1
        }
        maxLength = max(currentLength, maxLength)
        
        return maxLength
    }
    
    private func add(num: Int, dict: inout [Int: Int]) {
        var num: Int = num
        var index: Int = 0
        while num > 0 {
            if num % 2 == 1 {
                dict[index, default: 0] += 1
            }
            num /= 2
            index += 1
        }
    }
    
    private func remove(num: Int, dict: inout [Int: Int]) {
        var num: Int = num
        var index: Int = 0
        while num > 0 {
            if num % 2 == 1 {
                if let value = dict[index], value > 1 {
                    dict[index] = value - 1
                } else {
                    dict[index] = nil
                }
            }
            num /= 2
            index += 1
        }
    }
    
    private func isDictValid(dict: [Int: Int]) -> Bool {
        for value in dict.values {
            if value > 1 {
                return false
            }
        }
        return true
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
