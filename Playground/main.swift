//
//  main.swift
//  Playground
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

    @discardableResult
    mutating func removeMin() -> T? {
        return remove(at: 0)
    }

    @discardableResult
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

let settings: [Int] = readLine()?.split(separator: " ").compactMap { Int($0) } ?? []
let numbers: [Int] = readLine()?.split(separator: " ").compactMap { Int($0) } ?? []

let N: Int = settings[0]
let K: Int = settings[1]
var minIndexedHeap = IndexedHeap<Int>()

for i in 0..<K {
    let newElement: Int = numbers[i]
    minIndexedHeap.insert(newElement)
}

print(minIndexedHeap.peek ?? 0, terminator: " ")
for i in K..<N {
    let newElement: Int = numbers[i]
    minIndexedHeap.remove(numbers[i - K])
    minIndexedHeap.insert(newElement)
    print(minIndexedHeap.peek ?? 0, terminator: " ")
}
print()
