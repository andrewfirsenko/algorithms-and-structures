import UIKit

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

class Solution {
    struct NextPoint {
        let i: Int
        let j: Int
        let summary: Int
    }
    func minCost(_ m: Int, _ n: Int, _ waitCost: [[Int]]) -> Int {
        var dist: [[Int]] = Array(
            repeating: Array(repeating: Int.max, count: n),
            count: m
        )
        dist[0][0] = 1
        
        var queue = Queue<NextPoint>()
        queue.enqueue(NextPoint(i: 0, j: 0, summary: 0))
        
        while !queue.isEmpty {
            let size = queue.size
            for _ in 0..<size {
                let point = queue.dequeue()!
                
                var cost = point.summary
                cost += (point.i + 1) * (point.j + 1)
                cost += waitCost[point.i][point.j]
                dist[point.i][point.j] = min(cost, dist[point.i][point.j])
                
                if point.i < m - 1 {
                    queue.enqueue(
                        NextPoint(
                            i: point.i + 1,
                            j: point.j,
                            summary: dist[point.i][point.j]
                        )
                    )
                }
                if point.j < n - 1 {
                    queue.enqueue(
                        NextPoint(
                            i: point.i,
                            j: point.j + 1,
                            summary: dist[point.i][point.j]
                        )
                    )
                }
            }
        }
        
        return dist[m - 1][n - 1] - waitCost[m - 1][n - 1]
    }
}

let solution = Solution()
solution.minCost(1, 2, [[1, 2]])
solution.minCost(2, 2, [[3,5],[2,4]])
solution.minCost(2, 3, [[6,1,4],[3,2,5]])
