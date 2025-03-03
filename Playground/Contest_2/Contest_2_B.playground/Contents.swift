//
//  Constest_2_B.swift
//  AlgorithmsAndStructures
//
//  Created by Andrew on 08.02.2025.
//

import Foundation

// MARK: - Indexed Heap

struct IndexedHeap<T: Hashable & Comparable> {
    private var elements: [T] = []
    private var indices: [T: Int] = [:] // Хранит индексы элементов

    var isEmpty: Bool { elements.isEmpty }
    var peek: T? { elements.first }

    mutating func insert(_ value: T) {
        elements.append(value)
        indices[value] = elements.count - 1
        siftUp(from: elements.count - 1)
    }

    mutating func removeMin() -> T? {
        return remove(at: 0)
    }

    mutating func remove(_ value: T) -> T? {
        guard let index = indices[value] else { return nil }
        return remove(at: index)
    }

    private mutating func remove(at index: Int) -> T? {
        guard index < elements.count else { return nil }

        let removedValue = elements[index]
        let lastValue = elements.removeLast()
        indices[removedValue] = nil

        if index < elements.count {
            elements[index] = lastValue
            indices[lastValue] = index
            siftDown(from: index)
            siftUp(from: index)
        }

        return removedValue
    }

    private mutating func siftUp(from index: Int) {
        var child = index
        let value = elements[child]
        var parent = (child - 1) / 2

        while child > 0 && elements[child] < elements[parent] {
            elements.swapAt(child, parent)
            indices[elements[child]] = child
            indices[elements[parent]] = parent
            child = parent
            parent = (child - 1) / 2
        }
        elements[child] = value
    }

    private mutating func siftDown(from index: Int) {
        var parent = index
        let value = elements[parent]

        while true {
            let left = 2 * parent + 1
            let right = left + 1
            var candidate = parent

            if left < elements.count && elements[left] < elements[candidate] {
                candidate = left
            }
            if right < elements.count && elements[right] < elements[candidate] {
                candidate = right
            }
            if candidate == parent { break }

            elements.swapAt(parent, candidate)
            indices[elements[parent]] = parent
            indices[elements[candidate]] = candidate
            parent = candidate
        }
        elements[parent] = value
    }
}

// MARK: - Solution

func readInt() -> Int {
    guard let value = readLine(),
          let intValue = Int(value) else {
        return 0
    }
    return intValue
}

let N: Int = readInt()
let K: Int = readInt()

var minIndexedHeap = IndexedHeap<Int>()
var array: [Int] = []
var answer: [Int] = []

for i in 0..<K {
    let newElement: Int = readInt()
    array.append(newElement)
    minIndexedHeap.insert(newElement)
}

print(minIndexedHeap.peek ?? 0, terminator: " ")
for i in K..<N {
    let newElement: Int = readInt()
    array.append(newElement)
    minIndexedHeap.remove(array[i - K])
    minIndexedHeap.insert(newElement)
    print(minIndexedHeap.peek ?? 0, terminator: " ")
}
