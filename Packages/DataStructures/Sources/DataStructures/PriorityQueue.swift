//
//  PriorityQueue.swift
//  DataStructures
//
//  Created by Andrew on 30.08.2025.
//

import Foundation

public struct PriorityQueue<Element> {
    private var heap: [Element]
    private let areSorted: (Element, Element) -> Bool

    public init(sort: @escaping (Element, Element) -> Bool) {
        self.heap = []
        self.areSorted = sort
    }

    public var isEmpty: Bool { heap.isEmpty }
    public var count: Int { heap.count }

    public mutating func enqueue(_ element: Element) {
        heap.append(element)
        siftUp(from: heap.count - 1)
    }

    public mutating func dequeue() -> Element? {
        guard !heap.isEmpty else { return nil }
        if heap.count == 1 {
            return heap.removeFirst()
        } else {
            let first = heap[0]
            heap[0] = heap.removeLast()
            siftDown(from: 0)
            return first
        }
    }

    public func peek() -> Element? {
        heap.first
    }

    private mutating func siftUp(from index: Int) {
        var child = index
        var parent = (child - 1) / 2
        while child > 0 && areSorted(heap[child], heap[parent]) {
            heap.swapAt(child, parent)
            child = parent
            parent = (child - 1) / 2
        }
    }

    private mutating func siftDown(from index: Int) {
        var parent = index
        while true {
            let left = 2 * parent + 1
            let right = 2 * parent + 2
            var candidate = parent

            if left < heap.count && areSorted(heap[left], heap[candidate]) {
                candidate = left
            }
            if right < heap.count && areSorted(heap[right], heap[candidate]) {
                candidate = right
            }
            if candidate == parent { return }
            heap.swapAt(parent, candidate)
            parent = candidate
        }
    }
}

