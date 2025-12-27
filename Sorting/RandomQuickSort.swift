//
//  RandomQuickSort.swift
//  Sorting
//
//  Created by Andrew on 27.12.2025.
//

import Foundation

final class RandomQuickSort<Element> where Element: Comparable {
    func sort(array: [Element]) -> [Element] {
        guard array.count > 1 else {
            return array
        }
        
        var array = array
        quickSort(array: &array, l: array.startIndex, r: array.endIndex - 1)
        return array
    }
}

// MARK: - Private Methods
private extension RandomQuickSort {
    func quickSort(array: inout [Element], l: Int, r: Int) {
        guard l < r else { return }
        
        let pivot: Int = Int.random(in: l...r)
        swap(lhs: l, rhs: pivot, array: &array)
        // [p][not sorted]
        
        var endLessPivot: Int = l
        for i in (l + 1)...r {
            if array[i] <= array[l] {
                endLessPivot += 1
                swap(lhs: endLessPivot, rhs: i, array: &array)
            }
        }
        swap(lhs: endLessPivot, rhs: l, array: &array)
        // [<= p][p][> p]
        
        quickSort(array: &array, l: l, r: endLessPivot - 1)
        quickSort(array: &array, l: endLessPivot + 1, r: r)
    }
    
    func swap(lhs: Int, rhs: Int, array: inout [Element]) {
        let temp = array[lhs]
        array[lhs] = array[rhs]
        array[rhs] = temp
    }
}
