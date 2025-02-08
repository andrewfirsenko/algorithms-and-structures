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

// This is an implementation for LeetCode

class MyCircularQueue {
    
    private var queue: [Int]
    private var headIndex: Int?
    private var tailIndex: Int?

    init(_ k: Int) {
        self.queue = Array(repeating: 0, count: k)
    }
    
    func enQueue(_ value: Int) -> Bool {
        if isFull() { return false }
        
        if isEmpty() {
            queue[0] = value
            headIndex = 0
            tailIndex = 0
            return true
        } else if let oldTailIndex = tailIndex {
            let newTailIndex = (oldTailIndex + 1) % queue.count
            queue[newTailIndex] = value
            tailIndex = newTailIndex
            return true
        } else {
            return false
        }
    }
    
    func deQueue() -> Bool {
        if isEmpty() { return false }
        
        if headIndex == tailIndex {
            headIndex = nil
            tailIndex = nil
            return true
        } else if let headIndex {
            self.headIndex = (headIndex + 1) % queue.count
            return true
        } else {
            return false
        }
    }
    
    func Front() -> Int {
        guard let headIndex else { return -1 }
        return queue[headIndex]
    }
    
    func Rear() -> Int {
        guard let tailIndex else { return -1 }
        return queue[tailIndex]
    }
    
    func isEmpty() -> Bool {
        return headIndex == nil
    }
    
    func isFull() -> Bool {
        guard let headIndex, let tailIndex else {
            return false
        }
        return (tailIndex + 1) % queue.count == headIndex
    }
}
