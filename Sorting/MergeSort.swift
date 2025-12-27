//
//  MergeSort.swift
//  Sorting
//
//  Created by Andrew on 27.12.2025.
//

import Foundation

final class MergeSort<Element> where Element: Comparable {
    func sort(array: [Element]) -> [Element] {
        guard array.count > 1 else {
            return array
        }
        
        return sort(array: array, startIndex: array.startIndex, endIndex: array.endIndex - 1)
    }
}

// MARK: - Private Methods
private extension MergeSort {
    func sort(array: [Element],  startIndex: Int, endIndex: Int) -> [Element] {
        guard startIndex < endIndex else {
            return [array[startIndex]]
        }
        
        let mid: Int = (startIndex + endIndex) / 2
        let leftSortedArray: [Element] = sort(array: array, startIndex: startIndex, endIndex: mid)
        let rightSortedArray: [Element] = sort(array: array, startIndex: mid + 1, endIndex: endIndex)
        
        return merge(left: leftSortedArray, right: rightSortedArray)
    }
    
    func merge(left: [Element], right: [Element]) -> [Element] {
        var result: [Element] = []
        result.reserveCapacity(left.count + right.count)
        
        var leftIndex: Int = 0
        var rightIndex: Int = 0
        while leftIndex < left.count && rightIndex < right.count {
            if left[leftIndex] <= right[rightIndex] {
                result.append(left[leftIndex])
                leftIndex += 1
            } else {
                result.append(right[rightIndex])
                rightIndex += 1
            }
        }
        result.append(contentsOf: left[leftIndex..<left.count])
        result.append(contentsOf: right[rightIndex..<right.count])
        
        return result
    }
}
