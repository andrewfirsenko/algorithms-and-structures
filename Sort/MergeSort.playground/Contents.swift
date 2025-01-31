import Foundation


let array = Array(0...9).shuffled()
print(array)
let sortedArray = sort(array: array)
print(sortedArray)


func sort(array: [Int]) -> [Int] {
    return sort(array: array, startIndex: 0, endIndex: array.count - 1)
}

private func sort(array: [Int], startIndex: Int, endIndex: Int) -> [Int] {
    guard startIndex < endIndex else {
        return [array[startIndex]]
    }
    
    let mid: Int = (startIndex + endIndex) / 2
    let left: [Int] = sort(array: array, startIndex: startIndex, endIndex: mid)
    let right: [Int] = sort(array: array, startIndex: mid + 1, endIndex: endIndex)
    return merge(left: left, right: right)
}

private func merge(left: [Int], right: [Int]) -> [Int] {
    var buffer: [Int] = []
    var i: Int = 0, j: Int = 0
    while i < left.count && j < right.count {
        if left[i] <= right[j] {
            buffer.append(left[i])
            i += 1
        } else {
            buffer.append(right[j])
            j += 1
        }
    }
    buffer.append(contentsOf: left[i..<left.count])
    buffer.append(contentsOf: right[j..<right.count])
    return buffer
}
