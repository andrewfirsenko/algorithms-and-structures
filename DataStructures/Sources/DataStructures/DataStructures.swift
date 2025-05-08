// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class Queue<T> {
    
    private var head: QueueNote<T>?
    private var tail: QueueNote<T>?
    private var sizeQueue: Int = 0
    
    // MARK: - Public
    
    public init() {}
    
    public var peek: T? { head?.value }
    
    public var size: Int { sizeQueue }
    
    public var isEmpty: Bool { sizeQueue == 0 }
    
    public func enqueue(_ value: T) {
        if let tail {
            tail.next = QueueNote(value: value, next: nil, prev: tail)
            self.tail = tail.next
        } else {
            let firstNote = QueueNote(value: value, next: nil, prev: nil)
            head = firstNote
            tail = firstNote
        }
        sizeQueue += 1
    }
    
    public func dequeue() -> T? {
        guard let head else { return nil }
        
        if sizeQueue > 1 {
            self.head = head.next
        } else {
            self.tail = nil
            self.head = nil
        }
        sizeQueue -= 1
        
        return head.value
    }
    
    // MARK: - Private
    
    private final class QueueNote<W> {
        
        var value: W
        var next: QueueNote?
        var prev: QueueNote?
        
        init(value: W, next: QueueNote?, prev: QueueNote?) {
            self.value = value
            self.next = next
            self.prev = prev
        }
    }
}

// MARK: - Min Stack

public class MinStack {
    
    private var stack: [(value: Int, min: Int)] = []

    public init() {}
    
    public func push(_ val: Int) {
        var newMin: Int = val
        if let last = stack.last {
            newMin = min(val, last.min)
        }
        
        stack.append((value: val, min: newMin))
    }
    
    public func pop() {
        stack.removeLast()
    }
    
    public func top() -> Int {
        return stack.last?.value ?? .zero
    }
    
    public func getMin() -> Int {
        return stack.last?.min ?? .zero
    }
}

// MARK: - Priority Queue

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

