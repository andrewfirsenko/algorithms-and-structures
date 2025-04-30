import Foundation

class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var copy: [Int] = Array(repeating: 0, count: arr.count)
        var iArr: Int = 0
        var iCopy: Int = 0
        while iCopy < copy.count {
            if arr[iArr] != 0 {
                copy[iCopy] = arr[iArr]
                iCopy += 1
            } else {
                iCopy += 2
            }
            iArr += 1
        }
        
        for i in 0..<arr.count {
            arr[i] = copy[i]
        }
    }
}
