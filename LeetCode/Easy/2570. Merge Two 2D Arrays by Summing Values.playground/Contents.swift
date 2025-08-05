import Foundation

class Solution {
    func mergeArrays(_ nums1: [[Int]], _ nums2: [[Int]]) -> [[Int]] {
        var answer: [[Int]] = []
        
        var i: Int = 0
        var j: Int = 0
        while i < nums1.count, j < nums2.count {
            if nums1[i][0] == nums2[j][0] { // equal index
                let index: Int = nums1[i][0]
                let value: Int = nums1[i][1] + nums2[j][1]
                answer.append([index, value])
                i += 1
                j += 1
            } else if nums1[i][0] < nums2[j][0] {
                answer.append([nums1[i][0], nums1[i][1]])
                i += 1
            } else {
                answer.append([nums2[j][0], nums2[j][1]])
                j += 1
            }
        }
        answer.append(contentsOf: nums1[i...])
        answer.append(contentsOf: nums2[j...])
        
        return answer
    }
}

let solution = Solution()
let r1 = solution.mergeArrays([[1,2],[2,3],[4,5]], [[1,4],[3,2],[4,1]]) // [[1,6],[2,3],[3,2],[4,6]]
print(r1)
let r2 = solution.mergeArrays([[2,4],[3,6],[5,5]], [[1,3],[4,3]]) // [[1,3],[2,4],[3,6],[4,3],[5,5]]
print(r2)
