import Foundation

class Solution {
    func tupleSameProduct(_ nums: [Int]) -> Int {
        var multiplied: [Int: Int] = [:]
        
        for a in 0..<nums.count {
            for b in a..<nums.count {
                if a == b { continue }
                multiplied[nums[a] * nums[b], default: 0] += 1
            }
        }
        let result: Int = multiplied.values
            .filter { $0 > 1 }
            .reduce(0) { partialResult, count in
                return partialResult + count * (count - 1) * 4
            }
        
        return result
    }
}

func test(_ nums: [Int], expected: Int) {
    let result = Solution().tupleSameProduct(nums)
    print("test", result == expected, result)
}

test([2,3,4,6], expected: 8)
test([1,2,4,5,10], expected: 16)
test([2,3,4,6,8,12], expected: 40)
test([1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192], expected: 1288)

