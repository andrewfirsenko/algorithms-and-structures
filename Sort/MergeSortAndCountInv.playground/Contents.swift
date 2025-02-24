import Foundation

class Solution {
    
    init() {}
    
    func countInv(array: [Int]) -> Int {
        let (_, countInv) = sortAndCount(array: array, startIndex: array.startIndex, endIndex: array.endIndex)
        return countInv
    }
    
    func sortAndCount(array: [Int], startIndex: Int, endIndex: Int) -> (array: [Int], countInv: Int) {
        guard startIndex < endIndex - 1 else {
            return ([array[startIndex]], 0)
        }
        
        let mid: Int = (startIndex + endIndex) / 2
        let (left, leftCountInv) = sortAndCount(array: array, startIndex: startIndex, endIndex: mid)
        let (right, rightCountInv) = sortAndCount(array: array, startIndex: mid, endIndex: endIndex)
        let (sorted, mergeCountInv) = mergeAndCountInt(left: left, right: right)
        
        return (sorted, leftCountInv + rightCountInv + mergeCountInv)
    }
    
    
    func mergeAndCountInt(left: [Int], right: [Int]) -> (array: [Int], countInv: Int) {
        var array: [Int] = []
        var countInv: Int = 0
        
        var l: Int = 0
        var r: Int = 0
        while l < left.count && r < right.count {
            if left[l] > right[r] {
                array.append(right[r])
                countInv += left.count - l
                r += 1
            } else {
                array.append(left[l])
                l += 1
            }
        }
        array.append(contentsOf: left[l...])
        array.append(contentsOf: right[r...])
        
        return (array, countInv)
    }
}

let solution = Solution()
solution.countInv(array: [1, 2, 3, 4, 5])
solution.countInv(array: [5, 4, 3, 2, 1])
solution.countInv(array: [1, 3, 2, 5, 4])
solution.countInv(array: [4, 3, 2, 1, 5])
