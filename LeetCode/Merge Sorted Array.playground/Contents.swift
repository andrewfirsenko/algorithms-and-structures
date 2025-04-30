import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i1: Int = m - 1
        var i2: Int = n - 1
        var iWrite: Int = m + n - 1
        while i1 >= 0, i2 >= 0 {
            if nums1[i1] > nums2[i2] {
                nums1[iWrite] = nums1[i1]
                iWrite -= 1
                i1 -= 1
            } else {
                nums1[iWrite] = nums2[i2]
                iWrite -= 1
                i2 -= 1
            }
        }
        while i1 >= 0 {
            nums1[iWrite] = nums1[i1]
            iWrite -= 1
            i1 -= 1
        }
        while i2 >= 0 {
            nums1[iWrite] = nums2[i2]
            iWrite -= 1
            i2 -= 1
        }
    }
}

var arr = [0]
Solution().merge(&arr, 0, [1], 1)
print(arr)
