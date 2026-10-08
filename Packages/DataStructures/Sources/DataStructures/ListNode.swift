import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// MARK: - Array
extension ListNode {
    /// Создаёт список из массива. Для пустого массива возвращает `nil`.
    /// `ListNode([2, 4, 3])` -> 2 -> 4 -> 3
    public convenience init?(_ values: [Int]) {
        guard let first = values.first else { return nil }
        self.init(first)
        
        var tail: ListNode = self
        for value in values.dropFirst() {
            let node = ListNode(value)
            tail.next = node
            tail = node
        }
    }
    
    /// Значения списка, начиная с текущего узла.
    public var array: [Int] {
        var result: [Int] = []
        var node: ListNode? = self
        while let current = node {
            result.append(current.val)
            node = current.next
        }
        return result
    }
}

extension Optional where Wrapped == ListNode {
    /// Значения списка; для `nil` возвращает пустой массив.
    public var array: [Int] {
        self?.array ?? []
    }
}
