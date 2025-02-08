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
