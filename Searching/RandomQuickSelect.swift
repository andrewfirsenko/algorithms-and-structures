//
//  RandomQuickSelect.swift
//  Searching
//
//  Created by Andrew on 27.12.2025.
//

import Foundation

final class RandomQuickSelect<Element> where Element: Comparable {
    /// Поиск i статистики в неотсортированном массиве
    func select(i: Int, inArray: [Element]) -> Element? {
        guard i >= 0, i < inArray.count else {
            return nil
        }
        
        var array = inArray
        incompleteSort(select: i, array: &array, l: array.startIndex, r: array.endIndex - 1)
        return array[i]
    }
}

// MARK: - Private Methods
private extension RandomQuickSelect {
    func incompleteSort(select: Int, array: inout [Element], l: Int, r: Int) {
        guard l < r else { return }
        
        let pivot: Int = Int.random(in: l...r)
        swap(lhs: l, rhs: pivot, array: &array)
        // [p][unsorted]
        
        var endLessPivot: Int = l
        for i in (l + 1)...r {
            if array[i] <= array[l] {
                endLessPivot += 1
                swap(lhs: endLessPivot, rhs: i, array: &array)
            }
        }
        swap(lhs: l, rhs: endLessPivot, array: &array)
        // [<= p][p][> p]
        
        if endLessPivot < select {
            incompleteSort(select: select, array: &array, l: endLessPivot + 1, r: r)
        } else if endLessPivot > select {
            incompleteSort(select: select, array: &array, l: l, r: endLessPivot - 1)
        } else {
            return
        }
    }
    
    func swap(lhs: Int, rhs: Int, array: inout [Element]) {
        let temp = array[lhs]
        array[lhs] = array[rhs]
        array[rhs] = temp
    }
}
